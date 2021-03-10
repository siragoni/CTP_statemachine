--------------------------------------------------------------------------------
-- Title      : Data generator module
-- Project    : 
-------------------------------------------------------------------------------
-- File       : ddg.vhd
-- Author     : Sanjoy Mukherjee (sanjoy.mukherjee@cern.ch), Filippo Costa (filippo.costa@cern.ch)
--              Tuan Mate Nguyen (tuan.mate.nguyen@cern.ch)
-------------------------------------------------------------------------------
-- Description: Generate either continuous (simple counter or TPC-like random
--              data with header) or packetized data emulating detector FEEs.
-------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_misc.all;

--use work.pack_cru_core.all;
--library altera_mf;

entity ddg is
  generic (
    g_NUM_GBT_LINKS     : integer := 4
    );
  port(
    --------------------------------------------------------------------------------
    -- AVALON interface
    --------------------------------------------------------------------------------
    MMS_CLK        : in  std_logic;
    MMS_RESET      : in  std_logic;
    MMS_WAITREQ    : out std_logic := '0';
    MMS_ADDR       : in  std_logic_vector(19 downto 0);
    MMS_WR         : in  std_logic;
    MMS_WRDATA     : in  std_logic_vector(31 downto 0);
    MMS_RD         : in  std_logic;
    MMS_RDVAL      : out std_logic;
    MMS_RDDATA     : out std_logic_vector(31 downto 0);
    --------------------------------------------------------------------------------
    -- TRG interface
    --------------------------------------------------------------------------------
    TTC_RXCLK      : in  std_logic;
    TTC_RXRST      : in  std_logic;
    TTC_RXVALID    : in  std_logic;
    TTC_RXD        : in  std_logic_vector(199 downto 0);
    --------------------------------------------------------------------------------
    -- GBT Downlink (CRU -> FE)
    --------------------------------------------------------------------------------
    gbt_tx_ready_i : in  std_logic_vector(g_NUM_GBT_LINKS-1 downto 0)--;
--    gbt_tx_bus_o   : out t_cru_gbt
    );
end ddg;


architecture rtl of ddg is
  --------------------------------------------------------------------------------
  -- Components
  --------------------------------------------------------------------------------

  component cont_sap
    port(
      clk_i       : in  std_logic;
      clk_en_i    : in  std_logic;
      rst_i       : in  std_logic;
      --------------------------------------------------------------------------------
      trg_i       : in  std_logic_vector(119 downto 0);
      trg_mask_i  : in  std_logic_vector(31 downto 0);
      --------------------------------------------------------------------------------
      cfg_i       : in  std_logic_vector(31 downto 0);
      cfg2_i      : in  std_logic_vector(31 downto 0);
      cfg3_i      : in  std_logic_vector(31 downto 0);
      --------------------------------------------------------------------------------
      d_o         : out std_logic_vector(79 downto 0);
      w_o         : out std_logic_vector(31 downto 0);
      dv_o        : out std_logic;
      --------------------------------------------------------------------------------
      ev_cnt_o    : out std_logic_vector(31 downto 0);
      trgmisscnt_o : out std_logic_vector(31 downto 0)
      );
  end component;

--  component cont_data_stream
--    port(
--      clk_i    : in  std_logic;
--      clk_en_i : in  std_logic;
--      rst_i    : in  std_logic;
--      tpc_emu_i : in std_logic;
--      --------------------------------------------------------------------------------
--      d_o      : out std_logic_vector(79 downto 0);
--      w_o      : out std_logic_vector(31 downto 0)
--      );
--  end component;


--  constant c_MODE : Array4bit(63 downto 0) := (5 downto 4 => x"9", 3 downto 0 => x"3", others => x"4");
  constant c_PIPE_LENGTH : natural := 5;
  
  -- SIGNALs
--  signal avq     : Array32bit(5 downto 0);
--  signal gbttx_c : Array32bit(5 downto 0);

  -- UNSIGNED
  signal u_rst_cnt       : unsigned(4 downto 0);
  signal u_tick          : unsigned(5 downto 0);
  -- SIGNAL
  signal s_data_valid    : std_logic_vector(5 downto 0);
  signal s_rst_ddg       : std_logic;
  --
  signal s_d_cont_stream : std_logic_vector(79 downto 0);
  signal s_w_cont_stream : std_logic_vector(31 downto 0);
  signal s_d_cont_pckt   : std_logic_vector(79 downto 0);
  signal s_w_cont_pckt   : std_logic_vector(31 downto 0);
  signal s_dv_cont_pckt  : std_logic;
  --
  signal s_cfg           : std_logic_vector(31 downto 0);
  signal s_cfg2          : std_logic_vector(31 downto 0);
  signal s_cfg3          : std_logic_vector(31 downto 0);
  signal s_rst           : std_logic;
  --
  signal s_ev_cnt         : std_logic_vector(31 downto 0);
  signal s_trgmisscnt     : std_logic_vector(31 downto 0);
  signal s_wren           : std_logic;
  signal s_trg_mask       : std_logic_vector(31 downto 0);
  --
--  signal datad            : Array80bit(c_PIPE_LENGTH-1 downto 0);
--  signal dataw            : Array32bit(c_PIPE_LENGTH-1 downto 0);
  signal dataval          : std_logic_vector(c_PIPE_LENGTH-1 downto 0);
  signal datasel          : std_logic_vector(c_PIPE_LENGTH-1 downto 0);
  
  
begin

  --------------------------------------------------------------------------------
  -- avalon memory mapped slave: local registers
  --------------------------------------------------------------------------------
--  mmslave : avalon_mm_slave
--    generic map (
--      MODE_LG => 6,
--      AWIDTH  => 20,
--      MODE    => c_MODE,
--      RSTVAL  => (1=> x"01fc_0004", 2 => x"0000_01FF", 3 => x"FFFFF87C", others => (others => '0'))
--      )
--    port map (
--      CLK     => MMS_CLK,
--      RESET   => MMS_RESET,
--      WAITREQ => MMS_WAITREQ,
--      ADDR    => MMS_ADDR,
--      WR      => MMS_WR,
--      WRDATA  => MMS_WRDATA,
--      RD      => MMS_RD,
--      RDVAL   => MMS_RDVAL,
--      RDDATA  => MMS_RDDATA,
--      --
--      ALTCLK  => TTC_RXCLK,
--      --
--      din     => gbttx_c,
--      qout    => avq
--      );



  --------------------------------------------------------------------------------
  -- CONFIG (from AV CLOCK to clk240)
  --------------------------------------------------------------------------------
--  cmp_cdcnop0 : cdcnop
--    generic map(N => 128)
--    port map (
--      I(31 downto 0) => avq(0),
--      I(63 downto 32) => avq(1),
--      I(95 downto 64) => avq(2),
--      I(127 downto 96) => avq(3),
--      C => TTC_RXCLK,
--      O(31 downto 0) => s_cfg,
--      O(63 downto 32) => s_cfg2,
--      O(95 downto 64) => s_cfg3,
--      O(127 downto 96) => s_trg_mask
--      );



  --------------------------------------------------------------------------------
  -- Mapping
  --------------------------------------------------------------------------------
  s_rst    <= s_cfg(31) or (TTC_RXRST and s_cfg(4));
  

  p_reset : process(TTC_RXCLK)
  begin
    if rising_edge(TTC_RXCLK) then
      if s_rst = '1' then
        u_rst_cnt <= (others => '0');
      elsif u_rst_cnt(4) = '0' then
        u_rst_cnt <= u_rst_cnt + 1;
      end if;
    end if;
  end process;
  s_rst_ddg <= not(u_rst_cnt(4));


  
  
  --------------------------------------------------------------------------------
  -- Component to generate a counter as a continuous stream
  --------------------------------------------------------------------------------
--  cmp_cont_data_stream : cont_data_stream
--    port map(
--      clk_i    => TTC_RXCLK,
--      clk_en_i => TTC_RXVALID,
--      rst_i    => s_rst_ddg,
--      tpc_emu_i => s_cfg(16),
--      --
--      d_o      => s_d_cont_stream,
--      w_o      => s_w_cont_stream
--      );


  --------------------------------------------------------------------------------
  -- Component to generate standard alice packets
  --------------------------------------------------------------------------------
  cmp_cont_sap : cont_sap
    port map (
      clk_i       => TTC_RXCLK,
      clk_en_i    => TTC_RXVALID,
      rst_i       => s_rst_ddg,
      --
      trg_i       => TTC_RXD(119 downto 0),
      trg_mask_i  => s_trg_mask,
      --
      cfg_i       => s_cfg,
      cfg2_i      => s_cfg2,
      cfg3_i      => s_cfg3,
      --
      d_o         => s_d_cont_pckt,
      w_o         => s_w_cont_pckt,
      dv_o        => s_dv_cont_pckt,
      --
      ev_cnt_o    => s_ev_cnt,
      trgmisscnt_o => s_trgmisscnt
      );

  -- sent events and missed triggers 
--  gbttx_c(4) <= s_ev_cnt;
--  gbttx_c(5) <= s_trgmisscnt;
  
--  -- pipeline (6cc)
--  process(TTC_RXCLK)
--  begin
--    if rising_edge(TTC_RXCLK) then
--      if s_cfg(0) = '0' then
--        datad(0) <= s_d_cont_stream;
--        dataw(0) <= s_w_cont_stream;
--      else
--        datad(0) <= s_d_cont_pckt;
--        dataw(0) <= s_w_cont_pckt;
--      end if;
      
--      dataval(0) <= TTC_RXVALID;
--      datasel(0) <= s_dv_cont_pckt;

--      for i in 1 to c_PIPE_LENGTH-1 loop
--        datad(i)    <= datad(i-1);
--        dataw(i)    <= dataw(i-1);
--        dataval(i) <= dataval(i-1);
--        datasel(i) <= datasel(i-1);
--      end loop;

--      gbt_tx_bus_o.data_valid          <= dataval(c_PIPE_LENGTH-1);
--      gbt_tx_bus_o.data(79 downto 0)   <= datad(c_PIPE_LENGTH-1); 
--      gbt_tx_bus_o.data(111 downto 80) <= dataw(c_PIPE_LENGTH-1); 
--      gbt_tx_bus_o.is_data_sel         <= datasel(c_PIPE_LENGTH-1);
--      -- gbt_tx_bus_o(i).icec<="UUUU"; -- was not set
      
--    end if;
--  end process;

end rtl;

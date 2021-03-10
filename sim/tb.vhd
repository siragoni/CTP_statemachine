library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_misc.all;

use ieee.std_logic_textio.all;
use std.textio.all;

--use work.pack_cru_core.all;
--use work.pack_avalon_sim.all;

entity tb is
end tb;

architecture behavioral of tb is

  -- Avalon signals
  signal MMS_CLK : std_logic := '1';
  signal MMS_RESET   : std_logic;
  signal WAITREQ : std_logic_vector(0 downto 0);
--  signal ADDR    : Array32bit(0 downto 0);
  signal WR      : std_logic_vector(0 downto 0);
--  signal WRDATA  : Array32bit(0 downto 0);
  signal RD      : std_logic_vector(0 downto 0);
--  signal RDDATA  : Array32bit(0 downto 0);
  signal RDVAL   : std_logic_vector(0 downto 0);

  signal S_WAITREQ                          : std_logic_vector(15 downto 0);
--  signal S_ADDR                             : Array32bit(15 downto 0);
  signal S_WR                               : std_logic_vector(15 downto 0);
--  signal S_WRDATA                           : Array32bit(15 downto 0);
  signal S_RD                               : std_logic_vector(15 downto 0);
--  signal S_RDDATA                           : Array32bit(15 downto 0);
  signal S_RDVAL                            : std_logic_vector(15 downto 0);
  signal sy_waitreq, sy_wr, sy_rd, sy_rdval : std_logic_vector(2**3-1 downto 0);
--  signal sy_wrdata, sy_rddata, sy_addr      : Array32bit(0 to 2**3-1);

  --
  signal TTC_RXSRC    : std_logic                      := '0';
  signal TTC_RXCLK    : std_logic                      := '0';
  signal TTC_RXRST    : std_logic                      := '0';
  signal TTC_RXREADY  : std_logic                      := '1';
  signal TTC_RXVALID  : std_logic;
  signal TTC_RXD      : std_logic_vector(199 downto 0) := (others => '0');
  --
  signal data_to_read : std_logic_vector(31 downto 0);
  signal ctp_tick           : std_logic_vector(4 downto 0)                      := (others => '0');
  --
--  signal gbt_tx_bus_o : t_cru_gbt;
  signal secondword   : std_logic := '0';  
  signal ln           : natural := 0;
  signal started      : std_logic := '0';
  
begin

  --------------------------------------------------------------------------------
  -- Clock Drivers
  --------------------------------------------------------------------------------
  MMS_CLK <= not(MMS_CLK) after 5 ns;

  TTC_RXCLK   <= not (TTC_RXCLK) after 2080 ps;
  TTC_RXREADY <= '1';

  ctp_tick <= ctp_tick(3 downto 0) & not or_reduce(ctp_tick) when rising_edge(TTC_RXCLK);



--  ------------------------------------------------------------
--  -- Bus arbiter for wrappers
--  ------------------------------------------------------------
--  bus1 : avalon_mm_bus_arbitrer
--    generic map (NM     => 1,
--                 AWIDTH => 24,
--                 NHI    => 4)           -- no of address bits to decode
--    port map (CLK       => MMS_CLK,
--              RST       => MMS_RESET,
--              -------------------------
--              M_WAITREQ => WAITREQ,
--              M_ADDR    => ADDR,
--              M_WR      => WR,
--              M_WRDATA  => WRDATA,
--              M_RD      => RD,
--              M_RDDATA  => RDDATA,
--              M_RDVAL   => RDVAL,
--              --------------------------
--              S_WAITREQ => S_WAITREQ,
--              S_ADDR    => S_ADDR,
--              S_WR      => S_WR,
--              S_WRDATA  => S_WRDATA,
--              S_RD      => S_RD,
--              S_RDDATA  => S_RDDATA,
--              S_RDVAL   => S_RDVAL);


--  -- readdatavalid of unused address ranges (always return a response to reads)
--  process(MMS_CLK)
--  begin
--    if rising_edge(MMS_CLK) then
--      for i in 0 to 1 loop
--        S_RDVAL(i) <= S_RD(i) and not MMS_RESET;
--      end loop;

--      for i in 3 to 12 loop
--        S_RDVAL(i) <= S_RD(i) and not MMS_RESET;
--      end loop;

--      for i in 14 to 15 loop
--        S_RDVAL(i) <= S_RD(i) and not MMS_RESET;
--      end loop;
--    end if;
--  end process;

--  cmp_ttc_master : avalon_mm_bus_arbitrer generic map (NM => 1, AWIDTH => 20, NHI => 3)
--    port map (
--      CLK          => MMS_CLK,
--      RST          => MMS_RESET,
--      -------------------------
--      M_WAITREQ(0) => S_WAITREQ(2),
--      M_ADDR(0)    => S_ADDR(2),
--      M_WR(0)      => S_WR(2),
--      M_WRDATA(0)  => S_WRDATA(2),
--      M_RD(0)      => S_RD(2),
--      M_RDVAL(0)   => S_RDVAL(2),
--      M_RDDATA(0)  => S_RDDATA(2),
--      --------------------------
--      S_WAITREQ    => sy_waitreq,
--      S_ADDR       => sy_addr,
--      S_WR         => sy_wr,
--      S_WRDATA     => sy_wrdata,
--      S_RD         => sy_rd,
--      S_RDDATA     => sy_rddata,
--      S_RDVAL      => sy_rdval);
--  process(MMS_CLK)
--  begin
--    if rising_edge(MMS_CLK) then
--      for i in 0 to 3 loop
--        sy_rdval(i) <= sy_rd(i) and not MMS_RESET;
--      end loop;

--      for i in 5 to 7 loop
--        sy_rdval(i) <= sy_rd(i) and not MMS_RESET;
--      end loop;
--    end if;
--  end process;



  
--  ctp_emu : entity work.ctpemu
----    generic map (
----      QWIDTH => 192
----      )
--    port map (
--      MMS_CLK     => MMS_CLK,
--      MMS_RESET   => MMS_RESET,
--      MMS_WAITREQ => sy_waitreq(4),
--      MMS_ADDR    => sy_addr(4),
--      MMS_WR      => sy_wr(4),
--      MMS_WRDATA  => sy_wrdata(4),
--      MMS_RD      => sy_rd(4),
--      MMS_RDVAL   => sy_rdval(4),
--      MMS_RDDATA  => sy_rddata(4),
--      --
--      NEW_RESULT_I   => '0',
--      ACK_I          => '0',
--      HBID_CHECKED_I => (others => '0'),
--      --
--      CLK         => TTC_RXCLK,
--      RST         => TTC_RXRST,
--      TICK        => ctp_tick(4),
--      QVAL        => TTC_RXVALID,
--      Q           => TTC_RXD
--      );



--  DUT : entity work.ddg
--    generic map (g_NUM_GBT_LINKS => 1)
--    port map(
--      ---------------------
--      -- AVALON interface
--      ---------------------
--      MMS_CLK           => MMS_CLK,
--      MMS_RESET         => MMS_RESET,
--      MMS_WAITREQ       => S_WAITREQ(13),
--      MMS_ADDR          => S_ADDR(13)(19 downto 0),
--      MMS_WR            => S_WR(13),
--      MMS_WRDATA        => S_WRDATA(13),
--      MMS_RD            => S_RD(13),
--      MMS_RDVAL         => S_RDVAL(13),
--      MMS_RDDATA        => S_RDDATA(13),
--      --------------------
--      -- TRG interface
--      --------------------
--      TTC_RXCLK         => TTC_RXCLK,
--      TTC_RXRST         => TTC_RXRST,
--      TTC_RXVALID       => ctp_tick(4),
--      TTC_RXD           => TTC_RXD,
--      ------------------------------
--      -- GBT Downlink (CRU -> FE)
--      ------------------------------
--      gbt_tx_ready_i(0) => '1',

--      gbt_tx_bus_o                => gbt_tx_bus_o,
--      -----------------------------
--      -- GBT Uplink (FE -> CRU)
--      -----------------------------
--      gbt_rx_ready_i(0)           => '1',
--      gbt_rx_bus_i(0).data        => (others => '0'),
--      gbt_rx_bus_i(0).data_valid  => '1',  --todo check if this should be always 1 (or
--                                           --every 6th cycle?
--      gbt_rx_bus_i(0).icec        => (others => '0'),
--      gbt_rx_bus_i(0).is_data_sel => '0',

--      -------------------------------
--      -- DMA interface
--      -------------------------------
--      FCLK0 => open,
--      FVAL0 => open,
--      FSOP0 => open,
--      FEOP0 => open,
--      FD0   => open
--      );

  

--  main : process
--    variable data_to_write : std_logic_vector(31 downto 0);
--    variable target_add    : std_logic_vector(31 downto 0);

--  begin
--    RD         <= (others => '0');
--    WR         <= (others => '0');
--    target_add := std_logic_vector(resize(add_ddg_ctrl, target_add'length));

--    wait until rising_edge(MMS_CLK);
--    MMS_RESET <= '1';
--    wait until rising_edge(MMS_CLK);
--    MMS_RESET <= '0';

--    wait for 200 ns;


--    -- Assert ddg config reset
--    avalon_MM_WR (X"8000_0000", target_add, MMS_CLK, ADDR(0), WAITREQ(0), WR(0), WRDATA(0));
--    avalon_MM_WR (X"0000_0792", x"00D00008", MMS_CLK, ADDR(0), WAITREQ(0), WR(0), WRDATA(0));
--    wait until rising_edge(TTC_RXCLK);
--    TTC_RXRST <= '1';

--    wait for 200 ns;

--    wait until rising_edge(TTC_RXCLK);
--    TTC_RXRST <= '0';

    
--    ---------------------
--    -- Configure ctpemu
--    ---------------------

--    -- always go through idle
--    avalon_MM_WR(X"0000_0003",std_logic_vector(add_ctp_emu_runmode), MMS_CLK, ADDR(0), WAITREQ(0),WR(0), WRDATA(0));

--    -- Set periodic trigger mode
--    avalon_MM_WR(X"0000_0001",std_logic_vector(add_ctp_emu_runmode), MMS_CLK, ADDR(0), WAITREQ(0),WR(0), WRDATA(0));
--    -- set bcmax
--    avalon_MM_WR(std_logic_vector(to_unsigned(3560,32)),std_logic_vector(add_ctp_emu_bc_max) , MMS_CLK, ADDR(0), WAITREQ(0),WR(0), WRDATA(0));
--    -- set hbmax
--    avalon_MM_WR(std_logic_vector(to_unsigned(8,32)),std_logic_vector(add_ctp_emu_hb_max) , MMS_CLK, ADDR(0), WAITREQ(0),WR(0), WRDATA(0));     
--    -- set physdiv
--    avalon_MM_WR(std_logic_vector(to_unsigned(400,32)),std_logic_vector(add_ctp_emu_physdiv) , MMS_CLK, ADDR(0), WAITREQ(0),WR(0), WRDATA(0));
--    wait for 300 ns;
--    -- set hc
--    avalon_MM_WR(std_logic_vector(to_unsigned(5,32)),std_logic_vector(add_ctp_emu_hcdiv) , MMS_CLK, ADDR(0), WAITREQ(0),WR(0), WRDATA(0));
--    wait for 300 ns;
--    -- set cal
--    avalon_MM_WR(std_logic_vector(to_unsigned(5,32)),std_logic_vector(add_ctp_emu_caldiv) , MMS_CLK, ADDR(0), WAITREQ(0),WR(0), WRDATA(0));
--    wait for 300 ns;

    
--    -------------------
--    -- Configure DDG
--    -------------------
    
--    -- Set trigger mask, allow only PHYS trigger
--    data_to_write := X"0000_0010";
--    avalon_MM_WR (data_to_write, std_logic_vector(resize(add_ddg_trgmask, target_add'length)),
--                  MMS_CLK, ADDR(0), WAITREQ(0), WR(0), WRDATA(0));

--    --- Set rnd range to 4
--    data_to_write := X"0000_0004";
--    avalon_MM_WR (data_to_write, std_logic_vector(resize(add_ddg_ctrl3, target_add'length)), MMS_CLK, ADDR(0), WAITREQ(0), WR(0), WRDATA(0));
--    --- Set (max) packet size to 30, IDLE to 4
--    data_to_write := X"001e_0004";
--    avalon_MM_WR (data_to_write, std_logic_vector(resize(add_ddg_ctrl2, target_add'length)), MMS_CLK, ADDR(0), WAITREQ(0), WR(0), WRDATA(0));


--    ----------
--    -- START
--    ----------
--    -- Start DDG with external trigger
--    data_to_write := X"0000_0011";
--    avalon_MM_WR (data_to_write, target_add, MMS_CLK, ADDR(0), WAITREQ(0), WR(0), WRDATA(0));

--    wait for 300 ns;
    
--    -- Start CTP emu
--    avalon_MM_WR(X"0000_0000",std_logic_vector(add_ctp_emu_ctrl) , MMS_CLK, ADDR(0), WAITREQ(0),WR(0), WRDATA(0));

--    wait for 500 us;


--    ---------
--    -- STOP
--    ---------
--    -- Put CTP to idle (generate EOx)
--    avalon_MM_WR(X"0000_0003",std_logic_vector(add_ctp_emu_runmode), MMS_CLK, ADDR(0), WAITREQ(0),WR(0), WRDATA(0));

--    wait for 100 us;


--    report "end" severity error;


    
--    -------------------------
--    -- Test other features
--    -------------------------
    
--    -- Start DDG with external trigger
--    data_to_write := X"0000_0011";
--    avalon_MM_WR (data_to_write, target_add, MMS_CLK, ADDR(0), WAITREQ(0), WR(0), WRDATA(0));

--    wait for 300 ns; 

--    -- Set periodic trigger mode
--    avalon_MM_WR(X"0000_0001",std_logic_vector(add_ctp_emu_runmode), MMS_CLK, ADDR(0), WAITREQ(0),WR(0), WRDATA(0));
    
--    -- Start CTP emu again
--    avalon_MM_WR(X"0000_0000",std_logic_vector(add_ctp_emu_ctrl) , MMS_CLK, ADDR(0), WAITREQ(0),WR(0), WRDATA(0));

--    wait for 400 us;


--    -- Pause and set burst length to 5
--    data_to_write := X"0050_0111";
--    avalon_MM_WR (data_to_write, target_add, MMS_CLK, ADDR(0), WAITREQ(0), WR(0), WRDATA(0));

--    wait for 10 us;
    
--    -- Check burst
--    data_to_write := X"0050_1111";
--    avalon_MM_WR (data_to_write, target_add, MMS_CLK, ADDR(0), WAITREQ(0), WR(0), WRDATA(0));

--    wait for 150 us;
    
--    -- Stop burst, resume regular packets
--    data_to_write := X"0050_0011";
--    avalon_MM_WR (data_to_write, target_add, MMS_CLK, ADDR(0), WAITREQ(0), WR(0), WRDATA(0));

--    wait for 50 us;
    
--    -- Use random event size
--    data_to_write := X"0050_0013";
--    avalon_MM_WR (data_to_write, target_add, MMS_CLK, ADDR(0), WAITREQ(0), WR(0), WRDATA(0));
    
--    wait for 200 us;  

--    -- Use random number of IDLE between packets
--    data_to_write := X"0000_0015";
--    avalon_MM_WR (data_to_write, target_add, MMS_CLK, ADDR(0), WAITREQ(0), WR(0), WRDATA(0));

--    wait for 300 us;

--    -- Put random IDLEs between GBT words
--    data_to_write := X"0000_0019";
--    avalon_MM_WR (data_to_write, target_add, MMS_CLK, ADDR(0), WAITREQ(0), WR(0), WRDATA(0));

--    wait for 50 us;


--    report "fin de simulation" severity error;

--  end process main;


  
--p_log : process(TTC_RXCLK)
--  file logfile     : text open write_mode is "output.log";
--  variable row     : line;
--  variable fullrow : std_logic_vector(223 downto 0);
--begin
--  if rising_edge(TTC_RXCLK) then
    
--    if gbt_tx_bus_o.data_valid = '1' and gbt_tx_bus_o.is_data_sel = '1' then
--      fullrow := fullrow(111 downto 0) & gbt_tx_bus_o.data;
      
--     if gbt_tx_bus_o.data(47 downto 0) = x"CAFE00004004" then
--       writeline(logfile, row);
--     end if;
     
--     if secondword = '1' then
--       write(row, ln, right, 8);
--       hwrite(row, fullrow(111 downto 80), right, 12);
--       hwrite(row, fullrow(79 downto 0), right, 22);
--       hwrite(row, fullrow(223 downto 192), right, 12);
--       hwrite(row, fullrow(191 downto 112), right, 22);
              
--       writeline(logfile, row);
--       secondword <= '0';
--       ln <= ln + 1;
--     else
--       secondword <= '1';
--     end if;
--    end if;
--  end if;
--end process p_log;

end behavioral;

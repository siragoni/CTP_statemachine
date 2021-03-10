----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/12/2020 02:47:02 PM
-- Design Name: 
-- Module Name: IR_top - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity top_tc_statemachine is
  generic (
--    g_NUM_GBT_LINKS      : integer := 4
    g_NUM_BITS_ON_GBT_WORD : integer := 76
    );
    port (
    ipb_rst      : in  std_logic;          --  General Reset
    clk_bc_240   : in  std_logic;
    tick_bc      : in  std_logic;
    d_i_sel      : in  std_logic;
    start_command: in  std_logic;
    global_orbit : in  std_logic_vector (31 downto 0);
    s_TTC_RXD	 : in  std_logic_vector(119 downto 0);
--    d_i          : in  std_logic_vector (47 downto 0);   
    d_i          : in  std_logic_vector (67 downto 0); --> Generalising the problem to an unprecised number of bits.   
    bc_number_i  : in  std_logic_vector (11 downto 0); -- BC ID
    d_o          : out std_logic_vector (79 downto 0); -- GBT data
    dv_o         : out std_logic                       -- GBT data flag
          ); 
end top_tc_statemachine;

architecture Behavioral of top_tc_statemachine is
	signal s_trg_mask	: std_logic_vector(31  downto 0) :=  x"00000090";
--	signal s_TTC_RXD	: std_logic_vector(119 downto 0) := x"8000001C2C00000000200000000880";
	signal random_data_s: std_logic_vector(47  downto 0);
	signal data_s		: std_logic_vector(82  downto 0) := (others=> '0');
	signal s_rd_en		: std_logic := '0';
	signal s_wr_en		: std_logic := '1';
	
--	signal read_fifo	: std_logic := '0';
	signal read_fifo	: std_logic;
	signal empty_fifo	: std_logic := '1';
	
	signal ir_buffer_rd_en : std_logic := '0';
--	signal tc_buffer_rd_en : std_logic := '0';
	signal tc_buffer_wr_en : std_logic := '0';
	signal tc_buffer_rd_en : std_logic := '0';
	signal ir_buffer_wr_en : std_logic := '0';
	signal valid_data_pack : std_logic;
	signal valid_from_fifo : std_logic;
	signal read_buffer_from_fifo : std_logic := '0';
	
--	signal input_data_s    : std_logic_vector(47 downto 0) := x"000000000000";
	signal input_data_s    : std_logic_vector(67 downto 0) := x"00000000000000000";
--	signal count           : std_logic_vector(47 downto 0) := x"000000000000";
	signal count           : std_logic_vector(67 downto 0) := x"00000000000000000";
--	signal formated_data_s : std_logic_vector(79 downto 0);
	signal formated_data_s : std_logic_vector(82 downto 0);
	signal validated_data  : std_logic_vector(82 downto 0) := (others => '0');
		
--component prsg
--  port (
--		clk_i		: in  std_logic;
--		clk_en_i    : in  std_logic;
--		rst_i		: in  std_logic;
--		rand_no_o	: out std_logic_vector(47 downto 0)
--	);
--end component;

component packer
  generic (
    bits_to_get : integer := g_NUM_BITS_ON_GBT_WORD 
    );
  port (
		clk_i       : in  std_logic;
		clk_en_i    : in  std_logic;
		rst_i	    : in  std_logic;
--		data_i      : in  std_logic_vector(47 downto 0);
		data_i      : in  std_logic_vector(67 downto 0);
		BC_count_i  : in  std_logic_vector(11 downto 0);
		trg_i       : in  std_logic_vector(119 downto 0);
--		data_o      : out std_logic_vector(79 downto 0) -- 80 bits
        valid_flag	: out std_logic;
		data_o      : out std_logic_vector(82 downto 0) -- 80+ HB && EOx && SOx  bits
	);
end component;

component buffer_fifo
  port (
    clk_i  : IN  STD_LOGIC;
    data_i : IN  STD_LOGIC_VECTOR(82 DOWNTO 0);
    data_o : OUT STD_LOGIC_VECTOR(82 DOWNTO 0);
    valid  : IN  STD_LOGIC;
    read   : IN  STD_LOGIC
  );
end component;

component tc_fifo
  port (
    clk         : IN STD_LOGIC;
    srst        : IN STD_LOGIC;
--    din         : IN STD_LOGIC_VECTOR(79 DOWNTO 0);
    din         : IN STD_LOGIC_VECTOR(82 DOWNTO 0);
    wr_en       : IN STD_LOGIC;
    rd_en       : IN STD_LOGIC;
--    dout        : OUT STD_LOGIC_VECTOR(79 DOWNTO 0);
    dout        : OUT STD_LOGIC_VECTOR(82 DOWNTO 0);
    full        : OUT STD_LOGIC;
    overflow    : OUT STD_LOGIC;
    empty       : OUT STD_LOGIC;
    valid       : OUT STD_LOGIC;
    wr_rst_busy : OUT STD_LOGIC;
    rd_rst_busy : OUT STD_LOGIC
  );
end component;    


component tc_statemachine
  port (
		--------------------------------------------------------------------------------
    	-- CLK and RESET
    	-------------------------------------------------------------------------------
    	clk_i      : in  std_logic;
    	clk_en_i   : in  std_logic;
    	rst_i      : in  std_logic;
    	START      : in  std_logic;
    	--------------------------------------------------------------------------------
    	-- TRG interface
    	--------------------------------------------------------------------------------
    	trg_i      : in  std_logic_vector(119 downto 0);
    	trg_mask_i : in  std_logic_vector(31 downto 0);
    	ctp_orbit  : in  std_logic_vector(31 downto 0);
        ------------------------------------------------------
        -- Data Control
        ------------------------------------------------------
--        data_i		: in  std_logic_vector(79 downto 0);
        data_i		: in  std_logic_vector(82 downto 0);
--        data_rd_o	: out std_logic;
--        data_wr_o	: out std_logic;
        data_rd_fifo: out std_logic;
        read_buffer : out std_logic;
        empty_fifo  : in  std_logic;
        valid_fifo  : in  std_logic;
        --------------------------------------------------------------------------------
        -- GBT DATA OUTPUT
        --------------------------------------------------------------------------------
        d_o        : out std_logic_vector(79 downto 0);
        w_o        : out std_logic_vector(31 downto 0);
        dv_o       : out std_logic;
        --------------------------------------------------------------------------------
        -- MONITORING
        --------------------------------------------------------------------------------
        ev_cnt_o   : out std_logic_vector(31 downto 0);
        trgmisscnt_o : out std_logic_vector(31 downto 0)
	);
end component;

begin

--rnd_data : prsg
--  port map (
--		clk_i       => clk_bc_240,
--		clk_en_i    => tick_bc,
--		rst_i	    => ipb_rst,
--		rand_no_o   => random_data_s -- 48 bits
--	);

process (clk_bc_240, tick_bc)
    begin
        if (clk_bc_240'Event and clk_bc_240 = '1') then
            if (tick_bc = '1') then
                count <= count + '1';   -- counting up
            end if;
        end if;
    end process;

input_data_s <= d_i  when (d_i_sel = '0') else
                count when (d_i_sel = '1') else
                d_i;	
--                x"000000000000";	

input_data_packer : packer
  generic map ( bits_to_get => g_NUM_BITS_ON_GBT_WORD )
  port map (
		clk_i       => clk_bc_240,
		clk_en_i    => tick_bc,
		rst_i	    => ipb_rst,
--		data_i      => input_data_s,  -- 48 bits
		data_i      => d_i,  -- 48 bits
		BC_count_i  => bc_number_i,    -- 12 bits
		trg_i       => s_TTC_RXD,
		valid_flag  => valid_data_pack,
		data_o      => formated_data_s -- 82 bits
	);

ir_buffer_rd_en <= s_rd_en   and tick_bc;
tc_buffer_rd_en <= read_fifo and tick_bc;
--tc_buffer_rd_en <= tick_bc;
ir_buffer_wr_en <= s_wr_en   or  tick_bc;
tc_buffer_wr_en <= valid_data_pack and tick_bc;


-- TC FIFO

tc_fifo_inst: tc_fifo
  port map (
    clk           => clk_bc_240,
    srst          => ipb_rst,
    din           => formated_data_s,
    wr_en         => tc_buffer_wr_en,
--    rd_en         => ir_buffer_rd_en,
    rd_en         => tc_buffer_rd_en,
--    rd_en         => read_fifo,
    dout          => data_s,
    full          => open,
    overflow      => open,
--    valid         => open,
    valid         => valid_from_fifo,
    empty         => empty_fifo,
    wr_rst_busy   => open,
    rd_rst_busy   => open
  );


buffer_from_fifo: buffer_fifo
    port map(
        clk_i     => clk_bc_240,
        data_i    => data_s,
        data_o    => validated_data,
        valid     => valid_from_fifo,
        read      => read_buffer_from_fifo
    
    
    );


--ir_buffer: ir_buffer_fifo
--  port map (
--    clk           => clk_bc_240,
--    srst          => ipb_rst,
--    din           => formated_data_s,
--    wr_en         => ir_buffer_wr_en,
--    rd_en         => ir_buffer_rd_en,
--    dout          => data_s,
--    full          => open,
--    overflow      => open,
--    empty         => open,
--    wr_rst_busy   => open,
--    rd_rst_busy   => open
--  );

--validated_data <= data_s  when (valid_from_fifo = '1') else
--                  (others => '0');	


tc_state_machine : tc_statemachine
  port map (
    clk_i        => clk_bc_240,		
    clk_en_i     => tick_bc,		    
    rst_i        => ipb_rst,			
    START        => start_command,			
    --
    trg_i        => s_TTC_RXD(119 downto 0),
    trg_mask_i   => s_trg_mask,	
    ctp_orbit    => global_orbit,	
	data_i       => validated_data,
--	data_rd_o    => s_rd_en,
--	data_wr_o    => s_wr_en,
	data_rd_fifo => read_fifo,
	read_buffer  => read_buffer_from_fifo,
	empty_fifo   => empty_fifo,
	valid_fifo   => valid_from_fifo,
    --
    d_o          => d_o,
    w_o          => open,
    dv_o         => dv_o,
    --
    ev_cnt_o     => open,
    trgmisscnt_o => open
      	);



--tc_state_machine : tc_statemachine
--  port map (
--    clk_i        => clk_bc_240,		
--    clk_en_i     => tick_bc,		    
--    rst_i        => ipb_rst,			
--    START        => start_command,			
--    --
--    trg_i        => s_TTC_RXD(119 downto 0),
--    trg_mask_i   => s_trg_mask,	
--    ctp_orbit    => global_orbit,	
--	data_i       => data_s,
----	data_rd_o    => s_rd_en,
----	data_wr_o    => s_wr_en,
--	data_rd_fifo => read_fifo,
--	empty_fifo   => empty_fifo,
--	valid_fifo   => valid_from_fifo,
--    --
--    d_o          => d_o,
--    w_o          => open,
--    dv_o         => dv_o,
--    --
--    ev_cnt_o     => open,
--    trgmisscnt_o => open
--      	);

end Behavioral;

----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/04/2020 03:16:42 PM
-- Design Name: 
-- Module Name: TC_statemachine_tb - Behavioral
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
-- Testbench for the ctp readout state machine.
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_misc.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity TC_statemachine_tb is
--  Port ( );
end TC_statemachine_tb;

architecture Behavioral of TC_statemachine_tb is
	--constant period		: time : (1 us/ 240);
	signal CLK_0 	     	: std_logic := '1';
	signal reset_s	    	: std_logic := '0';
	signal clk_en_s		    : std_logic;
	signal start_command    : std_logic := '0';
	signal data_sel_s	    : std_logic := '0';
	signal data_s		    : std_logic_vector( 67 downto 0) := (others => '0');
--	signal data_s		    : std_logic_vector( 67 downto 0);
	signal bc_number_s     	: std_logic_vector( 11 downto 0) := (others => '0');
	signal generated_orbit	: std_logic_vector( 31 downto 0) := (others => '0');
	signal trigger_string	: std_logic_vector(119 downto 0) := (others => '0');
	signal gbt_connection	: std_logic_vector( 79 downto 0) := (others => '0');
	
	
	component top_tc_statemachine is
	  generic (
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
	end component;
	
begin

	CLK_0 <= not(CLK_0) after (1 us/240);
	data_sel_s <= '0';

	process(CLK_0)                          -- process for clk_en
        variable count  : integer := 0;
        begin
        -- Clk Enable
                if rising_edge(CLK_0) then
                        clk_en_s <='0';
                        if(count= 6) then
                                clk_en_s <='1';
                                count:=0;
                        end if;
                        count:=count+1;
                end if;
        end process;

--	process					-- process for reset
--  	begin
--    	-- Assert Reset
--    		reset_s <= '1';
--    		wait for (12ns);           --change time if needed
--    		reset_s <= '0';
--    		wait;
--  	end process;

--	process(CLK_0)                  -- process for input data
--        begin
--                if rising_edge(CLK_0) and clk_en_s = '1' then
--                        --data_s <= std_logic_vector(to_unsigned(to_integer(unsigned(data_s)) + 1, 48));
--			data_s <= (others => '0');
--                end if;
--        end process;

        process(CLK_0)
        begin
                if rising_edge(CLK_0) and clk_en_s = '1' then
		    if bc_number_s = x"DEB" then
			bc_number_s <= (others =>'0');
		    else
                        bc_number_s <= std_logic_vector(to_unsigned(to_integer(unsigned(bc_number_s)) + 1, 12));
		    end if;	
                end if;
        end process;

	

	comp_top: top_tc_statemachine
	    generic map ( g_NUM_BITS_ON_GBT_WORD => 76 )
        port map (
            ipb_rst      => reset_s,          --  General Reset
            clk_bc_240   => CLK_0,
            tick_bc      => clk_en_s,
            d_i_sel      => data_sel_s,
            start_command=> start_command,
            global_orbit => generated_orbit,
            s_TTC_RXD	 => trigger_string,
            d_i          => data_s,   
            bc_number_i  => bc_number_s, -- BC ID
            d_o          => gbt_connection, -- GBT data
            dv_o         => open  
        );





	p_main:process
	begin
	    	-- Assert Reset
--	    	data_s <= (others => '0');
    		reset_s <= '1';
    		wait for 200 ns;           --change time if needed
    		reset_s <= '0';
		    wait for 1000 ns;
		    wait until CLK_0 = '1';
--		    trigger_string <= x"000000000000000000000000000080"; -- assert SOx
		    start_command <= '1'; -- assert SOx
		    wait until CLK_0 = '1';
--		    trigger_string <= (others => '0');
		    start_command <= '0'; -- assert SOx
    		wait for 130 ns;           --change time if needed
		    wait until CLK_0 = '0';
--            data_s <= "11001100110011001100110011001100110011001100110011001100110011001100";
            data_s(0 downto 0) <= "1";
		    wait for 20 ns;           --change time if needed
            wait until CLK_0 = '1';
            data_s <= (others => '0');
            wait for 140 ns;           --change time if needed
		    wait until clk_en_s = '1';
--            data_s <= "11001100110011001100110011001100110011001100110011001100110011001100";
            data_s(0 downto 0) <= "1";
		    wait for 20 ns;           --change time if needed
            wait until clk_en_s = '0';
            data_s <= (others => '0');
            wait for 890 ns;
		    wait until clk_en_s = '1';
		    trigger_string <= x"000000000000000000000000000002"; -- assert SOx
		    wait until clk_en_s = '0';
		    
		    trigger_string <= (others => '0');
		    wait for 30 ms;
	
	end process;
	
	
	
end Behavioral;

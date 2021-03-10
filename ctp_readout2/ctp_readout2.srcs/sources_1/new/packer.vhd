----------------------------------------------------------------------------------
-- PACKER for State Machine.
-- It takes the input of 68+12 bits 
-- and produces the adequate output.
-- 
-- The way the logic works is that a
-- variable is defined which contains 
-- the meaningful number of bits.
--
-- This is modified in the top file
-- so that in Run 3 only the small number
-- have to be changed...
--
-- The crux of the problem is that both 
-- the CTP readout and the IR readout
-- should handle only a N < 80 bits,
-- while the GBT link can cope with 80 bits 
-- only.
--
-- This means that the rates would not be 
-- optimal. 
--
-- Unfortunately, this becomes more serious
-- for IR as it deals with 60 bits, than 
-- with TC which has 76 bits. 
--
--
-- It also generates a validation signal so 
-- that GBT is sending data only when it is high.
--
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_misc.all;


entity packer is
  generic (
    bits_to_get : integer := 76
    );

  port (
   clk_i		: in  std_logic;
   clk_en_i		: in  std_logic;
   rst_i		: in  std_logic;
--   data_i 		: in  std_logic_vector((bits_to_get - 13) downto 0); -- BC_ID + 1 due to the numbering
   data_i 		: in  std_logic_vector(67  downto 0); -- BC_ID + 1 due to the numbering
   bc_count_i	: in  std_logic_vector(11  downto 0);
   trg_i        : in  std_logic_vector(119 downto 0);
--   data_o		: out std_logic_vector(79  downto 0)
   valid_flag	: out std_logic;
   data_o		: out std_logic_vector(82  downto 0)
);
end packer;

architecture Behavioral of packer is
--  signal temp_data_s       : std_logic_vector(199 downto 0):= "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
  signal temp_data_s       : std_logic_vector(199 downto 0):= (others => '0');
--  signal temp_zeroes       : std_logic_vector(199 downto 0):= "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
--  signal s_store_count     : std_logic_vector(8   downto 0):= "000000000";
  signal s_store_count     : std_logic_vector(8   downto 0):= (others => '0');
  
  
  alias  s_HB              : std_logic is trg_i(1);
  alias  s_EOx_0           : std_logic is trg_i(8);
  alias  s_EOx_1           : std_logic is trg_i(10);

begin

    process(clk_i)
      variable store_count     : natural := 0;
      variable new_store_count : natural := 0;
      variable flag            : natural := 0;
      variable write_flag      : std_logic := '0';
    begin
      if rising_edge(clk_i) and clk_en_i = '1' then
        store_count := to_integer(unsigned(s_store_count(8 downto 0)));
        write_flag  := or_reduce(data_i);
        if( rst_i = '1' ) then
           s_store_count   <= (others => '0');
           temp_data_s     <= (others => '0');
           data_o          <= (others => '0');
           valid_flag      <= '0';
           new_store_count := 0;
           store_count     := 0;
           
           
-- PACKER RELEASE
        elsif( s_HB = '1' or s_EOx_0 = '1' or s_EOx_1 = '1' ) then           
            if( store_count > 0 ) then  
               data_o(82)                               <= s_EOx_1;  
               data_o(81)                               <= s_EOx_0;  
               data_o(80)                               <= s_HB;  
               data_o(79            downto store_count) <= (others => '0');
               data_o(store_count-1 downto 0          ) <= temp_data_s(store_count-1 downto 0);
               valid_flag      <= '1';
--               valid_flag      <= '0';
               s_store_count   <= (others => '0');
               temp_data_s     <= (others => '0');
               new_store_count := 0;
               store_count     := 0;
--               s_HB    <= '0';
--               s_EOx_0 <= '0';
--               s_EOx_1 <= '0';
            elsif( store_count = 0 ) then
               data_o(82)                               <= s_EOx_1;  
               data_o(81)                               <= s_EOx_0;  
               data_o(80)                               <= s_HB;  
               data_o(79            downto           0) <= (others => '0');
               valid_flag      <= '1';
--               valid_flag      <= '0';
            end if;
           
-- ZERO SUPPRESSION
        elsif( write_flag = '1' ) then      
            if( store_count > 79 ) then   
               data_o(82)          <= s_EOx_1;  
               data_o(81)          <= s_EOx_0;  
               data_o(80)          <= s_HB;  
               data_o(79 downto 0) <= temp_data_s(79 downto 0);
--               data_o              <= temp_data_s(79 downto 0);
               valid_flag      <= '1';
--               valid_flag      <= '0';
               new_store_count := store_count - 80 + bits_to_get;
               temp_data_s(199                        downto store_count-80+bits_to_get+1) <= (others => '0');
               temp_data_s(store_count-80+bits_to_get downto store_count-79              ) <= data_i((bits_to_get - 13) downto 0) & bc_count_i;
               temp_data_s(store_count-80             downto 0                           ) <= temp_data_s(store_count downto 80);
               s_store_count <= std_logic_vector(to_unsigned(new_store_count,s_store_count'length));
            elsif( store_count < 80 ) then   
               data_o          <= (others => '0');
               valid_flag      <= '0';
               new_store_count := store_count + bits_to_get;
               temp_data_s( store_count+bits_to_get-1 downto store_count ) <= data_i((bits_to_get - 13) downto 0) & bc_count_i;
               s_store_count <= std_logic_vector(to_unsigned(new_store_count,s_store_count'length));
            else
               s_store_count   <= (others => '0');
               temp_data_s     <= (others => '0');
               data_o          <= (others => '0');
               valid_flag      <= '0';
               new_store_count := 0;
               store_count     := 0;
            end if;
        
        elsif( write_flag = '0' ) then
            if( store_count > 79 ) then   
               data_o(82)          <= s_EOx_1;  
               data_o(81)          <= s_EOx_0;  
               data_o(80)          <= s_HB;  
               data_o(79 downto 0) <= temp_data_s(79 downto 0);
--               data_o              <= temp_data_s(79 downto 0);
               valid_flag      <= '1';
--               new_store_count := store_count - 80 + bits_to_get;
               new_store_count := store_count - 80;
               temp_data_s(199                        downto store_count-80+1) <= (others => '0');
--               temp_data_s(store_count-80+bits_to_get downto store_count-79              ) <= data_i((bits_to_get - 13) downto 0) & bc_count_i;
               temp_data_s(store_count-80             downto 0                           ) <= temp_data_s(store_count downto 80);
               s_store_count <= std_logic_vector(to_unsigned(new_store_count,s_store_count'length));
            else
               data_o <= (others => '0'); 
               valid_flag      <= '0';
--               temp_data_s(199                        downto 198) <= (others => '0'); 
            end if;
-- WORKING VERSION
--        elsif( store_count > 79 ) then   
----        elsif( (or_reduce(data_i) = '1') and store_count > 79 ) then   
--           data_o          <= temp_data_s(79 downto 0);
--           new_store_count := store_count - 80 + bits_to_get;
----           temp_data_s     <= temp_zeroes(199 downto new_store_count) & data_i((bits_to_get - 13) downto 0) & bc_count_i & temp_data_s(store_count downto 80);
----           temp_data_s(199                        downto store_count-80+bits_to_get+1) <= temp_zeroes(199 downto store_count-80+bits_to_get+1);
----           temp_data_s(199                        downto store_count-80+bits_to_get+1) <= temp_zeroes(199-(store_count-80+bits_to_get+1) downto 0);
--           temp_data_s(199                        downto store_count-80+bits_to_get+1) <= (others => '0');
----           temp_data_s(199                        downto new_store_count+1) <= (others => '0');
--           temp_data_s(store_count-80+bits_to_get downto store_count-79              ) <= data_i((bits_to_get - 13) downto 0) & bc_count_i;
--           temp_data_s(store_count-80             downto 0                           ) <= temp_data_s(store_count downto 80);
--           s_store_count <= std_logic_vector(to_unsigned(new_store_count,s_store_count'length));
--        elsif( store_count < 80 ) then   
----        elsif( (or_reduce(data_i) = '1') and store_count < 80 ) then   
--           data_o          <= (others => '0');
--           new_store_count := store_count + bits_to_get;
----           temp_data_s     <= temp_zeroes(199 downto new_store_count) & data_i((bits_to_get - 13) downto 0) & bc_count_i & temp_data_s(store_count downto 0);
--           temp_data_s( store_count+bits_to_get-1 downto store_count ) <= data_i((bits_to_get - 13) downto 0) & bc_count_i;
--           s_store_count <= std_logic_vector(to_unsigned(new_store_count,s_store_count'length));
        else
           s_store_count   <= (others => '0');
           temp_data_s     <= (others => '0');
           data_o          <= (others => '0');
           valid_flag      <= '0';
           new_store_count := 0;
           store_count     := 0;
	    end if;
	    
	    
	    
	    
	    
	    
	    
        
--        else 
--           if(store_count > 79) then
--             flag := 1;
--           else
--             flag := 0;
--           end if;
           
--           case flag is
--             when 1 =>  
--               data_o          <= temp_data_s(79 downto 0);
--               new_store_count := store_count - 80 + bits_to_get;
--    --           temp_data_s     <= temp_zeroes(199 downto new_store_count) & data_i & bc_count_i & temp_data_s(store_count downto 80);
--               temp_data_s     <= temp_zeroes((199-new_store_count) downto 0) & data_i((bits_to_get - 13) downto 0) & bc_count_i & temp_data_s(store_count downto 80);
--               s_store_count <= std_logic_vector(to_unsigned(new_store_count,s_store_count'length));

--             when 0 =>
--               data_o          <= (others => '0');
--               new_store_count := store_count + bits_to_get;
--    --           temp_data_s     <= temp_zeroes(199 downto new_store_count) & data_i & bc_count_i & temp_data_s(store_count downto 0);
--               temp_data_s     <= temp_zeroes(199 downto new_store_count) & data_i((bits_to_get - 13) downto 0) & bc_count_i & temp_data_s(store_count downto 0);
--               s_store_count <= std_logic_vector(to_unsigned(new_store_count,s_store_count'length));

--             when others =>
--               s_store_count   <= (others => '0');
--               temp_data_s     <= (others => '0');
--               new_store_count := 0;
--               store_count     := 0;
--            end case;   

--       end if;
     end if;
    end process;
    
end;

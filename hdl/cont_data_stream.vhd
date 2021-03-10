--------------------------------------------------------------------------------
-- Title      : CONT DATA STREAM
-- Project    : CRU
-------------------------------------------------------------------------------
-- File       : cont_data_stream.vhd
-- Author     : Filippo Costa (filippo.costa@cern.ch)
-- Company    :
-- Created    : 2016-xx-xx
-- Last update: 2018-10-04
-- Platform   : 
-- Standard   : VHDL_2008
-------------------------------------------------------------------------------
-- Description: 
-------------------------------------------------------------------------------
-- Copyright (c) 2016
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity cont_data_stream is
  port (
    --------------------------------------------------------------------------------
    -- CLOCK and RESET
    --------------------------------------------------------------------------------
    clk_i    : in  std_logic;
    clk_en_i : in  std_logic;
    rst_i    : in  std_logic;
    tpc_emu_i : in std_logic;
    --------------------------------------------------------------------------------
    -- GBT DATA output
    ----------------------------------------------------------------------------------
    d_o      : out std_logic_vector(79 downto 0);
    w_o      : out std_logic_vector(31 downto 0)
    );
end cont_data_stream;

architecture rtl of cont_data_stream is
    component prsg is
    port
      (
        clk_i        : in  std_logic;
        random_num_o : out std_logic_vector (23 downto 0)
        );
  end component prsg;

  function to_gbt_frame(
    s0hw0l : in std_logic_vector(4 downto 0);
    s0hw1l : in std_logic_vector(4 downto 0);
    s0hw2l : in std_logic_vector(4 downto 0);
    s0hw3l : in std_logic_vector(4 downto 0);
    s0hw0h : in std_logic_vector(4 downto 0);
    s0hw1h : in std_logic_vector(4 downto 0);
    s0hw2h : in std_logic_vector(4 downto 0);
    s0hw3h : in std_logic_vector(4 downto 0);
    s1hw0l : in std_logic_vector(4 downto 0);
    s1hw1l : in std_logic_vector(4 downto 0);
    s1hw2l : in std_logic_vector(4 downto 0);
    s1hw3l : in std_logic_vector(4 downto 0);
    s1hw0h : in std_logic_vector(4 downto 0);
    s1hw1h : in std_logic_vector(4 downto 0);
    s1hw2h : in std_logic_vector(4 downto 0);
    s1hw3h : in std_logic_vector(4 downto 0);
    s2hw0  : in std_logic_vector(4 downto 0);
    s2hw1  : in std_logic_vector(4 downto 0);
    s2hw2  : in std_logic_vector(4 downto 0);
    s2hw3  : in std_logic_vector(4 downto 0);
    s0adc  : in std_logic_vector(3 downto 0);
    s1adc  : in std_logic_vector(3 downto 0);
    s2adc  : in std_logic_vector(3 downto 0)
  ) return std_logic_vector is
    variable ret : std_logic_vector(111 downto 0);
  begin
    ret(43 downto 40) := s0adc;
    ret( 7 + 80 downto  4 + 80) := s1adc;
    ret(31 + 80 downto 28 + 80) := s2adc;

    ret(19 downto 16) := s0hw0l(4) & s0hw1l(4) & s0hw2l(4) & s0hw3l(4);
    ret(15 downto 12) := s0hw0l(3) & s0hw1l(3) & s0hw2l(3) & s0hw3l(3);
    ret(11 downto  8) := s0hw0l(2) & s0hw1l(2) & s0hw2l(2) & s0hw3l(2);
    ret( 7 downto  4) := s0hw0l(1) & s0hw1l(1) & s0hw2l(1) & s0hw3l(1);
    ret( 3 downto  0) := s0hw0l(0) & s0hw1l(0) & s0hw2l(0) & s0hw3l(0);

    ret(39 downto 36) := s0hw0h(4) & s0hw1h(4) & s0hw2h(4) & s0hw3h(4);
    ret(35 downto 32) := s0hw0h(3) & s0hw1h(3) & s0hw2h(3) & s0hw3h(3);
    ret(31 downto 28) := s0hw0h(2) & s0hw1h(2) & s0hw2h(2) & s0hw3h(2);
    ret(27 downto 24) := s0hw0h(1) & s0hw1h(1) & s0hw2h(1) & s0hw3h(1);
    ret(23 downto 20) := s0hw0h(0) & s0hw1h(0) & s0hw2h(0) & s0hw3h(0);

    ret(63 downto 60) := s1hw0l(4) & s1hw1l(4) & s1hw2l(4) & s1hw3l(4);
    ret(59 downto 56) := s1hw0l(3) & s1hw1l(3) & s1hw2l(3) & s1hw3l(3);
    ret(55 downto 52) := s1hw0l(2) & s1hw1l(2) & s1hw2l(2) & s1hw3l(2);
    ret(51 downto 48) := s1hw0l(1) & s1hw1l(1) & s1hw2l(1) & s1hw3l(1);
    ret(47 downto 44) := s1hw0l(0) & s1hw1l(0) & s1hw2l(0) & s1hw3l(0);

    ret(3 + 80 downto 0 + 80) := s1hw0h(4) & s1hw1h(4) & s1hw2h(4) & s1hw3h(4);
    ret(79 downto 76) := s1hw0h(3) & s1hw1h(3) & s1hw2h(3) & s1hw3h(3);
    ret(75 downto 72) := s1hw0h(2) & s1hw1h(2) & s1hw2h(2) & s1hw3h(2);
    ret(71 downto 68) := s1hw0h(1) & s1hw1h(1) & s1hw2h(1) & s1hw3h(1);
    ret(67 downto 64) := s1hw0h(0) & s1hw1h(0) & s1hw2h(0) & s1hw3h(0);

    ret(27 + 80 downto 24 + 80) := s2hw0(4) & s2hw1(4) & s2hw2(4) & s2hw3(4);
    ret(23 + 80 downto 20 + 80) := s2hw0(3) & s2hw1(3) & s2hw2(3) & s2hw3(3);
    ret(19 + 80 downto 16 + 80) := s2hw0(2) & s2hw1(2) & s2hw2(2) & s2hw3(2);
    ret(15 + 80 downto 12 + 80) := s2hw0(1) & s2hw1(1) & s2hw2(1) & s2hw3(1);
    ret(11 + 80 downto  8 + 80) := s2hw0(0) & s2hw1(0) & s2hw2(0) & s2hw3(0);

    return ret;
  end function;

    
  constant SYNC_PAT_A   : std_logic_vector (4 downto 0)     := "10101";
  constant SYNC_PAT_B   : std_logic_vector (4 downto 0)     := "01010";
    
  -- UNSIGNED
  signal u_pat_cnt   : unsigned(31 downto 0):=(others => '0');
  signal s_prsg_num  : std_logic_vector(23 downto 0);
  signal sclk : std_logic_vector(3 downto 0);
  signal s_tpc_sync_end, s_tpc_data : std_logic;
  signal s_rst, s_rstpre            : std_logic;
  signal frame_end, frame_end_old   : std_logic;
  signal rsten : std_logic; 
begin

  cmp_prsg : prsg
    port map(
      clk_i        => clk_i,
      random_num_o => s_prsg_num
      );


  --------------------------------------------------------------------------------
  -- 8-frame aligned reset
  --------------------------------------------------------------------------------  
  frame_end <= std_logic(u_pat_cnt(3));
  
  p_rst : process(clk_i)
  begin
    if rising_edge(clk_i) then
      frame_end_old <= frame_end;
      s_rstpre      <= ((frame_end xor frame_end_old) or s_rstpre) and rst_i;

      if clk_en_i = '1' then
        s_rst <= s_rstpre;
      else
        s_rst <= s_rst and rst_i;
      end if;
      
    end if;
  end process p_rst;

  
  --------------------------------------------------------------------------------
  -- process to generate a counter in continuous way
  --------------------------------------------------------------------------------
  p_cnt : process(clk_i)
  begin
    if rising_edge(clk_i) then
      if s_rst = '1' then
        u_pat_cnt <= (others => '0');
      elsif clk_en_i = '1' then
        u_pat_cnt <= u_pat_cnt + 1;
      end if;
    end if;
  end process p_cnt;


  --------------------------------------------------------------------------------
  -- After reset send SYNC (8 frame) then random data
  --------------------------------------------------------------------------------
  process(clk_i)
  begin
    if rising_edge(clk_i) then
      if s_rst = '1' then
        s_tpc_sync_end <= '0';
        s_tpc_data <= '0';
      else
        if u_pat_cnt = 9 then
          s_tpc_sync_end <= '1';
        else
          s_tpc_sync_end <= '0';
        end if;

        s_tpc_data <= s_tpc_data or s_tpc_sync_end;
      end if;
      
    end if;
  end process;

  sclk <= u_pat_cnt(2) & u_pat_cnt(2) & u_pat_cnt(2) & u_pat_cnt(2);
  
  process(clk_i)
  variable temp : std_logic_vector(111 downto 0);
  begin
    if rising_edge(clk_i) then
      if s_rst = '1' then
        d_o <= (others => '0');
        w_o <= (others => '0');
      else
        if tpc_emu_i = '1' then
          if s_tpc_data = '0' then
            if u_pat_cnt > 0 and u_pat_cnt <= 4 then
                temp := to_gbt_frame(
                SYNC_PAT_A, SYNC_PAT_A, SYNC_PAT_B, SYNC_PAT_B, -- S0 L
                SYNC_PAT_A, SYNC_PAT_A, SYNC_PAT_B, SYNC_PAT_B, -- S0 H
                SYNC_PAT_A, SYNC_PAT_A, SYNC_PAT_B, SYNC_PAT_B, -- S1 L
                SYNC_PAT_A, SYNC_PAT_A, SYNC_PAT_B, SYNC_PAT_B, -- S1 H
                SYNC_PAT_A, SYNC_PAT_A, SYNC_PAT_B, SYNC_PAT_B, -- S2
                sclk, sclk, sclk);
				d_o<=temp(79 downto 0);
				w_o<=temp(111 downto 80);
  
              
            elsif u_pat_cnt = 5 or u_pat_cnt = 7 then
                temp := to_gbt_frame(
                SYNC_PAT_A, SYNC_PAT_A, SYNC_PAT_A, SYNC_PAT_A, -- S0 L
                SYNC_PAT_A, SYNC_PAT_A, SYNC_PAT_A, SYNC_PAT_A, -- S0 H
                SYNC_PAT_A, SYNC_PAT_A, SYNC_PAT_A, SYNC_PAT_A, -- S1 L
                SYNC_PAT_A, SYNC_PAT_A, SYNC_PAT_A, SYNC_PAT_A, -- S1 H
                SYNC_PAT_A, SYNC_PAT_A, SYNC_PAT_A, SYNC_PAT_A, -- S2
                sclk, sclk, sclk);
				d_o<=temp(79 downto 0);
				w_o<=temp(111 downto 80);
  
              
            else
                temp := to_gbt_frame(
                SYNC_PAT_B, SYNC_PAT_B, SYNC_PAT_B, SYNC_PAT_B, -- S0 L
                SYNC_PAT_B, SYNC_PAT_B, SYNC_PAT_B, SYNC_PAT_B, -- S0 H
                SYNC_PAT_B, SYNC_PAT_B, SYNC_PAT_B, SYNC_PAT_B, -- S1 L
                SYNC_PAT_B, SYNC_PAT_B, SYNC_PAT_B, SYNC_PAT_B, -- S1 H
                SYNC_PAT_B, SYNC_PAT_B, SYNC_PAT_B, SYNC_PAT_B, -- S2
                sclk, sclk, sclk);
				d_o<=temp(79 downto 0);
				w_o<=temp(111 downto 80);
            end if;
          else
            d_o <= s_prsg_num(11 downto 0) & s_prsg_num & sclk & s_prsg_num(22 downto 7) & s_prsg_num;
            w_o <= sclk & s_prsg_num(23 downto 4) & sclk & s_prsg_num(3 downto 0);
  
          end if;
        else
          d_o <= std_logic_vector(u_pat_cnt(15 downto 0)) &
                 std_logic_vector(u_pat_cnt) &
                 std_logic_vector(u_pat_cnt);
          w_o <= x"0000" & std_logic_vector(u_pat_cnt(31 downto 16));
        end if;
      end if;
    end if;
  end process;
  
end rtl;

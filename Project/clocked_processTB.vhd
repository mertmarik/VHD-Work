library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
  
entity clocked_processTB is
end entity;
  
architecture sim of clocked_processTB is

    constant ClockFrequency : integer := 100e6;
    constant ClockPeriod    : time    := 1 ms / ClockFrequency;
  
    signal Clk    : std_logic := '1';
    signal nRst   : std_logic := '0';
    signal Input  : std_logic := '0';
    signal Output : std_logic;
  
begin
  
    -- The Device Under Test (DUT)
    i_FlipFlop : entity work.flip_flop(rtl)
    port map(
        Clk    => Clk,
        nRst   => nRst,
        Input  => Input,
        Output => Output);
  
   
    Clk <= not Clk after ClockPeriod / 2;
  
    
    process is
    begin
        
        nRst <= '1';
  
        wait for 20 ps;
        Input <= '1';
        wait for 22 ps;
        Input <= '0';
        wait for 6 ps;
        Input <= '1';
        wait for 20 ps;
  
        
        nRst <= '0';
  
        wait;
    end process;
  
end architecture;
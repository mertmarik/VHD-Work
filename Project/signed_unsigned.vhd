library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity signed_unsigned is
    end entity;
      
    architecture sim of signed_unsigned is

        signal unsCnt : unsigned(7 downto 0) := (others => '0');
        signal sigCnt : signed(7 downto 0) := (others => '0');
        
        signal uns4 : unsigned(3 downto 0) := "1000";
        signal sig4 : signed(3 downto 0) := "1000";

        signal uns8 : unsigned(7 downto 0) := (others => '0');
        signal sig8 : signed(7 downto 0) := (others => '0');

        begin
          
            process is
            begin
               
               wait for 10 ps;
               --Wrapping Counter

               unsCnt <= unsCnt+1;
               sigCnt <= sigCnt+1;

               --Adding Signals
               uns8 <= uns8 + uns4;
               sig8 <= sig8+ sig4;
                        
            end process;
           
    end architecture;
library ieee;
use ieee.std_logic_1164.all;

entity std_logic_vector_code is
    end entity;
      
    architecture sim of std_logic_vector_code is

        signal slv1 : std_logic_vector(7 downto 0);
        signal slv2 : std_logic_vector(7 downto 0) := (others => '0');
        signal slv3 : std_logic_vector(7 downto 0) := (others => '1');
        signal slv4 : std_logic_vector(7 downto 0) := x"AA";
        signal slv5 : std_logic_vector(0 to 7) := "10101010";
        signal slv6 : std_logic_vector(7 downto 0) := "00000001";
        begin
          
            process is
            begin
                -- Shift Register
               wait for 10 ps;
               for i in slv6'left downto slv6'right + 1 loop
                    slv6(i) <= slv6(i-1);
                end loop;

                slv6(slv6'right) <= slv6(slv6'left);
                        
            end process;
           
    end architecture;
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
  
entity generic_mux is
generic(dataWidth : integer);
port(
    -- Inputs
    Sig1 : in unsigned(dataWidth-1 downto 0);
    Sig2 : in unsigned(dataWidth-1 downto 0);
    Sig3 : in unsigned(dataWidth-1 downto 0);
    Sig4 : in unsigned(dataWidth-1 downto 0);
  
    Sel  : in unsigned(1 downto 0);
  
    -- Outputs
    Output : out unsigned(dataWidth-1 downto 0));
end entity;
  
architecture rtl of generic_mux is
begin
  
    process(Sel, Sig1, Sig2, Sig3, Sig4) is
    begin
  
        case Sel is
            when "00" =>
                Output <= Sig1;
            when "01" =>
                Output <= Sig2;
            when "10" =>
                Output <= Sig3;
            when "11" =>
                Output <= Sig4;
            when others => -- 'U', 'X', '-', etc.
                Output <= (others => 'X');
        end case;
  
    end process;
  
end architecture;
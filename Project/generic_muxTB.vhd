library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
  
entity generic_muxTB is
end entity;
  
architecture sim of generic_muxTB is

    constant dataWidth : integer := 8;
  
    signal Sig1 : unsigned(dataWidth-1 downto 0) := x"AA";
    signal Sig2 : unsigned(dataWidth-1 downto 0) := x"BB";
    signal Sig3 : unsigned(dataWidth-1 downto 0) := x"CC";
    signal Sig4 : unsigned(dataWidth-1 downto 0) := x"DD";
  
    signal Sel : unsigned(1 downto 0) := (others => '0');
  
    signal Output : unsigned(dataWidth-1 downto 0);
  
begin
  
    
    i_Mux1 : entity work.generic_mux(rtl) 
    generic map(dataWidth => dataWidth)
    port map(
        Sel    => Sel,
        Sig1   => Sig1,
        Sig2   => Sig2,
        Sig3   => Sig3,
        Sig4   => Sig4,
        Output => Output);
  
    
    process is
    begin
        wait for 10 ps;
        Sel <= Sel + 1;
        wait for 10 ps;
        Sel <= Sel + 1;
        wait for 10 ps;
        Sel <= Sel + 1;
        wait for 10 ps;
        Sel <= Sel + 1;
        wait for 10 ps;
        Sel <= "UU";
        wait;
    end process;
  
end architecture;
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
  
entity port_mapTB is
end entity;
  
architecture sim of port_mapTB is
  
    signal Sig1 : unsigned(7 downto 0) := x"AA";
    signal Sig2 : unsigned(7 downto 0) := x"BB";
    signal Sig3 : unsigned(7 downto 0) := x"CC";
    signal Sig4 : unsigned(7 downto 0) := x"DD";
  
    signal Sel : unsigned(1 downto 0) := (others => '0');
  
    signal Output : unsigned(7 downto 0);
  
begin
  
    -- An instance of T15_Mux with architecture rtl
    i_Mux1 : entity work.mux_code(rtl) port map(
        Sel    => Sel,
        Sig1   => Sig1,
        Sig2   => Sig2,
        Sig3   => Sig3,
        Sig4   => Sig4,
        Output => Output);
  
    -- Testbench process
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
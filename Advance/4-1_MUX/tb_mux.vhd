library ieee;
use ieee.std_logic_1164.all;

entity tb_mux is
end entity;

architecture test of tb_mux is
  signal S0,S1,X1,X2,X3,X4,Y : std_logic;
  begin
    uut: entity work.mux 
      port map(
        s0 => S0,
        s1 => S1,
        x1 => X1,
        x2 => X2,
        x3 => X3,
        x4 => X4,
        y => Y
      );
    process
      begin
        S0 <= '0';S1 <= '0';X1 <= '0'; wait for 5 ns;
        report "S0 = '0',S1 = '0',X1 = '0',Y="&std_logic'image(Y);
        S0 <= '0';S1 <= '0';X1 <= '1'; wait for 5 ns;
        report "S0 = '0',S1 = '0',X1 = '1',Y="&std_logic'image(Y);
        
        S0 <= '0';S1 <= '1';X2 <= '0'; wait for 5 ns;
        report "S0 = '0',S1 = '1',X2 = '0',Y="&std_logic'image(Y);
        S0 <= '0';S1 <= '1';X2 <= '1'; wait for 5 ns;
        report "S0 = '0',S1 = '1',X2 = '1',Y="&std_logic'image(Y);
        
        S0 <= '1';S1 <= '0';X3 <= '0'; wait for 5 ns;
        report "S0 = '1',S1 = '0',X3 = '0',Y="&std_logic'image(Y);
        S0 <= '1';S1 <= '0';X3 <= '1'; wait for 5 ns;
        report "S0 = '1',S1 = '0',X3 = '1',Y="&std_logic'image(Y);
        
        S0 <= '1';S1 <= '1';X4 <= '0'; wait for 5 ns;
        report "S0 = '1',S1 = '1',X4 = '0',Y="&std_logic'image(Y);
        S0 <= '1';S1 <= '1';X4 <= '1'; wait for 5 ns;
        report "S0 = '1',S1 = '1',X4 = '1',Y="&std_logic'image(Y);
        
        wait;
    end process;
end architecture;
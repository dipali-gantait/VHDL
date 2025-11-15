library ieee;
use ieee.std_logic_1164.all;

entity tb_mux is
end entity;

architecture test of tb_mux is
  signal S0,S1,S2,X0,X1,X2,X3,X4,X5,X6,X7,Y : std_logic;
  begin
    uut: entity work.mux 
      port map(
        s0 => S0,
        s1 => S1,
		s2 => S2,
		x0 => X0,
        x1 => X1,
        x2 => X2,
        x3 => X3,
        x4 => X4,
		x5 => X5,
		x6 => X6,
		x7 => X7,
        y => Y
      );
    process
      begin
		X0 <= '0';X1 <= '0';X2 <= '0';X3 <= '0';X4 <= '0';X5 <= '0';X6 <= '0';X7 <= '0';
        S0 <= '0';S1 <= '0';S2 <= '0';X0 <= '0'; wait for 5 ns; X0 <= '1'; wait for 5 ns;
        
		X0 <= '0';X1 <= '0';X2 <= '0';X3 <= '0';X4 <= '0';X5 <= '0';X6 <= '0';X7 <= '0';
		S0 <= '0';S1 <= '0';S2 <= '1';X1 <= '0'; wait for 5 ns; X1 <= '1'; wait for 5 ns;
		
		X0 <= '0';X1 <= '0';X2 <= '0';X3 <= '0';X4 <= '0';X5 <= '0';X6 <= '0';X7 <= '0';
		S0 <= '0';S1 <= '1';S2 <= '0';X2 <= '0'; wait for 5 ns; X2 <= '1'; wait for 5 ns;
		
		X0 <= '0';X1 <= '0';X2 <= '0';X3 <= '0';X4 <= '0';X5 <= '0';X6 <= '0';X7 <= '0';
		S0 <= '0';S1 <= '1';S2 <= '1';X3 <= '0'; wait for 5 ns; X3 <= '1'; wait for 5 ns;
		
		X0 <= '0';X1 <= '0';X2 <= '0';X3 <= '0';X4 <= '0';X5 <= '0';X6 <= '0';X7 <= '0';
		S0 <= '1';S1 <= '0';S2 <= '0';X4 <= '0'; wait for 5 ns; X4 <= '1'; wait for 5 ns;
		
		X0 <= '0';X1 <= '0';X2 <= '0';X3 <= '0';X4 <= '0';X5 <= '0';X6 <= '0';X7 <= '0';
		S0 <= '1';S1 <= '0';S2 <= '1';X5 <= '0'; wait for 5 ns; X5 <= '1'; wait for 5 ns;
		
		X0 <= '0';X1 <= '0';X2 <= '0';X3 <= '0';X4 <= '0';X5 <= '0';X6 <= '0';X7 <= '0';
		S0 <= '1';S1 <= '1';S2 <= '0';X6 <= '0'; wait for 5 ns; X6 <= '1'; wait for 5 ns;
		
		X0 <= '0';X1 <= '0';X2 <= '0';X3 <= '0';X4 <= '0';X5 <= '0';X6 <= '0';X7 <= '0';
		S0 <= '1';S1 <= '1';S2 <= '1';X7 <= '0'; wait for 5 ns; X7 <= '1'; wait for 5 ns;
        wait;
    end process;
end architecture;
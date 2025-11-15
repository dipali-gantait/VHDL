library ieee;
use ieee.std_logic_1164.all;

entity tb_mux is
end entity;

architecture test of tb_mux is 
	signal S0,S1,X1,X2,X3,X4,Y : std_logic ;
	begin 
		uut : entity work.mux
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
				---Check X1
				S0 <= '0';S1 <= '0';X1 <= '0';X2 <= '0';X3 <= '0';X4 <= '0';wait for 5 ns;
				S0 <= '0';S1 <= '0';X1 <= '1';X2 <= '0';X3 <= '0';X4 <= '0';wait for 5 ns;
				---Check X2
				S0 <= '0';S1 <= '1';X2 <= '0';X1 <= '0';X3 <= '0';X4 <= '0';wait for 5 ns;
				S0 <= '0';S1 <= '1';X2 <= '1';X1 <= '0';X3 <= '0';X4 <= '0';wait for 5 ns;
				---Check X3
				S0 <= '1';S1 <= '0';X3 <= '0';X2 <= '0';X1 <= '0';X4 <= '0';wait for 5 ns;
				S0 <= '1';S1 <= '0';X3 <= '1';X2 <= '0';X1 <= '0';X4 <= '0';wait for 5 ns;
				---Check X4
				S0 <= '1';S1 <= '1';X4 <= '0';X2 <= '0';X3 <= '0';X1 <= '0';wait for 5 ns;
				S0 <= '1';S1 <= '1';X4 <= '1';X2 <= '0';X3 <= '0';X1 <= '0';wait for 5 ns;
				wait;
		end process;
end architecture;
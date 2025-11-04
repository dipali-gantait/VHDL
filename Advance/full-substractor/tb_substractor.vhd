library ieee;
use ieee.std_logic_1164.all;

entity tb_substractor is
end entity;

architecture test of tb_substractor is
	signal X,Y,Z,D,B : std_logic ;
	begin 
		uut : entity work.substractor
			port map(
				x => X,
				y => Y,
				z => Z,
				d => D,
				b => B
			);
		process
			begin 
				X <= '0'; Y <= '0' ; Z <= '0';wait for 10 ns;
				X <= '0'; Y <= '0' ; Z <= '1';wait for 10 ns;
				X <= '0'; Y <= '1' ; Z <= '0';wait for 10 ns;
				X <= '0'; Y <= '1' ; Z <= '1';wait for 10 ns;
				X <= '1'; Y <= '0' ; Z <= '0';wait for 10 ns;
				X <= '1'; Y <= '0' ; Z <= '1';wait for 10 ns;
				X <= '1'; Y <= '1' ; Z <= '0';wait for 10 ns;
				X <= '1'; Y <= '1' ; Z <= '1';wait for 10 ns;
				wait;
		end process;
end architecture;
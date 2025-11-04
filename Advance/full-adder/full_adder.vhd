library ieee;
use ieee.std_logic_1164.all;
---Full adder using basic gate
entity full_adder is
	port(
		x,y,z: in std_logic;
		s,c: out std_logic
	);
end entity;

architecture logic of full_adder is
	begin
		s <= x xor y xor z;
		c <= (z and (x xor y)) or (x and y);
end architecture;
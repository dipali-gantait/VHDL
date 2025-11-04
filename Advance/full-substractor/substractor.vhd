library ieee;
use ieee.std_logic_1164.all;

entity substractor is
	port(
		x : in std_logic ;
		y : in std_logic ;
		z : in std_logic ;
		d : out std_logic ;
		b : out std_logic 
	);
end entity;

architecture logic of substractor is
	begin
		d <= x xor y xor z;
		b <= (z and (x xnor y)) or (not x and y);
end architecture;
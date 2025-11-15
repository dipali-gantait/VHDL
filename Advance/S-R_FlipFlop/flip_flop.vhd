library ieee;
use ieee.std_logic_1164.all;

entity flip_flop is
	port(
		s,r,clk :in std_logic;
		q : in std_logic;
		qn : out std_logic 
	);
end entity;

architecture logic of flip_flop is
	begin
		
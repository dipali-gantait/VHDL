library ieee;
use ieee.std_logic_1164.all;

entity mux is
	port(
		s0 , s1,s2:in std_logic ;
		x0,x1,x2,x3,x4,x5,x6,x7:in std_logic ;
		y : out std_logic
	);
end entity;

architecture logic of mux is 
	begin 
		y <=(not s0 and not s1 and not s2 and x0) ---000
					or 
			(not s0 and not s1 and s2 and x1)---001
					or 
			(not s0 and s1 and not s2 and x2) ---010
					or 
			(not s0 and s1 and s2 and x3)---011
					or 
			(s0 and not s1 and not s2 and x4)---100
					or 
			(s0 and not s1 and s2 and x5)---101
					or 
			(s0 and s1 and not s2 and x6)---110
					or 
			(s0 and s1 and s2 and x7);---111
end architecture;		
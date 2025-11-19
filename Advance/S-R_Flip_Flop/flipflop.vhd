library ieee;
use ieee.std_logic_1164.all;

entity flip_flop is
	port(
		s,r,clk :in std_logic;
		q : out std_logic;
		qn : out std_logic 
	);
end entity;

architecture logic of flip_flop is
  signal wire_q: std_logic := '0';
  signal wire_qn : std_logic;
	begin
	  process
	    begin 
	      if clk = '1' then 
		      wire_qn <= (r nand clk) nand wire_q;
		      wire_q <= (s nand clk) nand wire_qn;
		    end if;
		    wait;
		end process;
		q <= wire_q;
		qn <= wire_qn;
end architecture;
library ieee;
use ieee.std_logic_1164.all;

entity tb_full_adder is
end entity;

architecture test of tb_full_adder is
	signal P,Q,R,S,C : std_logic;
	begin
		UUT: entity work.full_adder
			port map(
				x => P,
				y => Q,
				z => R,
				s => S,
				c => C
			);
		process
			begin
				P <= '0';Q <= '0';R <= '0';wait for 10 ns;
				report "P = '0' , Q = '0' , R = '0',S="&std_logic'image(S)&"C ="&std_logic'image(C);
				
				P <= '0';Q <= '0';R <= '1';wait for 10 ns;
				report "P = '0' , Q = '0' , R = '1',S="&std_logic'image(S)&"C ="&std_logic'image(C);
				
				P <= '0';Q <= '1';R <= '0';wait for 10 ns;
				report "P = '0' , Q = '1' , R = '0',S="&std_logic'image(S)&"C ="&std_logic'image(C);
				
				P <= '0';Q <= '1';R <= '1';wait for 10 ns;
				report "P = '0' , Q = '1' , R = '1',S="&std_logic'image(S)&"C ="&std_logic'image(C);
				
				P <= '1';Q <= '0';R <= '0';wait for 10 ns;
				report "P = '1' , Q = '0' , R = '0',S="&std_logic'image(S)&"C ="&std_logic'image(C);
				
				P <= '1';Q <= '0';R <= '1';wait for 10 ns;
				report "P = '1' , Q = '0' , R = '1',S="&std_logic'image(S)&"C ="&std_logic'image(C);
				
				P <= '1';Q <= '1';R <= '0';wait for 10 ns;
				report "P = '1' , Q = '1' , R = '0',S="&std_logic'image(S)&"C ="&std_logic'image(C);
				
				P <= '1';Q <= '1';R <= '1';wait for 10 ns;
				report "P = '1' , Q = '1' , R = '1',S="&std_logic'image(S)&"C ="&std_logic'image(C);
				wait;
		end process;
end architecture;
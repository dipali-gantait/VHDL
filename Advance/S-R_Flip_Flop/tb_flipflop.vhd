library ieee;
use ieee.std_logic_1164.all;

entity tb_flip_flop is
end entity;

architecture test of tb_flip_flop is
  signal S,R,CLK,Q,Qn : std_logic;
  begin
    uut: entity work.flip_flop
    port map(
      s => S,
      r => R,
      clk => CLK,
      q => Q,
      qn => Qn 
    );
    process
      begin
        CLK <= '1';
        S <= '0' ; R <= '0';wait for 10 ns;
        S <= '0' ; R <= '1';wait for 10 ns;
        S <= '1' ; R <= '0';wait for 10 ns;
        S <= '1' ; R <= '1';wait for 10 ns;
        
        CLK <= '0';
        S <= '0' ; R <= '0';wait for 10 ns;
        S <= '0' ; R <= '1';wait for 10 ns;
        S <= '1' ; R <= '0';wait for 10 ns;
        S <= '1' ; R <= '1';wait for 10 ns;
        wait;
    end process;
end architecture;
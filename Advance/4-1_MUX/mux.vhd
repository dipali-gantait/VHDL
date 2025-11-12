library ieee;
use ieee.std_logic_1164.all;

entity mux is
  port(
    s0 : in std_logic;
    s1 : in std_logic;
    x1,x2,x3,x4 : in std_logic;
    y : out std_logic
  );
end entity;

architecture logic of mux is
  begin
    y <= (not s0 and not s1 and x1) or (not s0 and s1 and x2) or (s0 and not s1 and x3) or (s0 and s1 and x4);
end architecture;
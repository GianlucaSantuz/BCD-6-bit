library ieee;
use ieee.std_logic_1164.all;

entity Mux2to1 is
	port(x,y,s:in std_logic;
		m:out std_logic);
end Mux2to1;


architecture Behavior of Mux2to1 is
begin
	P1:m<=(not s and x) or (s and y);
end Behavior;
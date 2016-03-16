library ieee;
use ieee.std_logic_1164.all;

entity mux2to1_4bit is
	port(x,y:in std_logic_vector(3 downto 0);
		s:in std_logic;
		m:out std_logic_vector(3 downto 0));
end Mux2to1_4bit;


architecture behavior of Mux2to1_4bit is

component Mux2to1 is
	port(x,y,s:in std_logic;
		m:out std_logic);
end component;

begin
	mux1:Mux2to1 port map(x(0),y(0),s,m(0));
	mux2:Mux2to1 port map(x(1),y(1),s,m(1));
	mux3:Mux2to1 port map(x(2),y(2),s,m(2));
	mux4:Mux2to1 port map(x(3),y(3),s,m(3));
end behavior;
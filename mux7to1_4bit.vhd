library ieee;
use ieee.std_logic_1164.all;

entity mux7to1_4bit is
	port(u,v,w,x,y,z,zz:in std_logic_vector(3 downto 0);
		s:in std_logic_vector(2 downto 0);
		m:out std_logic_vector(3 downto 0));
end Mux7to1_4bit;


architecture behavior of Mux7to1_4bit is

component mux2to1_4bit is
	port(x,y:in std_logic_vector(3 downto 0);
		s:in std_logic;
		m:out std_logic_vector(3 downto 0));
end component;

signal s1,s2,s3,s4,s5:std_logic_vector(3 downto 0);

begin
	mux1:mux2to1_4bit port map(u,v,s(0),s1);
	mux2:mux2to1_4bit port map(w,x,s(0),s2);
	mux3:mux2to1_4bit port map(y,z,s(0),s3);
	mux4:mux2to1_4bit port map(s1,s2,s(1),s4);
	mux5:mux2to1_4bit port map(s3,zz,s(1),s5);
	mux6:mux2to1_4bit port map(s4,s5,s(2),m);
end behavior;
library ieee;
use ieee.std_logic_1164.all;

entity BCD_6bit is
	port(sw:in std_logic_vector(5 downto 0);
		hex0:out std_logic_vector(0 to 6);
		hex1:out std_logic_vector(0 to 6));
end BCD_6bit;


architecture behavior of BCD_6bit is

component comparator_6bit is
	port(num:in std_logic_vector(5 downto 1);
		dec:out std_logic_vector(2 downto 0));
end component;

component mux7to1_4bit is
	port(u,v,w,x,y,z,zz:in std_logic_vector(3 downto 0);
		s:in std_logic_vector(2 downto 0);
		m:out std_logic_vector(3 downto 0));
end component;

component minus10 is
	port(num:in std_logic_vector(3 downto 0);
		res:out std_logic_vector(3 downto 0));
end component;

component minus20 is
	port(num:in std_logic_vector(3 downto 0);
		res:out std_logic_vector(3 downto 0));
end component;

component minus30 is
	port(num:in std_logic_vector(3 downto 0);
		res:out std_logic_vector(3 downto 0));
end component;

component minus40 is
	port(num:in std_logic_vector(3 downto 0);
		res:out std_logic_vector(3 downto 0));
end component;

component minus50 is
	port(num:in std_logic_vector(3 downto 0);
		res:out std_logic_vector(3 downto 0));
end component;

component minus60 is
	port(num:in std_logic_vector(3 downto 0);
		res:out std_logic_vector(3 downto 0));
end component;

component decoder_7seg is
	port(x:in std_logic_vector(3 downto 0);
		hex:out std_logic_vector(0 to 6));
end component;

signal sel:std_logic_vector(2 downto 0);
signal num1,num2,num3,num4,num5,num6,ris,sel1:std_logic_vector(3 downto 0);

begin
	comp:comparator_6bit port map(sw(5 downto 1),sel);
	m10:minus10 port map(sw(3 downto 0),num1);
	m20:minus20 port map(sw(3 downto 0),num2);
	m30:minus30 port map(sw(3 downto 0),num3);
	m40:minus40 port map(sw(3 downto 0),num4);
	m50:minus50 port map(sw(3 downto 0),num5);
	m60:minus60 port map(sw(3 downto 0),num6);
	mux1:mux7to1_4bit port map(sw(3 downto 0),num1,num2,num3,num4,num5,num6,sel,ris);
	dec1:decoder_7seg port map(ris,hex0);
	sel1<="0"&sel;
	dec2:decoder_7seg port map(sel1,hex1);
end behavior;
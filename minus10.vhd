library ieee;
use ieee.std_logic_1164.all;

entity minus10 is
	port(num:in std_logic_vector(3 downto 0);
		res:out std_logic_vector(3 downto 0));
end minus10;


architecture behavior of minus10 is
begin
	res(3)<=not num(3)and num(1);
	res(2)<=(not num(2))xor num(1);
	res(1)<=not num(1);
	res(0)<=num(0);
end behavior;
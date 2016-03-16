library ieee;
use ieee.std_logic_1164.all;

entity minus20 is
	port(num:in std_logic_vector(3 downto 0);
		res:out std_logic_vector(3 downto 0));
end minus20;


architecture behavior of minus20 is
begin
	res(3)<=num(3)and num(2);
	res(2)<=not num(2);
	res(1)<=num(1);
	res(0)<=num(0);
end behavior;
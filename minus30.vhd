library ieee;
use ieee.std_logic_1164.all;

entity minus30 is
	port(num:in std_logic_vector(3 downto 0);
		res:out std_logic_vector(3 downto 0));
end minus30;


architecture behavior of minus30 is
begin
	res(3)<=not num(3)and num(2)and num(1);
	res(2)<=num(2)xor num(1);
	res(1)<=not num(1);
	res(0)<=num(0);
end behavior;
library ieee;
use ieee.std_logic_1164.all;

entity minus40 is
	port(num:in std_logic_vector(3 downto 0);
		res:out std_logic_vector(3 downto 0));
end minus40;


architecture behavior of minus40 is
begin
	res(3)<=not num(3);
	res(2)<=num(2);
	res(1)<=num(1);
	res(0)<=num(0);
end behavior;
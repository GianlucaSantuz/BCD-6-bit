library ieee;
use ieee.std_logic_1164.all;

entity minus60 is
	port(num:in std_logic_vector(3 downto 0);
		res:out std_logic_vector(3 downto 0));
end minus60;


architecture behavior of minus60 is
begin
	res(3)<='0';
	res(2)<='0';
	res(1)<=num(1);
	res(0)<=num(0);
end behavior;
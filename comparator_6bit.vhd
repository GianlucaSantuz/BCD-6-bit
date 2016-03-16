library ieee;
use ieee.std_logic_1164.all;

entity comparator_6bit is
	port(num:in std_logic_vector(5 downto 1);
		dec:out std_logic_vector(2 downto 0));
end comparator_6bit;


architecture behavior of comparator_6bit is
begin	
	dec(0)<=(not num(5)and((num(3)and(((not num(4))and(num(2)xor num(1)))or(num(2)and num(1))))or(num(4)and not num(3)and not num(2))))or(num(5)and((not num(4)and not num(3))or(num(4)and((num(3)xor num(2))or(not num(2)and num(1))))or(not num(4) and not num(3))));
	dec(1)<=(not num(5)and num(4)and num(3))or(num(5)and not num(4)and not num(3))or(num(4)and num(2)and((not num(5))xor num(3)));
	dec(2)<=num(5)and(num(4)or num(3));
end behavior;
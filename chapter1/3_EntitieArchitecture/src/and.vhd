library ieee;
use ieee.std_logic_1164.all;

--entity that implements an and gate
entity and_gate is  
	port(
		a : in  std_logic;
		b : in  std_logic;
		z : out std_logic 
	);
end entity;

architecture beh of and_gate is 
begin 
	z <= a and b;
end architecture;

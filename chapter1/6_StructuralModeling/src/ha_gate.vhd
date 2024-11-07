library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.math_pkg.all;
use work.test_pkg.all;


--empty entity 
entity ha_gate is
	port(
		I1 : in std_logic;	
		I2 : in std_logic;
		S : out std_logic;
		C : out std_logic
	);
end entity;

architecture beh of ha_gate is 

begin 
	and1 : and_gate
	port map(
		I1 => I1, 
		I2 => I2, 
		O => C
	);

	xor1 : xor_gate
	port map(
		I1 => I1, 
		I2 => I2, 
		O => S
	);
end architecture;
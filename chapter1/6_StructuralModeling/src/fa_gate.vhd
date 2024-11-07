library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.math_pkg.all;
use work.test_pkg.all;


--empty entity 
entity fa_gate is
	port(
		I1 : in std_logic;	
		I2 : in std_logic;
		I3 : in std_logic;
		S : out std_logic;
		C : out std_logic
	);
end entity;

architecture beh of fa_gate is 
	signal c1, c2 : std_logic;
	signal s1 : std_logic;
begin 

	ha_1 : ha_gate  
	port map(
		I1 => I1,  
		I2 => I2,
		S => s1,
		C => c1
	);

	ha_2 : ha_gate
	port map(
		I1 => I3, 
		I2 => s1,
		S => s,
		C => c2
	);

	c <= c1 or c2;
end architecture;

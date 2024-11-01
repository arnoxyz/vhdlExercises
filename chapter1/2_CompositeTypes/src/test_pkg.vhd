library ieee;
use ieee.std_logic_1164.all;

--define some constants that can be used in the design
package test_pkg is
	--constant declaration
	constant SCREEN_HEIGHT : integer := 480;
	constant SCREEN_WIDTH : integer := 720;

	--types 
	type u4int_t is range 0 to 2**4-1; --4 bit unsigned int
	type s4int_t is range -2**3 to 2**3-1; --4 bit signed int
	
	--enums
	type days_t is (MO, DI, MI, DO, FR, SA, SO);
	type employees_t is (DAVE, PAUL, JOHN);

	--TODO: subtypes
end package;



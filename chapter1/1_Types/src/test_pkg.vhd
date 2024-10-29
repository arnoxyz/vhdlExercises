library ieee;
use ieee.std_logic_1164.all;

--define some constants that can be used in the design
package test_pkg is
	--constant declaration
	constant SCREEN_WIDTH : integer := 720;
	constant SCREEN_HEIGHT : integer := 480;

	--types (scalar types declarations)
		--type name_t is range range_Constraint;
	type int_t is range -2**3 to 2**3-1;  --4 bit signed bit
	type uint_t is range 0 to 2**4-1; --4 bit unsigned


	--enum
		--type type_t is (EnumLiterals) MO,'B', BLA, '0', '1' ...
	type weekdays_t is (MO, DI, MI, DO, FR, SA, SO);
	type boolean_t is (YES, NO, 'T', 'F', '0', '1');


		--subtypes 
		--subtype name_t is originalType range range_constraint; 
	subtype natural_t is integer range 0 to integer'high;
	subtype positive_t is integer range 1 to integer'high;
end package;
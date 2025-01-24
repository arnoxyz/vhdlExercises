library ieee;
use ieee.std_logic_1164.all;

--define some constants that can be used in the design
package compositeTypes_pkg is

	--arrays (vector types)
	type u_t is array(integer range <>) of boolean;
	type c_t is array(0 to 13) of boolean;

	--records 
	type point_t is record
		x : integer;
		y : integer;
	end record;

	type ur_t is record
		a : integer_vector; --unconstrained = set size manual on init
		b : integer_vector; --unconstrained = set size manual on init
		c : real_vector(1 downto 0); --constrained = fixed size
	end record;


	--repeat old stuff:
	--constant declaration
	constant SCREEN_HEIGHT : integer := 480;
	constant SCREEN_WIDTH : integer := 720;

	--scalar types 
	type u4int_t is range 0 to 2**4-1; --4 bit unsigned int
	type s4int_t is range -2**3 to 2**3-1; --4 bit signed int
	
	--enums
	type days_t is (MO, DI, MI, DO, FR, SA, SO);
	type employees_t is (DAVE, PAUL, JOHN);
end package;



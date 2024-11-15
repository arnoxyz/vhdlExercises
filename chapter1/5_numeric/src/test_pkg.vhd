library ieee;
use ieee.std_logic_1164.all;

--define some constants that can be used in the design
package test_pkg is
	--constant declaration
	--define types:
		--scaral (int4, uint4, enum weekday)
		--arrays (int4 array, unconstrained array, weekdays)
		--records (point(a,b), points = array of points)
	type int4_t is range -2**3 to 2**3-1;
	type uint4_t is range 0 to 2**4-1;

	type point_t is record 
		a : integer;
		b : integer;
	end record;

	--define subtypes:
		--positive, natural subtype of integer
	subtype positive_t is integer range 1 to integer'high-1;
	subtype natural_t is integer range 0 to integer'high-1;

	type int4_vector_t is array(integer range <>) of int4_t;

	type day_t is (MO,DI,MI);
	--components declaration -> same entity just write component instead of entity
		--component and_gate
	component and_gate is 
		port(
			a : in std_logic;
			b : in std_logic;
			x : out std_logic
		);
	end component;

	--build own std_ulogic and std_logic type
	type std_ulogic_t is ('U', 'X', '0', '1', 'Z', 'W', 'L', 'H', '-');

	--needs resolve function to work correctly
	type std_logic_t is ('U', 'X', '0', '1', 'Z', 'W', 'L', 'H', '-');

end package;



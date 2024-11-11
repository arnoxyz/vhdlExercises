library ieee;
use ieee.std_logic_1164.all;

--define some constants that can be used in the design
package test_pkg is
	--constant declaration
	constant SCREEN_WIDTH : natural := 200;
	constant SCREEN_HEIGHT : natural := 400;

	--define types:
		--scaral (int4, uint4, enum weekday)
	type int4_t is range -2**3 to 2**3-1;
	type uint4_t is range 0 to 2**4-1;

		--arrays (int4 array, unconstrained array, weekdays)
	type in4_vector_t is array(integer range <>) of int4_t;
	type uint4_vecotr_t is array(4 downto 0) of uint4_t;

	type weekday_t is (MO,DI,MI,DO,FR,SA,SO);
	type weekdays_t is array(0 to 6) of weekday_t;

		--records (point(a,b), points = array of points)
	type point_t is record  
		a : integer;
		b : integer;
	end record;

	type points_t is array(integer range <>) of point_t;
	
	--define subtypes:
		--positive, natural subtype of integer
	subtype positive_t is integer range 1 to integer'high-1;
	subtype natural_t is integer range 0 to integer'high-1;

	--components declaration
		--component and_gate

	--build own std_ulogic and std_logic type
	type std_ulogic_t is ('U', 'X', '0', '1', 'Z', 'W', 'L', 'H', '-');

	--needs resolve function to work correctly
	type std_logic_t is ('U', 'X', '0', '1', 'Z', 'W', 'L', 'H', '-');
end package;



library ieee;
use ieee.std_logic_1164.all;

--define some constants that can be used in the design
package test_pkg is
	--review previous lectures
	--TODO: constant declaration
	constant SCREEN_WIDTH : natural := 300;
	constant SCREEN_HEIGHT : natural := 400;


	--All type declarations start with:
	--type name_t is
		--range (RANGE_CONSTRAINT);
		--array (RANGE_CONSTRAINT) of type;
		--record {ELEMENTS_DECLARATION} end record;


	--scalar types (uint4, sint4)
		--type name_t is range (RANGE);
	type uint4_t is range 0 to 2*4-1;
	type int4_t is range -2*3 to 2*3-1;
	--subtypes (positive, natural)
		--subtype name_t is typeName range (RANGE);
	subtype positive_t is integer range 1 to integer'high-1;
	subtype natural_t is integer range 0 to integer'high-1;

	--enum 
	type day_t is (MO,DI,MI,DO,FR,SA,SO);
	type boolean_t is (True,False);

	type day_arr_t is array(integer range <>) of day_t;

	--array types
	--constrained (fixed-size)
	--unconstrained -> size on init 
		--type name_t is array(RANGE_CONSTRAIN) of type
		--type name_t is array(integer range <>) of type
		--type name_t is array(0 to 13) of type
		
	--define unconstrained array type
	type my_arr_t is array(integer range <>) of integer;
	--define constrained array type
	type byte_t is array(7 downto 0) of boolean ;

	--simple record type that represents a Point
	--record types
	type point_t is record 
		a : integer;
		b : integer;
	end record;
	
	--point_t array
	type my_points_t is array (integer range <>) of point_t;

	--record type that has integer_vector with (2 downto 0) and one withouth a constrain
end package;
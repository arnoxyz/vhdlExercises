library ieee;
use ieee.std_logic_1164.all;

--define some constants that can be used in the design
package test_pkg is
	--constant declaration
	--define types:
		--scaral (int4, uint4, enum weekday)
		--arrays (int4 array, unconstrained array, weekdays)
		--records (point(a,b), points = array of points)
	type point_t is record 
		a : integer;
		b : integer;
	end record;

	type points_t is array(integer range 7 downto 0) of point_t;
	--type int4_vector_t is array(integer range <>) of int4_t;
	
	--define subtypes:
		--positive, natural subtype of integer
	subtype positive_t is integer range 1 to integer'high-1;
	subtype natural_t is integer range 0 to integer'high-1;


	--build own std_ulogic and std_logic type
	type std_ulogic_t is ('U', 'X', '0', '1', 'Z', 'W', 'L', 'H', '-');

	--needs resolve function to work correctly
	type std_logic_t is ('U', 'X', '0', '1', 'Z', 'W', 'L', 'H', '-');

	--enum tpye
	type weekdays_t is (MO,DI,MI,DO,FR,SA,SO);


	--components declaration -> use entity structure and change entity to component
		--component and_gate
	component and_gate is
		port(
			I1 : in std_logic;
			I2 : in std_logic;
			O : out std_logic
		);
	end component;

	component xor_gate is
		port(
			I1 : in std_logic;
			I2 : in std_logic;
			O : out std_logic
		);
	end component;

	component ha_gate is 
		port(
			I1 : in std_logic;	
			I2 : in std_logic;
			S : out std_logic;
			C : out std_logic
		);
	end component;

	component fa_gate is 
		port(
			I1 : in std_logic;	
			I2 : in std_logic;
			I3 : in std_logic;
			S : out std_logic;
			C : out std_logic
		);
	end component;

	--4bit adder
	component adder4_gate is 
		port(
			A : in std_logic_vector(3 downto 0);
			B : in std_logic_vector(3 downto 0);
			C_in : in std_logic;
			C_out : out std_logic;
			O : out std_logic_vector(3 downto 0)
		);
	end component;
end package;





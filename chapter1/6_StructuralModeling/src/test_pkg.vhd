library ieee;
use ieee.std_logic_1164.all;

--define some constants that can be used in the design
package test_pkg is
	--constant declaration
	--define types:
		--scaral (int4, uint4, enum weekday)
		--arrays (int4 array, unconstrained array, weekdays)
		--records (point(a,b), points = array of points)
	
	--define subtypes:
		--positive, natural subtype of integer


	--build own std_ulogic and std_logic type
	type std_ulogic_t is ('U', 'X', '0', '1', 'Z', 'W', 'L', 'H', '-');

	--needs resolve function to work correctly
	type std_logic_t is ('U', 'X', '0', '1', 'Z', 'W', 'L', 'H', '-');


	--components declaration
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





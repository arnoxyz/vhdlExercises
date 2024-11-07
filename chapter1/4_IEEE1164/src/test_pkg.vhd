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

	--components declaration
		--component and_gate

	--build own std_ulogic and std_logic type
	type std_ulogic_t is ('U', 'X', '0', '1', 'Z', 'W', 'L', 'H', '-');

	--needs resolve function to work correctly
	type std_logic_t is ('U', 'X', '0', '1', 'Z', 'W', 'L', 'H', '-');


end package;



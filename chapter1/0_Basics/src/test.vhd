library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.math_pkg.all;
use work.test_pkg.all;

--empty entity 
entity test is
end entity;

architecture beh of test is 
begin 

	process 
		variable a : boolean;
		variable b : boolean;
	begin 
		a := true;
		b := true;
		report to_string(a and b);
		report "hello world";
		wait;
	end process;
end architecture;
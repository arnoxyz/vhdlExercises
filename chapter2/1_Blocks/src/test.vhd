library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.math_pkg.all;
use work.test_pkg.all;

--empty entity 
entity test is
end entity;

architecture beh_test of test is 
begin 
	process1: process 
		variable a : boolean;
		variable b : boolean;
		variable x : integer;
		variable y : integer;
	begin 
		report "test start";
		report "hello world";
		a := true;
		b := true;
		report "a and b =>" & to_string(a and b);

		x := 10;
		y := 20;
		report "x + y =>" & to_string(x+y);

		report "test done";
		wait;
	end process;
end architecture;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.math_pkg.all;

--use my types from test_pkg
use work.test_pkg.all;

--empty entity 
entity test is
end entity;

architecture beh_test of test is 
begin 
	process1: process 
		variable x : uint_t;
		variable y : uint_t;

		variable day : weekdays_t := MO;
		variable bool : boolean_t := YES;


		variable pos : positive_t := 1;
		variable nat : natural_t := 0;
	begin 
		report "test start";
		report "hello world";


		--integer types test:
		x := 1;
		y := 2;
		report "x + y =>" & to_string(x+y);

		--enum type tests
		day := FR;
		report to_string(day);

		bool := '0';
		bool := YES;
		report to_string(bool);

		report "test done";
		wait;
	end process;
end architecture;

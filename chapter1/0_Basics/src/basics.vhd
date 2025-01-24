library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.math_pkg.all;
use work.test_pkg.all;

--empty entity 
entity basics is
end entity;

architecture beh_basics of basics is 
begin 

	process1: process 
		--Declare Variables/Constants:
		--constant NAME : DataType [:= DefaultVal];
		--variable Name : DataType [:= DefaultVal];
		variable a : boolean;
		variable b : boolean;

		variable x : integer;
		variable y : integer;
	begin 
		report "test start";
		report "hello world";
		--Variables new value with: :=		
		a := true;
		b := true;
		--to_string(variableName); to print the variable
		report "a and b =>" & to_string(a and b);

		x := 10;
		y := 20;
		report "x + y =>" & to_string(x+y);

		report "test done";
		wait;
	end process;
end architecture;
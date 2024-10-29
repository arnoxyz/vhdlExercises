library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.math_pkg.all;

--import own package
--imports all constants that are defined in the package
--use work.test_pkg.all;
--import only signle constants 
use work.test_pkg.SCREEN_HEIGHT;
use work.test_pkg.SCREEN_WIDTH;

--empty entity 
entity test is
end entity;

architecture beh_test of test is 
begin 
	process1: process 
	--declaritive part
		--declare local constants/variables
		variable a : boolean;
		variable b : boolean;
		variable x : integer;
		variable y : integer;
	begin 
	--process body
		report "simulation start";
		report "hello world";
		a := true;
		b := true;
		report "a and b =>" & to_string(a and b);

		x := 10;
		y := 20;
		report "x + y =>" & to_string(x+y);

		--report value from the test_pkg.vhd
		report "SCREEN_WIDTH is " & to_string(SCREEN_WIDTH);
		report "SCREEN_HEIGHT is " & to_string(SCREEN_HEIGHT);
		report "simulation done";
		wait;
	end process;
end architecture;

architecture beh_test2 of test is 
begin 
	--control flow: if/elsif/else
	process2 : process 
		variable a : integer := 30;
		variable b : integer := 20;
		variable c : std_ulogic_vector(3 downto 0) := b"0000";
	begin 
		report "process2 start";
		--if/elsif/else
		if a > b then 
			report "a is bigger than b";
		elsif b > a then
			report "b is bigger than a";
		else 
			report "a is equal b";
		end if;

		--select (switch/select case) -> better case/when statement
		--c is 4 bit long so for 4 bit unsigned value (from 0 to 4**2-1)
		--if c is a 4 bit long signed value (from -3**2 to 3**2-1) -> 1 bit less because of the sign bit
		for i in 0 to c'length**2-1 loop
		c := std_ulogic_vector(to_unsigned(i, 4));
			case c is
				when "0000" => 
					report "c is equal to 0 interpreted as unsigned integer";
				when "0001" => 
					report "c is equal to 1 interpreted as unsigned integer";
				when others =>
			end case;
			report to_string(to_integer(unsigned(c)));
		end loop;
	wait;
	end process;
end architecture;

architecture beh_test3 of test is 
	signal o : std_ulogic := 'U'; 				
	signal i : std_ulogic_vector(7 downto 0) := x"AB";
begin 

	process3 : process(all)
  	variable 	result : std_ulogic := '0';
	begin 
    for x in i'range loop 
			result := result xor i(x);				
		end loop;
		o <= result;
	end process;

	other : process 
	begin 
		report to_string(o);
		wait on o;
	end process;
end architecture;
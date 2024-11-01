library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.math_pkg.all;
use work.test_pkg.all;

entity test is
end entity;

architecture beh_prev of test is 
begin 
	repeatOfPreviousExercises : process 
		--DONE: wh basic structures (entity, architecture, process, packages constants, variables)
		--DONE: wh (if,elsif, else) 
		--DONE: wh (case,when =>) and case when with enum type
		--DONE: wh for loop in (range)
		variable a : boolean;
		variable b : boolean;

		--defined integer types (unsigned 4 bit integer and signed 4 bit integer)
		variable x : u4int_t := 4;
		variable y : u4int_t := 8;
--		variable z : u4int_t := 16; --should yield type range error

		variable x1 : s4int_t := -7; 
--		variable x2 : s4int_t := -10;  --should yield type range error

		--enum 
		variable day : days_t := MO;
		variable employee : employees_t := Dave;

		variable counter : natural := 0;

	begin 
		report "test start";

		--working with the value of a constant defined in a package
		report "screen width: = " & to_string(SCREEN_WIDTH);
		report "screen width: = " & to_string(SCREEN_HEIGHT);

		--default value of boolean is false
		report to_string(a);
		report to_string(b);
		if (a and B) = false then 
			report "yeeees";
		else 
			report "noooooo";
		end if;

		--working with select (case/when) and enums
		report "my enum value is " & to_string(day);
		case day is
			when MI =>
				report "it is wednesday, my dudes";
			when others =>
				report "it is not wednesday, my dudes";
		end case;

		case employee is 
			when DAVE =>
				report "Hi Dave, how are you?";
			when PAUL =>
				report "Hi Paul, how is your day?";
			when JOHN =>
				report "Hi John, here is your coffee";
		end case;

		--loops
		for x in 10 downto -10 loop 
			report to_string(x);
			counter := counter+1;
		end loop;
		report "counter values is: " & to_string(counter);

		--Repeat some range lengths:
		--range 0 to 10 = 11
		--range -4 to 10 = 0 to 10 = 11 and -4 to 0 = 4 so 15
		--range -10 to 10 = 21
		--same for downto 
		--10 downto -10 = 21
		--10 downto -4 = 15

		--Rule: if 0 is included just add both numbers and add+1 for the 0
		--10 downto -10 is 10+10+1 = 21

		report "test done";
		wait;
	end process;
end architecture;


architecture beh_compositeTypes of test is 
begin 
	compositeTypes : process 
	begin 
		report "hello world";
		wait;
	end process;
end architecture;

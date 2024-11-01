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


architecture beh_arrays of test is 
begin 
	arrays: process 
		--vectors (arrays of same type elements) - homogeneous collection
		variable a : integer := 0;
		variable b : integer := 0;

		variable a_vec : integer_vector(3 downto 0) := (0 => 1, others=>0);
		variable b_vec : integer_vector(0 to 3) := (3 => 1, others=>0);

		--own arrays
		variable myArr1 : u_t(0 to 13) := (0 => true, 13 => true, others=>false);
		variable myArr3 : c_t := (0 => true, others=>false);

		--records (like structs in C) - heterogeneous collection
	begin 
		report "hello world";
		report "a=" & to_string(a) & " b= " & to_string(b);
		report "a_vector=" & to_string(a_vec(a_vec'left)) & " b_vector= " & to_string(b_vec(b_vec'left));


		for i in 3 downto 0 loop 
			report to_string(i) & ": a_vector " & to_string(a_vec(i));
		end loop;

		for i in 0 to 3 loop 
			report to_string(i) & ": b_vector " & to_string(b_vec(i));
		end loop;

		--iterate over array
		report "length of myArr1: " & to_string(myArr1'length);
		for i in myArr1'low to myArr1'high loop 
			report to_string(myArr1(i));
		end loop;

		--using array range attribute
		for i in myArr1'range loop 
			report to_string(myArr1(i));
		end loop;
		wait;
	end process;
end architecture;


architecture beh_records of test is 
begin 
	records : process
		constant p : point_t := (x => 0, y => 0);
		variable p1 : point_t := (x => 10, y => 10);
		variable u : ur_t(a(1 downto 0), b(2 downto 0));
	begin 

	report "p= (x,y) = (" & to_string(p.x) & "," & to_string(p.y) & ")"; 
	report "p1= (x,y) = (" & to_string(p1.x) & "," & to_string(p1.y) & ")"; 

	--init whole records using aggregates
	u := (a =>(0,10), b =>(1,24,67), c =>(1.0,2.0));
	for i in u.a'range loop
		report to_string(u.a(i));
	end loop;

	--only change certain vector in record
	u.a := (10,15);
	for i in u.a'range loop
		report to_string(u.a(i));
	end loop;

	--using others clause
	u.a := (others=>1000);
	for i in u.a'range loop
		report to_string(u.a(i));
	end loop;

	wait;
	end process;
end architecture;
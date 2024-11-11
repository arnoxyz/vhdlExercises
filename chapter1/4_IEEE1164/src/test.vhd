library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.math_pkg.all;

use work.test_pkg.all;

--empty entity 
entity test is
	port(
		A : in  std_logic;
		B : in  std_logic;
		Z1 : out  std_logic;
		Z2 : out  std_ulogic
	);
end entity;

architecture beh_test of test is 
begin 
	--repeat previous lectures
	--write and use a package
	--processes
	start : process(A,B) is 
		variable day : weekday_t := MO;
		variable point1 : point_t := (a=>1,b=>2);
		variable point2 : point_t := (a=>1,b=>4);
		variable point3 : point_t := (a=>8,b=>2);
		variable points : points_t(0 to 2) := (0=>point1, 1=>point2, 2=>point3);
	begin 
		report(to_string(day));
		if (A and B)='1' then 
			report("A bigger");
		else 
			report("B bigger");
		end if;

		case day is  
			when MO => report("its monday my dudes"); 
			when others => report("yeh its not monday");
		end case;

		for i in points'range loop
			report "a = " & to_string(points(i).a) & " ,b = " & to_string(points(i).b);
		end loop;

		Z1 <= A or B;
		Z2 <= B and A;
	end process;

	--explain use of entity and architecture 
		--entity used to see the chip as blackbox only the inputs/outputs are visible 
		--generics can be defined (must be constant) that can be set when instantiate the unit

	--explain in detail what the entity structure is (parts of the entity)
		--generic(N : integer := 10)
		--port(A : in integer; B : in integer; C : out integer);

	--explain in detail what the architecture structure is (parts of the architecutre)
		--architecture of an entity
		--declaration part => declare internal signals, components, functions, procedures, cosntants
		--body (part after begin) => implementation of circuit can be done with 
			--concurrent statemtns (implement formulars directly) Out <= Input xor Input2;
			--processes (use sequential design style)
			--structures (instatiate components and connect with design)

	--processes in detail (singals vs variables -> scopes and differet behavior explained)
		--variables used only in processes and subprograms as local variables that help to calculate/process data
		--signals used in entity, architecture(concurrent, behavior, strucutral, packages)
			--very important and completly different from variables and other concepts in software
			--process is simulated so that signals get only the value when a wait statement is fetched
			--at that moment all signals are executed concurrent so all signals get the value, before the wait 
			--statement all signals have the old value assigned before, and if a signal gets more assigns
			--onyl the last assignment will be recocnised and the value given 

end architecture;

architecture beh_ieee1164 of test is 
begin 
--Behavior that can not be modeld with current types:
	--WIRED-AND: 
		--pulls-up to high when all transistors are inactive 
		--when one transistor is active then overrides the pull-up resistor

	--TRI-STATE-BUFFER: (ON/OFF) 
		--when on in to out, when off then outputs high-z

	--so new types are needed: ieee std_logic_1164 (can take 9-VALUES)
		--std_ulogic
		--std_logic

	--and as arrays (same with all the std-types)
		--std_ulogic_array(RANGE)
		--std_logic_array(RANGE)

	--u = unresolved type (can not be combined) -> so bus structure not possible
		--u <= a or b;
		--u <= b or c;
	---> yields error no double driver

	--resolved type std_logic (uses resolve function to compute value ) -> used with bus
		--1 strong_high, 0 strong_low as before in boolean type
		--U = uninizialized (default value)
		--X strong unkown
		--W,L,H = weak unkown , weak low, weak high
		--Z = high impendanz
		-- - = don't care (for iptimissation and if the value is not important)

	--resolved type possible = multiple sources
	Z1 <= A;
	Z1 <= B;

	--unresolved type not possible = 
	Z2 <= A;
	--Z2 <= B;


	test : process is
		variable a : std_logic_vector(7 downto 0) := x"AB";
		variable b : std_logic_vector(7 downto 0) := 8b"11"; --not signed insert all 0
		variable c : std_logic_vector(7 downto 0) := 8sb"1"; --signed inserts all 1
	begin 
		report to_string(a);
		report to_string(b);
		report to_string(c);

		--converting on output
		report to_hstring(c);
		report to_bstring(a);
		report to_ostring(a);
	wait;
	end process;

	--initialize vectors using string literal
		--base type (b,x,d,o) binary, heX, decimal, octal
		--s before (integer length s before signed)
		--FORMAT: [[length sign]| [sign] base 

	--conversion function 
		--to_string();
		--to_bstring(); --binary
		--to_hstring(); --hex
		--to_ostring(); --octal
end architecture;

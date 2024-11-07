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
	--TODO: write and use a package
	--TODO: processes
	--TODO: use variables/constants of own type
	--TODO: if/elsif/else 
	--TODO: select (case/when) with own enum type
	--TODO: use arrays (loop through them and init them) 
	--TODO: work with records (init using aggregates, access them)
	--TODO: explain use of entity and architecture 
	--TODO: explain in detail what the entity structure is (parts of the entity)
	--TODO: explain in detail what the architecture structure is (parts of the architecutre)
	--TODO: structure vs. concurrent vs. bheavioral modeling design style (implement and_gate in all 3 styles)
	--TODO: processes in detail (singals vs variables -> scopes and differet behavior explained)
	--variables used in processes and subprograms
	--signals used in entity, architecture(concurrent, behavior, strucutral, packages)
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

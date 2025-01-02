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
	--repeat previous lectures
	-- write and use a package
		--use work.test_pkg.all;

	--processes
	test : process is 
		variable a : integer := 8;	
		variable b : integer := 9;	

		variable myType1 : positive_t := 1;
		variable myType2 : positive_t := 2;

		variable day : weekdays_t := MO;
		variable arr : std_logic_vector(7 downto 0) := x"0F"; 

		variable point : point_t := (a=>1, b=>2);
	begin 
		report "hello world!";

		--if/elsif/else 
		if a < b then 
			report to_string(a);
			report to_string(b);
		end if;

		--use variables/constants of own type
		report to_string(myType1+myType2);

		--select (case/when) with own enum type
		case day is 
			when MO => report "Its Monday";
			when DI => report "Its Thuesday";
			when others => report "others";
		end case;

		--use arrays (loop through them and init them) 
		report to_string(arr);

					--range is 7 downto 0 so starting from 7 downto 0
		for element in arr'range loop
			report to_string(element) & " " & to_string(arr(element));  --element has values = 7,6,5,4,3,2,1,0 (range)
		end loop;

		--work with records (init using aggregates, access them)
		--records
		report to_string(point.a) & " " & to_string(point.b);

		wait;
	end process;

	--explain use of entity and architecture 
		--entity = interface to the model (inputs, outputs) 
		--architecture = implementation (Internal structure of model)

	--explain in detail what the entity structure is (parts of the entity)
	-- entity name is  -- name of Entity
	-- begin 
		--  generic( WIDTH : natural := 8); --optional
		-- 	port(a : in integer; b : in integer; c : out integer);
	-- end entity;

	--explain in detail what the architecture structure is (parts of the architecutre)
	--architecture nameArchitecture of nameEntity is
		--declare signals, components, functions, procedures here
	--begin 
		--processes, concurrent and behavioral statements here
	--end architectures;

	--structure vs. concurrent vs. bheavioral modeling design style (implement and_gate in all 3 styles)
		--structure = declare units and connect them to make bigger more complex models
		--concurrent = for small easy implementations (example: Gates or to direclty implement logic functions)
		--behavioral = using process with variables, loops and if statements to implement like in sw

	-- processes in detail (singals vs variables -> scopes and differet behavior explained)



	--variables used in processes and subprograms
	--signals used in entity, architecture(concurrent, behavior, strucutral, packages)
	--9 value logic and std_logic, stdulogic, 
		--not only 2 logic vlaues 0,1 instead uses 9 different logic values
		--0,1,X,H,L,W,-,Z,U

	--std_ulogic_vecotr and std_logic_vector, values with string literals
		--use std_ulogic_vectore whenever possible -> unresolved (so multiple drivers = error, good for finding early errors)
		--use std_logic_vector when implementing bus or more complex structures wher it is needed to drive multiple drivers

	--conversion ouput functions for to_string
		--convert between int, signed/unsigned, std_logic_vector
		-- 	--meet in the middle: all to signed
		-- report(to_string(to_signed(a_int, 8) + a_sgn + signed(a_std)));
		-- report(to_string(to_integer(to_signed(a_int, 8) + a_sgn + signed(a_std))));

		-- 	--convert everything to int
		-- report(to_string(a_int + to_integer(a_sgn) + to_integer(signed(a_std))));

	--what are the defined operations for: std_logic, signed/unsigned, integer
		--all basic operations are defined for signed/unsigned except =
		--bit shifting is not possible in integer

	--convert std_logic to integer, integer to std_logic, and to signed/unsigned
end architecture;

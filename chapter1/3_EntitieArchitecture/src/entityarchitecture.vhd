library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.math_pkg.all;

use work.test_pkg.all;

entity test is
	port (
		a : in std_logic := '1';
		b : in std_logic := '0';
		o1 : out std_logic := '0';
		o2 : out std_logic := '0';
		o3 : out std_logic := '0'
	);
end entity;

architecture beh_prev of test is 
begin 
	--repeat previous lectures
	--processes
	test : process 
	variable a : uint4_t := 4;
	variable b : uint4_t := 7;
	variable c : std_logic_vector(7 downto 0); 

	variable my_arr : my_arr_t(7 downto 0);
	variable my_byte : byte_t;

	variable day : day_t;
	variable week : day_arr_t(6 downto 0) := (MO,DI,MI,DO,FR,SA,SO);
	variable week2 : day_arr_t(6 downto 0) := (
		6=>MO,
		5=>DI,
		4=>MI,
		3=>DO,
		2=>FR,
		1=>SA,
		0=>SO
	);

	variable point : point_t := (12,14);
	variable point1 : point_t := (a=>12, b=>13);

	variable points : my_points_t(7 downto 0) := (
		7=>point,
		6=>point1,
		others=>(0,0)
	);

	begin  
		--if/elsif/else 
		if a > b then 
			report "a is bigger than b";
		elsif a < b then 
			report "a is smaller than b";
		else 
			report "a is equal b";
		end if;

		--select (case/when) with own enum type
		day := MO;
		
		case day is 
			when MO => 
				report "Mondayyy!!";
			when others => 
				report "not MOndayyyy!";
		end case;

		--loop through own defined array with enum type
		for i in 0 to 6 loop
			case week(i) is 
				when MO => 
					report "Mondayyy!!";
				when others => 
					report "not MOndayyyy!";
			end case;
		end loop;

		--init array 
		for i in week'range loop
			report to_string(week(i));
			if (i mod 2) = 0 then 
				week(i) := MO;
			else 
				week(i) := DI;
			end if;
		end loop;

		--work with records (init using aggregates, access them)

		--use point_arr
		for i in points'range loop 
			report to_string(i) & " " & to_string(points(i).a) & " " & to_string(points(i).b);
		end loop;

		--report "hello world, " & to_string(SCREEN_HEIGHT);
		wait;
	end process;
end architecture;

architecture beh_entitiearchitecture of test is 
begin 
	--entities - describe the interface (Socket) inputs/outputs
		--Parameters (only constants allowed) defined in : generics();
		--I/O defined in : port();

	--example Entitie:
		--and.vhd - basic input/output 
		--and_generic.vhd - same with generic inputs/outputs

	--architectures - describe the implementation (Chip)
		--declarative part (declare signals, constants, components)
		--statement part (concurrent signal assignments, stuctures-modeling, behavior-modeling-> processes)

--3 ways to implement an and_gate
	--concurrent
	o1 <= a and b; 

	--behavioral design style 
	process(a,b) 
	begin 
		o2 <= a and b;
	end process;

	--structure design style
	AND_GATE1 : entity work.and_gate(beh)
	port map(
		a => a,
		b => b,
		z => o3
	);



	--processes - way to describe hardware with known sequential statements (loops, if, select)
	--Signals: use in architectures, as In/Outputs of chips, represent wires (take last value after wait statement) 
	--Variables: only usable in processes scope, work like variables in other programming languages
end architecture;
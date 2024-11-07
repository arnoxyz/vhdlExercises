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
	--TODO: 9 value logic and std_logic, stdulogic, 
	--TODO: std_ulogic_vecotr and std_logic_vector, values with string literals
	--TODO: conversion ouput functions for to_string
end architecture;

architecture beh_numeric of test is 
begin 
	--when possible use integer type
		--can not overflow 
		--only 32/64 big type
		--only boolean values (no 9-valued logic like in std_ulogi)

	--numeric type  
		--defines signed, unsigned types
		--do overflow (like in real hw)
		--std_ulogic -> converted to signed or unsigedn to make arithemtic operations with it


	test : process is
		variable a_std : std_logic_vector(7 downto 0) := x"01";
		variable b_std : std_logic_vector(7 downto 0) := (others =>'0'); 
		variable c_std : std_logic_vector(7 downto 0) := (others =>'1'); 

		variable a_sgn : signed(7 downto 0) := x"01";
		variable b_sgn : signed(7 downto 0) := x"AB";
		variable c_sgn : signed(7 downto 0) := x"AB";

		variable a_int : integer := 10;
		variable b_int : integer := 11;
		variable c_int : integer := 12;
	begin 
		report to_string(a_std);
		report to_string(a_sgn);
		report to_string(a_int);

		--gate operations only for std,sgn,unsgn (and,or,xor usw.)
			report to_string(a_std and a_std);
			report to_string(a_sgn and a_sgn);
			--report to_string(a_int and a_int); --does not work

			--bit shifting/rotating (sll,srl,sra,  and so on)
			report to_string(a_std sll 1);
			report to_string(a_sgn sll 1);
			--report to_string(a_int sll 1); --does not work

		--logic operations work for all example: (=,=>,=<,/=)
		report to_string(a_std = a_std);
		report to_string(a_sgn = a_sgn);
		report to_string(a_int = a_int); 

		--arithmetic operations (+,-,*,/,mod, rem)
		--report to_string(a_std + a_std); --does not work
		report to_string(a_sgn + a_sgn);
		report to_string(a_int + a_int); 


		--Conclusion:
		--operations and differenzes between 
			--std_logic, std_ulogic -> can not calculate (+,-,*,/,mod,rem)
			--signed, unsigned 
			--integer -> can not bit operations (xor, and, shifting, rotating)

		--common operations can be used with std_ulogic_vector
			--bit shifting and rotating (ssl, srl, sra, srl, srr)
			--logic operations (and, or, xor)

		--common operations can be used with signed/unsigend
		--(and with integer)
			--adding, subtracting, ect. (+,-,/,*, mod, rem, **)
			--relations (<,<=,>=,>,=,/=)
			--usw.
		
		--common operations with integers

		--Convert between (integer fixed size, signed and std_logic variable size)
			--integer-> signed/unsigned -> std_logic
			--integer<- signed/unsigned <- std_logic

			--meet in the middle: all to signed
		report(to_string(to_signed(a_int, 8) + a_sgn + signed(a_std)));
		report(to_string(to_integer(to_signed(a_int, 8) + a_sgn + signed(a_std))));

			--convert everything to int
		report(to_string(a_int + to_integer(a_sgn) + to_integer(signed(a_std))));

	wait;
	end process;
end architecture;
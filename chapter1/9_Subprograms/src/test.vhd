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
	--TODO: what are the defined operations for: std_logic, signed/unsigned, integer
	--TODO: convert std_logic to integer, integer to std_logic, and to signed/unsigned
	--TODO: structural Modeling (declare component, instantiate component, instantiate using entity)
	--TODO: use generic map when instatiating a unit
	--TODO: explain behavioral modeling 
	--TODO: sensitivity list and wait on statement 
	--TODO: how does the process simulation work (signals vs variables)
	--TODO: explain what a testbench is (UUT)
	--TODO: wait for, wait until
	--TODO: assertions 
end architecture;

architecture beh_structural of test is 
begin 
	--Subprograms
	--(pure) functions 
		--return always same with same input
		--use to compute a value and return that value
		--only can use inner scope (exceptions are constants)
		--can not access or modify outer scope 
		--does not use smi time
		--parameters are pass by copy

	--(impure) function
		--does not return always the same (example random function)
		--when using input from a file (file can be changed)

	--procedures
		--use sim time
		--can access and modify outer scope
		--can but does not need to return a value
		--used for simulation and sub programs that use time
		--param default constant and in (similare like entities) 


	--Subprograms overloadin is supported


	--Subprograms in packages
		--split into declaration (only the signature of function/procedure)
		--and implementation of declaration (the body of the function)

	myProc : process is
		constant a : signed := 8sx"AF";
		constant b : signed := 8sx"AB";
		constant c : signed := a and b;
	begin
	wait;
	end process;
end architecture;
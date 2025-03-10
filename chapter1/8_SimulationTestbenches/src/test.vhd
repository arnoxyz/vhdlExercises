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
end architecture;

architecture beh_structural of test is 
begin 
	--write a testbench to simulate the mux.vhd


	--Instantiate testing unit (UUT = unit under test)
	--UUT 
	--apply stimuli and test the end results with assertions or look at 
	--the waveform in questa sim
	

	--Additional Wait statements: 
		--wait until condition;
		--wait for expression;
	
	--Assertion expression must be true else assertion violated
		--assertion (expression) [report "msg"] [severity error]
		--severity can be note, warning, error, failure  (predefined enum type)
			--stops simulation when failure occures

		
	--Exhaustive testing: 
		--use loops to loop through all input values and test with assertions
		--uint = range is 0 to 2**bits-1
		--sint = range is -2**(bits-1) to 2**(bits)-1
		--arrays the range attribute can be used 
end architecture;

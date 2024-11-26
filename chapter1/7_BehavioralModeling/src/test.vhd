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
end architecture;

architecture beh_structural of test is 
begin 
	--Behavioral Implementation
		--must be synthesizable!
		--single use entity and architecture
		--control flow statements and variables
		--sequential describtion!
		--! needed for sequential designs

	--Implement MUX with behavioral modeling

	--wait on and sensistivity list
	--invoke process only if signal changes in the sensitivity list 
	--then execute the whole process and this execusion is in the same simulation time
	--this behavior mimics concurrent execution (this execution is then in the hw)


	--variable and signals in process behave completly different
	--variable gets immediate the reusult a := 10;
	--signals get the last value it was set and also will only change 
	--when the wait at the end is. 
		--s<=s1;
		--s<=s2;
		--a<=s;
		--will be s=s2 and the first one will be ignored and only
		--exeucted after the end (last statement is wait on or sensitivity list)
		--a gets the value s before the current execution so only in the 
		--next iteration a will get the value of s2


	--more processes possible -> but execution order undefined  
		---> models concurrent behavior like in real hw	
end architecture;
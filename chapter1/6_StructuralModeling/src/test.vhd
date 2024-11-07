library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.math_pkg.all;
use work.test_pkg.all;


--empty entity 
entity test is
	port(
		A : in std_logic;
		B : in std_logic;
		S : out std_logic;
		C : out std_logic
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
	--TODO: 9 value logic and std_logic, stdulogic, 
	--TODO: std_ulogic_vecotr and std_logic_vector, values with string literals
	--TODO: conversion ouput functions for to_string
	--TODO: what are the defined operations for: std_logic, signed/unsigned, integer
	--TODO: convert std_logic to integer, integer to std_logic, and to signed/unsigned
end architecture;

architecture beh_structural of test is 
begin 
	--define gates
	xor1 : and_gate
	port map(
		I1 => a,	
		I2 => b, 
		O => c
	);

	and1 : entity work.and_gate(beh) 
	port map(
		I1 => a, 
		I2 => b,
		O => s
	);
end architecture;
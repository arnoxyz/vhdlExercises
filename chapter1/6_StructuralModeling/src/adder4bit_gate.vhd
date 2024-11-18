library ieee;
use ieee.std_logic_1164.all;
use work.test_pkg.all;

entity adder4_gate is 
	port(
		A : in std_logic_vector(3 downto 0);
		B : in std_logic_vector(3 downto 0);
		C_in : in std_logic;
		C_out : out std_logic;
		O : out std_logic_vector(3 downto 0)
	);
end entity;


architecture beh of adder4_gate is 
	signal c_local1 : std_logic := '0';
	signal c_local2 : std_logic := '0';
	signal c_local3 : std_logic := '0';

begin 
	--need 4 full adder
	fa_gate1 : fa_gate 
	port map(
		I1 => A(0),
		I2 => B(0),
		I3 => C_in,
		S => O(0),
		C => c_local1
	);
	fa_gate2 : fa_gate 
	port map(
		I1 => A(1),
		I2 => B(1),
		I3 => c_local1,
		S => O(1),
		C => c_local2
	);
	fa_gate3 : fa_gate 
	port map(
		I1 => A(2),
		I2 => B(2),
		I3 => c_local2,
		S => O(2),
		C => c_local3
	);
	fa_gate4 : fa_gate 
	port map(
		I1 => A(3),
		I2 => B(3),
		I3 => c_local3,
		S => O(3),
		C => c_out 
	);
end architecture;
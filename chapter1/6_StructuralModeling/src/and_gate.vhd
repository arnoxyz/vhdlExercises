library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.math_pkg.all;

entity and_gate is
	port(
		I1 : in std_logic;
		I2 : in std_logic;
		O : out std_logic
	);
end entity;

architecture beh of and_gate is 
begin 
	O <= I1 and I2;
end architecture;
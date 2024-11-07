library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.math_pkg.all;
use work.test_pkg.all;

entity xor_gate is
	port(
		I1 : in std_logic;
		I2 : in std_logic;
		O : out std_logic
	);
end entity;

architecture beh of xor_gate is 
begin
	O <= I1 xor I2;
end architecture;
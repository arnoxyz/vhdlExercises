library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.math_pkg.all;
use work.test_pkg.all;

entity test is
	generic (
		DATA_WIDTH : positive := 32
	);
	port (
		op   : in  alu_op_t;
		a, b : in  std_ulogic_vector(DATA_WIDTH-1 downto 0);
		r    : out std_ulogic_vector(DATA_WIDTH-1 downto 0) := (others => '0');
		z    : out std_ulogic := '0'
	);
end entity;

-- put your architecture here
architecture beh of test is 
begin 

end architecture;
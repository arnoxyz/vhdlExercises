library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

use work.math_pkg.all;
use work.test_pkg.all;

entity test_tb is
end entity;

architecture tb of test_tb is
begin
	UUT : entity work.test(beh_test);

	stimuli : process
	begin
		wait;
	end process;
end architecture;

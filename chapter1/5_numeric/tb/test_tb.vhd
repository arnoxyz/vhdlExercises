library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

use work.math_pkg.all;
use work.test_pkg.all;

entity test_tb is
end entity;

architecture tb of test_tb is
	signal a,b,z1 : std_logic;
	signal z2 : std_ulogic;
begin
	--review and repeat old lectures
	--UUT : entity work.test(beh_test);
	
	UUT : entity work.test(beh_numeric);

	stimuli : process
	begin
		-- apply test stimulus here
		wait;
	end process;
end architecture;


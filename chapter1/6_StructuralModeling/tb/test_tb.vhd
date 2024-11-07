library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

use work.math_pkg.all;
use work.test_pkg.all;

entity test_tb is
end entity;

architecture tb of test_tb is
	signal a,b,c,s : std_logic;
begin
	--review and repeat old lectures
	--UUT : entity work.test(beh_test);
	
	UUT : entity work.test(beh_structural)
	port map(
		a => a,
		b => b,
		c => c,
		s => s
	);

	stimuli : process
	begin
		-- apply test stimulus here
		wait;
	end process;
end architecture;


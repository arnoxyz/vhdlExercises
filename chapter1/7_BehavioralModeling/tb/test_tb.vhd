library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

use work.math_pkg.all;
use work.test_pkg.all;

entity test_tb is
end entity;

architecture tb of test_tb is
	signal a,b,c,d,s1,s2,o : std_logic;
begin
	--review and repeat old lectures
	--UUT : entity work.test(beh_test);
	
	UUT : entity work.test(beh_structural);

	mux1 : mux_gate 
	port map(
		I(0) => a,
		I(1) => b,
		I(2) => c,
		I(3) => d, 
		s(0) => s1,
		s(1) => s2,
		o => o
	);

	stimuli : process
	begin
		-- apply test stimulus here
		a <= '1';
		b <= '0';
		c <= '1';
		d <= '0';
		s1 <= '1';
		s2 <= '1';
		wait for 1 ns;
		report to_string(0);

		s1 <= '0';
		s2 <= '0';
		wait for 1 ns;
		report to_string(0);
		
		s1 <= '1';
		s2 <= '0';
		wait for 1 ns;
		report to_string(0);

		s1 <= '0';
		s2 <= '1';
		wait for 1 ns;
		report to_string(0);
		wait;
	end process;
end architecture;
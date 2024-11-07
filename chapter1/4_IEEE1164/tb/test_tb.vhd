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
	UUT : entity work.test(beh_ieee1164)
	port map(
		a => a,
		b => b,
		z1 => z1,
		z2 => z2
	);

	stimuli : process
	begin
		-- apply test stimulus here
		a <= '1';
		b <= '1';
		wait for 1 ns;
		report to_string(z1);
		--resolve(1,1) to 1

		a <= '0';
		b <= '1';
		wait for 1 ns;
		report to_string(z1);
		--resolve(0,1) to X

		wait;
	end process;
end architecture;


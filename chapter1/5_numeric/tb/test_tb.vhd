library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

use work.math_pkg.all;
use work.test_pkg.all;

entity test_tb is
end entity;

architecture tb of test_tb is
--	signal a,b,z1 : std_logic;
--	signal z2 : std_ulogic;

	signal a, b, c : std_ulogic_vector(3 downto 0);
	signal max : std_ulogic_vector(3 downto 0);
begin
	--review and repeat old lectures
	UUT : entity work.test(beh_test)
	port map(
		a => a, 
		b => b, 
		c => c, 
		max => max
	);
	
	--UUT : entity work.test(beh_numeric);

	stimuli : process
	begin
		a <= "1100";
		b <= "0110";
		c <= "0001";
		wait for 1 ns;
		a <= "1100";
		b <= "1110";
		c <= "0001";
		wait for 1 ns;

		-- apply test stimulus here
		wait;
	end process;
end architecture;


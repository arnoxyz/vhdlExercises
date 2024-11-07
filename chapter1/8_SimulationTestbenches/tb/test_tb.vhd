library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

use work.math_pkg.all;
use work.test_pkg.all;

entity test_tb is
end entity;

architecture tb of test_tb is
	constant N : natural := 44;

	signal A : std_logic_vector(N-1 downto 0);
	signal B : std_logic_vector(N-1 downto 0);
	signal S : std_logic_vector(1 downto 0);
	signal O : std_logic_vector(N-1 downto 0);
begin
	--review and repeat old lectures
	--UUT : entity work.test(beh_test);
	
	UUT : entity work.test(beh_structural);

	mux1 : mux_gate 
	generic map(
		WIDTH => N
	)
	port map(
		I1 => A, 
		I2 => A, 
		I3 => B, 
		I4 => B, 
		S => S,
		O => O 
	);

	stimuli : process
	begin
		-- apply test stimulus here
		A <= (others=>'0');
		B <= (others=>'1');
		S <= "00";
		wait for 1 ns;
		report to_string(O);

		S <= "11";
		wait for 1 ns;
		report to_string(O);

		wait;
	end process;
end architecture;
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

use work.math_pkg.all;
use work.test_pkg.all;

entity test_tb is
end entity;

architecture tb of test_tb is
	--change INPUT/OUTPUT WIDTH of and_generic
	constant WIDTH : natural := 4; 

	signal a,b,z : boolean;
	signal a_N, b_N, z_N : std_logic_vector(WIDTH-1 downto 0);
begin
	--review/repeat previous lectures
	--UUT : entity work.test(beh_prev);
	--UUT : entity work.test(beh_entitiearchitecture);

	--Entities check
	AND_GATE1 : entity work.and_gate(beh)
	port map(
		a=>a,
		b=>b,
		z=>z
	);

	AND_GATE_GENERIC : entity work.and_generic(beh)
	generic map(
		WIDTH => WIDTH
	)
	port map(
		a=>a_N,
		b=>b_N,
		z=>z_N
	);


	stimuli : process
	begin
		-- apply test stimulus here
		a_N <= (WIDTH-1=>'1', others=>'0');
		b_N <= (WIDTH-1=>'1', others=>'0');
		wait for 1 ns;
		report to_string(z_N);
		wait;
	end process;
end architecture;


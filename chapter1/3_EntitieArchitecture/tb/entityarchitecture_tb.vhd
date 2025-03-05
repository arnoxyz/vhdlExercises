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

	signal a,b,z : std_logic;
	signal a_N, b_N, z_N : std_logic_vector(WIDTH-1 downto 0);

	signal a1, b1, o1,o2,o3 : std_logic := '0';
begin
	--review/repeat previous lectures
	--UUT : entity work.test(beh_prev);
	--UUT : entity work.test(beh_entitiearchitecture);

	UUT : entity work.test(beh_entitiearchitecture)
	port map(
		a=>a1,
		b=>b1, 
		o1=>o1, 
		o2=>o2, 
		o3=>o3
	);

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

		--teasting different styles of implementing an and_gate
		a1 <= '1';
		b1 <= '1';
		wait for 1 ns;
		report to_string(o1);
		report to_string(o2);
		report to_string(o3);
		assert (o1=o2)=(o2=o3) report "error gates work not the same";

		a1 <= '0';
		b1 <= '1';
		wait for 1 ns;
		report to_string(o1);
		report to_string(o2);
		report to_string(o3);
		assert (o1=o2)=(o2=o3) report "error gates work not the same";


		wait;
	end process;
end architecture;


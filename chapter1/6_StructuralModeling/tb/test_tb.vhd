library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

use work.math_pkg.all;
use work.test_pkg.all;

entity test_tb is
end entity;

architecture tb of test_tb is
	--signal ab,b,c,s : std_logic;
	signal A,B,S : std_logic_vector(3 downto 0);
	signal C_out,C_in : std_logic;
begin
	--review and repeat old lectures
	--UUT : entity work.test(beh_test);
	
	-- UUT : entity work.test(beh_structural)
	-- port map(
	-- 	a => ab,
	-- 	b => b,
	-- 	c => c,
	-- 	s => s
	-- );

		UUT : adder4_gate 
		port map(
			A => A, 
			B => B,
			C_in => C_in,
			C_out => C_out,
			O => S
		);


	--local params => external params
	--local meaning the ports of the unit

	stimuli : process
	begin
		-- apply test stimulus here
		--exhaustive testing
		for x in 0 to 2**4-1 loop
			for y in 0 to 2**4-1 loop
				for z in 0 to 1 loop
					A <= std_logic_vector(to_unsigned(x, 4));
					B <= std_logic_vector(to_unsigned(y, 4));
					C_in <= std_logic(to_unsigned(z, 1)(0));

					wait for 1 ns;
					assert S = std_logic_vector(to_unsigned(x+y+z, 4)) report "S= " & to_string(S) & " /= (x,y)=" & to_string(std_logic_vector(to_unsigned(x+y+z, 4)));
					assert C_out = std_logic(to_unsigned(x+y+z, 5)(4)) report "C_out= " & to_string(C_out) & " /= (x,y)=" & to_string(std_logic(to_unsigned(x+y+z, 5)(4)));
				end loop;
			end loop;
		end loop;
		wait;
	end process;
end architecture;


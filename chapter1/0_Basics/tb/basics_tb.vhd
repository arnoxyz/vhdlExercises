library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

use work.math_pkg.all;
use work.test_pkg.all;

entity basics_tb is
end entity;

architecture tb of basics_tb is
	--add signals if UUT has inputs/outputs here
begin

	-- Instantiate UUT here
		--select the testing architecture of the design
		UUT : entity work.basics(beh_basics);


	stimuli : process
	begin
		-- apply test stimulus here (no in and outputs in the basic unit)
		wait;
	end process;
end architecture;


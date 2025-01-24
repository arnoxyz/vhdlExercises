library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;
use work.math_pkg.all;

entity compositeTypes_tb is
end entity;

architecture tb of compositeTypes_tb is
begin
	UUT : entity work.compositeTypes(beh_compositeTypes);

	stimuli : process
	begin
		-- apply test stimulus here
		wait;
	end process;
end architecture;


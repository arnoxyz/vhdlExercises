library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

entity mux_gate is
	port(
		I : in std_logic_vector(3 downto 0);
		S : in std_logic_vector(1 downto 0);
		O : out std_logic
	);
end entity;


architecture beh of mux_gate is 
begin 

	test : process(all) is 
	begin 
		case S is 
			when "00" => O <= i(0);
			when "01" => O <= i(1);
			when "10" => O <= i(2); 
			when "11" => O <= i(3);
			when others => O <= 'X';
		end case;
	end process;

end architecture;
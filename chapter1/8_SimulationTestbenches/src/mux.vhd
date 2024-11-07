library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

entity mux_gate is
	generic(
		WIDTH : natural := 4
	);
	port(
		I1, I2, I3, I4 : in std_logic_vector(WIDTH-1 downto 0);
		S : in std_logic_vector(1 downto 0);
		O : out std_logic_vector(WIDTH-1 downto 0)
	);
end entity;


architecture beh of mux_gate is 
begin 

	test : process(all) is 
	begin 
		case S is 
			when "00" => O <= I1;
			when "01" => O <= I2;
			when "10" => O <= I3; 
			when "11" => O <= I4;
			when others => O <= (others =>'X');
		end case;
	end process;

end architecture;
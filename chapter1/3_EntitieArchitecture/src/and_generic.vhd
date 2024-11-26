library ieee;
use ieee.std_logic_1164.all;

entity and_generic is 
	--add generic here
	generic(
		WIDTH : natural := 8
	);
	port(
		a : in std_logic_vector(WIDTH-1 downto 0);
		b : in std_logic_vector(WIDTH-1 downto 0);
		z : out std_logic_vector(WIDTH-1 downto 0)
	);
end entity;

architecture beh of and_generic is 
begin
	myProcess : process(all) is 
	begin 
		for i in WIDTH-1 downto 0 loop
			z(i) <= a(i) and b(i);
		end loop;
	end process;
end architecture;

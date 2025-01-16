library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.math_pkg.all;
use work.test_pkg.all;

--empty entity 
entity simple_timer is
	generic(
		N : positive; 
	)
	port(
		clk : in std_ulogic;
		res_n : in std_ulogic;
		en : in std_ulogic;
		tick : out std_ulogic
	);
end entity;

architecture arch of simple_timer is 
	subtype cnt_t is unsigned(N-1 downto 0);
	signal cnt; cnt_nxt : cnt_t;
	constant M : natural := 2**N-1;
begin 

	state_reg : process(clk, res_n)
	begin 
		if res_n = '0' then 
			cnt <= (others => '0');
		elsif rising_edge(clk) then
			cnt <= cnt_nxt;
		end if;
	end process;

	next_state_logic : process(all)
	begin 
		cnt_nxt <= cnt;
		if en = '1' then 
			cnt_nxt <= cnt +1;
		end if;
	end process;

	output_logic : process(all)
		variable comp : std_ulogic;
	begin 
		comp := '1' when cnt=M else '0';
		tick <= en and comp;
	end process;
end architecture;

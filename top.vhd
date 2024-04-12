library ieee;
use ieee.std_logic_1164.all;

entity top is port(
	iiA  	: in  std_logic;
	state_int : out std_logic_vector(1 downto 0)
	);
end entity;
 
architecture beh of top is
	type state_type is (IDLE, WARMUP, TOAST, COOL_DOWN);
	signal state_con : state_type;
	   
	component sub is port ( 
		iA  	: in  std_logic
	);
	end component;

begin

   uut: sub
		port map (
        iA 		=> iiA
        );
		
	state_con <= << signal .testbench.top_h.uut.state : state_type >>;
	
	state_int <= "00" when state_con = IDLE else
				"01" when state_con = WARMUP else
				"10" when state_con = TOAST else
				"11";

end architecture;
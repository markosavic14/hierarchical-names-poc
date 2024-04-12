library ieee;
use ieee.std_logic_1164.all;

entity wrapper is port(
	iiA  	: in  std_logic_vector(1 downto 0)
	);
end entity;
 
architecture beh of wrapper is
	type state_type is (IDLE, WARMUP, TOAST, COOL_DOWN);
	signal state_con : state_type;
	signal state_int : std_logic_vector(1 downto 0);
	   
	component sub is port ( 
		iA  	: in  std_logic_vector(1 downto 0)
	);
	end component;

begin

   uut: sub
		port map (
        iA 		=> iiA
        );
		
	state_con <= << signal .testbench.dut.uut.state : state_type >>;
	
	state_int <= "00" when state_con = IDLE else
				"01" when state_con = WARMUP else
				"10" when state_con = TOAST else
				"11";

end architecture;

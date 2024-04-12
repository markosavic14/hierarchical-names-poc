library ieee;
use ieee.std_logic_1164.all;

entity testbench is
end entity;
 
architecture Test of testbench is
   signal sA	: std_logic_vector(1 downto 0) := "00";	
	
	component wrapper is port ( 
		iiA  	: in  std_logic_vector(1 downto 0)
	);
	end component;

begin

   dut: wrapper port map (
        iiA 	=> sA
        );
		  

   stim_proc : process begin		
	
   wait for 50 ns;		
   sA <= "01";

   wait for 50 ns;		
   sA <= "10";

   wait for 50 ns;		
   sA <= "11";

   wait for 50 ns;		
   sA <= "00";

		wait;
   end process;
end architecture;

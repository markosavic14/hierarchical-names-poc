library ieee;
use ieee.std_logic_1164.all;

entity tb is
end entity;
 
architecture Test of tb is
   signal sA	: std_logic := '0';
   signal state_tb : std_logic_vector(1 downto 0);
	
	
	component top is port ( 
		iiA  	: in  std_logic;
		state_int : out std_logic_vector(1 downto 0)
	);
	end component;

begin

   dut: top port map (
        iiA 	=> sA,
		state_int => state_tb
        );
		  

   stim_proc : process begin		
	
		wait for 50 ns;		
		sA <= '1';		
		wait;
   end process;
end architecture;

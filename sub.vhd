library ieee;
use ieee.std_logic_1164.all;

entity sub is port (
	iA  	: in  std_logic
	);
end entity;

architecture Behavioral of sub is
  type state_type is (IDLE, WARMUP, TOAST, COOL_DOWN);
  signal state : state_type;

begin

	process(iA) begin
		if(iA = '0') then
			state <= IDLE;
		else
			state <= TOAST;
		end if;
	end process;

end Behavioral;

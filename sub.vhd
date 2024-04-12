library ieee;
use ieee.std_logic_1164.all;

entity sub is port (
	iA  	: in  std_logic_vector(1 downto 0)
	);
end entity;

architecture Behavioral of sub is
  type state_type is (IDLE, WARMUP, TOAST, COOL_DOWN);
  signal state : state_type;

begin

	state <= IDLE when iA = "00" else
			WARMUP when iA = "01" else
			TOAST when iA = "10" else
			COOL_DOWN;

end Behavioral;

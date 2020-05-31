-- Module to use the leds on the FPGA board
-- 20200505 Jurgen Kramer
-- Re-use from existing project
-- 20200530
-- 1 led reserved for SD controller

library ieee;
	use ieee.std_logic_1164.all;
	use ieee.numeric_std.all;
	--use ieee.std_logic_unsigned.all;

entity leds is
	port (
		nCs			: in std_logic;
		nRd			: in std_logic;
		nWr 			: in  std_logic;
		dataIn		: in  std_logic_vector(2 downto 0);
		dataOut		: out  std_logic_vector(2 downto 0);
		LEDreturn	: out  std_logic_vector(2 downto 0);
		nReset		: in  std_logic
   );
end leds;

architecture rtl of leds is

signal leds_status      : std_logic_vector(2 downto 0) := "111";		-- Default to all leds off

begin
	process(nCs, nWr, nRd, nReset, leds_status)
	begin
		if nReset = '0' then
			dataOut <= "111";					-- All leds off
			leds_status <= "000";
		elsif nCs = '0' and nWr = '0' then
			dataOut(0) <= not dataIn(0);
			dataOut(1) <= not dataIn(1);
			dataOut(2) <= not dataIn(2);
			--dataOut(3) <= not dataIn(3);
			leds_status <= dataIn;
		elsif nCs = '0' and nRd = '0' then
			LEDreturn <= leds_status;
		else
		end if;
	end process;
 end rtl;

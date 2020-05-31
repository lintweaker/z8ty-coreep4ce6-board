library ieee;
	use ieee.std_logic_1164.all;
	use ieee.numeric_std.all;
	use ieee.std_logic_unsigned.all;

entity freetimer is
	port (
	clk	: in std_logic;
	nWr	: in std_logic;
	nRd	: in std_logic;
	nCs	: in std_logic;
	nReset : in std_logic;
	Address:  in std_logic;
	TimerOut	: out std_logic_vector(7 downto 0)
   );
end freetimer;

architecture rtl of freetimer is

signal timer      : std_logic_vector(15 downto 0) := x"0000";

begin
	--process(nCs, nRd, nWr, Address)
	process(clk)
	begin
			--if rising_edge(clk) then
		if (clk'event and clk = '1') then
			timer <= timer + 1;
		end if;
		if nReset = '0' then
			timer <= x"0000";
		elsif nCs = '0' and nWr = '0' and Address = '0' then
			-- reset timer when writing to the first register
			timer <= x"0000";
		elsif nCs = '0' and nRd = '0' then
			-- return low value when the first register is read
			if Address = '0' then
				TimerOut <= timer(7 downto 0);
			-- return high value when the first register is read
			elsif Address = '1' then
				TimerOut <= timer(15 downto 8);
			end if;
		end if;
	end process;
 end rtl;

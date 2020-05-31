-- MSX 64k mapper
-- 20200503 Jurgen Kramer
-- Start with support for only 4 pages
-- TODO: expand to 256 pages otherwise readback for other mappers does not work properly anymore
-- 20200509 
-- Adapted for use with Z8TY-coreEP4CE6 board
-- use full 8 bits for the mapper registers


library ieee;
use ieee.std_logic_1164.all;
use  IEEE.STD_LOGIC_ARITH.all;
use  IEEE.STD_LOGIC_UNSIGNED.all;

entity mapper64k is
	port (
		clk			: in std_logic;
		--nCS			: in std_logic;
		nMapRd		: in std_logic;
		nMapWr		: in std_logic;
		DataIn		: in std_logic_vector(7 downto 0);
		DataOut		: out std_logic_vector(7 downto 0);
		RamAddrIn	: in std_logic_vector(15 downto 0);
		MA14_18		: out std_logic_vector(4 downto 0);
		nReset		: in std_logic
   );
end mapper64k;

architecture rtl of mapper64k is

--signal reg_select	: std_logic_vector(1 downto 0) := "00";

	signal map0reg		: std_logic_vector(7 downto 0);
	signal map1reg		: std_logic_vector(7 downto 0);
	signal map2reg		: std_logic_vector(7 downto 0);
	signal map3reg		: std_logic_vector(7 downto 0);

begin

	process(clk, nReset)
	begin
		if nReset = '0' then
		
			map0reg <= "00000011";
			map1reg <= "00000010";
			map2reg <= "00000001";
			map3reg <= "00000000";

		elsif rising_edge(clk) then
		
			if (nMapWr = '0' ) then
				-- Write to mapper register
				case RamAddrIn(1 downto 0) is
					when "00" => map0reg <= DataIn;
					when "01" => map1reg <= DataIn;
					when "10" => map2reg <= DataIn;
					when others => map3reg <= DataIn;
				end case;
			end if;
		
		end if;
		
	end process;

	
	MA14_18 <=  map0reg(4 downto 0) when RamaddrIn(15 downto 14) = "00" else
					map1reg(4 downto 0) when RamaddrIn(15 downto 14) = "01" else
					map2reg(4 downto 0) when RamaddrIn(15 downto 14) = "10" else
					map3reg(4 downto 0) when RamaddrIn(15 downto 14) = "11";
					
	DataOut <=  map0reg when RamaddrIn(1 downto 0) = "00" else
					map1reg when RamaddrIn(1 downto 0) = "01" else
					map2reg when RamaddrIn(1 downto 0) = "10" else
					map3reg when RamaddrIn(1 downto 0) = "11";

end rtl;
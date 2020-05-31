-- Z8TY CoreEP4CE6 FGPA board
-- For Waveshare CoreEP4CE6 FPGA module
-- Cyclone IV EP4CE6E22C8N in QFP144 housing and EPCS16 flash
-- 20200505 Jurgen Kramer
-- Initial version for bringing up and testing the board
-- 20200506
-- Added 16-bit freerunning timer
-- 20200508
-- Fix DIR default signal for all inputs (Z80 5V->FPAG)
-- Add timer output to bus isolation
-- LEDs on the FPGA board are active low (0 = on)
-- RAM /CE signals: default to '1'
-- Test: usr and reset button readout via I/O port 01h
-- Add bufferedUART on 080/081h
-- 20200509
-- Add MSX memory mapper - start with 64 (4 16k pages)

-- 20200523 - dev moved to win10dev
-- Usability of PIN_101 resolved (Device configuration->Device and pin options->Dual Purpose pins)
-- Disabled on-board FPGA memory as the EP4CE6E22C8N does not have enough for the minimum 64k
-- Add SD card interface (code from MPM multicomp)
-- Configured weak-pullup on fSD_DO
-- 20200529
-- Added debug byte for the SD interface at IO 025h
-- bit 0 => 1 SDHC card detected
-- Added .SDC file with 50MHz clock, seems to improve SD card controller
-- 20200530
-- Move 1 FPGA led to SD controller
-- 20200531
-- Set SD controller clock to MSX Z80 clock, now it works a lot better!


-- I/O port map:
-- port 01h - bit 0 = reset button, bit = 1 usr button
-- port 07h - 3 LEDs on FPGA board - 4bit read/write (bit 0-2)
-- port 20-27h (6 used) - SD card interface
-- 
-- port 080/81h - BufferedUART
--
-- port e6/e7h 16-bit timer
--          read 0e6h - low value of the timer
--          read 0e7h - high value of the timer
--          write 0e6h - reset timer


library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity z8ty_fpga_core is
  port (
		-- Note: signals are now setup as use for 'Z8TY peripheral' only
		-- i.e. FPGA holds devices which can be used from the Z8TY Z80 computer
		-- The _dir signals need to be set properly to steer the SN47LVC8T245DWR logic converters
		
		-- B side: 5V side, A side = FPGA 3v3 side
		-- Dir <= 0 - B to A
		-- Dir <= 1 - A to B

		
		fAddr_dir		: out std_logic := '0';	-- Dir signal for U3 and U5
		fAddress			: in std_logic_vector(15 downto 0);
		
		
		fData_dir		: out std_logic;		-- Dir signal for U1
		fData				: inout std_logic_vector(7 downto 0);
		
		
		fCtrlout_dir	: out std_logic := '0';	-- Dir signal for U4
		fnRfsh			: in std_logic;
		fnHalt			: in std_logic;
		fnM1				: in std_logic;
		fnMemrq			: in std_logic;
		fnWr				: in std_logic;
		fnRd				: in std_logic;
		fnBusack			: in std_logic;
		fnIorq			: in std_logic;

		fCtrlin_dir		: out std_logic := '0';	-- Dir signal for U2
		fnWait			: in std_logic;
		fnInt				: in std_logic;
		fnNmi				: in std_logic;
		fnBusreq			: in std_logic;
		fSpare1			: in std_logic;
		fSpare2			: in std_logic;
		fSpare3			: in std_logic;
		
		fClkrst_dir		: out std_logic := '0';	-- Dir signal for U10
		fnClk				: in std_logic;
		fnReset			: in std_logic;
		fSpare4			: in std_logic;
		fSpare5			: in std_logic;
		fSpare6			: in std_logic;
		fSpare7			: in std_logic;
		
		---- Signals for onboard 3.3V peripherals
		
		-- On level converter U11 - input only 5V=>3.3V
		-- these inputs have pullups
		fIn1				: in std_logic;			-- Use for MSX /sltsl for mapped memory
		fIn2				: in std_logic;
		fIn3				: in std_logic;
		fIn4				: in std_logic;
		fIn5				: in std_logic;
		fIn6				: in std_logic;
		fIn7				: in std_logic;
		fIn8				: in std_logic;

		-- 3v3 serial
		fTxd				: out std_logic;
		fRxd				: in std_logic;
		
		-- Alt onboard clock oscillator
		fAltclk			: in std_logic;
		
		-- Buttons
		nBtn_reset		: in std_logic;
		nBtn_usr			: in std_logic;
		
		-- SD card
		fSD_CS			: out std_logic;
		fSD_DO			: in std_logic;								-- MISO
		fSD_DI			: out std_logic;								-- MOSI
		fSD_CLK			: out std_logic;
		
		-- PS/2 keyboard
		fPS2_clk			: out std_logic;
		fPS2_dat			: in std_logic;
		
		-- Onboard 3.3V SRAM 2x
		fMA14_18			: out std_logic_vector(4 downto 0);		-- For memory mapper (16k pages)
		fMem_CE0			: out std_logic := '1';						-- 1st 512Kb SRAM
		fMem_CE1			: out std_logic := '1';						-- 2nd 512kb SRAM
		
		-- FPGA leds on CoreEP4CE6 board
		LEDs				: out std_logic_vector(3 downto 0);
		
		-- FPGA 50MHz clock
		fClk_50MHz		: in std_logic


  );
end z8ty_fpga_core;

architecture rtl of z8ty_fpga_core is

	signal nLedCs			: std_logic := '1';
	signal LEDreturn		: std_logic_vector(2 downto 0);
	
	signal nTimercs		: std_logic :='1';
	signal TimerOut		: std_logic_vector(7 downto 0);
	
	signal nButtoncs		: std_logic :='1';
	--signal ButtonOut		: std_logic_vector(1 downto 0);

	signal serialClock		: std_logic;
	signal serialClkCount	: std_logic_vector(15 downto 0);
	signal nSerialcs			: std_logic :='1';
	signal SerialDataOut		: std_logic_vector(7 downto 0);
	signal nSerialInt			: std_logic;
	
	signal nMsxMapperCs		: std_logic := '1';
	signal MsxMapperOut		: std_logic_vector(7 downto 0);
	
	--signal MemoryDataout		: std_logic_vector(7 downto 0);
	--signal RamRd				: std_logic := '1';
	--signal RamWr				: std_logic := '1';

	-- SD card interface
	signal nSdCardcs			: std_logic := '1';
	signal sDCardDataOut		: std_logic_vector(7 downto 0);

	-- Turbo-R like system timer 255682 Hz
	signal systemTimerCounter : integer := 0;
	signal systemTimerOut	: std_logic := '0';
	signal systemTimerClk	: std_logic := '0';

begin

-- For using the FPGA leds
io2: entity work.leds
	port map(
		nCs => nLEdcs,
		nWr => fnWr,
		nRd => fnRd,
		dataIn => fData(2 downto 0),
		dataOut => LEDs(3 downto 1),
		LEDreturn => LEDreturn,
		nReset => fnReset
);

io3 : entity work.bufferedUART
port map(
	clk => fclk_50MHz,
	n_wr => nSerialcs or fnWr,
	n_rd => nSerialcs or fnRd,
	n_int => nSerialint,
	regSel => fAddress(0),
	dataIn => fData,
	dataOut => SerialDataOut,
	rxClock => serialClock,
	txClock => serialClock,
	rxd => fRxd,
	txd => fTxd,
	n_cts => '0',
	n_dcd => '0'
);

io4: entity work.sd_controller
port map(
	sdCS => fSD_CS,
	sdMOSI => fSD_DI,
	sdMISO => fSD_DO,
	sdSCLK => fSD_CLK,
	n_reset => fnReset,
	n_rd => nSdCardcs or fnRd,
	n_wr => nSdCardcs or fnWr,
	dataIn => fData,
	dataOut => sDCardDataOut,
	regAddr => fAddress(2 downto 0),
	--clk => fclk_50MHz,
	clk => fnClk,
	driveLED => LEDs(0)
);

timer1: entity work.freetimer
port map(
	-- /int is not used on Z8TY backplane use another signal a low freq clock for now
	--clk => fnInt,			-- Timed with 50/60Hz from VDP int for now
	clk => systemTimerClk,
	nWr => fnWr,
	nRd => fnRd,
	nCs => nTimercs,
	nReset => fnReset,
	Address => fAddress(0),
	TimerOut => TimerOut
);

-- MSX memory mapper
--mapmsx: entity work.mapper64k
--port map(
--	clk => fclk_50MHz,
--	--nCS => '1',
--	nMapRd => nMsxMapperCs or fnRd,
--	nMapWr => nMsxMapperCs or fnWr,
--	DataIn => fData,
--	DataOut => MsxMapperOut,
--	RamAddrIn => fAddress,
--	MA14_18 => fMA14_18,
--	nReset => fnReset
--);


-- Set/read FPGA leds via IO port 07h
nLedCs <= '0' when fAddress(7 downto 0) = "00000111" and fnIorq = '0' else '1';	-- Z80 I/O port 07h

-- 16-bit timer
nTimercs <= '0' when fAddress(7 downto 1) = "1110011" and fnIorq = '0' else '1'; -- 2 Bytes 0e6h/0e7h

-- BufferedUART
nSerialcs <= '0' when fAddress(7 downto 1) = "1000000" and fnIorq = '0' else '1'; -- 2 Bytes 080/081h

-- Butten readout (test)
nButtoncs <= '0' when fAddress(7 downto 0) = "00000001" and ( fnIorq = '0' and fnRd = '0' ) else '1';	-- Z80 I/O port 01h

-- SD card interface
nSdCardcs <= '0' when fAddress(7 downto 3) = "00100" and fnIorq = '0' else '1'; -- 8 bytes (6 used) 020-027h

-- MSX 64k mapper
--nMsxMapperCs <= '0' when fAddress(7 downto 2) = "111111" and fnIorq = '0' else '1'; -- 4 bytes 0fc-0ffh

-- Access SRAM on Z8TY CoreEP4CE6 board
--RamRd <= '1' when fIn1 = '0' and fnMemrq = '0' and fnRd = '0' else '0'; 
--RamWr <= '1' when fIn1 = '0' and fnMemrq = '0' and fnWr = '0' else '0';

--fMem_CE0 <= '0' when ( RamRd = '0' or RamWr = '0' ) else '1';
-- Test RAM readonly
--fMem_CE0 <= '0' when ( RamRd = '0' ) else '1';


-- databus isolation
fData_dir <= '1' when ( fnIorq = '0' or fnRd = '0' ) and ( nLedCs = '0' or nTimercs = '0' or nButtoncs = '0' or nSerialcs = '0' or nMSxMapperCs = '0' or nSdCardcs = '0' ) else '0';

-- Data return
fData <= "11111" & LEDreturn when ( nLEDcs = '0' and fnRd = '0' ) else
			TimerOut when ( nTimercs = '0' and fnRd = '0' ) else
			"000000" & nBtn_usr & nBtn_reset when ( nButtoncs = '0' ) else
			SerialDataOut when ( nSerialcs = '0' and fnRd = '0' ) else
			sDCardDataOut when ( nSdCardcs = '0' and fnRd = '0' ) else
			--MsxMapperOut when nMsxMapperCs = '0' and fnRd = '0' else
			-- Read from SRAM on Z8TY CoreEP4CE6 board
			--MemoryDataout when Fin1 = '0' and fnRd = '0' else
			( others => 'Z');


serialClock <= serialClkCount(15);
systemTimerClk <= systemTimerOut;

process (fclk_50MHz)
begin
	--if rising_edge(fclk_50MHz) then
   if (fclk_50MHz'event and fclk_50MHz = '1') then
		-- Serial clock DDS
		-- 50MHz master input clock:
		-- Baud Increment
		-- 115200 2416
		-- 38400 805
		-- 19200 403
		-- 9600 201
		-- 4800 101
		-- 2400 50
		serialClkCount <= serialClkCount + 2416;
		systemTimerCounter <= systemTimerCounter + 1;

		if ( SystemTimerCounter = 98 ) then
			systemTimerOut <= not systemTimerOut;
			SystemTimerCounter <= 0;
		end if;
	
	-- Turbo-R timer 255682 Hz
	-- 50 MHz / 255682 Hz * 50% duty cycle
	-- 50 000 000 / 255682 * 0.5 = 97.777708247 => 98
	
	end if;
end process;

end rtl;

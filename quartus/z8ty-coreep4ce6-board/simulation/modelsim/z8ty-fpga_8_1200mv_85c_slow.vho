-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "05/31/2020 16:31:08"

-- 
-- Device: Altera EP4CE6E22C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	z8ty_fpga_core IS
    PORT (
	fAddr_dir : OUT std_logic;
	fAddress : IN std_logic_vector(15 DOWNTO 0);
	fData_dir : OUT std_logic;
	fData : INOUT std_logic_vector(7 DOWNTO 0);
	fCtrlout_dir : OUT std_logic;
	fnRfsh : IN std_logic;
	fnHalt : IN std_logic;
	fnM1 : IN std_logic;
	fnMemrq : IN std_logic;
	fnWr : IN std_logic;
	fnRd : IN std_logic;
	fnBusack : IN std_logic;
	fnIorq : IN std_logic;
	fCtrlin_dir : OUT std_logic;
	fnWait : IN std_logic;
	fnInt : IN std_logic;
	fnNmi : IN std_logic;
	fnBusreq : IN std_logic;
	fSpare1 : IN std_logic;
	fSpare2 : IN std_logic;
	fSpare3 : IN std_logic;
	fClkrst_dir : OUT std_logic;
	fnClk : IN std_logic;
	fnReset : IN std_logic;
	fSpare4 : IN std_logic;
	fSpare5 : IN std_logic;
	fSpare6 : IN std_logic;
	fSpare7 : IN std_logic;
	fIn1 : IN std_logic;
	fIn2 : IN std_logic;
	fIn3 : IN std_logic;
	fIn4 : IN std_logic;
	fIn5 : IN std_logic;
	fIn6 : IN std_logic;
	fIn7 : IN std_logic;
	fIn8 : IN std_logic;
	fTxd : OUT std_logic;
	fRxd : IN std_logic;
	fAltclk : IN std_logic;
	nBtn_reset : IN std_logic;
	nBtn_usr : IN std_logic;
	fSD_CS : OUT std_logic;
	fSD_DO : IN std_logic;
	fSD_DI : OUT std_logic;
	fSD_CLK : OUT std_logic;
	fPS2_clk : OUT std_logic;
	fPS2_dat : IN std_logic;
	fMA14_18 : OUT std_logic_vector(4 DOWNTO 0);
	fMem_CE0 : OUT std_logic;
	fMem_CE1 : OUT std_logic;
	LEDs : OUT std_logic_vector(3 DOWNTO 0);
	fClk_50MHz : IN std_logic
	);
END z8ty_fpga_core;

-- Design Ports Information
-- fAddr_dir	=>  Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- fAddress[8]	=>  Location: PIN_83,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- fAddress[9]	=>  Location: PIN_80,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- fAddress[10]	=>  Location: PIN_34,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- fAddress[11]	=>  Location: PIN_33,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- fAddress[12]	=>  Location: PIN_38,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- fAddress[13]	=>  Location: PIN_39,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- fAddress[14]	=>  Location: PIN_31,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- fAddress[15]	=>  Location: PIN_32,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- fData_dir	=>  Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- fCtrlout_dir	=>  Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- fnRfsh	=>  Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- fnHalt	=>  Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- fnM1	=>  Location: PIN_144,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- fnMemrq	=>  Location: PIN_1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- fnBusack	=>  Location: PIN_142,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- fCtrlin_dir	=>  Location: PIN_135,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- fnWait	=>  Location: PIN_138,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- fnInt	=>  Location: PIN_141,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- fnNmi	=>  Location: PIN_136,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- fnBusreq	=>  Location: PIN_137,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- fSpare1	=>  Location: PIN_113,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- fSpare2	=>  Location: PIN_115,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- fSpare3	=>  Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- fClkrst_dir	=>  Location: PIN_129,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- fSpare4	=>  Location: PIN_124,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- fSpare5	=>  Location: PIN_132,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- fSpare6	=>  Location: PIN_128,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- fSpare7	=>  Location: PIN_126,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- fIn1	=>  Location: PIN_100,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- fIn2	=>  Location: PIN_103,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- fIn3	=>  Location: PIN_105,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- fIn4	=>  Location: PIN_110,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- fIn5	=>  Location: PIN_112,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- fIn6	=>  Location: PIN_114,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- fIn7	=>  Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- fIn8	=>  Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- fTxd	=>  Location: PIN_106,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- fAltclk	=>  Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- fSD_CS	=>  Location: PIN_101,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- fSD_DI	=>  Location: PIN_98,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- fSD_CLK	=>  Location: PIN_99,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- fPS2_clk	=>  Location: PIN_84,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- fPS2_dat	=>  Location: PIN_85,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- fMA14_18[0]	=>  Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- fMA14_18[1]	=>  Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- fMA14_18[2]	=>  Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- fMA14_18[3]	=>  Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- fMA14_18[4]	=>  Location: PIN_54,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- fMem_CE0	=>  Location: PIN_68,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- fMem_CE1	=>  Location: PIN_2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDs[0]	=>  Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDs[1]	=>  Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDs[2]	=>  Location: PIN_10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDs[3]	=>  Location: PIN_11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- fData[0]	=>  Location: PIN_71,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- fData[1]	=>  Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- fData[2]	=>  Location: PIN_73,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- fData[3]	=>  Location: PIN_72,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- fData[4]	=>  Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- fData[5]	=>  Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- fData[6]	=>  Location: PIN_46,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- fData[7]	=>  Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- fnRd	=>  Location: PIN_50,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- fnIorq	=>  Location: PIN_143,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- fAddress[3]	=>  Location: PIN_66,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- fAddress[4]	=>  Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- fAddress[6]	=>  Location: PIN_77,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- fAddress[7]	=>  Location: PIN_76,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- fAddress[1]	=>  Location: PIN_64,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- fAddress[2]	=>  Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- fAddress[5]	=>  Location: PIN_74,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- fAddress[0]	=>  Location: PIN_65,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- fnClk	=>  Location: PIN_133,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- fnReset	=>  Location: PIN_127,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- fnWr	=>  Location: PIN_75,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- fClk_50MHz	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fSD_DO	=>  Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- nBtn_reset	=>  Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- nBtn_usr	=>  Location: PIN_104,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- fRxd	=>  Location: PIN_111,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF z8ty_fpga_core IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_fAddr_dir : std_logic;
SIGNAL ww_fAddress : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_fData_dir : std_logic;
SIGNAL ww_fCtrlout_dir : std_logic;
SIGNAL ww_fnRfsh : std_logic;
SIGNAL ww_fnHalt : std_logic;
SIGNAL ww_fnM1 : std_logic;
SIGNAL ww_fnMemrq : std_logic;
SIGNAL ww_fnWr : std_logic;
SIGNAL ww_fnRd : std_logic;
SIGNAL ww_fnBusack : std_logic;
SIGNAL ww_fnIorq : std_logic;
SIGNAL ww_fCtrlin_dir : std_logic;
SIGNAL ww_fnWait : std_logic;
SIGNAL ww_fnInt : std_logic;
SIGNAL ww_fnNmi : std_logic;
SIGNAL ww_fnBusreq : std_logic;
SIGNAL ww_fSpare1 : std_logic;
SIGNAL ww_fSpare2 : std_logic;
SIGNAL ww_fSpare3 : std_logic;
SIGNAL ww_fClkrst_dir : std_logic;
SIGNAL ww_fnClk : std_logic;
SIGNAL ww_fnReset : std_logic;
SIGNAL ww_fSpare4 : std_logic;
SIGNAL ww_fSpare5 : std_logic;
SIGNAL ww_fSpare6 : std_logic;
SIGNAL ww_fSpare7 : std_logic;
SIGNAL ww_fIn1 : std_logic;
SIGNAL ww_fIn2 : std_logic;
SIGNAL ww_fIn3 : std_logic;
SIGNAL ww_fIn4 : std_logic;
SIGNAL ww_fIn5 : std_logic;
SIGNAL ww_fIn6 : std_logic;
SIGNAL ww_fIn7 : std_logic;
SIGNAL ww_fIn8 : std_logic;
SIGNAL ww_fTxd : std_logic;
SIGNAL ww_fRxd : std_logic;
SIGNAL ww_fAltclk : std_logic;
SIGNAL ww_nBtn_reset : std_logic;
SIGNAL ww_nBtn_usr : std_logic;
SIGNAL ww_fSD_CS : std_logic;
SIGNAL ww_fSD_DO : std_logic;
SIGNAL ww_fSD_DI : std_logic;
SIGNAL ww_fSD_CLK : std_logic;
SIGNAL ww_fPS2_clk : std_logic;
SIGNAL ww_fPS2_dat : std_logic;
SIGNAL ww_fMA14_18 : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_fMem_CE0 : std_logic;
SIGNAL ww_fMem_CE1 : std_logic;
SIGNAL ww_LEDs : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_fClk_50MHz : std_logic;
SIGNAL \comb~2clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \serialClkCount[15]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \systemTimerOut~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \comb~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \fClk_50MHz~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \timer1|TimerOut[7]~2clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \comb~3clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \io3|reset~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \io2|LEDreturn[2]~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \io2|process_0~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \fAddress[8]~input_o\ : std_logic;
SIGNAL \fAddress[9]~input_o\ : std_logic;
SIGNAL \fAddress[10]~input_o\ : std_logic;
SIGNAL \fAddress[11]~input_o\ : std_logic;
SIGNAL \fAddress[12]~input_o\ : std_logic;
SIGNAL \fAddress[13]~input_o\ : std_logic;
SIGNAL \fAddress[14]~input_o\ : std_logic;
SIGNAL \fAddress[15]~input_o\ : std_logic;
SIGNAL \fnRfsh~input_o\ : std_logic;
SIGNAL \fnHalt~input_o\ : std_logic;
SIGNAL \fnM1~input_o\ : std_logic;
SIGNAL \fnMemrq~input_o\ : std_logic;
SIGNAL \fnBusack~input_o\ : std_logic;
SIGNAL \fnWait~input_o\ : std_logic;
SIGNAL \fnInt~input_o\ : std_logic;
SIGNAL \fnNmi~input_o\ : std_logic;
SIGNAL \fnBusreq~input_o\ : std_logic;
SIGNAL \fSpare1~input_o\ : std_logic;
SIGNAL \fSpare2~input_o\ : std_logic;
SIGNAL \fSpare3~input_o\ : std_logic;
SIGNAL \fSpare4~input_o\ : std_logic;
SIGNAL \fSpare5~input_o\ : std_logic;
SIGNAL \fSpare6~input_o\ : std_logic;
SIGNAL \fSpare7~input_o\ : std_logic;
SIGNAL \fIn1~input_o\ : std_logic;
SIGNAL \fIn2~input_o\ : std_logic;
SIGNAL \fIn3~input_o\ : std_logic;
SIGNAL \fIn4~input_o\ : std_logic;
SIGNAL \fIn5~input_o\ : std_logic;
SIGNAL \fIn6~input_o\ : std_logic;
SIGNAL \fIn7~input_o\ : std_logic;
SIGNAL \fIn8~input_o\ : std_logic;
SIGNAL \fAltclk~input_o\ : std_logic;
SIGNAL \fPS2_dat~input_o\ : std_logic;
SIGNAL \fData[0]~output_o\ : std_logic;
SIGNAL \fData[1]~output_o\ : std_logic;
SIGNAL \fData[2]~output_o\ : std_logic;
SIGNAL \fData[3]~output_o\ : std_logic;
SIGNAL \fData[4]~output_o\ : std_logic;
SIGNAL \fData[5]~output_o\ : std_logic;
SIGNAL \fData[6]~output_o\ : std_logic;
SIGNAL \fData[7]~output_o\ : std_logic;
SIGNAL \fAddr_dir~output_o\ : std_logic;
SIGNAL \fData_dir~output_o\ : std_logic;
SIGNAL \fCtrlout_dir~output_o\ : std_logic;
SIGNAL \fCtrlin_dir~output_o\ : std_logic;
SIGNAL \fClkrst_dir~output_o\ : std_logic;
SIGNAL \fTxd~output_o\ : std_logic;
SIGNAL \fSD_CS~output_o\ : std_logic;
SIGNAL \fSD_DI~output_o\ : std_logic;
SIGNAL \fSD_CLK~output_o\ : std_logic;
SIGNAL \fPS2_clk~output_o\ : std_logic;
SIGNAL \fMA14_18[0]~output_o\ : std_logic;
SIGNAL \fMA14_18[1]~output_o\ : std_logic;
SIGNAL \fMA14_18[2]~output_o\ : std_logic;
SIGNAL \fMA14_18[3]~output_o\ : std_logic;
SIGNAL \fMA14_18[4]~output_o\ : std_logic;
SIGNAL \fMem_CE0~output_o\ : std_logic;
SIGNAL \fMem_CE1~output_o\ : std_logic;
SIGNAL \LEDs[0]~output_o\ : std_logic;
SIGNAL \LEDs[1]~output_o\ : std_logic;
SIGNAL \LEDs[2]~output_o\ : std_logic;
SIGNAL \LEDs[3]~output_o\ : std_logic;
SIGNAL \fData[0]~input_o\ : std_logic;
SIGNAL \fnReset~input_o\ : std_logic;
SIGNAL \fAddress[2]~input_o\ : std_logic;
SIGNAL \fAddress[4]~input_o\ : std_logic;
SIGNAL \fAddress[3]~input_o\ : std_logic;
SIGNAL \fAddress[1]~input_o\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \fAddress[7]~input_o\ : std_logic;
SIGNAL \fAddress[5]~input_o\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \fAddress[0]~input_o\ : std_logic;
SIGNAL \fAddress[6]~input_o\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \fnWr~input_o\ : std_logic;
SIGNAL \fnIorq~input_o\ : std_logic;
SIGNAL \io2|process_0~0_combout\ : std_logic;
SIGNAL \io2|process_0~0clkctrl_outclk\ : std_logic;
SIGNAL \fnRd~input_o\ : std_logic;
SIGNAL \fData~30_combout\ : std_logic;
SIGNAL \io2|LEDreturn[2]~0_combout\ : std_logic;
SIGNAL \io2|LEDreturn[2]~0clkctrl_outclk\ : std_logic;
SIGNAL \nBtn_reset~input_o\ : std_logic;
SIGNAL \fClk_50MHz~input_o\ : std_logic;
SIGNAL \fClk_50MHz~inputclkctrl_outclk\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \Add1~21\ : std_logic;
SIGNAL \Add1~22_combout\ : std_logic;
SIGNAL \Add1~23\ : std_logic;
SIGNAL \Add1~24_combout\ : std_logic;
SIGNAL \Add1~25\ : std_logic;
SIGNAL \Add1~26_combout\ : std_logic;
SIGNAL \Add1~27\ : std_logic;
SIGNAL \Add1~28_combout\ : std_logic;
SIGNAL \Add1~29\ : std_logic;
SIGNAL \Add1~30_combout\ : std_logic;
SIGNAL \Add1~31\ : std_logic;
SIGNAL \Add1~32_combout\ : std_logic;
SIGNAL \Add1~33\ : std_logic;
SIGNAL \Add1~34_combout\ : std_logic;
SIGNAL \Add1~35\ : std_logic;
SIGNAL \Add1~36_combout\ : std_logic;
SIGNAL \Add1~37\ : std_logic;
SIGNAL \Add1~38_combout\ : std_logic;
SIGNAL \Add1~39\ : std_logic;
SIGNAL \Add1~40_combout\ : std_logic;
SIGNAL \Add1~41\ : std_logic;
SIGNAL \Add1~42_combout\ : std_logic;
SIGNAL \Add1~43\ : std_logic;
SIGNAL \Add1~44_combout\ : std_logic;
SIGNAL \Add1~45\ : std_logic;
SIGNAL \Add1~46_combout\ : std_logic;
SIGNAL \Equal5~2_combout\ : std_logic;
SIGNAL \Add1~47\ : std_logic;
SIGNAL \Add1~48_combout\ : std_logic;
SIGNAL \Add1~49\ : std_logic;
SIGNAL \Add1~50_combout\ : std_logic;
SIGNAL \Add1~51\ : std_logic;
SIGNAL \Add1~52_combout\ : std_logic;
SIGNAL \Add1~53\ : std_logic;
SIGNAL \Add1~54_combout\ : std_logic;
SIGNAL \Add1~55\ : std_logic;
SIGNAL \Add1~56_combout\ : std_logic;
SIGNAL \Add1~57\ : std_logic;
SIGNAL \Add1~58_combout\ : std_logic;
SIGNAL \Add1~59\ : std_logic;
SIGNAL \Add1~60_combout\ : std_logic;
SIGNAL \Add1~61\ : std_logic;
SIGNAL \Add1~62_combout\ : std_logic;
SIGNAL \Equal5~0_combout\ : std_logic;
SIGNAL \Equal5~1_combout\ : std_logic;
SIGNAL \Equal5~3_combout\ : std_logic;
SIGNAL \Equal5~4_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Equal5~6_combout\ : std_logic;
SIGNAL \Equal5~5_combout\ : std_logic;
SIGNAL \Equal5~7_combout\ : std_logic;
SIGNAL \systemTimerCounter~3_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \systemTimerCounter~2_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Equal5~9_combout\ : std_logic;
SIGNAL \Equal5~10_combout\ : std_logic;
SIGNAL \systemTimerCounter~1_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \systemTimerCounter~0_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Equal5~8_combout\ : std_logic;
SIGNAL \systemTimerOut~0_combout\ : std_logic;
SIGNAL \systemTimerOut~1_combout\ : std_logic;
SIGNAL \systemTimerOut~q\ : std_logic;
SIGNAL \systemTimerOut~clkctrl_outclk\ : std_logic;
SIGNAL \timer1|timer[0]~45_combout\ : std_logic;
SIGNAL \timer1|process_0~0_combout\ : std_logic;
SIGNAL \nTimercs~0_combout\ : std_logic;
SIGNAL \timer1|TimerOut[7]~1_combout\ : std_logic;
SIGNAL \timer1|timer[1]~15_combout\ : std_logic;
SIGNAL \timer1|timer[1]~16\ : std_logic;
SIGNAL \timer1|timer[2]~17_combout\ : std_logic;
SIGNAL \timer1|timer[2]~18\ : std_logic;
SIGNAL \timer1|timer[3]~19_combout\ : std_logic;
SIGNAL \timer1|timer[3]~20\ : std_logic;
SIGNAL \timer1|timer[4]~21_combout\ : std_logic;
SIGNAL \timer1|timer[4]~22\ : std_logic;
SIGNAL \timer1|timer[5]~23_combout\ : std_logic;
SIGNAL \timer1|timer[5]~24\ : std_logic;
SIGNAL \timer1|timer[6]~25_combout\ : std_logic;
SIGNAL \timer1|timer[6]~26\ : std_logic;
SIGNAL \timer1|timer[7]~27_combout\ : std_logic;
SIGNAL \timer1|timer[7]~28\ : std_logic;
SIGNAL \timer1|timer[8]~29_combout\ : std_logic;
SIGNAL \timer1|TimerOut[0]~0_combout\ : std_logic;
SIGNAL \nTimercs~1_combout\ : std_logic;
SIGNAL \fData~27_combout\ : std_logic;
SIGNAL \timer1|TimerOut[7]~2_combout\ : std_logic;
SIGNAL \timer1|TimerOut[7]~2clkctrl_outclk\ : std_logic;
SIGNAL \nButtoncs~1_combout\ : std_logic;
SIGNAL \nButtoncs~0_combout\ : std_logic;
SIGNAL \nButtoncs~2_combout\ : std_logic;
SIGNAL \fData[0]~29_combout\ : std_logic;
SIGNAL \nSerialcs~0_combout\ : std_logic;
SIGNAL \comb~2_combout\ : std_logic;
SIGNAL \comb~2clkctrl_outclk\ : std_logic;
SIGNAL \io3|rxReadPointer[0]~6_combout\ : std_logic;
SIGNAL \io3|rxReadPointer[1]~9\ : std_logic;
SIGNAL \io3|rxReadPointer[2]~11_combout\ : std_logic;
SIGNAL \serialClkCount[4]~35_combout\ : std_logic;
SIGNAL \serialClkCount[5]~12_cout\ : std_logic;
SIGNAL \serialClkCount[5]~13_combout\ : std_logic;
SIGNAL \serialClkCount[5]~14\ : std_logic;
SIGNAL \serialClkCount[6]~15_combout\ : std_logic;
SIGNAL \serialClkCount[6]~16\ : std_logic;
SIGNAL \serialClkCount[7]~17_combout\ : std_logic;
SIGNAL \serialClkCount[7]~18\ : std_logic;
SIGNAL \serialClkCount[8]~19_combout\ : std_logic;
SIGNAL \serialClkCount[8]~20\ : std_logic;
SIGNAL \serialClkCount[9]~21_combout\ : std_logic;
SIGNAL \serialClkCount[9]~22\ : std_logic;
SIGNAL \serialClkCount[10]~23_combout\ : std_logic;
SIGNAL \serialClkCount[10]~24\ : std_logic;
SIGNAL \serialClkCount[11]~25_combout\ : std_logic;
SIGNAL \serialClkCount[11]~26\ : std_logic;
SIGNAL \serialClkCount[12]~27_combout\ : std_logic;
SIGNAL \serialClkCount[12]~28\ : std_logic;
SIGNAL \serialClkCount[13]~29_combout\ : std_logic;
SIGNAL \serialClkCount[13]~30\ : std_logic;
SIGNAL \serialClkCount[14]~31_combout\ : std_logic;
SIGNAL \serialClkCount[14]~32\ : std_logic;
SIGNAL \serialClkCount[15]~33_combout\ : std_logic;
SIGNAL \serialClkCount[15]~clkctrl_outclk\ : std_logic;
SIGNAL \io3|rxInPointer[0]~7_combout\ : std_logic;
SIGNAL \io3|rxInPointer[1]~11\ : std_logic;
SIGNAL \io3|rxInPointer[2]~12_combout\ : std_logic;
SIGNAL \comb~3_combout\ : std_logic;
SIGNAL \fData[1]~input_o\ : std_logic;
SIGNAL \io3|reset~0_combout\ : std_logic;
SIGNAL \io3|rxClockCount[0]~6_combout\ : std_logic;
SIGNAL \io3|reset~0clkctrl_outclk\ : std_logic;
SIGNAL \io3|Equal4~0_combout\ : std_logic;
SIGNAL \io3|Equal4~1_combout\ : std_logic;
SIGNAL \io3|rxFilter[0]~6_combout\ : std_logic;
SIGNAL \fRxd~input_o\ : std_logic;
SIGNAL \io3|rxFilter[0]~7\ : std_logic;
SIGNAL \io3|rxFilter[1]~10\ : std_logic;
SIGNAL \io3|rxFilter[2]~11_combout\ : std_logic;
SIGNAL \io3|rxFilter[2]~12\ : std_logic;
SIGNAL \io3|rxFilter[3]~13_combout\ : std_logic;
SIGNAL \io3|rxFilter[3]~14\ : std_logic;
SIGNAL \io3|rxFilter[4]~15_combout\ : std_logic;
SIGNAL \io3|process_1~3_combout\ : std_logic;
SIGNAL \io3|rxFilter[4]~16\ : std_logic;
SIGNAL \io3|rxFilter[5]~17_combout\ : std_logic;
SIGNAL \io3|process_1~4_combout\ : std_logic;
SIGNAL \io3|rxFilter[1]~9_combout\ : std_logic;
SIGNAL \io3|process_1~1_combout\ : std_logic;
SIGNAL \io3|rxFilter[3]~8_combout\ : std_logic;
SIGNAL \io3|process_1~0_combout\ : std_logic;
SIGNAL \io3|process_1~2_combout\ : std_logic;
SIGNAL \io3|rxdFiltered~0_combout\ : std_logic;
SIGNAL \io3|rxdFiltered~1_combout\ : std_logic;
SIGNAL \io3|rxdFiltered~q\ : std_logic;
SIGNAL \io3|Selector12~2_combout\ : std_logic;
SIGNAL \io3|Selector10~0_combout\ : std_logic;
SIGNAL \io3|rxState.idle~q\ : std_logic;
SIGNAL \io3|rxClockCount[0]~14_combout\ : std_logic;
SIGNAL \io3|rxClockCount[0]~7\ : std_logic;
SIGNAL \io3|rxClockCount[1]~8_combout\ : std_logic;
SIGNAL \io3|rxClockCount[1]~9\ : std_logic;
SIGNAL \io3|rxClockCount[2]~10_combout\ : std_logic;
SIGNAL \io3|rxClockCount[2]~11\ : std_logic;
SIGNAL \io3|rxClockCount[3]~12_combout\ : std_logic;
SIGNAL \io3|rxClockCount[3]~13\ : std_logic;
SIGNAL \io3|rxClockCount[4]~15_combout\ : std_logic;
SIGNAL \io3|rxClockCount[4]~16\ : std_logic;
SIGNAL \io3|rxClockCount[5]~17_combout\ : std_logic;
SIGNAL \io3|Selector11~0_combout\ : std_logic;
SIGNAL \io3|rxState.dataBit~q\ : std_logic;
SIGNAL \io3|rxCurrentByteBuffer[0]~0_combout\ : std_logic;
SIGNAL \io3|Selector3~0_combout\ : std_logic;
SIGNAL \io3|rxBitCount[0]~0_combout\ : std_logic;
SIGNAL \io3|Selector2~0_combout\ : std_logic;
SIGNAL \io3|Selector1~0_combout\ : std_logic;
SIGNAL \io3|Selector12~0_combout\ : std_logic;
SIGNAL \io3|Selector0~0_combout\ : std_logic;
SIGNAL \io3|Selector12~1_combout\ : std_logic;
SIGNAL \io3|Selector12~3_combout\ : std_logic;
SIGNAL \io3|Selector12~4_combout\ : std_logic;
SIGNAL \io3|rxState.stopBit~q\ : std_logic;
SIGNAL \io3|rxInPointer[5]~6_combout\ : std_logic;
SIGNAL \io3|rxInPointer[5]~9_combout\ : std_logic;
SIGNAL \io3|rxInPointer[2]~13\ : std_logic;
SIGNAL \io3|rxInPointer[3]~14_combout\ : std_logic;
SIGNAL \io3|LessThan4~0_combout\ : std_logic;
SIGNAL \io3|rxInPointer[3]~15\ : std_logic;
SIGNAL \io3|rxInPointer[4]~16_combout\ : std_logic;
SIGNAL \io3|rxInPointer[4]~17\ : std_logic;
SIGNAL \io3|rxInPointer[5]~18_combout\ : std_logic;
SIGNAL \io3|LessThan4~1_combout\ : std_logic;
SIGNAL \io3|rxInPointer[0]~8\ : std_logic;
SIGNAL \io3|rxInPointer[1]~10_combout\ : std_logic;
SIGNAL \io3|Equal0~0_combout\ : std_logic;
SIGNAL \io3|Equal0~1_combout\ : std_logic;
SIGNAL \io3|Equal0~2_combout\ : std_logic;
SIGNAL \io3|rxReadPointer[5]~10_combout\ : std_logic;
SIGNAL \io3|rxReadPointer[2]~12\ : std_logic;
SIGNAL \io3|rxReadPointer[3]~13_combout\ : std_logic;
SIGNAL \io3|rxReadPointer[3]~14\ : std_logic;
SIGNAL \io3|rxReadPointer[4]~15_combout\ : std_logic;
SIGNAL \io3|rxReadPointer[4]~16\ : std_logic;
SIGNAL \io3|rxReadPointer[5]~17_combout\ : std_logic;
SIGNAL \io3|LessThan3~0_combout\ : std_logic;
SIGNAL \io3|LessThan3~1_combout\ : std_logic;
SIGNAL \io3|rxReadPointer[0]~7\ : std_logic;
SIGNAL \io3|rxReadPointer[1]~8_combout\ : std_logic;
SIGNAL \io3|rxCurrentByteBuffer[7]~2_combout\ : std_logic;
SIGNAL \io3|rxCurrentByteBuffer[0]~1_combout\ : std_logic;
SIGNAL \io3|rxCurrentByteBuffer[5]~feeder_combout\ : std_logic;
SIGNAL \io3|rxCurrentByteBuffer[4]~feeder_combout\ : std_logic;
SIGNAL \io3|rxCurrentByteBuffer[3]~feeder_combout\ : std_logic;
SIGNAL \io3|rxCurrentByteBuffer[1]~feeder_combout\ : std_logic;
SIGNAL \io3|rxBuffer~239_combout\ : std_logic;
SIGNAL \io3|rxBuffer~240_combout\ : std_logic;
SIGNAL \io3|rxBuffer~21_q\ : std_logic;
SIGNAL \io3|rxBuffer~241_combout\ : std_logic;
SIGNAL \io3|rxBuffer~242_combout\ : std_logic;
SIGNAL \io3|rxBuffer~13_q\ : std_logic;
SIGNAL \io3|rxBuffer~145_combout\ : std_logic;
SIGNAL \io3|rxBuffer~243_combout\ : std_logic;
SIGNAL \io3|rxBuffer~244_combout\ : std_logic;
SIGNAL \io3|rxBuffer~37_q\ : std_logic;
SIGNAL \io3|rxBuffer~237_combout\ : std_logic;
SIGNAL \io3|rxBuffer~238_combout\ : std_logic;
SIGNAL \io3|rxBuffer~29_q\ : std_logic;
SIGNAL \io3|rxBuffer~146_combout\ : std_logic;
SIGNAL \io3|rxBuffer~53feeder_combout\ : std_logic;
SIGNAL \io3|rxBuffer~229_combout\ : std_logic;
SIGNAL \io3|rxBuffer~230_combout\ : std_logic;
SIGNAL \io3|rxBuffer~53_q\ : std_logic;
SIGNAL \io3|rxBuffer~233_combout\ : std_logic;
SIGNAL \io3|rxBuffer~234_combout\ : std_logic;
SIGNAL \io3|rxBuffer~45_q\ : std_logic;
SIGNAL \io3|rxBuffer~61feeder_combout\ : std_logic;
SIGNAL \io3|rxBuffer~231_combout\ : std_logic;
SIGNAL \io3|rxBuffer~232_combout\ : std_logic;
SIGNAL \io3|rxBuffer~61_q\ : std_logic;
SIGNAL \io3|rxBuffer~143_combout\ : std_logic;
SIGNAL \io3|rxBuffer~235_combout\ : std_logic;
SIGNAL \io3|rxBuffer~236_combout\ : std_logic;
SIGNAL \io3|rxBuffer~69_q\ : std_logic;
SIGNAL \io3|rxBuffer~144_combout\ : std_logic;
SIGNAL \io3|rxBuffer~147_combout\ : std_logic;
SIGNAL \io3|rxBuffer~247_combout\ : std_logic;
SIGNAL \io3|rxBuffer~248_combout\ : std_logic;
SIGNAL \io3|rxBuffer~125_q\ : std_logic;
SIGNAL \io3|rxBuffer~249_combout\ : std_logic;
SIGNAL \io3|rxBuffer~250_combout\ : std_logic;
SIGNAL \io3|rxBuffer~109_q\ : std_logic;
SIGNAL \io3|rxBuffer~148_combout\ : std_logic;
SIGNAL \io3|rxBuffer~245_combout\ : std_logic;
SIGNAL \io3|rxBuffer~246_combout\ : std_logic;
SIGNAL \io3|rxBuffer~117_q\ : std_logic;
SIGNAL \io3|rxBuffer~251_combout\ : std_logic;
SIGNAL \io3|rxBuffer~252_combout\ : std_logic;
SIGNAL \io3|rxBuffer~133_q\ : std_logic;
SIGNAL \io3|rxBuffer~149_combout\ : std_logic;
SIGNAL \io3|rxBuffer~221_combout\ : std_logic;
SIGNAL \io3|rxBuffer~222_combout\ : std_logic;
SIGNAL \io3|rxBuffer~93_q\ : std_logic;
SIGNAL \io3|rxBuffer~227_combout\ : std_logic;
SIGNAL \io3|rxBuffer~228_combout\ : std_logic;
SIGNAL \io3|rxBuffer~101_q\ : std_logic;
SIGNAL \io3|rxBuffer~85feeder_combout\ : std_logic;
SIGNAL \io3|rxBuffer~223_combout\ : std_logic;
SIGNAL \io3|rxBuffer~224_combout\ : std_logic;
SIGNAL \io3|rxBuffer~85_q\ : std_logic;
SIGNAL \io3|rxBuffer~225_combout\ : std_logic;
SIGNAL \io3|rxBuffer~226_combout\ : std_logic;
SIGNAL \io3|rxBuffer~77_q\ : std_logic;
SIGNAL \io3|rxBuffer~141_combout\ : std_logic;
SIGNAL \io3|rxBuffer~142_combout\ : std_logic;
SIGNAL \io3|rxBuffer~150_combout\ : std_logic;
SIGNAL \io3|Equal0~3_combout\ : std_logic;
SIGNAL \io3|dataOut~0_combout\ : std_logic;
SIGNAL \fnClk~input_o\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \comb~0clkctrl_outclk\ : std_logic;
SIGNAL \io4|host_write_flag~0_combout\ : std_logic;
SIGNAL \io4|Equal6~0_combout\ : std_logic;
SIGNAL \io4|host_write_flag~q\ : std_logic;
SIGNAL \io4|return_state.idle~0_combout\ : std_logic;
SIGNAL \io4|Add1~0_combout\ : std_logic;
SIGNAL \io4|Selector68~0_combout\ : std_logic;
SIGNAL \io4|fsm~0_combout\ : std_logic;
SIGNAL \io4|data_sig[7]~8_combout\ : std_logic;
SIGNAL \io4|data_sig[7]~2_combout\ : std_logic;
SIGNAL \fSD_DO~input_o\ : std_logic;
SIGNAL \io4|fsm:bit_counter[1]~3_combout\ : std_logic;
SIGNAL \io4|return_state.write_block_wait~q\ : std_logic;
SIGNAL \io4|Selector102~0_combout\ : std_logic;
SIGNAL \io4|Selector100~0_combout\ : std_logic;
SIGNAL \io4|fsm~2_combout\ : std_logic;
SIGNAL \io4|Selector81~0_combout\ : std_logic;
SIGNAL \io4|state.init~q\ : std_logic;
SIGNAL \io4|fsm:bit_counter[1]~4_combout\ : std_logic;
SIGNAL \io4|state.cmd0~q\ : std_logic;
SIGNAL \fData[2]~input_o\ : std_logic;
SIGNAL \fData[5]~input_o\ : std_logic;
SIGNAL \fData[4]~input_o\ : std_logic;
SIGNAL \fData[6]~input_o\ : std_logic;
SIGNAL \fData[3]~input_o\ : std_logic;
SIGNAL \io4|wr_cmd_reg~1_combout\ : std_logic;
SIGNAL \fData[7]~input_o\ : std_logic;
SIGNAL \io4|wr_cmd_reg~0_combout\ : std_logic;
SIGNAL \io4|wr_cmd_reg~2_combout\ : std_logic;
SIGNAL \io4|block_read~0_combout\ : std_logic;
SIGNAL \io4|block_write~0_combout\ : std_logic;
SIGNAL \io4|block_write~q\ : std_logic;
SIGNAL \io4|Selector104~1_combout\ : std_logic;
SIGNAL \io4|Selector104~2_combout\ : std_logic;
SIGNAL \io4|block_start_ack~q\ : std_logic;
SIGNAL \io4|Selector103~0_combout\ : std_logic;
SIGNAL \io4|init_busy~q\ : std_logic;
SIGNAL \io4|wr_cmd_reg~3_combout\ : std_logic;
SIGNAL \io4|block_read~q\ : std_logic;
SIGNAL \io4|Selector98~0_combout\ : std_logic;
SIGNAL \io4|state.write_block_cmd~q\ : std_logic;
SIGNAL \io4|Selector90~0_combout\ : std_logic;
SIGNAL \io4|state.read_block_cmd~q\ : std_logic;
SIGNAL \io4|Selector104~0_combout\ : std_logic;
SIGNAL \io4|Selector109~0_combout\ : std_logic;
SIGNAL \io4|return_state.cmd55~q\ : std_logic;
SIGNAL \io4|Selector176~0_combout\ : std_logic;
SIGNAL \io4|Selector78~0_combout\ : std_logic;
SIGNAL \io4|recv_data[0]~0_combout\ : std_logic;
SIGNAL \io4|Selector84~1_combout\ : std_logic;
SIGNAL \io4|state.cmd55~q\ : std_logic;
SIGNAL \io4|Selector110~0_combout\ : std_logic;
SIGNAL \io4|return_state.acmd41~q\ : std_logic;
SIGNAL \io4|Selector85~0_combout\ : std_logic;
SIGNAL \io4|state.acmd41~q\ : std_logic;
SIGNAL \io4|Selector111~0_combout\ : std_logic;
SIGNAL \io4|return_state.poll_cmd~q\ : std_logic;
SIGNAL \io4|Selector86~0_combout\ : std_logic;
SIGNAL \io4|state.poll_cmd~q\ : std_logic;
SIGNAL \io4|Selector175~0_combout\ : std_logic;
SIGNAL \io4|Selector174~0_combout\ : std_logic;
SIGNAL \io4|Selector173~0_combout\ : std_logic;
SIGNAL \io4|Selector172~0_combout\ : std_logic;
SIGNAL \io4|Selector171~0_combout\ : std_logic;
SIGNAL \io4|Selector170~0_combout\ : std_logic;
SIGNAL \io4|Selector169~0_combout\ : std_logic;
SIGNAL \io4|Selector168~0_combout\ : std_logic;
SIGNAL \io4|Selector167~0_combout\ : std_logic;
SIGNAL \io4|Selector166~0_combout\ : std_logic;
SIGNAL \io4|Selector165~0_combout\ : std_logic;
SIGNAL \io4|Selector164~0_combout\ : std_logic;
SIGNAL \io4|Selector163~0_combout\ : std_logic;
SIGNAL \io4|Selector162~0_combout\ : std_logic;
SIGNAL \io4|Selector161~0_combout\ : std_logic;
SIGNAL \io4|Selector160~0_combout\ : std_logic;
SIGNAL \io4|Selector159~0_combout\ : std_logic;
SIGNAL \io4|Selector158~0_combout\ : std_logic;
SIGNAL \io4|Selector157~0_combout\ : std_logic;
SIGNAL \io4|Selector156~0_combout\ : std_logic;
SIGNAL \io4|Selector155~0_combout\ : std_logic;
SIGNAL \io4|Selector154~0_combout\ : std_logic;
SIGNAL \io4|Selector153~0_combout\ : std_logic;
SIGNAL \io4|Selector152~0_combout\ : std_logic;
SIGNAL \io4|Selector151~0_combout\ : std_logic;
SIGNAL \io4|Selector150~0_combout\ : std_logic;
SIGNAL \io4|Selector149~0_combout\ : std_logic;
SIGNAL \io4|Selector148~0_combout\ : std_logic;
SIGNAL \io4|Selector147~0_combout\ : std_logic;
SIGNAL \io4|Selector146~0_combout\ : std_logic;
SIGNAL \io4|Selector145~0_combout\ : std_logic;
SIGNAL \io4|Selector113~0_combout\ : std_logic;
SIGNAL \io4|return_state.cardsel~q\ : std_logic;
SIGNAL \io4|Selector88~0_combout\ : std_logic;
SIGNAL \io4|state.cardsel~q\ : std_logic;
SIGNAL \io4|Selector87~0_combout\ : std_logic;
SIGNAL \io4|state.cmd58~q\ : std_logic;
SIGNAL \io4|WideOr18~0_combout\ : std_logic;
SIGNAL \io4|WideOr28~3_combout\ : std_logic;
SIGNAL \io4|WideOr60~1_combout\ : std_logic;
SIGNAL \io4|return_state.init~0_combout\ : std_logic;
SIGNAL \io4|Selector108~0_combout\ : std_logic;
SIGNAL \io4|return_state.cmd8~q\ : std_logic;
SIGNAL \io4|Selector83~10_combout\ : std_logic;
SIGNAL \io4|state.cmd8~q\ : std_logic;
SIGNAL \io4|Selector94~2_combout\ : std_logic;
SIGNAL \io4|state.send_regreq~q\ : std_logic;
SIGNAL \io4|Selector95~0_combout\ : std_logic;
SIGNAL \io4|state.receive_ocr_wait~q\ : std_logic;
SIGNAL \io4|Selector83~6_combout\ : std_logic;
SIGNAL \io4|Selector101~0_combout\ : std_logic;
SIGNAL \io4|bit_counter~0_combout\ : std_logic;
SIGNAL \io4|Selector101~1_combout\ : std_logic;
SIGNAL \io4|state.write_block_byte~q\ : std_logic;
SIGNAL \io4|WideOr17~0_combout\ : std_logic;
SIGNAL \io4|Selector93~0_combout\ : std_logic;
SIGNAL \io4|state.send_cmd~q\ : std_logic;
SIGNAL \io4|WideOr29~2_combout\ : std_logic;
SIGNAL \io4|Selector83~5_combout\ : std_logic;
SIGNAL \io4|Selector83~7_combout\ : std_logic;
SIGNAL \io4|Selector83~0_combout\ : std_logic;
SIGNAL \io4|Selector83~3_combout\ : std_logic;
SIGNAL \io4|Selector83~1_combout\ : std_logic;
SIGNAL \io4|Selector83~2_combout\ : std_logic;
SIGNAL \io4|Selector83~4_combout\ : std_logic;
SIGNAL \io4|Selector83~8_combout\ : std_logic;
SIGNAL \io4|WideOr49~0_combout\ : std_logic;
SIGNAL \io4|Selector91~0_combout\ : std_logic;
SIGNAL \io4|state.write_block_wait~q\ : std_logic;
SIGNAL \io4|Selector69~0_combout\ : std_logic;
SIGNAL \io4|Selector70~0_combout\ : std_logic;
SIGNAL \io4|response_mode~q\ : std_logic;
SIGNAL \io4|Selector77~0_combout\ : std_logic;
SIGNAL \io4|WideOr60~0_combout\ : std_logic;
SIGNAL \io4|Add0~0_combout\ : std_logic;
SIGNAL \io4|Selector78~1_combout\ : std_logic;
SIGNAL \io4|Selector78~2_combout\ : std_logic;
SIGNAL \io4|fsm:bit_counter[0]~4_combout\ : std_logic;
SIGNAL \io4|WideOr37~0_combout\ : std_logic;
SIGNAL \io4|fsm:bit_counter[0]~2_combout\ : std_logic;
SIGNAL \io4|Equal9~2_combout\ : std_logic;
SIGNAL \io4|fsm:bit_counter[0]~0_combout\ : std_logic;
SIGNAL \io4|fsm:bit_counter[1]~2_combout\ : std_logic;
SIGNAL \io4|fsm:bit_counter[0]~1_combout\ : std_logic;
SIGNAL \io4|fsm:bit_counter[0]~3_combout\ : std_logic;
SIGNAL \io4|fsm:bit_counter[0]~5_combout\ : std_logic;
SIGNAL \io4|fsm:bit_counter[0]~q\ : std_logic;
SIGNAL \io4|Add0~1\ : std_logic;
SIGNAL \io4|Add0~2_combout\ : std_logic;
SIGNAL \io4|data_sig[7]~6_combout\ : std_logic;
SIGNAL \io4|fsm:bit_counter[1]~1_combout\ : std_logic;
SIGNAL \io4|Selector77~1_combout\ : std_logic;
SIGNAL \io4|fsm:bit_counter[1]~6_combout\ : std_logic;
SIGNAL \io4|fsm:bit_counter[1]~7_combout\ : std_logic;
SIGNAL \io4|fsm:bit_counter[1]~8_combout\ : std_logic;
SIGNAL \io4|fsm:bit_counter[1]~q\ : std_logic;
SIGNAL \io4|Add0~3\ : std_logic;
SIGNAL \io4|Add0~4_combout\ : std_logic;
SIGNAL \io4|Selector76~0_combout\ : std_logic;
SIGNAL \io4|Selector76~1_combout\ : std_logic;
SIGNAL \io4|fsm:bit_counter[2]~q\ : std_logic;
SIGNAL \io4|Add0~5\ : std_logic;
SIGNAL \io4|Add0~6_combout\ : std_logic;
SIGNAL \io4|Selector75~0_combout\ : std_logic;
SIGNAL \io4|fsm:bit_counter[3]~q\ : std_logic;
SIGNAL \io4|Add0~7\ : std_logic;
SIGNAL \io4|Add0~8_combout\ : std_logic;
SIGNAL \io4|WideOr61~0_combout\ : std_logic;
SIGNAL \io4|Selector74~0_combout\ : std_logic;
SIGNAL \io4|fsm:bit_counter[4]~q\ : std_logic;
SIGNAL \io4|Add0~9\ : std_logic;
SIGNAL \io4|Add0~10_combout\ : std_logic;
SIGNAL \io4|Selector73~6_combout\ : std_logic;
SIGNAL \io4|bit_counter~1_combout\ : std_logic;
SIGNAL \io4|Selector73~7_combout\ : std_logic;
SIGNAL \io4|Selector73~8_combout\ : std_logic;
SIGNAL \io4|Selector73~9_combout\ : std_logic;
SIGNAL \io4|Selector73~1_combout\ : std_logic;
SIGNAL \io4|Selector73~3_combout\ : std_logic;
SIGNAL \io4|Selector73~4_combout\ : std_logic;
SIGNAL \io4|Selector73~2_combout\ : std_logic;
SIGNAL \io4|Selector73~5_combout\ : std_logic;
SIGNAL \io4|Selector73~0_combout\ : std_logic;
SIGNAL \io4|Selector73~10_combout\ : std_logic;
SIGNAL \io4|fsm:bit_counter[5]~q\ : std_logic;
SIGNAL \io4|Equal9~0_combout\ : std_logic;
SIGNAL \io4|return_state.rst~feeder_combout\ : std_logic;
SIGNAL \io4|return_state.rst~q\ : std_logic;
SIGNAL \io4|Selector80~0_combout\ : std_logic;
SIGNAL \io4|state.rst~q\ : std_logic;
SIGNAL \io4|fsm:byte_counter[3]~0_combout\ : std_logic;
SIGNAL \io4|fsm:byte_counter[0]~0_combout\ : std_logic;
SIGNAL \comb~1_combout\ : std_logic;
SIGNAL \io4|host_read_flag~q\ : std_logic;
SIGNAL \io4|rd_dat_reg~0_combout\ : std_logic;
SIGNAL \io4|fsm:byte_counter[0]~1_combout\ : std_logic;
SIGNAL \io4|fsm:byte_counter[0]~2_combout\ : std_logic;
SIGNAL \io4|fsm:byte_counter[0]~q\ : std_logic;
SIGNAL \io4|Add1~1\ : std_logic;
SIGNAL \io4|Add1~2_combout\ : std_logic;
SIGNAL \io4|Selector67~0_combout\ : std_logic;
SIGNAL \io4|fsm:byte_counter[1]~q\ : std_logic;
SIGNAL \io4|Equal13~0_combout\ : std_logic;
SIGNAL \io4|fsm:bit_counter[1]~5_combout\ : std_logic;
SIGNAL \io4|return_state.init~1_combout\ : std_logic;
SIGNAL \io4|return_state.idle~q\ : std_logic;
SIGNAL \io4|Selector83~9_combout\ : std_logic;
SIGNAL \io4|Selector89~2_combout\ : std_logic;
SIGNAL \io4|Selector89~1_combout\ : std_logic;
SIGNAL \io4|Selector89~0_combout\ : std_logic;
SIGNAL \io4|Selector89~3_combout\ : std_logic;
SIGNAL \io4|state.idle~q\ : std_logic;
SIGNAL \io4|cmd_out[16]~36_combout\ : std_logic;
SIGNAL \io4|Selector0~3_combout\ : std_logic;
SIGNAL \io4|Selector0~4_combout\ : std_logic;
SIGNAL \io4|sd_read_flag~q\ : std_logic;
SIGNAL \io4|return_state~48_combout\ : std_logic;
SIGNAL \io4|Selector97~0_combout\ : std_logic;
SIGNAL \io4|Selector97~4_combout\ : std_logic;
SIGNAL \io4|Selector97~5_combout\ : std_logic;
SIGNAL \io4|data_sig[7]~7_combout\ : std_logic;
SIGNAL \io4|Selector100~3_combout\ : std_logic;
SIGNAL \io4|Selector97~6_combout\ : std_logic;
SIGNAL \io4|Selector97~3_combout\ : std_logic;
SIGNAL \io4|Selector97~8_combout\ : std_logic;
SIGNAL \io4|Selector97~1_combout\ : std_logic;
SIGNAL \io4|Selector97~7_combout\ : std_logic;
SIGNAL \io4|Selector97~2_combout\ : std_logic;
SIGNAL \io4|Selector97~9_combout\ : std_logic;
SIGNAL \io4|state.receive_byte~q\ : std_logic;
SIGNAL \io4|Selector2~3_combout\ : std_logic;
SIGNAL \io4|Selector116~0_combout\ : std_logic;
SIGNAL \io4|return_state.read_block_wait~q\ : std_logic;
SIGNAL \io4|Selector91~1_combout\ : std_logic;
SIGNAL \io4|state.read_block_wait~q\ : std_logic;
SIGNAL \io4|Add1~3\ : std_logic;
SIGNAL \io4|Add1~4_combout\ : std_logic;
SIGNAL \io4|Selector66~0_combout\ : std_logic;
SIGNAL \io4|fsm:byte_counter[2]~q\ : std_logic;
SIGNAL \io4|Add1~5\ : std_logic;
SIGNAL \io4|Add1~6_combout\ : std_logic;
SIGNAL \io4|Selector65~0_combout\ : std_logic;
SIGNAL \io4|fsm:byte_counter[3]~q\ : std_logic;
SIGNAL \io4|Add1~7\ : std_logic;
SIGNAL \io4|Add1~8_combout\ : std_logic;
SIGNAL \io4|Selector64~0_combout\ : std_logic;
SIGNAL \io4|fsm:byte_counter[4]~q\ : std_logic;
SIGNAL \io4|Add1~9\ : std_logic;
SIGNAL \io4|Add1~10_combout\ : std_logic;
SIGNAL \io4|Selector63~0_combout\ : std_logic;
SIGNAL \io4|fsm:byte_counter[5]~q\ : std_logic;
SIGNAL \io4|Equal12~0_combout\ : std_logic;
SIGNAL \io4|Add1~11\ : std_logic;
SIGNAL \io4|Add1~12_combout\ : std_logic;
SIGNAL \io4|Selector62~0_combout\ : std_logic;
SIGNAL \io4|fsm:byte_counter[6]~q\ : std_logic;
SIGNAL \io4|Add1~13\ : std_logic;
SIGNAL \io4|Add1~14_combout\ : std_logic;
SIGNAL \io4|Selector61~0_combout\ : std_logic;
SIGNAL \io4|fsm:byte_counter[7]~q\ : std_logic;
SIGNAL \io4|Add1~15\ : std_logic;
SIGNAL \io4|Add1~16_combout\ : std_logic;
SIGNAL \io4|Selector60~0_combout\ : std_logic;
SIGNAL \io4|fsm:byte_counter[8]~q\ : std_logic;
SIGNAL \io4|Equal12~1_combout\ : std_logic;
SIGNAL \io4|Equal14~0_combout\ : std_logic;
SIGNAL \io4|fsm:bit_counter[1]~0_combout\ : std_logic;
SIGNAL \io4|fsm:bit_counter[6]~0_combout\ : std_logic;
SIGNAL \io4|fsm:bit_counter[6]~1_combout\ : std_logic;
SIGNAL \io4|Add0~11\ : std_logic;
SIGNAL \io4|Add0~12_combout\ : std_logic;
SIGNAL \io4|Selector72~0_combout\ : std_logic;
SIGNAL \io4|fsm:bit_counter[6]~q\ : std_logic;
SIGNAL \io4|Add0~13\ : std_logic;
SIGNAL \io4|Add0~14_combout\ : std_logic;
SIGNAL \io4|Selector71~0_combout\ : std_logic;
SIGNAL \io4|Selector71~1_combout\ : std_logic;
SIGNAL \io4|fsm:bit_counter[7]~q\ : std_logic;
SIGNAL \io4|Equal9~1_combout\ : std_logic;
SIGNAL \io4|Selector124~0_combout\ : std_logic;
SIGNAL \io4|return_state.write_block_init~q\ : std_logic;
SIGNAL \io4|Selector99~0_combout\ : std_logic;
SIGNAL \io4|state.write_block_init~q\ : std_logic;
SIGNAL \io4|Add1~17\ : std_logic;
SIGNAL \io4|Add1~18_combout\ : std_logic;
SIGNAL \io4|Selector59~0_combout\ : std_logic;
SIGNAL \io4|fsm:byte_counter[9]~q\ : std_logic;
SIGNAL \io4|Equal11~0_combout\ : std_logic;
SIGNAL \io4|sd_write_flag~0_combout\ : std_logic;
SIGNAL \io4|sd_write_flag~1_combout\ : std_logic;
SIGNAL \io4|sd_write_flag~q\ : std_logic;
SIGNAL \io4|fsm~1_combout\ : std_logic;
SIGNAL \io4|Selector100~1_combout\ : std_logic;
SIGNAL \io4|Selector100~2_combout\ : std_logic;
SIGNAL \io4|state.write_block_data~q\ : std_logic;
SIGNAL \io4|Selector96~0_combout\ : std_logic;
SIGNAL \io4|Selector96~1_combout\ : std_logic;
SIGNAL \io4|state.receive_byte_wait~q\ : std_logic;
SIGNAL \io4|Selector2~0_combout\ : std_logic;
SIGNAL \io4|Selector2~1_combout\ : std_logic;
SIGNAL \io4|Selector2~2_combout\ : std_logic;
SIGNAL \io4|sclk_sig~q\ : std_logic;
SIGNAL \io4|Selector84~0_combout\ : std_logic;
SIGNAL \io4|Selector92~0_combout\ : std_logic;
SIGNAL \io4|state.read_block_data~q\ : std_logic;
SIGNAL \io4|return_state.read_block_data~0_combout\ : std_logic;
SIGNAL \io4|return_state.read_block_data~q\ : std_logic;
SIGNAL \io4|Selector0~2_combout\ : std_logic;
SIGNAL \io4|dout[0]~0_combout\ : std_logic;
SIGNAL \io4|Selector144~0_combout\ : std_logic;
SIGNAL \io4|sdhc~0_combout\ : std_logic;
SIGNAL \io4|sdhc~q\ : std_logic;
SIGNAL \fData[0]~25_combout\ : std_logic;
SIGNAL \fData[0]~26_combout\ : std_logic;
SIGNAL \fData[0]~28_combout\ : std_logic;
SIGNAL \fData[0]~31_combout\ : std_logic;
SIGNAL \fData[7]~32_combout\ : std_logic;
SIGNAL \fData[7]~33_combout\ : std_logic;
SIGNAL \fData[7]~34_combout\ : std_logic;
SIGNAL \timer1|timer[8]~30\ : std_logic;
SIGNAL \timer1|timer[9]~31_combout\ : std_logic;
SIGNAL \timer1|TimerOut[1]~3_combout\ : std_logic;
SIGNAL \fData[1]~35_combout\ : std_logic;
SIGNAL \comb~3clkctrl_outclk\ : std_logic;
SIGNAL \io3|txByteWritten~0_combout\ : std_logic;
SIGNAL \io3|txByteWritten~q\ : std_logic;
SIGNAL \io3|txBitCount[1]~0_combout\ : std_logic;
SIGNAL \io3|txClockCount[0]~9_combout\ : std_logic;
SIGNAL \io3|txClockCount[2]~6_combout\ : std_logic;
SIGNAL \io3|txClockCount[0]~10\ : std_logic;
SIGNAL \io3|txClockCount[1]~11_combout\ : std_logic;
SIGNAL \io3|txClockCount[1]~12\ : std_logic;
SIGNAL \io3|txClockCount[2]~13_combout\ : std_logic;
SIGNAL \io3|txClockCount[2]~14\ : std_logic;
SIGNAL \io3|txClockCount[3]~15_combout\ : std_logic;
SIGNAL \io3|txClockCount[3]~16\ : std_logic;
SIGNAL \io3|txClockCount[4]~17_combout\ : std_logic;
SIGNAL \io3|txClockCount[4]~18\ : std_logic;
SIGNAL \io3|txClockCount[5]~19_combout\ : std_logic;
SIGNAL \io3|Equal7~0_combout\ : std_logic;
SIGNAL \io3|Selector35~0_combout\ : std_logic;
SIGNAL \io3|txState.dataBit~q\ : std_logic;
SIGNAL \io3|Selector25~0_combout\ : std_logic;
SIGNAL \io3|txBitCount[1]~1_combout\ : std_logic;
SIGNAL \io3|txBitCount[0]~5_combout\ : std_logic;
SIGNAL \io3|txBitCount[1]~4_combout\ : std_logic;
SIGNAL \io3|Add9~1_combout\ : std_logic;
SIGNAL \io3|txBitCount[2]~3_combout\ : std_logic;
SIGNAL \io3|Add9~0_combout\ : std_logic;
SIGNAL \io3|txBitCount[3]~2_combout\ : std_logic;
SIGNAL \io3|Equal8~0_combout\ : std_logic;
SIGNAL \io3|Selector36~0_combout\ : std_logic;
SIGNAL \io3|Selector36~1_combout\ : std_logic;
SIGNAL \io3|txState.stopBit~q\ : std_logic;
SIGNAL \io3|txClockCount[2]~7_combout\ : std_logic;
SIGNAL \io3|txClockCount[2]~8_combout\ : std_logic;
SIGNAL \io3|txState.idle~0_combout\ : std_logic;
SIGNAL \io3|txState.idle~q\ : std_logic;
SIGNAL \io3|txByteSent~0_combout\ : std_logic;
SIGNAL \io3|txByteSent~q\ : std_logic;
SIGNAL \io3|rxBuffer~94feeder_combout\ : std_logic;
SIGNAL \io3|rxBuffer~94_q\ : std_logic;
SIGNAL \io3|rxBuffer~30_q\ : std_logic;
SIGNAL \io3|rxBuffer~151_combout\ : std_logic;
SIGNAL \io3|rxBuffer~126_q\ : std_logic;
SIGNAL \io3|rxBuffer~62_q\ : std_logic;
SIGNAL \io3|rxBuffer~152_combout\ : std_logic;
SIGNAL \io3|rxBuffer~46_q\ : std_logic;
SIGNAL \io3|rxBuffer~110_q\ : std_logic;
SIGNAL \io3|rxBuffer~78_q\ : std_logic;
SIGNAL \io3|rxBuffer~14_q\ : std_logic;
SIGNAL \io3|rxBuffer~155_combout\ : std_logic;
SIGNAL \io3|rxBuffer~156_combout\ : std_logic;
SIGNAL \io3|rxBuffer~86_q\ : std_logic;
SIGNAL \io3|rxBuffer~118_q\ : std_logic;
SIGNAL \io3|rxBuffer~54_q\ : std_logic;
SIGNAL \io3|rxBuffer~22_q\ : std_logic;
SIGNAL \io3|rxBuffer~153_combout\ : std_logic;
SIGNAL \io3|rxBuffer~154_combout\ : std_logic;
SIGNAL \io3|rxBuffer~157_combout\ : std_logic;
SIGNAL \io3|rxBuffer~70_q\ : std_logic;
SIGNAL \io3|rxBuffer~38_q\ : std_logic;
SIGNAL \io3|rxBuffer~158_combout\ : std_logic;
SIGNAL \io3|rxBuffer~134_q\ : std_logic;
SIGNAL \io3|rxBuffer~102_q\ : std_logic;
SIGNAL \io3|rxBuffer~159_combout\ : std_logic;
SIGNAL \io3|rxBuffer~160_combout\ : std_logic;
SIGNAL \io3|dataOut~1_combout\ : std_logic;
SIGNAL \io4|dout[1]~1_combout\ : std_logic;
SIGNAL \io4|Selector143~0_combout\ : std_logic;
SIGNAL \fData[1]~36_combout\ : std_logic;
SIGNAL \nBtn_usr~input_o\ : std_logic;
SIGNAL \fData[1]~37_combout\ : std_logic;
SIGNAL \fData[1]~38_combout\ : std_logic;
SIGNAL \io3|rxBuffer~55feeder_combout\ : std_logic;
SIGNAL \io3|rxBuffer~55_q\ : std_logic;
SIGNAL \io3|rxBuffer~47_q\ : std_logic;
SIGNAL \io3|rxBuffer~161_combout\ : std_logic;
SIGNAL \io3|rxBuffer~71_q\ : std_logic;
SIGNAL \io3|rxBuffer~63feeder_combout\ : std_logic;
SIGNAL \io3|rxBuffer~63_q\ : std_logic;
SIGNAL \io3|rxBuffer~162_combout\ : std_logic;
SIGNAL \io3|rxBuffer~95feeder_combout\ : std_logic;
SIGNAL \io3|rxBuffer~95_q\ : std_logic;
SIGNAL \io3|rxBuffer~79_q\ : std_logic;
SIGNAL \io3|rxBuffer~163_combout\ : std_logic;
SIGNAL \io3|rxBuffer~87feeder_combout\ : std_logic;
SIGNAL \io3|rxBuffer~87_q\ : std_logic;
SIGNAL \io3|rxBuffer~103_q\ : std_logic;
SIGNAL \io3|rxBuffer~164_combout\ : std_logic;
SIGNAL \io3|rxBuffer~15_q\ : std_logic;
SIGNAL \io3|rxBuffer~31feeder_combout\ : std_logic;
SIGNAL \io3|rxBuffer~31_q\ : std_logic;
SIGNAL \io3|rxBuffer~165_combout\ : std_logic;
SIGNAL \io3|rxBuffer~23feeder_combout\ : std_logic;
SIGNAL \io3|rxBuffer~23_q\ : std_logic;
SIGNAL \io3|rxBuffer~39_q\ : std_logic;
SIGNAL \io3|rxBuffer~166_combout\ : std_logic;
SIGNAL \io3|rxBuffer~167_combout\ : std_logic;
SIGNAL \io3|rxBuffer~127feeder_combout\ : std_logic;
SIGNAL \io3|rxBuffer~127_q\ : std_logic;
SIGNAL \io3|rxBuffer~135_q\ : std_logic;
SIGNAL \io3|rxBuffer~119feeder_combout\ : std_logic;
SIGNAL \io3|rxBuffer~119_q\ : std_logic;
SIGNAL \io3|rxBuffer~111_q\ : std_logic;
SIGNAL \io3|rxBuffer~168_combout\ : std_logic;
SIGNAL \io3|rxBuffer~169_combout\ : std_logic;
SIGNAL \io3|rxBuffer~170_combout\ : std_logic;
SIGNAL \io4|dout[2]~2_combout\ : std_logic;
SIGNAL \io4|Selector142~0_combout\ : std_logic;
SIGNAL \fData[2]~39_combout\ : std_logic;
SIGNAL \timer1|timer[9]~32\ : std_logic;
SIGNAL \timer1|timer[10]~33_combout\ : std_logic;
SIGNAL \timer1|TimerOut[2]~4_combout\ : std_logic;
SIGNAL \fData[2]~40_combout\ : std_logic;
SIGNAL \fData[2]~41_combout\ : std_logic;
SIGNAL \timer1|timer[10]~34\ : std_logic;
SIGNAL \timer1|timer[11]~35_combout\ : std_logic;
SIGNAL \timer1|TimerOut[3]~5_combout\ : std_logic;
SIGNAL \io4|dout[3]~3_combout\ : std_logic;
SIGNAL \io4|Selector141~0_combout\ : std_logic;
SIGNAL \io3|rxBuffer~96_q\ : std_logic;
SIGNAL \io3|rxBuffer~128_q\ : std_logic;
SIGNAL \io3|rxBuffer~64feeder_combout\ : std_logic;
SIGNAL \io3|rxBuffer~64_q\ : std_logic;
SIGNAL \io3|rxBuffer~32_q\ : std_logic;
SIGNAL \io3|rxBuffer~173_combout\ : std_logic;
SIGNAL \io3|rxBuffer~174_combout\ : std_logic;
SIGNAL \io3|rxBuffer~16_q\ : std_logic;
SIGNAL \io3|rxBuffer~48_q\ : std_logic;
SIGNAL \io3|rxBuffer~175_combout\ : std_logic;
SIGNAL \io3|rxBuffer~80_q\ : std_logic;
SIGNAL \io3|rxBuffer~112_q\ : std_logic;
SIGNAL \io3|rxBuffer~176_combout\ : std_logic;
SIGNAL \io3|rxBuffer~177_combout\ : std_logic;
SIGNAL \io3|rxBuffer~24_q\ : std_logic;
SIGNAL \io3|rxBuffer~88feeder_combout\ : std_logic;
SIGNAL \io3|rxBuffer~88_q\ : std_logic;
SIGNAL \io3|rxBuffer~171_combout\ : std_logic;
SIGNAL \io3|rxBuffer~56_q\ : std_logic;
SIGNAL \io3|rxBuffer~120_q\ : std_logic;
SIGNAL \io3|rxBuffer~172_combout\ : std_logic;
SIGNAL \io3|rxBuffer~72_q\ : std_logic;
SIGNAL \io3|rxBuffer~40_q\ : std_logic;
SIGNAL \io3|rxBuffer~104_q\ : std_logic;
SIGNAL \io3|rxBuffer~178_combout\ : std_logic;
SIGNAL \io3|rxBuffer~136_q\ : std_logic;
SIGNAL \io3|rxBuffer~179_combout\ : std_logic;
SIGNAL \io3|rxBuffer~180_combout\ : std_logic;
SIGNAL \fData[3]~42_combout\ : std_logic;
SIGNAL \fData[3]~43_combout\ : std_logic;
SIGNAL \io4|dout[4]~4_combout\ : std_logic;
SIGNAL \io4|Selector140~0_combout\ : std_logic;
SIGNAL \fData[6]~44_combout\ : std_logic;
SIGNAL \io3|rxBuffer~57feeder_combout\ : std_logic;
SIGNAL \io3|rxBuffer~57_q\ : std_logic;
SIGNAL \io3|rxBuffer~65_q\ : std_logic;
SIGNAL \io3|rxBuffer~49_q\ : std_logic;
SIGNAL \io3|rxBuffer~183_combout\ : std_logic;
SIGNAL \io3|rxBuffer~73_q\ : std_logic;
SIGNAL \io3|rxBuffer~184_combout\ : std_logic;
SIGNAL \io3|rxBuffer~33feeder_combout\ : std_logic;
SIGNAL \io3|rxBuffer~33_q\ : std_logic;
SIGNAL \io3|rxBuffer~41_q\ : std_logic;
SIGNAL \io3|rxBuffer~17_q\ : std_logic;
SIGNAL \io3|rxBuffer~25feeder_combout\ : std_logic;
SIGNAL \io3|rxBuffer~25_q\ : std_logic;
SIGNAL \io3|rxBuffer~185_combout\ : std_logic;
SIGNAL \io3|rxBuffer~186_combout\ : std_logic;
SIGNAL \io3|rxBuffer~187_combout\ : std_logic;
SIGNAL \io3|rxBuffer~97_q\ : std_logic;
SIGNAL \io3|rxBuffer~105_q\ : std_logic;
SIGNAL \io3|rxBuffer~89_q\ : std_logic;
SIGNAL \io3|rxBuffer~81_q\ : std_logic;
SIGNAL \io3|rxBuffer~181_combout\ : std_logic;
SIGNAL \io3|rxBuffer~182_combout\ : std_logic;
SIGNAL \io3|rxBuffer~129_q\ : std_logic;
SIGNAL \io3|rxBuffer~113_q\ : std_logic;
SIGNAL \io3|rxBuffer~188_combout\ : std_logic;
SIGNAL \io3|rxBuffer~121feeder_combout\ : std_logic;
SIGNAL \io3|rxBuffer~121_q\ : std_logic;
SIGNAL \io3|rxBuffer~137_q\ : std_logic;
SIGNAL \io3|rxBuffer~189_combout\ : std_logic;
SIGNAL \io3|rxBuffer~190_combout\ : std_logic;
SIGNAL \fData[4]~47_combout\ : std_logic;
SIGNAL \timer1|timer[11]~36\ : std_logic;
SIGNAL \timer1|timer[12]~37_combout\ : std_logic;
SIGNAL \timer1|TimerOut[4]~6_combout\ : std_logic;
SIGNAL \fData[6]~45_combout\ : std_logic;
SIGNAL \fData[4]~48_combout\ : std_logic;
SIGNAL \fData[6]~46_combout\ : std_logic;
SIGNAL \fData[4]~49_combout\ : std_logic;
SIGNAL \fData[4]~59_combout\ : std_logic;
SIGNAL \io4|dout[5]~5_combout\ : std_logic;
SIGNAL \io4|Selector139~0_combout\ : std_logic;
SIGNAL \timer1|timer[12]~38\ : std_logic;
SIGNAL \timer1|timer[13]~39_combout\ : std_logic;
SIGNAL \timer1|TimerOut[5]~7_combout\ : std_logic;
SIGNAL \io3|rxBuffer~106_q\ : std_logic;
SIGNAL \io3|rxBuffer~42_q\ : std_logic;
SIGNAL \io3|rxBuffer~74feeder_combout\ : std_logic;
SIGNAL \io3|rxBuffer~74_q\ : std_logic;
SIGNAL \io3|rxBuffer~198_combout\ : std_logic;
SIGNAL \io3|rxBuffer~138_q\ : std_logic;
SIGNAL \io3|rxBuffer~199_combout\ : std_logic;
SIGNAL \io3|rxBuffer~26_q\ : std_logic;
SIGNAL \io3|rxBuffer~58feeder_combout\ : std_logic;
SIGNAL \io3|rxBuffer~58_q\ : std_logic;
SIGNAL \io3|rxBuffer~193_combout\ : std_logic;
SIGNAL \io3|rxBuffer~122_q\ : std_logic;
SIGNAL \io3|rxBuffer~90feeder_combout\ : std_logic;
SIGNAL \io3|rxBuffer~90_q\ : std_logic;
SIGNAL \io3|rxBuffer~194_combout\ : std_logic;
SIGNAL \io3|rxBuffer~50feeder_combout\ : std_logic;
SIGNAL \io3|rxBuffer~50_q\ : std_logic;
SIGNAL \io3|rxBuffer~114_q\ : std_logic;
SIGNAL \io3|rxBuffer~82_q\ : std_logic;
SIGNAL \io3|rxBuffer~18_q\ : std_logic;
SIGNAL \io3|rxBuffer~195_combout\ : std_logic;
SIGNAL \io3|rxBuffer~196_combout\ : std_logic;
SIGNAL \io3|rxBuffer~197_combout\ : std_logic;
SIGNAL \io3|rxBuffer~98_q\ : std_logic;
SIGNAL \io3|rxBuffer~34_q\ : std_logic;
SIGNAL \io3|rxBuffer~191_combout\ : std_logic;
SIGNAL \io3|rxBuffer~130_q\ : std_logic;
SIGNAL \io3|rxBuffer~66feeder_combout\ : std_logic;
SIGNAL \io3|rxBuffer~66_q\ : std_logic;
SIGNAL \io3|rxBuffer~192_combout\ : std_logic;
SIGNAL \io3|rxBuffer~200_combout\ : std_logic;
SIGNAL \fData[5]~50_combout\ : std_logic;
SIGNAL \fData[5]~51_combout\ : std_logic;
SIGNAL \io4|Selector136~0_combout\ : std_logic;
SIGNAL \io4|block_busy~q\ : std_logic;
SIGNAL \fData[5]~52_combout\ : std_logic;
SIGNAL \fData[5]~60_combout\ : std_logic;
SIGNAL \io4|dout[6]~6_combout\ : std_logic;
SIGNAL \io4|Selector138~0_combout\ : std_logic;
SIGNAL \io3|rxBuffer~83_q\ : std_logic;
SIGNAL \io3|rxBuffer~99feeder_combout\ : std_logic;
SIGNAL \io3|rxBuffer~99_q\ : std_logic;
SIGNAL \io3|rxBuffer~203_combout\ : std_logic;
SIGNAL \io3|rxBuffer~91feeder_combout\ : std_logic;
SIGNAL \io3|rxBuffer~91_q\ : std_logic;
SIGNAL \io3|rxBuffer~107_q\ : std_logic;
SIGNAL \io3|rxBuffer~204_combout\ : std_logic;
SIGNAL \io3|rxBuffer~27feeder_combout\ : std_logic;
SIGNAL \io3|rxBuffer~27_q\ : std_logic;
SIGNAL \io3|rxBuffer~43_q\ : std_logic;
SIGNAL \io3|rxBuffer~19_q\ : std_logic;
SIGNAL \io3|rxBuffer~35feeder_combout\ : std_logic;
SIGNAL \io3|rxBuffer~35_q\ : std_logic;
SIGNAL \io3|rxBuffer~205_combout\ : std_logic;
SIGNAL \io3|rxBuffer~206_combout\ : std_logic;
SIGNAL \io3|rxBuffer~207_combout\ : std_logic;
SIGNAL \io3|rxBuffer~67feeder_combout\ : std_logic;
SIGNAL \io3|rxBuffer~67_q\ : std_logic;
SIGNAL \io3|rxBuffer~75_q\ : std_logic;
SIGNAL \io3|rxBuffer~59feeder_combout\ : std_logic;
SIGNAL \io3|rxBuffer~59_q\ : std_logic;
SIGNAL \io3|rxBuffer~51_q\ : std_logic;
SIGNAL \io3|rxBuffer~201_combout\ : std_logic;
SIGNAL \io3|rxBuffer~202_combout\ : std_logic;
SIGNAL \io3|rxBuffer~123feeder_combout\ : std_logic;
SIGNAL \io3|rxBuffer~123_q\ : std_logic;
SIGNAL \io3|rxBuffer~115_q\ : std_logic;
SIGNAL \io3|rxBuffer~208_combout\ : std_logic;
SIGNAL \io3|rxBuffer~139_q\ : std_logic;
SIGNAL \io3|rxBuffer~131feeder_combout\ : std_logic;
SIGNAL \io3|rxBuffer~131_q\ : std_logic;
SIGNAL \io3|rxBuffer~209_combout\ : std_logic;
SIGNAL \io3|rxBuffer~210_combout\ : std_logic;
SIGNAL \fData[6]~53_combout\ : std_logic;
SIGNAL \timer1|timer[13]~40\ : std_logic;
SIGNAL \timer1|timer[14]~41_combout\ : std_logic;
SIGNAL \timer1|TimerOut[6]~8_combout\ : std_logic;
SIGNAL \fData[6]~54_combout\ : std_logic;
SIGNAL \fData[6]~55_combout\ : std_logic;
SIGNAL \fData[6]~61_combout\ : std_logic;
SIGNAL \io3|n_int~0_combout\ : std_logic;
SIGNAL \io3|controlReg[7]~feeder_combout\ : std_logic;
SIGNAL \io3|n_int~1_combout\ : std_logic;
SIGNAL \io3|rxBuffer~60_q\ : std_logic;
SIGNAL \io3|rxBuffer~92feeder_combout\ : std_logic;
SIGNAL \io3|rxBuffer~92_q\ : std_logic;
SIGNAL \io3|rxBuffer~28_q\ : std_logic;
SIGNAL \io3|rxBuffer~211_combout\ : std_logic;
SIGNAL \io3|rxBuffer~124_q\ : std_logic;
SIGNAL \io3|rxBuffer~212_combout\ : std_logic;
SIGNAL \io3|rxBuffer~108_q\ : std_logic;
SIGNAL \io3|rxBuffer~44_q\ : std_logic;
SIGNAL \io3|rxBuffer~218_combout\ : std_logic;
SIGNAL \io3|rxBuffer~76feeder_combout\ : std_logic;
SIGNAL \io3|rxBuffer~76_q\ : std_logic;
SIGNAL \io3|rxBuffer~140_q\ : std_logic;
SIGNAL \io3|rxBuffer~219_combout\ : std_logic;
SIGNAL \io3|rxBuffer~84_q\ : std_logic;
SIGNAL \io3|rxBuffer~52feeder_combout\ : std_logic;
SIGNAL \io3|rxBuffer~52_q\ : std_logic;
SIGNAL \io3|rxBuffer~20_q\ : std_logic;
SIGNAL \io3|rxBuffer~215_combout\ : std_logic;
SIGNAL \io3|rxBuffer~116_q\ : std_logic;
SIGNAL \io3|rxBuffer~216_combout\ : std_logic;
SIGNAL \io3|rxBuffer~68feeder_combout\ : std_logic;
SIGNAL \io3|rxBuffer~68_q\ : std_logic;
SIGNAL \io3|rxBuffer~36_q\ : std_logic;
SIGNAL \io3|rxBuffer~213_combout\ : std_logic;
SIGNAL \io3|rxBuffer~132_q\ : std_logic;
SIGNAL \io3|rxBuffer~100_q\ : std_logic;
SIGNAL \io3|rxBuffer~214_combout\ : std_logic;
SIGNAL \io3|rxBuffer~217_combout\ : std_logic;
SIGNAL \io3|rxBuffer~220_combout\ : std_logic;
SIGNAL \fData[7]~56_combout\ : std_logic;
SIGNAL \timer1|timer[14]~42\ : std_logic;
SIGNAL \timer1|timer[15]~43_combout\ : std_logic;
SIGNAL \timer1|TimerOut[7]~9_combout\ : std_logic;
SIGNAL \fData[7]~57_combout\ : std_logic;
SIGNAL \io4|dout[7]~7_combout\ : std_logic;
SIGNAL \io4|Selector137~0_combout\ : std_logic;
SIGNAL \fData[7]~58_combout\ : std_logic;
SIGNAL \fData[7]~62_combout\ : std_logic;
SIGNAL \fData_dir~1_combout\ : std_logic;
SIGNAL \fData_dir~0_combout\ : std_logic;
SIGNAL \fData_dir~2_combout\ : std_logic;
SIGNAL \io3|txBuffer[7]~2_combout\ : std_logic;
SIGNAL \io3|txBuffer[7]~1_combout\ : std_logic;
SIGNAL \io3|txBuffer[7]~3_combout\ : std_logic;
SIGNAL \io3|txByteLatch[6]~feeder_combout\ : std_logic;
SIGNAL \io3|Selector27~0_combout\ : std_logic;
SIGNAL \io3|txBuffer[0]~0_combout\ : std_logic;
SIGNAL \io3|txByteLatch[5]~feeder_combout\ : std_logic;
SIGNAL \io3|Selector28~0_combout\ : std_logic;
SIGNAL \io3|Selector29~0_combout\ : std_logic;
SIGNAL \io3|Selector30~0_combout\ : std_logic;
SIGNAL \io3|txByteLatch[2]~feeder_combout\ : std_logic;
SIGNAL \io3|Selector31~0_combout\ : std_logic;
SIGNAL \io3|txByteLatch[1]~feeder_combout\ : std_logic;
SIGNAL \io3|Selector32~0_combout\ : std_logic;
SIGNAL \io3|Selector33~0_combout\ : std_logic;
SIGNAL \io3|txd~0_combout\ : std_logic;
SIGNAL \io3|txd~1_combout\ : std_logic;
SIGNAL \io3|txd~2_combout\ : std_logic;
SIGNAL \io3|txd~q\ : std_logic;
SIGNAL \io4|Selector79~0_combout\ : std_logic;
SIGNAL \io4|sdCS~q\ : std_logic;
SIGNAL \io4|wr_dat_reg~4_combout\ : std_logic;
SIGNAL \io4|Selector128~0_combout\ : std_logic;
SIGNAL \io4|data_sig[7]~feeder_combout\ : std_logic;
SIGNAL \io4|Selector129~0_combout\ : std_logic;
SIGNAL \io4|data_sig[6]~feeder_combout\ : std_logic;
SIGNAL \io4|din_latched[5]~feeder_combout\ : std_logic;
SIGNAL \io4|Selector130~0_combout\ : std_logic;
SIGNAL \io4|din_latched[4]~feeder_combout\ : std_logic;
SIGNAL \io4|Selector131~0_combout\ : std_logic;
SIGNAL \io4|din_latched[3]~feeder_combout\ : std_logic;
SIGNAL \io4|Selector132~0_combout\ : std_logic;
SIGNAL \io4|din_latched[2]~feeder_combout\ : std_logic;
SIGNAL \io4|Selector133~0_combout\ : std_logic;
SIGNAL \io4|din_latched[1]~feeder_combout\ : std_logic;
SIGNAL \io4|Selector134~0_combout\ : std_logic;
SIGNAL \io4|Selector135~1_combout\ : std_logic;
SIGNAL \io4|Selector135~0_combout\ : std_logic;
SIGNAL \io4|Selector135~2_combout\ : std_logic;
SIGNAL \io4|data_sig[7]~3_combout\ : std_logic;
SIGNAL \io4|WideOr62~0_combout\ : std_logic;
SIGNAL \io4|Selector135~3_combout\ : std_logic;
SIGNAL \io4|data_sig[7]~4_combout\ : std_logic;
SIGNAL \io4|Selector69~1_combout\ : std_logic;
SIGNAL \io4|cmd_mode~q\ : std_logic;
SIGNAL \io4|WideOr28~2_combout\ : std_logic;
SIGNAL \io4|WideOr29~3_combout\ : std_logic;
SIGNAL \io4|data_sig[7]~5_combout\ : std_logic;
SIGNAL \io4|Selector17~1_combout\ : std_logic;
SIGNAL \io4|cmd_out[36]~38_combout\ : std_logic;
SIGNAL \io4|WideOr18~combout\ : std_logic;
SIGNAL \io4|WideOr17~combout\ : std_logic;
SIGNAL \io4|cmd_out[16]~37_combout\ : std_logic;
SIGNAL \io4|Selector52~0_combout\ : std_logic;
SIGNAL \io4|Selector51~1_combout\ : std_logic;
SIGNAL \io4|WideOr28~4_combout\ : std_logic;
SIGNAL \io4|Selector56~4_combout\ : std_logic;
SIGNAL \io4|Selector57~4_combout\ : std_logic;
SIGNAL \io4|Selector57~2_combout\ : std_logic;
SIGNAL \io4|Selector57~3_combout\ : std_logic;
SIGNAL \io4|Selector56~2_combout\ : std_logic;
SIGNAL \io4|Selector56~3_combout\ : std_logic;
SIGNAL \io4|Selector55~4_combout\ : std_logic;
SIGNAL \io4|Selector55~6_combout\ : std_logic;
SIGNAL \io4|Selector55~5_combout\ : std_logic;
SIGNAL \io4|Selector54~0_combout\ : std_logic;
SIGNAL \io4|Selector54~1_combout\ : std_logic;
SIGNAL \io4|Selector54~2_combout\ : std_logic;
SIGNAL \io4|Selector53~0_combout\ : std_logic;
SIGNAL \io4|cmd_out[55]~35_combout\ : std_logic;
SIGNAL \io4|Selector52~1_combout\ : std_logic;
SIGNAL \io4|Selector51~0_combout\ : std_logic;
SIGNAL \io4|Selector51~2_combout\ : std_logic;
SIGNAL \io4|cmd_out[8]~30_combout\ : std_logic;
SIGNAL \io4|address[0]~16_combout\ : std_logic;
SIGNAL \io4|cmd_out[9]~29_combout\ : std_logic;
SIGNAL \io4|cmd_out[10]~28_combout\ : std_logic;
SIGNAL \io4|cmd_out[11]~27_combout\ : std_logic;
SIGNAL \io4|address[3]~feeder_combout\ : std_logic;
SIGNAL \io4|cmd_out[12]~26_combout\ : std_logic;
SIGNAL \io4|cmd_out[13]~25_combout\ : std_logic;
SIGNAL \io4|cmd_out[14]~24_combout\ : std_logic;
SIGNAL \io4|address[6]~feeder_combout\ : std_logic;
SIGNAL \io4|cmd_out[15]~23_combout\ : std_logic;
SIGNAL \io4|cmd_out[16]~22_combout\ : std_logic;
SIGNAL \io4|Equal6~1_combout\ : std_logic;
SIGNAL \io4|address[8]~15_combout\ : std_logic;
SIGNAL \io4|cmd_out[17]~21_combout\ : std_logic;
SIGNAL \io4|address~10_combout\ : std_logic;
SIGNAL \io4|address[10]~14_combout\ : std_logic;
SIGNAL \io4|cmd_out[18]~20_combout\ : std_logic;
SIGNAL \io4|address~9_combout\ : std_logic;
SIGNAL \io4|cmd_out[19]~19_combout\ : std_logic;
SIGNAL \io4|address~8_combout\ : std_logic;
SIGNAL \io4|cmd_out[20]~18_combout\ : std_logic;
SIGNAL \io4|address~7_combout\ : std_logic;
SIGNAL \io4|cmd_out[21]~17_combout\ : std_logic;
SIGNAL \io4|address~6_combout\ : std_logic;
SIGNAL \io4|cmd_out[22]~16_combout\ : std_logic;
SIGNAL \io4|address~5_combout\ : std_logic;
SIGNAL \io4|cmd_out[23]~15_combout\ : std_logic;
SIGNAL \io4|address~3_combout\ : std_logic;
SIGNAL \io4|cmd_out[24]~14_combout\ : std_logic;
SIGNAL \io4|address[16]~11_combout\ : std_logic;
SIGNAL \io4|address[16]~12_combout\ : std_logic;
SIGNAL \io4|address[16]~13_combout\ : std_logic;
SIGNAL \io4|cmd_out[25]~13_combout\ : std_logic;
SIGNAL \io4|address[17]~feeder_combout\ : std_logic;
SIGNAL \io4|address[17]~4_combout\ : std_logic;
SIGNAL \io4|cmd_out[26]~12_combout\ : std_logic;
SIGNAL \io4|address[18]~feeder_combout\ : std_logic;
SIGNAL \io4|cmd_out[27]~11_combout\ : std_logic;
SIGNAL \io4|address[19]~feeder_combout\ : std_logic;
SIGNAL \io4|cmd_out[28]~10_combout\ : std_logic;
SIGNAL \io4|address[20]~feeder_combout\ : std_logic;
SIGNAL \io4|cmd_out[29]~9_combout\ : std_logic;
SIGNAL \io4|address[21]~feeder_combout\ : std_logic;
SIGNAL \io4|cmd_out[30]~8_combout\ : std_logic;
SIGNAL \io4|address[22]~feeder_combout\ : std_logic;
SIGNAL \io4|cmd_out[31]~7_combout\ : std_logic;
SIGNAL \io4|address[23]~feeder_combout\ : std_logic;
SIGNAL \io4|cmd_out[32]~6_combout\ : std_logic;
SIGNAL \io4|address[24]~1_combout\ : std_logic;
SIGNAL \io4|address[24]~2_combout\ : std_logic;
SIGNAL \io4|cmd_out[33]~5_combout\ : std_logic;
SIGNAL \io4|address[25]~feeder_combout\ : std_logic;
SIGNAL \io4|address[31]~0_combout\ : std_logic;
SIGNAL \io4|cmd_out[34]~4_combout\ : std_logic;
SIGNAL \io4|address[26]~feeder_combout\ : std_logic;
SIGNAL \io4|cmd_out[35]~3_combout\ : std_logic;
SIGNAL \io4|address[27]~feeder_combout\ : std_logic;
SIGNAL \io4|cmd_out[36]~2_combout\ : std_logic;
SIGNAL \io4|address[28]~feeder_combout\ : std_logic;
SIGNAL \io4|cmd_out[37]~1_combout\ : std_logic;
SIGNAL \io4|address[29]~feeder_combout\ : std_logic;
SIGNAL \io4|Selector20~0_combout\ : std_logic;
SIGNAL \io4|Selector20~1_combout\ : std_logic;
SIGNAL \io4|Selector20~2_combout\ : std_logic;
SIGNAL \io4|cmd_out[39]~0_combout\ : std_logic;
SIGNAL \io4|address[31]~feeder_combout\ : std_logic;
SIGNAL \io4|Selector18~0_combout\ : std_logic;
SIGNAL \io4|Selector18~1_combout\ : std_logic;
SIGNAL \io4|Selector18~2_combout\ : std_logic;
SIGNAL \io4|Selector17~0_combout\ : std_logic;
SIGNAL \io4|Selector17~2_combout\ : std_logic;
SIGNAL \io4|Selector16~0_combout\ : std_logic;
SIGNAL \io4|Selector16~1_combout\ : std_logic;
SIGNAL \io4|Selector15~0_combout\ : std_logic;
SIGNAL \io4|Selector15~1_combout\ : std_logic;
SIGNAL \io4|Selector15~2_combout\ : std_logic;
SIGNAL \io4|Selector14~0_combout\ : std_logic;
SIGNAL \io4|Selector14~1_combout\ : std_logic;
SIGNAL \io4|Selector14~2_combout\ : std_logic;
SIGNAL \io4|Selector13~0_combout\ : std_logic;
SIGNAL \io4|Selector13~1_combout\ : std_logic;
SIGNAL \io4|Selector13~2_combout\ : std_logic;
SIGNAL \io4|Selector12~0_combout\ : std_logic;
SIGNAL \io4|Selector11~0_combout\ : std_logic;
SIGNAL \io4|Selector11~1_combout\ : std_logic;
SIGNAL \io4|Selector10~0_combout\ : std_logic;
SIGNAL \io4|Selector9~0_combout\ : std_logic;
SIGNAL \io4|Selector8~0_combout\ : std_logic;
SIGNAL \io4|Selector7~0_combout\ : std_logic;
SIGNAL \io4|Selector6~0_combout\ : std_logic;
SIGNAL \io4|Selector5~0_combout\ : std_logic;
SIGNAL \io4|Selector4~0_combout\ : std_logic;
SIGNAL \io4|Selector3~0_combout\ : std_logic;
SIGNAL \io4|sdMOSI~0_combout\ : std_logic;
SIGNAL \io4|LessThan1~1_combout\ : std_logic;
SIGNAL \io4|led_on_count[0]~0_combout\ : std_logic;
SIGNAL \io4|ctl_led~0_combout\ : std_logic;
SIGNAL \io4|Add2~1_cout\ : std_logic;
SIGNAL \io4|Add2~2_combout\ : std_logic;
SIGNAL \io4|Add2~3\ : std_logic;
SIGNAL \io4|Add2~4_combout\ : std_logic;
SIGNAL \io4|Add2~5\ : std_logic;
SIGNAL \io4|Add2~6_combout\ : std_logic;
SIGNAL \io4|led_on_count[3]~3_combout\ : std_logic;
SIGNAL \io4|Add2~7\ : std_logic;
SIGNAL \io4|Add2~8_combout\ : std_logic;
SIGNAL \io4|Add2~9\ : std_logic;
SIGNAL \io4|Add2~10_combout\ : std_logic;
SIGNAL \io4|Add2~11\ : std_logic;
SIGNAL \io4|Add2~12_combout\ : std_logic;
SIGNAL \io4|led_on_count[6]~2_combout\ : std_logic;
SIGNAL \io4|Add2~13\ : std_logic;
SIGNAL \io4|Add2~14_combout\ : std_logic;
SIGNAL \io4|led_on_count[7]~1_combout\ : std_logic;
SIGNAL \io4|LessThan1~0_combout\ : std_logic;
SIGNAL \io4|LessThan1~2_combout\ : std_logic;
SIGNAL \io4|driveLED~0_combout\ : std_logic;
SIGNAL \io4|driveLED~q\ : std_logic;
SIGNAL systemTimerCounter : std_logic_vector(31 DOWNTO 0);
SIGNAL serialClkCount : std_logic_vector(15 DOWNTO 0);
SIGNAL \io2|leds_status\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \io2|dataOut\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \io2|LEDreturn\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \io3|txClockCount\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \io3|txByteLatch\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \io3|txBuffer\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \io3|txBitCount\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \io3|rxReadPointer\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \io3|rxInPointer\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \io3|rxFilter\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \io3|rxCurrentByteBuffer\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \io3|rxClockCount\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \io3|rxBitCount\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \io3|dataOut\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \io3|controlReg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \io4|recv_data\ : std_logic_vector(39 DOWNTO 0);
SIGNAL \io4|led_on_count\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \io4|address\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \timer1|TimerOut\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \io4|data_sig\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \io4|cmd_out\ : std_logic_vector(55 DOWNTO 0);
SIGNAL \timer1|timer\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \io4|dout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \io4|din_latched\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \io3|ALT_INV_reset~0clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_fClk_50MHz~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_serialClkCount[15]~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_comb~2clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_fAddress[0]~input_o\ : std_logic;
SIGNAL \io4|ALT_INV_wr_cmd_reg~3_combout\ : std_logic;
SIGNAL \io3|ALT_INV_txClockCount[2]~8_combout\ : std_logic;
SIGNAL \io4|ALT_INV_ctl_led~0_combout\ : std_logic;
SIGNAL \io4|ALT_INV_state.receive_byte~q\ : std_logic;
SIGNAL \io4|ALT_INV_Selector104~0_combout\ : std_logic;
SIGNAL \io4|ALT_INV_sdCS~q\ : std_logic;

BEGIN

fAddr_dir <= ww_fAddr_dir;
ww_fAddress <= fAddress;
fData_dir <= ww_fData_dir;
fCtrlout_dir <= ww_fCtrlout_dir;
ww_fnRfsh <= fnRfsh;
ww_fnHalt <= fnHalt;
ww_fnM1 <= fnM1;
ww_fnMemrq <= fnMemrq;
ww_fnWr <= fnWr;
ww_fnRd <= fnRd;
ww_fnBusack <= fnBusack;
ww_fnIorq <= fnIorq;
fCtrlin_dir <= ww_fCtrlin_dir;
ww_fnWait <= fnWait;
ww_fnInt <= fnInt;
ww_fnNmi <= fnNmi;
ww_fnBusreq <= fnBusreq;
ww_fSpare1 <= fSpare1;
ww_fSpare2 <= fSpare2;
ww_fSpare3 <= fSpare3;
fClkrst_dir <= ww_fClkrst_dir;
ww_fnClk <= fnClk;
ww_fnReset <= fnReset;
ww_fSpare4 <= fSpare4;
ww_fSpare5 <= fSpare5;
ww_fSpare6 <= fSpare6;
ww_fSpare7 <= fSpare7;
ww_fIn1 <= fIn1;
ww_fIn2 <= fIn2;
ww_fIn3 <= fIn3;
ww_fIn4 <= fIn4;
ww_fIn5 <= fIn5;
ww_fIn6 <= fIn6;
ww_fIn7 <= fIn7;
ww_fIn8 <= fIn8;
fTxd <= ww_fTxd;
ww_fRxd <= fRxd;
ww_fAltclk <= fAltclk;
ww_nBtn_reset <= nBtn_reset;
ww_nBtn_usr <= nBtn_usr;
fSD_CS <= ww_fSD_CS;
ww_fSD_DO <= fSD_DO;
fSD_DI <= ww_fSD_DI;
fSD_CLK <= ww_fSD_CLK;
fPS2_clk <= ww_fPS2_clk;
ww_fPS2_dat <= fPS2_dat;
fMA14_18 <= ww_fMA14_18;
fMem_CE0 <= ww_fMem_CE0;
fMem_CE1 <= ww_fMem_CE1;
LEDs <= ww_LEDs;
ww_fClk_50MHz <= fClk_50MHz;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\comb~2clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \comb~2_combout\);

\serialClkCount[15]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & serialClkCount(15));

\systemTimerOut~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \systemTimerOut~q\);

\comb~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \comb~0_combout\);

\fClk_50MHz~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \fClk_50MHz~input_o\);

\timer1|TimerOut[7]~2clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \timer1|TimerOut[7]~2_combout\);

\comb~3clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \comb~3_combout\);

\io3|reset~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \io3|reset~0_combout\);

\io2|LEDreturn[2]~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \io2|LEDreturn[2]~0_combout\);

\io2|process_0~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \io2|process_0~0_combout\);
\io3|ALT_INV_reset~0clkctrl_outclk\ <= NOT \io3|reset~0clkctrl_outclk\;
\ALT_INV_fClk_50MHz~inputclkctrl_outclk\ <= NOT \fClk_50MHz~inputclkctrl_outclk\;
\ALT_INV_serialClkCount[15]~clkctrl_outclk\ <= NOT \serialClkCount[15]~clkctrl_outclk\;
\ALT_INV_comb~2clkctrl_outclk\ <= NOT \comb~2clkctrl_outclk\;
\ALT_INV_fAddress[0]~input_o\ <= NOT \fAddress[0]~input_o\;
\io4|ALT_INV_wr_cmd_reg~3_combout\ <= NOT \io4|wr_cmd_reg~3_combout\;
\io3|ALT_INV_txClockCount[2]~8_combout\ <= NOT \io3|txClockCount[2]~8_combout\;
\io4|ALT_INV_ctl_led~0_combout\ <= NOT \io4|ctl_led~0_combout\;
\io4|ALT_INV_state.receive_byte~q\ <= NOT \io4|state.receive_byte~q\;
\io4|ALT_INV_Selector104~0_combout\ <= NOT \io4|Selector104~0_combout\;
\io4|ALT_INV_sdCS~q\ <= NOT \io4|sdCS~q\;

-- Location: IOOBUF_X32_Y0_N16
\fData[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fData[0]~31_combout\,
	oe => \fData[7]~34_combout\,
	devoe => ww_devoe,
	o => \fData[0]~output_o\);

-- Location: IOOBUF_X32_Y0_N23
\fData[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fData[1]~38_combout\,
	oe => \fData[7]~34_combout\,
	devoe => ww_devoe,
	o => \fData[1]~output_o\);

-- Location: IOOBUF_X34_Y2_N23
\fData[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fData[2]~41_combout\,
	oe => \fData[7]~34_combout\,
	devoe => ww_devoe,
	o => \fData[2]~output_o\);

-- Location: IOOBUF_X32_Y0_N9
\fData[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fData[3]~43_combout\,
	oe => \fData[7]~34_combout\,
	devoe => ww_devoe,
	o => \fData[3]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\fData[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fData[4]~59_combout\,
	oe => \fData[7]~34_combout\,
	devoe => ww_devoe,
	o => \fData[4]~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\fData[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fData[5]~60_combout\,
	oe => \fData[7]~34_combout\,
	devoe => ww_devoe,
	o => \fData[5]~output_o\);

-- Location: IOOBUF_X7_Y0_N2
\fData[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fData[6]~61_combout\,
	oe => \fData[7]~34_combout\,
	devoe => ww_devoe,
	o => \fData[6]~output_o\);

-- Location: IOOBUF_X13_Y0_N16
\fData[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fData[7]~62_combout\,
	oe => \fData[7]~34_combout\,
	devoe => ww_devoe,
	o => \fData[7]~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\fAddr_dir~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fAddr_dir~output_o\);

-- Location: IOOBUF_X21_Y0_N9
\fData_dir~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fData_dir~2_combout\,
	devoe => ww_devoe,
	o => \fData_dir~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\fCtrlout_dir~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fCtrlout_dir~output_o\);

-- Location: IOOBUF_X11_Y24_N16
\fCtrlin_dir~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fCtrlin_dir~output_o\);

-- Location: IOOBUF_X16_Y24_N23
\fClkrst_dir~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fClkrst_dir~output_o\);

-- Location: IOOBUF_X34_Y20_N9
\fTxd~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \io3|txd~q\,
	devoe => ww_devoe,
	o => \fTxd~output_o\);

-- Location: IOOBUF_X34_Y18_N23
\fSD_CS~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \io4|ALT_INV_sdCS~q\,
	devoe => ww_devoe,
	o => \fSD_CS~output_o\);

-- Location: IOOBUF_X34_Y17_N23
\fSD_DI~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \io4|sdMOSI~0_combout\,
	devoe => ww_devoe,
	o => \fSD_DI~output_o\);

-- Location: IOOBUF_X34_Y17_N16
\fSD_CLK~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \io4|sclk_sig~q\,
	devoe => ww_devoe,
	o => \fSD_CLK~output_o\);

-- Location: IOOBUF_X34_Y9_N16
\fPS2_clk~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fPS2_clk~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\fMA14_18[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fMA14_18[0]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\fMA14_18[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fMA14_18[1]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\fMA14_18[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fMA14_18[2]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\fMA14_18[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fMA14_18[3]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\fMA14_18[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fMA14_18[4]~output_o\);

-- Location: IOOBUF_X30_Y0_N9
\fMem_CE0~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \fMem_CE0~output_o\);

-- Location: IOOBUF_X0_Y23_N9
\fMem_CE1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \fMem_CE1~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\LEDs[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \io4|driveLED~q\,
	devoe => ww_devoe,
	o => \LEDs[0]~output_o\);

-- Location: IOOBUF_X0_Y21_N9
\LEDs[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \io2|dataOut\(0),
	devoe => ww_devoe,
	o => \LEDs[1]~output_o\);

-- Location: IOOBUF_X0_Y18_N16
\LEDs[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \io2|dataOut\(1),
	devoe => ww_devoe,
	o => \LEDs[2]~output_o\);

-- Location: IOOBUF_X0_Y18_N23
\LEDs[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \io2|dataOut\(2),
	devoe => ww_devoe,
	o => \LEDs[3]~output_o\);

-- Location: IOIBUF_X32_Y0_N15
\fData[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => fData(0),
	o => \fData[0]~input_o\);

-- Location: IOIBUF_X16_Y24_N8
\fnReset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fnReset,
	o => \fnReset~input_o\);

-- Location: IOIBUF_X30_Y0_N22
\fAddress[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fAddress(2),
	o => \fAddress[2]~input_o\);

-- Location: IOIBUF_X30_Y0_N1
\fAddress[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fAddress(4),
	o => \fAddress[4]~input_o\);

-- Location: IOIBUF_X28_Y0_N1
\fAddress[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fAddress(3),
	o => \fAddress[3]~input_o\);

-- Location: IOIBUF_X25_Y0_N1
\fAddress[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fAddress(1),
	o => \fAddress[1]~input_o\);

-- Location: LCCOMB_X25_Y11_N26
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (\fAddress[2]~input_o\ & (!\fAddress[4]~input_o\ & (!\fAddress[3]~input_o\ & \fAddress[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fAddress[2]~input_o\,
	datab => \fAddress[4]~input_o\,
	datac => \fAddress[3]~input_o\,
	datad => \fAddress[1]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: IOIBUF_X34_Y4_N22
\fAddress[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fAddress(7),
	o => \fAddress[7]~input_o\);

-- Location: IOIBUF_X34_Y2_N15
\fAddress[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fAddress(5),
	o => \fAddress[5]~input_o\);

-- Location: LCCOMB_X24_Y11_N4
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!\fAddress[7]~input_o\ & !\fAddress[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fAddress[7]~input_o\,
	datad => \fAddress[5]~input_o\,
	combout => \Equal0~1_combout\);

-- Location: IOIBUF_X28_Y0_N22
\fAddress[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fAddress(0),
	o => \fAddress[0]~input_o\);

-- Location: IOIBUF_X34_Y4_N15
\fAddress[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fAddress(6),
	o => \fAddress[6]~input_o\);

-- Location: LCCOMB_X25_Y11_N12
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (\Equal0~0_combout\ & (\Equal0~1_combout\ & (\fAddress[0]~input_o\ & !\fAddress[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Equal0~1_combout\,
	datac => \fAddress[0]~input_o\,
	datad => \fAddress[6]~input_o\,
	combout => \Equal0~2_combout\);

-- Location: IOIBUF_X34_Y3_N22
\fnWr~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fnWr,
	o => \fnWr~input_o\);

-- Location: IOIBUF_X1_Y24_N1
\fnIorq~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fnIorq,
	o => \fnIorq~input_o\);

-- Location: LCCOMB_X25_Y11_N24
\io2|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io2|process_0~0_combout\ = (\Equal0~2_combout\ & (!\fnWr~input_o\ & !\fnIorq~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datab => \fnWr~input_o\,
	datad => \fnIorq~input_o\,
	combout => \io2|process_0~0_combout\);

-- Location: CLKCTRL_G5
\io2|process_0~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \io2|process_0~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \io2|process_0~0clkctrl_outclk\);

-- Location: LCCOMB_X25_Y12_N6
\io2|leds_status[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \io2|leds_status\(0) = (\fnReset~input_o\ & ((GLOBAL(\io2|process_0~0clkctrl_outclk\) & (\fData[0]~input_o\)) # (!GLOBAL(\io2|process_0~0clkctrl_outclk\) & ((\io2|leds_status\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fData[0]~input_o\,
	datab => \fnReset~input_o\,
	datac => \io2|process_0~0clkctrl_outclk\,
	datad => \io2|leds_status\(0),
	combout => \io2|leds_status\(0));

-- Location: IOIBUF_X13_Y0_N1
\fnRd~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fnRd,
	o => \fnRd~input_o\);

-- Location: LCCOMB_X25_Y11_N30
\fData~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \fData~30_combout\ = (!\fnRd~input_o\ & (!\fnIorq~input_o\ & \Equal0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fnRd~input_o\,
	datab => \fnIorq~input_o\,
	datad => \Equal0~2_combout\,
	combout => \fData~30_combout\);

-- Location: LCCOMB_X25_Y11_N8
\io2|LEDreturn[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io2|LEDreturn[2]~0_combout\ = (\fnReset~input_o\ & (\fData~30_combout\ & !\io2|process_0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fnReset~input_o\,
	datac => \fData~30_combout\,
	datad => \io2|process_0~0_combout\,
	combout => \io2|LEDreturn[2]~0_combout\);

-- Location: CLKCTRL_G9
\io2|LEDreturn[2]~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \io2|LEDreturn[2]~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \io2|LEDreturn[2]~0clkctrl_outclk\);

-- Location: LCCOMB_X25_Y12_N18
\io2|LEDreturn[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \io2|LEDreturn\(0) = (GLOBAL(\io2|LEDreturn[2]~0clkctrl_outclk\) & (\io2|leds_status\(0))) # (!GLOBAL(\io2|LEDreturn[2]~0clkctrl_outclk\) & ((\io2|LEDreturn\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io2|leds_status\(0),
	datac => \io2|LEDreturn[2]~0clkctrl_outclk\,
	datad => \io2|LEDreturn\(0),
	combout => \io2|LEDreturn\(0));

-- Location: IOIBUF_X34_Y9_N1
\nBtn_reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nBtn_reset,
	o => \nBtn_reset~input_o\);

-- Location: IOIBUF_X0_Y11_N8
\fClk_50MHz~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fClk_50MHz,
	o => \fClk_50MHz~input_o\);

-- Location: CLKCTRL_G2
\fClk_50MHz~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \fClk_50MHz~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \fClk_50MHz~inputclkctrl_outclk\);

-- Location: LCCOMB_X2_Y11_N14
\Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (systemTimerCounter(7) & (!\Add1~13\)) # (!systemTimerCounter(7) & ((\Add1~13\) # (GND)))
-- \Add1~15\ = CARRY((!\Add1~13\) # (!systemTimerCounter(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => systemTimerCounter(7),
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: LCCOMB_X2_Y11_N16
\Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = (systemTimerCounter(8) & (\Add1~15\ $ (GND))) # (!systemTimerCounter(8) & (!\Add1~15\ & VCC))
-- \Add1~17\ = CARRY((systemTimerCounter(8) & !\Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => systemTimerCounter(8),
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

-- Location: FF_X2_Y11_N17
\systemTimerCounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fClk_50MHz~inputclkctrl_outclk\,
	d => \Add1~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => systemTimerCounter(8));

-- Location: LCCOMB_X2_Y11_N18
\Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (systemTimerCounter(9) & (!\Add1~17\)) # (!systemTimerCounter(9) & ((\Add1~17\) # (GND)))
-- \Add1~19\ = CARRY((!\Add1~17\) # (!systemTimerCounter(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => systemTimerCounter(9),
	datad => VCC,
	cin => \Add1~17\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

-- Location: FF_X2_Y11_N19
\systemTimerCounter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fClk_50MHz~inputclkctrl_outclk\,
	d => \Add1~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => systemTimerCounter(9));

-- Location: LCCOMB_X2_Y11_N20
\Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = (systemTimerCounter(10) & (\Add1~19\ $ (GND))) # (!systemTimerCounter(10) & (!\Add1~19\ & VCC))
-- \Add1~21\ = CARRY((systemTimerCounter(10) & !\Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => systemTimerCounter(10),
	datad => VCC,
	cin => \Add1~19\,
	combout => \Add1~20_combout\,
	cout => \Add1~21\);

-- Location: FF_X2_Y11_N21
\systemTimerCounter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fClk_50MHz~inputclkctrl_outclk\,
	d => \Add1~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => systemTimerCounter(10));

-- Location: LCCOMB_X2_Y11_N22
\Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~22_combout\ = (systemTimerCounter(11) & (!\Add1~21\)) # (!systemTimerCounter(11) & ((\Add1~21\) # (GND)))
-- \Add1~23\ = CARRY((!\Add1~21\) # (!systemTimerCounter(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => systemTimerCounter(11),
	datad => VCC,
	cin => \Add1~21\,
	combout => \Add1~22_combout\,
	cout => \Add1~23\);

-- Location: FF_X2_Y11_N23
\systemTimerCounter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fClk_50MHz~inputclkctrl_outclk\,
	d => \Add1~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => systemTimerCounter(11));

-- Location: LCCOMB_X2_Y11_N24
\Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~24_combout\ = (systemTimerCounter(12) & (\Add1~23\ $ (GND))) # (!systemTimerCounter(12) & (!\Add1~23\ & VCC))
-- \Add1~25\ = CARRY((systemTimerCounter(12) & !\Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => systemTimerCounter(12),
	datad => VCC,
	cin => \Add1~23\,
	combout => \Add1~24_combout\,
	cout => \Add1~25\);

-- Location: FF_X2_Y11_N25
\systemTimerCounter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fClk_50MHz~inputclkctrl_outclk\,
	d => \Add1~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => systemTimerCounter(12));

-- Location: LCCOMB_X2_Y11_N26
\Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~26_combout\ = (systemTimerCounter(13) & (!\Add1~25\)) # (!systemTimerCounter(13) & ((\Add1~25\) # (GND)))
-- \Add1~27\ = CARRY((!\Add1~25\) # (!systemTimerCounter(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => systemTimerCounter(13),
	datad => VCC,
	cin => \Add1~25\,
	combout => \Add1~26_combout\,
	cout => \Add1~27\);

-- Location: FF_X2_Y11_N27
\systemTimerCounter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fClk_50MHz~inputclkctrl_outclk\,
	d => \Add1~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => systemTimerCounter(13));

-- Location: LCCOMB_X2_Y11_N28
\Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~28_combout\ = (systemTimerCounter(14) & (\Add1~27\ $ (GND))) # (!systemTimerCounter(14) & (!\Add1~27\ & VCC))
-- \Add1~29\ = CARRY((systemTimerCounter(14) & !\Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => systemTimerCounter(14),
	datad => VCC,
	cin => \Add1~27\,
	combout => \Add1~28_combout\,
	cout => \Add1~29\);

-- Location: FF_X2_Y11_N29
\systemTimerCounter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fClk_50MHz~inputclkctrl_outclk\,
	d => \Add1~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => systemTimerCounter(14));

-- Location: LCCOMB_X2_Y11_N30
\Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~30_combout\ = (systemTimerCounter(15) & (!\Add1~29\)) # (!systemTimerCounter(15) & ((\Add1~29\) # (GND)))
-- \Add1~31\ = CARRY((!\Add1~29\) # (!systemTimerCounter(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => systemTimerCounter(15),
	datad => VCC,
	cin => \Add1~29\,
	combout => \Add1~30_combout\,
	cout => \Add1~31\);

-- Location: FF_X2_Y11_N31
\systemTimerCounter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fClk_50MHz~inputclkctrl_outclk\,
	d => \Add1~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => systemTimerCounter(15));

-- Location: LCCOMB_X2_Y10_N0
\Add1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~32_combout\ = (systemTimerCounter(16) & (\Add1~31\ $ (GND))) # (!systemTimerCounter(16) & (!\Add1~31\ & VCC))
-- \Add1~33\ = CARRY((systemTimerCounter(16) & !\Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => systemTimerCounter(16),
	datad => VCC,
	cin => \Add1~31\,
	combout => \Add1~32_combout\,
	cout => \Add1~33\);

-- Location: FF_X2_Y10_N1
\systemTimerCounter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fClk_50MHz~inputclkctrl_outclk\,
	d => \Add1~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => systemTimerCounter(16));

-- Location: LCCOMB_X2_Y10_N2
\Add1~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~34_combout\ = (systemTimerCounter(17) & (!\Add1~33\)) # (!systemTimerCounter(17) & ((\Add1~33\) # (GND)))
-- \Add1~35\ = CARRY((!\Add1~33\) # (!systemTimerCounter(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => systemTimerCounter(17),
	datad => VCC,
	cin => \Add1~33\,
	combout => \Add1~34_combout\,
	cout => \Add1~35\);

-- Location: FF_X2_Y10_N3
\systemTimerCounter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fClk_50MHz~inputclkctrl_outclk\,
	d => \Add1~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => systemTimerCounter(17));

-- Location: LCCOMB_X2_Y10_N4
\Add1~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~36_combout\ = (systemTimerCounter(18) & (\Add1~35\ $ (GND))) # (!systemTimerCounter(18) & (!\Add1~35\ & VCC))
-- \Add1~37\ = CARRY((systemTimerCounter(18) & !\Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => systemTimerCounter(18),
	datad => VCC,
	cin => \Add1~35\,
	combout => \Add1~36_combout\,
	cout => \Add1~37\);

-- Location: FF_X2_Y10_N5
\systemTimerCounter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fClk_50MHz~inputclkctrl_outclk\,
	d => \Add1~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => systemTimerCounter(18));

-- Location: LCCOMB_X2_Y10_N6
\Add1~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~38_combout\ = (systemTimerCounter(19) & (!\Add1~37\)) # (!systemTimerCounter(19) & ((\Add1~37\) # (GND)))
-- \Add1~39\ = CARRY((!\Add1~37\) # (!systemTimerCounter(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => systemTimerCounter(19),
	datad => VCC,
	cin => \Add1~37\,
	combout => \Add1~38_combout\,
	cout => \Add1~39\);

-- Location: FF_X2_Y10_N7
\systemTimerCounter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fClk_50MHz~inputclkctrl_outclk\,
	d => \Add1~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => systemTimerCounter(19));

-- Location: LCCOMB_X2_Y10_N8
\Add1~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~40_combout\ = (systemTimerCounter(20) & (\Add1~39\ $ (GND))) # (!systemTimerCounter(20) & (!\Add1~39\ & VCC))
-- \Add1~41\ = CARRY((systemTimerCounter(20) & !\Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => systemTimerCounter(20),
	datad => VCC,
	cin => \Add1~39\,
	combout => \Add1~40_combout\,
	cout => \Add1~41\);

-- Location: FF_X2_Y10_N9
\systemTimerCounter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fClk_50MHz~inputclkctrl_outclk\,
	d => \Add1~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => systemTimerCounter(20));

-- Location: LCCOMB_X2_Y10_N10
\Add1~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~42_combout\ = (systemTimerCounter(21) & (!\Add1~41\)) # (!systemTimerCounter(21) & ((\Add1~41\) # (GND)))
-- \Add1~43\ = CARRY((!\Add1~41\) # (!systemTimerCounter(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => systemTimerCounter(21),
	datad => VCC,
	cin => \Add1~41\,
	combout => \Add1~42_combout\,
	cout => \Add1~43\);

-- Location: FF_X2_Y10_N11
\systemTimerCounter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fClk_50MHz~inputclkctrl_outclk\,
	d => \Add1~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => systemTimerCounter(21));

-- Location: LCCOMB_X2_Y10_N12
\Add1~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~44_combout\ = (systemTimerCounter(22) & (\Add1~43\ $ (GND))) # (!systemTimerCounter(22) & (!\Add1~43\ & VCC))
-- \Add1~45\ = CARRY((systemTimerCounter(22) & !\Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => systemTimerCounter(22),
	datad => VCC,
	cin => \Add1~43\,
	combout => \Add1~44_combout\,
	cout => \Add1~45\);

-- Location: FF_X2_Y10_N13
\systemTimerCounter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fClk_50MHz~inputclkctrl_outclk\,
	d => \Add1~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => systemTimerCounter(22));

-- Location: LCCOMB_X2_Y10_N14
\Add1~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~46_combout\ = (systemTimerCounter(23) & (!\Add1~45\)) # (!systemTimerCounter(23) & ((\Add1~45\) # (GND)))
-- \Add1~47\ = CARRY((!\Add1~45\) # (!systemTimerCounter(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => systemTimerCounter(23),
	datad => VCC,
	cin => \Add1~45\,
	combout => \Add1~46_combout\,
	cout => \Add1~47\);

-- Location: FF_X2_Y10_N15
\systemTimerCounter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fClk_50MHz~inputclkctrl_outclk\,
	d => \Add1~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => systemTimerCounter(23));

-- Location: LCCOMB_X1_Y11_N10
\Equal5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal5~2_combout\ = (!systemTimerCounter(23) & (!systemTimerCounter(22) & (!systemTimerCounter(20) & !systemTimerCounter(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => systemTimerCounter(23),
	datab => systemTimerCounter(22),
	datac => systemTimerCounter(20),
	datad => systemTimerCounter(21),
	combout => \Equal5~2_combout\);

-- Location: LCCOMB_X2_Y10_N16
\Add1~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~48_combout\ = (systemTimerCounter(24) & (\Add1~47\ $ (GND))) # (!systemTimerCounter(24) & (!\Add1~47\ & VCC))
-- \Add1~49\ = CARRY((systemTimerCounter(24) & !\Add1~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => systemTimerCounter(24),
	datad => VCC,
	cin => \Add1~47\,
	combout => \Add1~48_combout\,
	cout => \Add1~49\);

-- Location: FF_X2_Y10_N17
\systemTimerCounter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fClk_50MHz~inputclkctrl_outclk\,
	d => \Add1~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => systemTimerCounter(24));

-- Location: LCCOMB_X2_Y10_N18
\Add1~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~50_combout\ = (systemTimerCounter(25) & (!\Add1~49\)) # (!systemTimerCounter(25) & ((\Add1~49\) # (GND)))
-- \Add1~51\ = CARRY((!\Add1~49\) # (!systemTimerCounter(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => systemTimerCounter(25),
	datad => VCC,
	cin => \Add1~49\,
	combout => \Add1~50_combout\,
	cout => \Add1~51\);

-- Location: FF_X2_Y10_N19
\systemTimerCounter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fClk_50MHz~inputclkctrl_outclk\,
	d => \Add1~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => systemTimerCounter(25));

-- Location: LCCOMB_X2_Y10_N20
\Add1~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~52_combout\ = (systemTimerCounter(26) & (\Add1~51\ $ (GND))) # (!systemTimerCounter(26) & (!\Add1~51\ & VCC))
-- \Add1~53\ = CARRY((systemTimerCounter(26) & !\Add1~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => systemTimerCounter(26),
	datad => VCC,
	cin => \Add1~51\,
	combout => \Add1~52_combout\,
	cout => \Add1~53\);

-- Location: FF_X2_Y10_N21
\systemTimerCounter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fClk_50MHz~inputclkctrl_outclk\,
	d => \Add1~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => systemTimerCounter(26));

-- Location: LCCOMB_X2_Y10_N22
\Add1~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~54_combout\ = (systemTimerCounter(27) & (!\Add1~53\)) # (!systemTimerCounter(27) & ((\Add1~53\) # (GND)))
-- \Add1~55\ = CARRY((!\Add1~53\) # (!systemTimerCounter(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => systemTimerCounter(27),
	datad => VCC,
	cin => \Add1~53\,
	combout => \Add1~54_combout\,
	cout => \Add1~55\);

-- Location: FF_X2_Y10_N23
\systemTimerCounter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fClk_50MHz~inputclkctrl_outclk\,
	d => \Add1~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => systemTimerCounter(27));

-- Location: LCCOMB_X2_Y10_N24
\Add1~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~56_combout\ = (systemTimerCounter(28) & (\Add1~55\ $ (GND))) # (!systemTimerCounter(28) & (!\Add1~55\ & VCC))
-- \Add1~57\ = CARRY((systemTimerCounter(28) & !\Add1~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => systemTimerCounter(28),
	datad => VCC,
	cin => \Add1~55\,
	combout => \Add1~56_combout\,
	cout => \Add1~57\);

-- Location: FF_X2_Y10_N25
\systemTimerCounter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fClk_50MHz~inputclkctrl_outclk\,
	d => \Add1~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => systemTimerCounter(28));

-- Location: LCCOMB_X2_Y10_N26
\Add1~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~58_combout\ = (systemTimerCounter(29) & (!\Add1~57\)) # (!systemTimerCounter(29) & ((\Add1~57\) # (GND)))
-- \Add1~59\ = CARRY((!\Add1~57\) # (!systemTimerCounter(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => systemTimerCounter(29),
	datad => VCC,
	cin => \Add1~57\,
	combout => \Add1~58_combout\,
	cout => \Add1~59\);

-- Location: FF_X2_Y10_N27
\systemTimerCounter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fClk_50MHz~inputclkctrl_outclk\,
	d => \Add1~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => systemTimerCounter(29));

-- Location: LCCOMB_X2_Y10_N28
\Add1~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~60_combout\ = (systemTimerCounter(30) & (\Add1~59\ $ (GND))) # (!systemTimerCounter(30) & (!\Add1~59\ & VCC))
-- \Add1~61\ = CARRY((systemTimerCounter(30) & !\Add1~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => systemTimerCounter(30),
	datad => VCC,
	cin => \Add1~59\,
	combout => \Add1~60_combout\,
	cout => \Add1~61\);

-- Location: FF_X2_Y10_N29
\systemTimerCounter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fClk_50MHz~inputclkctrl_outclk\,
	d => \Add1~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => systemTimerCounter(30));

-- Location: LCCOMB_X2_Y10_N30
\Add1~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~62_combout\ = systemTimerCounter(31) $ (\Add1~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => systemTimerCounter(31),
	cin => \Add1~61\,
	combout => \Add1~62_combout\);

-- Location: FF_X2_Y10_N31
\systemTimerCounter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fClk_50MHz~inputclkctrl_outclk\,
	d => \Add1~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => systemTimerCounter(31));

-- Location: LCCOMB_X1_Y11_N24
\Equal5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal5~0_combout\ = (!systemTimerCounter(31) & (!systemTimerCounter(30) & (!systemTimerCounter(29) & !systemTimerCounter(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => systemTimerCounter(31),
	datab => systemTimerCounter(30),
	datac => systemTimerCounter(29),
	datad => systemTimerCounter(28),
	combout => \Equal5~0_combout\);

-- Location: LCCOMB_X1_Y11_N22
\Equal5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal5~1_combout\ = (!systemTimerCounter(24) & (!systemTimerCounter(25) & (!systemTimerCounter(27) & !systemTimerCounter(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => systemTimerCounter(24),
	datab => systemTimerCounter(25),
	datac => systemTimerCounter(27),
	datad => systemTimerCounter(26),
	combout => \Equal5~1_combout\);

-- Location: LCCOMB_X1_Y11_N20
\Equal5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal5~3_combout\ = (!systemTimerCounter(18) & (!systemTimerCounter(19) & (!systemTimerCounter(17) & !systemTimerCounter(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => systemTimerCounter(18),
	datab => systemTimerCounter(19),
	datac => systemTimerCounter(17),
	datad => systemTimerCounter(16),
	combout => \Equal5~3_combout\);

-- Location: LCCOMB_X1_Y11_N16
\Equal5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal5~4_combout\ = (\Equal5~2_combout\ & (\Equal5~0_combout\ & (\Equal5~1_combout\ & \Equal5~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~2_combout\,
	datab => \Equal5~0_combout\,
	datac => \Equal5~1_combout\,
	datad => \Equal5~3_combout\,
	combout => \Equal5~4_combout\);

-- Location: LCCOMB_X2_Y11_N0
\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = systemTimerCounter(0) $ (VCC)
-- \Add1~1\ = CARRY(systemTimerCounter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => systemTimerCounter(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X3_Y11_N26
\Equal5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal5~6_combout\ = (!systemTimerCounter(9) & (!systemTimerCounter(10) & (!systemTimerCounter(8) & !systemTimerCounter(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => systemTimerCounter(9),
	datab => systemTimerCounter(10),
	datac => systemTimerCounter(8),
	datad => systemTimerCounter(11),
	combout => \Equal5~6_combout\);

-- Location: LCCOMB_X3_Y11_N0
\Equal5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal5~5_combout\ = (!systemTimerCounter(13) & !systemTimerCounter(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => systemTimerCounter(13),
	datad => systemTimerCounter(12),
	combout => \Equal5~5_combout\);

-- Location: LCCOMB_X3_Y11_N28
\Equal5~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal5~7_combout\ = (!systemTimerCounter(15) & (!systemTimerCounter(14) & (\Equal5~6_combout\ & \Equal5~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => systemTimerCounter(15),
	datab => systemTimerCounter(14),
	datac => \Equal5~6_combout\,
	datad => \Equal5~5_combout\,
	combout => \Equal5~7_combout\);

-- Location: LCCOMB_X1_Y11_N30
\systemTimerCounter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \systemTimerCounter~3_combout\ = (\Add1~0_combout\ & ((\systemTimerOut~0_combout\) # ((!\Equal5~7_combout\) # (!\Equal5~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \systemTimerOut~0_combout\,
	datab => \Equal5~4_combout\,
	datac => \Add1~0_combout\,
	datad => \Equal5~7_combout\,
	combout => \systemTimerCounter~3_combout\);

-- Location: FF_X1_Y11_N31
\systemTimerCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fClk_50MHz~inputclkctrl_outclk\,
	d => \systemTimerCounter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => systemTimerCounter(0));

-- Location: LCCOMB_X2_Y11_N2
\Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (systemTimerCounter(1) & (!\Add1~1\)) # (!systemTimerCounter(1) & ((\Add1~1\) # (GND)))
-- \Add1~3\ = CARRY((!\Add1~1\) # (!systemTimerCounter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => systemTimerCounter(1),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X1_Y11_N4
\systemTimerCounter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \systemTimerCounter~2_combout\ = (\Add1~2_combout\ & (((\systemTimerOut~0_combout\) # (!\Equal5~7_combout\)) # (!\Equal5~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~2_combout\,
	datab => \Equal5~4_combout\,
	datac => \systemTimerOut~0_combout\,
	datad => \Equal5~7_combout\,
	combout => \systemTimerCounter~2_combout\);

-- Location: FF_X1_Y11_N5
\systemTimerCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fClk_50MHz~inputclkctrl_outclk\,
	d => \systemTimerCounter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => systemTimerCounter(1));

-- Location: LCCOMB_X2_Y11_N4
\Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (systemTimerCounter(2) & (\Add1~3\ $ (GND))) # (!systemTimerCounter(2) & (!\Add1~3\ & VCC))
-- \Add1~5\ = CARRY((systemTimerCounter(2) & !\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => systemTimerCounter(2),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: FF_X2_Y11_N5
\systemTimerCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fClk_50MHz~inputclkctrl_outclk\,
	d => \Add1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => systemTimerCounter(2));

-- Location: LCCOMB_X2_Y11_N6
\Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (systemTimerCounter(3) & (!\Add1~5\)) # (!systemTimerCounter(3) & ((\Add1~5\) # (GND)))
-- \Add1~7\ = CARRY((!\Add1~5\) # (!systemTimerCounter(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => systemTimerCounter(3),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: FF_X2_Y11_N7
\systemTimerCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fClk_50MHz~inputclkctrl_outclk\,
	d => \Add1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => systemTimerCounter(3));

-- Location: LCCOMB_X2_Y11_N8
\Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (systemTimerCounter(4) & (\Add1~7\ $ (GND))) # (!systemTimerCounter(4) & (!\Add1~7\ & VCC))
-- \Add1~9\ = CARRY((systemTimerCounter(4) & !\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => systemTimerCounter(4),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: FF_X2_Y11_N9
\systemTimerCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fClk_50MHz~inputclkctrl_outclk\,
	d => \Add1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => systemTimerCounter(4));

-- Location: LCCOMB_X2_Y11_N10
\Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (systemTimerCounter(5) & (!\Add1~9\)) # (!systemTimerCounter(5) & ((\Add1~9\) # (GND)))
-- \Add1~11\ = CARRY((!\Add1~9\) # (!systemTimerCounter(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => systemTimerCounter(5),
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X1_Y11_N18
\Equal5~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal5~9_combout\ = (!systemTimerCounter(3) & (systemTimerCounter(1) & (!systemTimerCounter(0) & !systemTimerCounter(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => systemTimerCounter(3),
	datab => systemTimerCounter(1),
	datac => systemTimerCounter(0),
	datad => systemTimerCounter(2),
	combout => \Equal5~9_combout\);

-- Location: LCCOMB_X1_Y11_N28
\Equal5~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal5~10_combout\ = (\Equal5~8_combout\ & (\Equal5~9_combout\ & (\Equal5~4_combout\ & \Equal5~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~8_combout\,
	datab => \Equal5~9_combout\,
	datac => \Equal5~4_combout\,
	datad => \Equal5~7_combout\,
	combout => \Equal5~10_combout\);

-- Location: LCCOMB_X1_Y11_N0
\systemTimerCounter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \systemTimerCounter~1_combout\ = (\Add1~10_combout\ & !\Equal5~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~10_combout\,
	datad => \Equal5~10_combout\,
	combout => \systemTimerCounter~1_combout\);

-- Location: FF_X1_Y11_N1
\systemTimerCounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fClk_50MHz~inputclkctrl_outclk\,
	d => \systemTimerCounter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => systemTimerCounter(5));

-- Location: LCCOMB_X2_Y11_N12
\Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (systemTimerCounter(6) & (\Add1~11\ $ (GND))) # (!systemTimerCounter(6) & (!\Add1~11\ & VCC))
-- \Add1~13\ = CARRY((systemTimerCounter(6) & !\Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => systemTimerCounter(6),
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X1_Y11_N6
\systemTimerCounter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \systemTimerCounter~0_combout\ = (\Add1~12_combout\ & !\Equal5~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~12_combout\,
	datad => \Equal5~10_combout\,
	combout => \systemTimerCounter~0_combout\);

-- Location: FF_X1_Y11_N7
\systemTimerCounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fClk_50MHz~inputclkctrl_outclk\,
	d => \systemTimerCounter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => systemTimerCounter(6));

-- Location: FF_X2_Y11_N15
\systemTimerCounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fClk_50MHz~inputclkctrl_outclk\,
	d => \Add1~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => systemTimerCounter(7));

-- Location: LCCOMB_X1_Y11_N12
\Equal5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal5~8_combout\ = (!systemTimerCounter(7) & (systemTimerCounter(5) & (!systemTimerCounter(4) & systemTimerCounter(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => systemTimerCounter(7),
	datab => systemTimerCounter(5),
	datac => systemTimerCounter(4),
	datad => systemTimerCounter(6),
	combout => \Equal5~8_combout\);

-- Location: LCCOMB_X1_Y11_N26
\systemTimerOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \systemTimerOut~0_combout\ = (!\Equal5~9_combout\) # (!\Equal5~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~8_combout\,
	datad => \Equal5~9_combout\,
	combout => \systemTimerOut~0_combout\);

-- Location: LCCOMB_X1_Y11_N14
\systemTimerOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \systemTimerOut~1_combout\ = \systemTimerOut~q\ $ (((!\systemTimerOut~0_combout\ & (\Equal5~4_combout\ & \Equal5~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \systemTimerOut~0_combout\,
	datab => \Equal5~4_combout\,
	datac => \systemTimerOut~q\,
	datad => \Equal5~7_combout\,
	combout => \systemTimerOut~1_combout\);

-- Location: FF_X1_Y11_N15
systemTimerOut : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fClk_50MHz~input_o\,
	d => \systemTimerOut~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \systemTimerOut~q\);

-- Location: CLKCTRL_G4
\systemTimerOut~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \systemTimerOut~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \systemTimerOut~clkctrl_outclk\);

-- Location: LCCOMB_X24_Y12_N0
\timer1|timer[0]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer1|timer[0]~45_combout\ = !\timer1|timer\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \timer1|timer\(0),
	combout => \timer1|timer[0]~45_combout\);

-- Location: LCCOMB_X25_Y11_N18
\timer1|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer1|process_0~0_combout\ = (!\fAddress[0]~input_o\ & !\fnWr~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fAddress[0]~input_o\,
	datad => \fnWr~input_o\,
	combout => \timer1|process_0~0_combout\);

-- Location: LCCOMB_X25_Y11_N14
\nTimercs~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \nTimercs~0_combout\ = (\Equal0~0_combout\ & (\fAddress[7]~input_o\ & (\fAddress[5]~input_o\ & \fAddress[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \fAddress[7]~input_o\,
	datac => \fAddress[5]~input_o\,
	datad => \fAddress[6]~input_o\,
	combout => \nTimercs~0_combout\);

-- Location: LCCOMB_X25_Y11_N4
\timer1|TimerOut[7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer1|TimerOut[7]~1_combout\ = (\fnReset~input_o\ & (((\fnIorq~input_o\) # (!\nTimercs~0_combout\)) # (!\timer1|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fnReset~input_o\,
	datab => \timer1|process_0~0_combout\,
	datac => \nTimercs~0_combout\,
	datad => \fnIorq~input_o\,
	combout => \timer1|TimerOut[7]~1_combout\);

-- Location: FF_X24_Y12_N1
\timer1|timer[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \systemTimerOut~clkctrl_outclk\,
	d => \timer1|timer[0]~45_combout\,
	clrn => \timer1|TimerOut[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer1|timer\(0));

-- Location: LCCOMB_X23_Y12_N2
\timer1|timer[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer1|timer[1]~15_combout\ = (\timer1|timer\(1) & (\timer1|timer\(0) $ (VCC))) # (!\timer1|timer\(1) & (\timer1|timer\(0) & VCC))
-- \timer1|timer[1]~16\ = CARRY((\timer1|timer\(1) & \timer1|timer\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer1|timer\(1),
	datab => \timer1|timer\(0),
	datad => VCC,
	combout => \timer1|timer[1]~15_combout\,
	cout => \timer1|timer[1]~16\);

-- Location: FF_X23_Y12_N3
\timer1|timer[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \systemTimerOut~clkctrl_outclk\,
	d => \timer1|timer[1]~15_combout\,
	clrn => \timer1|TimerOut[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer1|timer\(1));

-- Location: LCCOMB_X23_Y12_N4
\timer1|timer[2]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer1|timer[2]~17_combout\ = (\timer1|timer\(2) & (!\timer1|timer[1]~16\)) # (!\timer1|timer\(2) & ((\timer1|timer[1]~16\) # (GND)))
-- \timer1|timer[2]~18\ = CARRY((!\timer1|timer[1]~16\) # (!\timer1|timer\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer1|timer\(2),
	datad => VCC,
	cin => \timer1|timer[1]~16\,
	combout => \timer1|timer[2]~17_combout\,
	cout => \timer1|timer[2]~18\);

-- Location: FF_X23_Y12_N5
\timer1|timer[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \systemTimerOut~clkctrl_outclk\,
	d => \timer1|timer[2]~17_combout\,
	clrn => \timer1|TimerOut[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer1|timer\(2));

-- Location: LCCOMB_X23_Y12_N6
\timer1|timer[3]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer1|timer[3]~19_combout\ = (\timer1|timer\(3) & (\timer1|timer[2]~18\ $ (GND))) # (!\timer1|timer\(3) & (!\timer1|timer[2]~18\ & VCC))
-- \timer1|timer[3]~20\ = CARRY((\timer1|timer\(3) & !\timer1|timer[2]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer1|timer\(3),
	datad => VCC,
	cin => \timer1|timer[2]~18\,
	combout => \timer1|timer[3]~19_combout\,
	cout => \timer1|timer[3]~20\);

-- Location: FF_X23_Y12_N7
\timer1|timer[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \systemTimerOut~clkctrl_outclk\,
	d => \timer1|timer[3]~19_combout\,
	clrn => \timer1|TimerOut[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer1|timer\(3));

-- Location: LCCOMB_X23_Y12_N8
\timer1|timer[4]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer1|timer[4]~21_combout\ = (\timer1|timer\(4) & (!\timer1|timer[3]~20\)) # (!\timer1|timer\(4) & ((\timer1|timer[3]~20\) # (GND)))
-- \timer1|timer[4]~22\ = CARRY((!\timer1|timer[3]~20\) # (!\timer1|timer\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer1|timer\(4),
	datad => VCC,
	cin => \timer1|timer[3]~20\,
	combout => \timer1|timer[4]~21_combout\,
	cout => \timer1|timer[4]~22\);

-- Location: FF_X23_Y12_N9
\timer1|timer[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \systemTimerOut~clkctrl_outclk\,
	d => \timer1|timer[4]~21_combout\,
	clrn => \timer1|TimerOut[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer1|timer\(4));

-- Location: LCCOMB_X23_Y12_N10
\timer1|timer[5]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer1|timer[5]~23_combout\ = (\timer1|timer\(5) & (\timer1|timer[4]~22\ $ (GND))) # (!\timer1|timer\(5) & (!\timer1|timer[4]~22\ & VCC))
-- \timer1|timer[5]~24\ = CARRY((\timer1|timer\(5) & !\timer1|timer[4]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer1|timer\(5),
	datad => VCC,
	cin => \timer1|timer[4]~22\,
	combout => \timer1|timer[5]~23_combout\,
	cout => \timer1|timer[5]~24\);

-- Location: FF_X23_Y12_N11
\timer1|timer[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \systemTimerOut~clkctrl_outclk\,
	d => \timer1|timer[5]~23_combout\,
	clrn => \timer1|TimerOut[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer1|timer\(5));

-- Location: LCCOMB_X23_Y12_N12
\timer1|timer[6]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer1|timer[6]~25_combout\ = (\timer1|timer\(6) & (!\timer1|timer[5]~24\)) # (!\timer1|timer\(6) & ((\timer1|timer[5]~24\) # (GND)))
-- \timer1|timer[6]~26\ = CARRY((!\timer1|timer[5]~24\) # (!\timer1|timer\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer1|timer\(6),
	datad => VCC,
	cin => \timer1|timer[5]~24\,
	combout => \timer1|timer[6]~25_combout\,
	cout => \timer1|timer[6]~26\);

-- Location: FF_X23_Y12_N13
\timer1|timer[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \systemTimerOut~clkctrl_outclk\,
	d => \timer1|timer[6]~25_combout\,
	clrn => \timer1|TimerOut[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer1|timer\(6));

-- Location: LCCOMB_X23_Y12_N14
\timer1|timer[7]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer1|timer[7]~27_combout\ = (\timer1|timer\(7) & (\timer1|timer[6]~26\ $ (GND))) # (!\timer1|timer\(7) & (!\timer1|timer[6]~26\ & VCC))
-- \timer1|timer[7]~28\ = CARRY((\timer1|timer\(7) & !\timer1|timer[6]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer1|timer\(7),
	datad => VCC,
	cin => \timer1|timer[6]~26\,
	combout => \timer1|timer[7]~27_combout\,
	cout => \timer1|timer[7]~28\);

-- Location: FF_X23_Y12_N15
\timer1|timer[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \systemTimerOut~clkctrl_outclk\,
	d => \timer1|timer[7]~27_combout\,
	clrn => \timer1|TimerOut[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer1|timer\(7));

-- Location: LCCOMB_X23_Y12_N16
\timer1|timer[8]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer1|timer[8]~29_combout\ = (\timer1|timer\(8) & (!\timer1|timer[7]~28\)) # (!\timer1|timer\(8) & ((\timer1|timer[7]~28\) # (GND)))
-- \timer1|timer[8]~30\ = CARRY((!\timer1|timer[7]~28\) # (!\timer1|timer\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer1|timer\(8),
	datad => VCC,
	cin => \timer1|timer[7]~28\,
	combout => \timer1|timer[8]~29_combout\,
	cout => \timer1|timer[8]~30\);

-- Location: FF_X23_Y12_N17
\timer1|timer[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \systemTimerOut~clkctrl_outclk\,
	d => \timer1|timer[8]~29_combout\,
	clrn => \timer1|TimerOut[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer1|timer\(8));

-- Location: LCCOMB_X24_Y12_N2
\timer1|TimerOut[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer1|TimerOut[0]~0_combout\ = (\fAddress[0]~input_o\ & (\timer1|timer\(8))) # (!\fAddress[0]~input_o\ & ((\timer1|timer\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fAddress[0]~input_o\,
	datac => \timer1|timer\(8),
	datad => \timer1|timer\(0),
	combout => \timer1|TimerOut[0]~0_combout\);

-- Location: LCCOMB_X25_Y11_N10
\nTimercs~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \nTimercs~1_combout\ = (\fAddress[6]~input_o\ & (\fAddress[5]~input_o\ & \fAddress[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fAddress[6]~input_o\,
	datac => \fAddress[5]~input_o\,
	datad => \fAddress[7]~input_o\,
	combout => \nTimercs~1_combout\);

-- Location: LCCOMB_X25_Y11_N20
\fData~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \fData~27_combout\ = (!\fnRd~input_o\ & (!\fnIorq~input_o\ & (\Equal0~0_combout\ & \nTimercs~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fnRd~input_o\,
	datab => \fnIorq~input_o\,
	datac => \Equal0~0_combout\,
	datad => \nTimercs~1_combout\,
	combout => \fData~27_combout\);

-- Location: LCCOMB_X25_Y12_N28
\timer1|TimerOut[7]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer1|TimerOut[7]~2_combout\ = (\fData~27_combout\ & \timer1|TimerOut[7]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fData~27_combout\,
	datad => \timer1|TimerOut[7]~1_combout\,
	combout => \timer1|TimerOut[7]~2_combout\);

-- Location: CLKCTRL_G6
\timer1|TimerOut[7]~2clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \timer1|TimerOut[7]~2clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \timer1|TimerOut[7]~2clkctrl_outclk\);

-- Location: LCCOMB_X24_Y12_N20
\timer1|TimerOut[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer1|TimerOut\(0) = (GLOBAL(\timer1|TimerOut[7]~2clkctrl_outclk\) & (\timer1|TimerOut[0]~0_combout\)) # (!GLOBAL(\timer1|TimerOut[7]~2clkctrl_outclk\) & ((\timer1|TimerOut\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer1|TimerOut[0]~0_combout\,
	datac => \timer1|TimerOut[7]~2clkctrl_outclk\,
	datad => \timer1|TimerOut\(0),
	combout => \timer1|TimerOut\(0));

-- Location: LCCOMB_X25_Y11_N0
\nButtoncs~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \nButtoncs~1_combout\ = (!\fAddress[2]~input_o\ & (\fAddress[0]~input_o\ & !\fAddress[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fAddress[2]~input_o\,
	datab => \fAddress[0]~input_o\,
	datad => \fAddress[1]~input_o\,
	combout => \nButtoncs~1_combout\);

-- Location: LCCOMB_X25_Y11_N16
\nButtoncs~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \nButtoncs~0_combout\ = (!\fAddress[6]~input_o\ & (!\fAddress[3]~input_o\ & (!\fAddress[4]~input_o\ & !\fnIorq~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fAddress[6]~input_o\,
	datab => \fAddress[3]~input_o\,
	datac => \fAddress[4]~input_o\,
	datad => \fnIorq~input_o\,
	combout => \nButtoncs~0_combout\);

-- Location: LCCOMB_X25_Y11_N2
\nButtoncs~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \nButtoncs~2_combout\ = (!\fnRd~input_o\ & (\nButtoncs~1_combout\ & (\Equal0~1_combout\ & \nButtoncs~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fnRd~input_o\,
	datab => \nButtoncs~1_combout\,
	datac => \Equal0~1_combout\,
	datad => \nButtoncs~0_combout\,
	combout => \nButtoncs~2_combout\);

-- Location: LCCOMB_X25_Y12_N26
\fData[0]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \fData[0]~29_combout\ = (\fData~27_combout\ & (((\timer1|TimerOut\(0))))) # (!\fData~27_combout\ & (\nBtn_reset~input_o\ & ((\nButtoncs~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nBtn_reset~input_o\,
	datab => \timer1|TimerOut\(0),
	datac => \fData~27_combout\,
	datad => \nButtoncs~2_combout\,
	combout => \fData[0]~29_combout\);

-- Location: LCCOMB_X24_Y11_N0
\nSerialcs~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \nSerialcs~0_combout\ = (!\fAddress[5]~input_o\ & (!\fAddress[2]~input_o\ & (\fAddress[7]~input_o\ & !\fAddress[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fAddress[5]~input_o\,
	datab => \fAddress[2]~input_o\,
	datac => \fAddress[7]~input_o\,
	datad => \fAddress[1]~input_o\,
	combout => \nSerialcs~0_combout\);

-- Location: LCCOMB_X24_Y11_N8
\comb~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~2_combout\ = LCELL((\fnRd~input_o\) # ((!\nButtoncs~0_combout\) # (!\nSerialcs~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fnRd~input_o\,
	datab => \nSerialcs~0_combout\,
	datad => \nButtoncs~0_combout\,
	combout => \comb~2_combout\);

-- Location: CLKCTRL_G8
\comb~2clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \comb~2clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \comb~2clkctrl_outclk\);

-- Location: LCCOMB_X14_Y11_N2
\io3|rxReadPointer[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxReadPointer[0]~6_combout\ = \io3|rxReadPointer\(0) $ (VCC)
-- \io3|rxReadPointer[0]~7\ = CARRY(\io3|rxReadPointer\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \io3|rxReadPointer\(0),
	datad => VCC,
	combout => \io3|rxReadPointer[0]~6_combout\,
	cout => \io3|rxReadPointer[0]~7\);

-- Location: LCCOMB_X14_Y11_N4
\io3|rxReadPointer[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxReadPointer[1]~8_combout\ = (\io3|rxReadPointer\(1) & (!\io3|rxReadPointer[0]~7\)) # (!\io3|rxReadPointer\(1) & ((\io3|rxReadPointer[0]~7\) # (GND)))
-- \io3|rxReadPointer[1]~9\ = CARRY((!\io3|rxReadPointer[0]~7\) # (!\io3|rxReadPointer\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \io3|rxReadPointer\(1),
	datad => VCC,
	cin => \io3|rxReadPointer[0]~7\,
	combout => \io3|rxReadPointer[1]~8_combout\,
	cout => \io3|rxReadPointer[1]~9\);

-- Location: LCCOMB_X14_Y11_N6
\io3|rxReadPointer[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxReadPointer[2]~11_combout\ = (\io3|rxReadPointer\(2) & (\io3|rxReadPointer[1]~9\ $ (GND))) # (!\io3|rxReadPointer\(2) & (!\io3|rxReadPointer[1]~9\ & VCC))
-- \io3|rxReadPointer[2]~12\ = CARRY((\io3|rxReadPointer\(2) & !\io3|rxReadPointer[1]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \io3|rxReadPointer\(2),
	datad => VCC,
	cin => \io3|rxReadPointer[1]~9\,
	combout => \io3|rxReadPointer[2]~11_combout\,
	cout => \io3|rxReadPointer[2]~12\);

-- Location: LCCOMB_X3_Y11_N30
\serialClkCount[4]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \serialClkCount[4]~35_combout\ = !serialClkCount(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => serialClkCount(4),
	combout => \serialClkCount[4]~35_combout\);

-- Location: FF_X3_Y11_N31
\serialClkCount[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fClk_50MHz~inputclkctrl_outclk\,
	d => \serialClkCount[4]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => serialClkCount(4));

-- Location: LCCOMB_X3_Y11_N2
\serialClkCount[5]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \serialClkCount[5]~12_cout\ = CARRY(serialClkCount(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => serialClkCount(4),
	datad => VCC,
	cout => \serialClkCount[5]~12_cout\);

-- Location: LCCOMB_X3_Y11_N4
\serialClkCount[5]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \serialClkCount[5]~13_combout\ = (serialClkCount(5) & (\serialClkCount[5]~12_cout\ & VCC)) # (!serialClkCount(5) & (!\serialClkCount[5]~12_cout\))
-- \serialClkCount[5]~14\ = CARRY((!serialClkCount(5) & !\serialClkCount[5]~12_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => serialClkCount(5),
	datad => VCC,
	cin => \serialClkCount[5]~12_cout\,
	combout => \serialClkCount[5]~13_combout\,
	cout => \serialClkCount[5]~14\);

-- Location: FF_X3_Y11_N5
\serialClkCount[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fClk_50MHz~inputclkctrl_outclk\,
	d => \serialClkCount[5]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => serialClkCount(5));

-- Location: LCCOMB_X3_Y11_N6
\serialClkCount[6]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \serialClkCount[6]~15_combout\ = (serialClkCount(6) & ((GND) # (!\serialClkCount[5]~14\))) # (!serialClkCount(6) & (\serialClkCount[5]~14\ $ (GND)))
-- \serialClkCount[6]~16\ = CARRY((serialClkCount(6)) # (!\serialClkCount[5]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => serialClkCount(6),
	datad => VCC,
	cin => \serialClkCount[5]~14\,
	combout => \serialClkCount[6]~15_combout\,
	cout => \serialClkCount[6]~16\);

-- Location: FF_X3_Y11_N7
\serialClkCount[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fClk_50MHz~inputclkctrl_outclk\,
	d => \serialClkCount[6]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => serialClkCount(6));

-- Location: LCCOMB_X3_Y11_N8
\serialClkCount[7]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \serialClkCount[7]~17_combout\ = (serialClkCount(7) & (!\serialClkCount[6]~16\)) # (!serialClkCount(7) & ((\serialClkCount[6]~16\) # (GND)))
-- \serialClkCount[7]~18\ = CARRY((!\serialClkCount[6]~16\) # (!serialClkCount(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => serialClkCount(7),
	datad => VCC,
	cin => \serialClkCount[6]~16\,
	combout => \serialClkCount[7]~17_combout\,
	cout => \serialClkCount[7]~18\);

-- Location: FF_X3_Y11_N9
\serialClkCount[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fClk_50MHz~inputclkctrl_outclk\,
	d => \serialClkCount[7]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => serialClkCount(7));

-- Location: LCCOMB_X3_Y11_N10
\serialClkCount[8]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \serialClkCount[8]~19_combout\ = (serialClkCount(8) & ((GND) # (!\serialClkCount[7]~18\))) # (!serialClkCount(8) & (\serialClkCount[7]~18\ $ (GND)))
-- \serialClkCount[8]~20\ = CARRY((serialClkCount(8)) # (!\serialClkCount[7]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => serialClkCount(8),
	datad => VCC,
	cin => \serialClkCount[7]~18\,
	combout => \serialClkCount[8]~19_combout\,
	cout => \serialClkCount[8]~20\);

-- Location: FF_X3_Y11_N11
\serialClkCount[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fClk_50MHz~inputclkctrl_outclk\,
	d => \serialClkCount[8]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => serialClkCount(8));

-- Location: LCCOMB_X3_Y11_N12
\serialClkCount[9]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \serialClkCount[9]~21_combout\ = (serialClkCount(9) & (!\serialClkCount[8]~20\)) # (!serialClkCount(9) & ((\serialClkCount[8]~20\) # (GND)))
-- \serialClkCount[9]~22\ = CARRY((!\serialClkCount[8]~20\) # (!serialClkCount(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => serialClkCount(9),
	datad => VCC,
	cin => \serialClkCount[8]~20\,
	combout => \serialClkCount[9]~21_combout\,
	cout => \serialClkCount[9]~22\);

-- Location: FF_X3_Y11_N13
\serialClkCount[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fClk_50MHz~inputclkctrl_outclk\,
	d => \serialClkCount[9]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => serialClkCount(9));

-- Location: LCCOMB_X3_Y11_N14
\serialClkCount[10]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \serialClkCount[10]~23_combout\ = (serialClkCount(10) & (\serialClkCount[9]~22\ $ (GND))) # (!serialClkCount(10) & (!\serialClkCount[9]~22\ & VCC))
-- \serialClkCount[10]~24\ = CARRY((serialClkCount(10) & !\serialClkCount[9]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => serialClkCount(10),
	datad => VCC,
	cin => \serialClkCount[9]~22\,
	combout => \serialClkCount[10]~23_combout\,
	cout => \serialClkCount[10]~24\);

-- Location: FF_X3_Y11_N15
\serialClkCount[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fClk_50MHz~inputclkctrl_outclk\,
	d => \serialClkCount[10]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => serialClkCount(10));

-- Location: LCCOMB_X3_Y11_N16
\serialClkCount[11]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \serialClkCount[11]~25_combout\ = (serialClkCount(11) & (\serialClkCount[10]~24\ & VCC)) # (!serialClkCount(11) & (!\serialClkCount[10]~24\))
-- \serialClkCount[11]~26\ = CARRY((!serialClkCount(11) & !\serialClkCount[10]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => serialClkCount(11),
	datad => VCC,
	cin => \serialClkCount[10]~24\,
	combout => \serialClkCount[11]~25_combout\,
	cout => \serialClkCount[11]~26\);

-- Location: FF_X3_Y11_N17
\serialClkCount[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fClk_50MHz~inputclkctrl_outclk\,
	d => \serialClkCount[11]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => serialClkCount(11));

-- Location: LCCOMB_X3_Y11_N18
\serialClkCount[12]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \serialClkCount[12]~27_combout\ = (serialClkCount(12) & (\serialClkCount[11]~26\ $ (GND))) # (!serialClkCount(12) & (!\serialClkCount[11]~26\ & VCC))
-- \serialClkCount[12]~28\ = CARRY((serialClkCount(12) & !\serialClkCount[11]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => serialClkCount(12),
	datad => VCC,
	cin => \serialClkCount[11]~26\,
	combout => \serialClkCount[12]~27_combout\,
	cout => \serialClkCount[12]~28\);

-- Location: FF_X3_Y11_N19
\serialClkCount[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fClk_50MHz~inputclkctrl_outclk\,
	d => \serialClkCount[12]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => serialClkCount(12));

-- Location: LCCOMB_X3_Y11_N20
\serialClkCount[13]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \serialClkCount[13]~29_combout\ = (serialClkCount(13) & (!\serialClkCount[12]~28\)) # (!serialClkCount(13) & ((\serialClkCount[12]~28\) # (GND)))
-- \serialClkCount[13]~30\ = CARRY((!\serialClkCount[12]~28\) # (!serialClkCount(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => serialClkCount(13),
	datad => VCC,
	cin => \serialClkCount[12]~28\,
	combout => \serialClkCount[13]~29_combout\,
	cout => \serialClkCount[13]~30\);

-- Location: FF_X3_Y11_N21
\serialClkCount[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fClk_50MHz~inputclkctrl_outclk\,
	d => \serialClkCount[13]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => serialClkCount(13));

-- Location: LCCOMB_X3_Y11_N22
\serialClkCount[14]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \serialClkCount[14]~31_combout\ = (serialClkCount(14) & (\serialClkCount[13]~30\ $ (GND))) # (!serialClkCount(14) & (!\serialClkCount[13]~30\ & VCC))
-- \serialClkCount[14]~32\ = CARRY((serialClkCount(14) & !\serialClkCount[13]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => serialClkCount(14),
	datad => VCC,
	cin => \serialClkCount[13]~30\,
	combout => \serialClkCount[14]~31_combout\,
	cout => \serialClkCount[14]~32\);

-- Location: FF_X3_Y11_N23
\serialClkCount[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fClk_50MHz~inputclkctrl_outclk\,
	d => \serialClkCount[14]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => serialClkCount(14));

-- Location: LCCOMB_X3_Y11_N24
\serialClkCount[15]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \serialClkCount[15]~33_combout\ = \serialClkCount[14]~32\ $ (serialClkCount(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => serialClkCount(15),
	cin => \serialClkCount[14]~32\,
	combout => \serialClkCount[15]~33_combout\);

-- Location: FF_X3_Y11_N25
\serialClkCount[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fClk_50MHz~input_o\,
	d => \serialClkCount[15]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => serialClkCount(15));

-- Location: CLKCTRL_G1
\serialClkCount[15]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \serialClkCount[15]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \serialClkCount[15]~clkctrl_outclk\);

-- Location: LCCOMB_X14_Y8_N14
\io3|rxInPointer[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxInPointer[0]~7_combout\ = \io3|rxInPointer\(0) $ (VCC)
-- \io3|rxInPointer[0]~8\ = CARRY(\io3|rxInPointer\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \io3|rxInPointer\(0),
	datad => VCC,
	combout => \io3|rxInPointer[0]~7_combout\,
	cout => \io3|rxInPointer[0]~8\);

-- Location: LCCOMB_X14_Y8_N16
\io3|rxInPointer[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxInPointer[1]~10_combout\ = (\io3|rxInPointer\(1) & (!\io3|rxInPointer[0]~8\)) # (!\io3|rxInPointer\(1) & ((\io3|rxInPointer[0]~8\) # (GND)))
-- \io3|rxInPointer[1]~11\ = CARRY((!\io3|rxInPointer[0]~8\) # (!\io3|rxInPointer\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \io3|rxInPointer\(1),
	datad => VCC,
	cin => \io3|rxInPointer[0]~8\,
	combout => \io3|rxInPointer[1]~10_combout\,
	cout => \io3|rxInPointer[1]~11\);

-- Location: LCCOMB_X14_Y8_N18
\io3|rxInPointer[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxInPointer[2]~12_combout\ = (\io3|rxInPointer\(2) & (\io3|rxInPointer[1]~11\ $ (GND))) # (!\io3|rxInPointer\(2) & (!\io3|rxInPointer[1]~11\ & VCC))
-- \io3|rxInPointer[2]~13\ = CARRY((\io3|rxInPointer\(2) & !\io3|rxInPointer[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \io3|rxInPointer\(2),
	datad => VCC,
	cin => \io3|rxInPointer[1]~11\,
	combout => \io3|rxInPointer[2]~12_combout\,
	cout => \io3|rxInPointer[2]~13\);

-- Location: LCCOMB_X24_Y11_N22
\comb~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~3_combout\ = LCELL(((\fnWr~input_o\) # (!\nButtoncs~0_combout\)) # (!\nSerialcs~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \nSerialcs~0_combout\,
	datac => \fnWr~input_o\,
	datad => \nButtoncs~0_combout\,
	combout => \comb~3_combout\);

-- Location: IOIBUF_X32_Y0_N22
\fData[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => fData(1),
	o => \fData[1]~input_o\);

-- Location: LCCOMB_X13_Y16_N26
\io3|reset~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|reset~0_combout\ = (\fData[0]~input_o\ & (!\fAddress[0]~input_o\ & (!\comb~3_combout\ & \fData[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fData[0]~input_o\,
	datab => \fAddress[0]~input_o\,
	datac => \comb~3_combout\,
	datad => \fData[1]~input_o\,
	combout => \io3|reset~0_combout\);

-- Location: LCCOMB_X17_Y8_N2
\io3|rxClockCount[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxClockCount[0]~6_combout\ = \io3|rxClockCount\(0) $ (VCC)
-- \io3|rxClockCount[0]~7\ = CARRY(\io3|rxClockCount\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \io3|rxClockCount\(0),
	datad => VCC,
	combout => \io3|rxClockCount[0]~6_combout\,
	cout => \io3|rxClockCount[0]~7\);

-- Location: CLKCTRL_G0
\io3|reset~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \io3|reset~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \io3|reset~0clkctrl_outclk\);

-- Location: LCCOMB_X17_Y8_N24
\io3|Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|Equal4~0_combout\ = (!\io3|rxClockCount\(4) & (\io3|rxClockCount\(2) & (\io3|rxClockCount\(1) & \io3|rxClockCount\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|rxClockCount\(4),
	datab => \io3|rxClockCount\(2),
	datac => \io3|rxClockCount\(1),
	datad => \io3|rxClockCount\(0),
	combout => \io3|Equal4~0_combout\);

-- Location: LCCOMB_X17_Y8_N22
\io3|Equal4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|Equal4~1_combout\ = (!\io3|rxClockCount\(5) & \io3|Equal4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|rxClockCount\(5),
	datad => \io3|Equal4~0_combout\,
	combout => \io3|Equal4~1_combout\);

-- Location: LCCOMB_X17_Y10_N0
\io3|rxFilter[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxFilter[0]~6_combout\ = \io3|rxFilter\(0) $ (VCC)
-- \io3|rxFilter[0]~7\ = CARRY(\io3|rxFilter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \io3|rxFilter\(0),
	datad => VCC,
	combout => \io3|rxFilter[0]~6_combout\,
	cout => \io3|rxFilter[0]~7\);

-- Location: IOIBUF_X30_Y24_N22
\fRxd~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fRxd,
	o => \fRxd~input_o\);

-- Location: LCCOMB_X17_Y10_N2
\io3|rxFilter[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxFilter[1]~9_combout\ = (\io3|process_1~4_combout\ & ((\io3|rxFilter\(1) & (!\io3|rxFilter[0]~7\)) # (!\io3|rxFilter\(1) & ((\io3|rxFilter[0]~7\) # (GND))))) # (!\io3|process_1~4_combout\ & ((\io3|rxFilter\(1) & (\io3|rxFilter[0]~7\ & VCC)) # 
-- (!\io3|rxFilter\(1) & (!\io3|rxFilter[0]~7\))))
-- \io3|rxFilter[1]~10\ = CARRY((\io3|process_1~4_combout\ & ((!\io3|rxFilter[0]~7\) # (!\io3|rxFilter\(1)))) # (!\io3|process_1~4_combout\ & (!\io3|rxFilter\(1) & !\io3|rxFilter[0]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \io3|process_1~4_combout\,
	datab => \io3|rxFilter\(1),
	datad => VCC,
	cin => \io3|rxFilter[0]~7\,
	combout => \io3|rxFilter[1]~9_combout\,
	cout => \io3|rxFilter[1]~10\);

-- Location: LCCOMB_X17_Y10_N4
\io3|rxFilter[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxFilter[2]~11_combout\ = ((\io3|process_1~4_combout\ $ (\io3|rxFilter\(2) $ (\io3|rxFilter[1]~10\)))) # (GND)
-- \io3|rxFilter[2]~12\ = CARRY((\io3|process_1~4_combout\ & (\io3|rxFilter\(2) & !\io3|rxFilter[1]~10\)) # (!\io3|process_1~4_combout\ & ((\io3|rxFilter\(2)) # (!\io3|rxFilter[1]~10\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \io3|process_1~4_combout\,
	datab => \io3|rxFilter\(2),
	datad => VCC,
	cin => \io3|rxFilter[1]~10\,
	combout => \io3|rxFilter[2]~11_combout\,
	cout => \io3|rxFilter[2]~12\);

-- Location: FF_X17_Y10_N5
\io3|rxFilter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_fClk_50MHz~inputclkctrl_outclk\,
	d => \io3|rxFilter[2]~11_combout\,
	ena => \io3|rxFilter[3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxFilter\(2));

-- Location: LCCOMB_X17_Y10_N6
\io3|rxFilter[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxFilter[3]~13_combout\ = (\io3|rxFilter\(3) & ((\io3|process_1~4_combout\ & (!\io3|rxFilter[2]~12\)) # (!\io3|process_1~4_combout\ & (\io3|rxFilter[2]~12\ & VCC)))) # (!\io3|rxFilter\(3) & ((\io3|process_1~4_combout\ & ((\io3|rxFilter[2]~12\) # 
-- (GND))) # (!\io3|process_1~4_combout\ & (!\io3|rxFilter[2]~12\))))
-- \io3|rxFilter[3]~14\ = CARRY((\io3|rxFilter\(3) & (\io3|process_1~4_combout\ & !\io3|rxFilter[2]~12\)) # (!\io3|rxFilter\(3) & ((\io3|process_1~4_combout\) # (!\io3|rxFilter[2]~12\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \io3|rxFilter\(3),
	datab => \io3|process_1~4_combout\,
	datad => VCC,
	cin => \io3|rxFilter[2]~12\,
	combout => \io3|rxFilter[3]~13_combout\,
	cout => \io3|rxFilter[3]~14\);

-- Location: FF_X17_Y10_N7
\io3|rxFilter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_fClk_50MHz~inputclkctrl_outclk\,
	d => \io3|rxFilter[3]~13_combout\,
	ena => \io3|rxFilter[3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxFilter\(3));

-- Location: LCCOMB_X17_Y10_N8
\io3|rxFilter[4]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxFilter[4]~15_combout\ = ((\io3|process_1~4_combout\ $ (\io3|rxFilter\(4) $ (\io3|rxFilter[3]~14\)))) # (GND)
-- \io3|rxFilter[4]~16\ = CARRY((\io3|process_1~4_combout\ & (\io3|rxFilter\(4) & !\io3|rxFilter[3]~14\)) # (!\io3|process_1~4_combout\ & ((\io3|rxFilter\(4)) # (!\io3|rxFilter[3]~14\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \io3|process_1~4_combout\,
	datab => \io3|rxFilter\(4),
	datad => VCC,
	cin => \io3|rxFilter[3]~14\,
	combout => \io3|rxFilter[4]~15_combout\,
	cout => \io3|rxFilter[4]~16\);

-- Location: FF_X17_Y10_N9
\io3|rxFilter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_fClk_50MHz~inputclkctrl_outclk\,
	d => \io3|rxFilter[4]~15_combout\,
	ena => \io3|rxFilter[3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxFilter\(4));

-- Location: LCCOMB_X17_Y10_N16
\io3|process_1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|process_1~3_combout\ = (!\io3|rxFilter\(4) & !\io3|rxFilter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \io3|rxFilter\(4),
	datad => \io3|rxFilter\(1),
	combout => \io3|process_1~3_combout\);

-- Location: LCCOMB_X17_Y10_N10
\io3|rxFilter[5]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxFilter[5]~17_combout\ = \io3|process_1~4_combout\ $ (\io3|rxFilter[4]~16\ $ (!\io3|rxFilter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \io3|process_1~4_combout\,
	datad => \io3|rxFilter\(5),
	cin => \io3|rxFilter[4]~16\,
	combout => \io3|rxFilter[5]~17_combout\);

-- Location: FF_X17_Y10_N11
\io3|rxFilter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_fClk_50MHz~inputclkctrl_outclk\,
	d => \io3|rxFilter[5]~17_combout\,
	ena => \io3|rxFilter[3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxFilter\(5));

-- Location: LCCOMB_X17_Y10_N26
\io3|process_1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|process_1~4_combout\ = (\fRxd~input_o\) # ((\io3|process_1~0_combout\ & (\io3|process_1~3_combout\ & !\io3|rxFilter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|process_1~0_combout\,
	datab => \io3|process_1~3_combout\,
	datac => \fRxd~input_o\,
	datad => \io3|rxFilter\(5),
	combout => \io3|process_1~4_combout\);

-- Location: FF_X17_Y10_N3
\io3|rxFilter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_fClk_50MHz~inputclkctrl_outclk\,
	d => \io3|rxFilter[1]~9_combout\,
	ena => \io3|rxFilter[3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxFilter\(1));

-- Location: LCCOMB_X17_Y10_N24
\io3|process_1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|process_1~1_combout\ = (\io3|rxFilter\(1) & (\io3|rxFilter\(4) & \io3|rxFilter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \io3|rxFilter\(1),
	datac => \io3|rxFilter\(4),
	datad => \io3|rxFilter\(5),
	combout => \io3|process_1~1_combout\);

-- Location: LCCOMB_X17_Y10_N30
\io3|rxFilter[3]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxFilter[3]~8_combout\ = (\fRxd~input_o\ & (((!\io3|process_1~1_combout\)) # (!\io3|process_1~0_combout\))) # (!\fRxd~input_o\ & (((!\io3|process_1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|process_1~0_combout\,
	datab => \io3|process_1~2_combout\,
	datac => \fRxd~input_o\,
	datad => \io3|process_1~1_combout\,
	combout => \io3|rxFilter[3]~8_combout\);

-- Location: FF_X17_Y10_N1
\io3|rxFilter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_fClk_50MHz~inputclkctrl_outclk\,
	d => \io3|rxFilter[0]~6_combout\,
	ena => \io3|rxFilter[3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxFilter\(0));

-- Location: LCCOMB_X17_Y10_N22
\io3|process_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|process_1~0_combout\ = (!\io3|rxFilter\(0) & (!\io3|rxFilter\(2) & !\io3|rxFilter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \io3|rxFilter\(0),
	datac => \io3|rxFilter\(2),
	datad => \io3|rxFilter\(3),
	combout => \io3|process_1~0_combout\);

-- Location: LCCOMB_X17_Y10_N28
\io3|process_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|process_1~2_combout\ = (\io3|process_1~0_combout\ & (!\io3|rxFilter\(1) & (!\io3|rxFilter\(4) & !\io3|rxFilter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|process_1~0_combout\,
	datab => \io3|rxFilter\(1),
	datac => \io3|rxFilter\(4),
	datad => \io3|rxFilter\(5),
	combout => \io3|process_1~2_combout\);

-- Location: LCCOMB_X17_Y10_N18
\io3|rxdFiltered~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxdFiltered~0_combout\ = ((\io3|process_1~0_combout\ & (\io3|process_1~1_combout\ & \fRxd~input_o\))) # (!\io3|rxdFiltered~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|process_1~0_combout\,
	datab => \io3|process_1~1_combout\,
	datac => \fRxd~input_o\,
	datad => \io3|rxdFiltered~q\,
	combout => \io3|rxdFiltered~0_combout\);

-- Location: LCCOMB_X17_Y10_N20
\io3|rxdFiltered~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxdFiltered~1_combout\ = ((\io3|process_1~2_combout\ & !\fRxd~input_o\)) # (!\io3|rxdFiltered~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \io3|process_1~2_combout\,
	datac => \fRxd~input_o\,
	datad => \io3|rxdFiltered~0_combout\,
	combout => \io3|rxdFiltered~1_combout\);

-- Location: FF_X17_Y10_N21
\io3|rxdFiltered\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_fClk_50MHz~inputclkctrl_outclk\,
	d => \io3|rxdFiltered~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxdFiltered~q\);

-- Location: LCCOMB_X17_Y8_N20
\io3|Selector12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|Selector12~2_combout\ = (!\io3|rxClockCount\(5) & (\io3|rxdFiltered~q\ & (!\io3|rxClockCount\(3) & \io3|Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|rxClockCount\(5),
	datab => \io3|rxdFiltered~q\,
	datac => \io3|rxClockCount\(3),
	datad => \io3|Equal4~0_combout\,
	combout => \io3|Selector12~2_combout\);

-- Location: LCCOMB_X17_Y8_N16
\io3|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|Selector10~0_combout\ = (!\io3|rxInPointer[5]~6_combout\ & ((\io3|Selector12~2_combout\) # (\io3|rxState.idle~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \io3|Selector12~2_combout\,
	datac => \io3|rxState.idle~q\,
	datad => \io3|rxInPointer[5]~6_combout\,
	combout => \io3|Selector10~0_combout\);

-- Location: FF_X17_Y8_N17
\io3|rxState.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	d => \io3|Selector10~0_combout\,
	clrn => \io3|ALT_INV_reset~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxState.idle~q\);

-- Location: LCCOMB_X17_Y8_N18
\io3|rxClockCount[0]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxClockCount[0]~14_combout\ = (\io3|rxState.idle~q\ & (\io3|Equal4~1_combout\ & ((\io3|rxClockCount\(3))))) # (!\io3|rxState.idle~q\ & (((\io3|Equal4~1_combout\ & !\io3|rxClockCount\(3))) # (!\io3|rxdFiltered~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|Equal4~1_combout\,
	datab => \io3|rxdFiltered~q\,
	datac => \io3|rxClockCount\(3),
	datad => \io3|rxState.idle~q\,
	combout => \io3|rxClockCount[0]~14_combout\);

-- Location: FF_X17_Y8_N3
\io3|rxClockCount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	d => \io3|rxClockCount[0]~6_combout\,
	clrn => \io3|ALT_INV_reset~0clkctrl_outclk\,
	sclr => \io3|rxClockCount[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxClockCount\(0));

-- Location: LCCOMB_X17_Y8_N4
\io3|rxClockCount[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxClockCount[1]~8_combout\ = (\io3|rxClockCount\(1) & (!\io3|rxClockCount[0]~7\)) # (!\io3|rxClockCount\(1) & ((\io3|rxClockCount[0]~7\) # (GND)))
-- \io3|rxClockCount[1]~9\ = CARRY((!\io3|rxClockCount[0]~7\) # (!\io3|rxClockCount\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \io3|rxClockCount\(1),
	datad => VCC,
	cin => \io3|rxClockCount[0]~7\,
	combout => \io3|rxClockCount[1]~8_combout\,
	cout => \io3|rxClockCount[1]~9\);

-- Location: FF_X17_Y8_N5
\io3|rxClockCount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	d => \io3|rxClockCount[1]~8_combout\,
	clrn => \io3|ALT_INV_reset~0clkctrl_outclk\,
	sclr => \io3|rxClockCount[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxClockCount\(1));

-- Location: LCCOMB_X17_Y8_N6
\io3|rxClockCount[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxClockCount[2]~10_combout\ = (\io3|rxClockCount\(2) & (\io3|rxClockCount[1]~9\ $ (GND))) # (!\io3|rxClockCount\(2) & (!\io3|rxClockCount[1]~9\ & VCC))
-- \io3|rxClockCount[2]~11\ = CARRY((\io3|rxClockCount\(2) & !\io3|rxClockCount[1]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \io3|rxClockCount\(2),
	datad => VCC,
	cin => \io3|rxClockCount[1]~9\,
	combout => \io3|rxClockCount[2]~10_combout\,
	cout => \io3|rxClockCount[2]~11\);

-- Location: FF_X17_Y8_N7
\io3|rxClockCount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	d => \io3|rxClockCount[2]~10_combout\,
	clrn => \io3|ALT_INV_reset~0clkctrl_outclk\,
	sclr => \io3|rxClockCount[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxClockCount\(2));

-- Location: LCCOMB_X17_Y8_N8
\io3|rxClockCount[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxClockCount[3]~12_combout\ = (\io3|rxClockCount\(3) & (!\io3|rxClockCount[2]~11\)) # (!\io3|rxClockCount\(3) & ((\io3|rxClockCount[2]~11\) # (GND)))
-- \io3|rxClockCount[3]~13\ = CARRY((!\io3|rxClockCount[2]~11\) # (!\io3|rxClockCount\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \io3|rxClockCount\(3),
	datad => VCC,
	cin => \io3|rxClockCount[2]~11\,
	combout => \io3|rxClockCount[3]~12_combout\,
	cout => \io3|rxClockCount[3]~13\);

-- Location: FF_X17_Y8_N9
\io3|rxClockCount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	d => \io3|rxClockCount[3]~12_combout\,
	clrn => \io3|ALT_INV_reset~0clkctrl_outclk\,
	sclr => \io3|rxClockCount[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxClockCount\(3));

-- Location: LCCOMB_X17_Y8_N10
\io3|rxClockCount[4]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxClockCount[4]~15_combout\ = (\io3|rxClockCount\(4) & (\io3|rxClockCount[3]~13\ $ (GND))) # (!\io3|rxClockCount\(4) & (!\io3|rxClockCount[3]~13\ & VCC))
-- \io3|rxClockCount[4]~16\ = CARRY((\io3|rxClockCount\(4) & !\io3|rxClockCount[3]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \io3|rxClockCount\(4),
	datad => VCC,
	cin => \io3|rxClockCount[3]~13\,
	combout => \io3|rxClockCount[4]~15_combout\,
	cout => \io3|rxClockCount[4]~16\);

-- Location: FF_X17_Y8_N11
\io3|rxClockCount[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	d => \io3|rxClockCount[4]~15_combout\,
	clrn => \io3|ALT_INV_reset~0clkctrl_outclk\,
	sclr => \io3|rxClockCount[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxClockCount\(4));

-- Location: LCCOMB_X17_Y8_N12
\io3|rxClockCount[5]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxClockCount[5]~17_combout\ = \io3|rxClockCount[4]~16\ $ (\io3|rxClockCount\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \io3|rxClockCount\(5),
	cin => \io3|rxClockCount[4]~16\,
	combout => \io3|rxClockCount[5]~17_combout\);

-- Location: FF_X17_Y8_N13
\io3|rxClockCount[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	d => \io3|rxClockCount[5]~17_combout\,
	clrn => \io3|ALT_INV_reset~0clkctrl_outclk\,
	sclr => \io3|rxClockCount[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxClockCount\(5));

-- Location: LCCOMB_X17_Y8_N26
\io3|Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|Selector11~0_combout\ = (!\io3|rxInPointer[5]~6_combout\ & ((\io3|Selector12~3_combout\ & ((\io3|rxState.dataBit~q\))) # (!\io3|Selector12~3_combout\ & (!\io3|Selector12~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|Selector12~3_combout\,
	datab => \io3|Selector12~1_combout\,
	datac => \io3|rxState.dataBit~q\,
	datad => \io3|rxInPointer[5]~6_combout\,
	combout => \io3|Selector11~0_combout\);

-- Location: FF_X17_Y8_N27
\io3|rxState.dataBit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	d => \io3|Selector11~0_combout\,
	clrn => \io3|ALT_INV_reset~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxState.dataBit~q\);

-- Location: LCCOMB_X17_Y8_N28
\io3|rxCurrentByteBuffer[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxCurrentByteBuffer[0]~0_combout\ = (!\io3|rxClockCount\(5) & (\io3|rxClockCount\(3) & (\io3|rxState.dataBit~q\ & \io3|Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|rxClockCount\(5),
	datab => \io3|rxClockCount\(3),
	datac => \io3|rxState.dataBit~q\,
	datad => \io3|Equal4~0_combout\,
	combout => \io3|rxCurrentByteBuffer[0]~0_combout\);

-- Location: LCCOMB_X16_Y8_N22
\io3|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|Selector3~0_combout\ = (!\io3|rxBitCount\(0) & \io3|rxState.dataBit~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \io3|rxBitCount\(0),
	datad => \io3|rxState.dataBit~q\,
	combout => \io3|Selector3~0_combout\);

-- Location: LCCOMB_X16_Y8_N6
\io3|rxBitCount[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBitCount[0]~0_combout\ = (\io3|rxCurrentByteBuffer[0]~0_combout\) # ((!\io3|rxdFiltered~q\ & !\io3|rxState.idle~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \io3|rxCurrentByteBuffer[0]~0_combout\,
	datac => \io3|rxdFiltered~q\,
	datad => \io3|rxState.idle~q\,
	combout => \io3|rxBitCount[0]~0_combout\);

-- Location: FF_X16_Y8_N23
\io3|rxBitCount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	d => \io3|Selector3~0_combout\,
	clrn => \io3|ALT_INV_reset~0clkctrl_outclk\,
	ena => \io3|rxBitCount[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxBitCount\(0));

-- Location: LCCOMB_X16_Y8_N12
\io3|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|Selector2~0_combout\ = (\io3|rxState.dataBit~q\ & (\io3|rxBitCount\(0) $ (\io3|rxBitCount\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|rxBitCount\(0),
	datac => \io3|rxBitCount\(1),
	datad => \io3|rxState.dataBit~q\,
	combout => \io3|Selector2~0_combout\);

-- Location: FF_X16_Y8_N13
\io3|rxBitCount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	d => \io3|Selector2~0_combout\,
	clrn => \io3|ALT_INV_reset~0clkctrl_outclk\,
	ena => \io3|rxBitCount[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxBitCount\(1));

-- Location: LCCOMB_X16_Y8_N26
\io3|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|Selector1~0_combout\ = (\io3|rxState.dataBit~q\ & (\io3|rxBitCount\(2) $ (((\io3|rxBitCount\(0) & \io3|rxBitCount\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|rxBitCount\(0),
	datab => \io3|rxBitCount\(1),
	datac => \io3|rxBitCount\(2),
	datad => \io3|rxState.dataBit~q\,
	combout => \io3|Selector1~0_combout\);

-- Location: FF_X16_Y8_N27
\io3|rxBitCount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	d => \io3|Selector1~0_combout\,
	clrn => \io3|ALT_INV_reset~0clkctrl_outclk\,
	ena => \io3|rxBitCount[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxBitCount\(2));

-- Location: LCCOMB_X16_Y8_N0
\io3|Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|Selector12~0_combout\ = (\io3|rxBitCount\(0) & (\io3|rxBitCount\(1) & \io3|rxBitCount\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|rxBitCount\(0),
	datab => \io3|rxBitCount\(1),
	datac => \io3|rxBitCount\(2),
	combout => \io3|Selector12~0_combout\);

-- Location: LCCOMB_X16_Y8_N2
\io3|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|Selector0~0_combout\ = (\io3|rxState.dataBit~q\ & (\io3|Selector12~0_combout\ $ (\io3|rxBitCount\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \io3|Selector12~0_combout\,
	datac => \io3|rxBitCount\(3),
	datad => \io3|rxState.dataBit~q\,
	combout => \io3|Selector0~0_combout\);

-- Location: FF_X16_Y8_N3
\io3|rxBitCount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	d => \io3|Selector0~0_combout\,
	clrn => \io3|ALT_INV_reset~0clkctrl_outclk\,
	ena => \io3|rxBitCount[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxBitCount\(3));

-- Location: LCCOMB_X16_Y8_N20
\io3|Selector12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|Selector12~1_combout\ = (\io3|rxCurrentByteBuffer[0]~0_combout\ & (\io3|Selector12~0_combout\ & !\io3|rxBitCount\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \io3|rxCurrentByteBuffer[0]~0_combout\,
	datac => \io3|Selector12~0_combout\,
	datad => \io3|rxBitCount\(3),
	combout => \io3|Selector12~1_combout\);

-- Location: LCCOMB_X17_Y8_N30
\io3|Selector12~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|Selector12~3_combout\ = (!\io3|Selector12~1_combout\ & ((\io3|rxState.idle~q\) # (!\io3|Selector12~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \io3|Selector12~2_combout\,
	datac => \io3|Selector12~1_combout\,
	datad => \io3|rxState.idle~q\,
	combout => \io3|Selector12~3_combout\);

-- Location: LCCOMB_X17_Y8_N14
\io3|Selector12~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|Selector12~4_combout\ = (!\io3|rxInPointer[5]~6_combout\ & ((\io3|Selector12~3_combout\ & ((\io3|rxState.stopBit~q\))) # (!\io3|Selector12~3_combout\ & (\io3|Selector12~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|Selector12~3_combout\,
	datab => \io3|Selector12~1_combout\,
	datac => \io3|rxState.stopBit~q\,
	datad => \io3|rxInPointer[5]~6_combout\,
	combout => \io3|Selector12~4_combout\);

-- Location: FF_X17_Y8_N15
\io3|rxState.stopBit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	d => \io3|Selector12~4_combout\,
	clrn => \io3|ALT_INV_reset~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxState.stopBit~q\);

-- Location: LCCOMB_X17_Y8_N0
\io3|rxInPointer[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxInPointer[5]~6_combout\ = (!\io3|rxClockCount\(5) & (\io3|rxState.stopBit~q\ & (\io3|rxClockCount\(3) & \io3|Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|rxClockCount\(5),
	datab => \io3|rxState.stopBit~q\,
	datac => \io3|rxClockCount\(3),
	datad => \io3|Equal4~0_combout\,
	combout => \io3|rxInPointer[5]~6_combout\);

-- Location: LCCOMB_X14_Y8_N28
\io3|rxInPointer[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxInPointer[5]~9_combout\ = (!\io3|reset~0_combout\ & \io3|rxInPointer[5]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \io3|reset~0_combout\,
	datad => \io3|rxInPointer[5]~6_combout\,
	combout => \io3|rxInPointer[5]~9_combout\);

-- Location: FF_X14_Y8_N19
\io3|rxInPointer[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	d => \io3|rxInPointer[2]~12_combout\,
	sclr => \io3|LessThan4~1_combout\,
	ena => \io3|rxInPointer[5]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxInPointer\(2));

-- Location: LCCOMB_X14_Y8_N20
\io3|rxInPointer[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxInPointer[3]~14_combout\ = (\io3|rxInPointer\(3) & (!\io3|rxInPointer[2]~13\)) # (!\io3|rxInPointer\(3) & ((\io3|rxInPointer[2]~13\) # (GND)))
-- \io3|rxInPointer[3]~15\ = CARRY((!\io3|rxInPointer[2]~13\) # (!\io3|rxInPointer\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \io3|rxInPointer\(3),
	datad => VCC,
	cin => \io3|rxInPointer[2]~13\,
	combout => \io3|rxInPointer[3]~14_combout\,
	cout => \io3|rxInPointer[3]~15\);

-- Location: FF_X14_Y8_N21
\io3|rxInPointer[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	d => \io3|rxInPointer[3]~14_combout\,
	sclr => \io3|LessThan4~1_combout\,
	ena => \io3|rxInPointer[5]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxInPointer\(3));

-- Location: LCCOMB_X14_Y8_N0
\io3|LessThan4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|LessThan4~0_combout\ = (((!\io3|rxInPointer\(1)) # (!\io3|rxInPointer\(0))) # (!\io3|rxInPointer\(2))) # (!\io3|rxInPointer\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|rxInPointer\(3),
	datab => \io3|rxInPointer\(2),
	datac => \io3|rxInPointer\(0),
	datad => \io3|rxInPointer\(1),
	combout => \io3|LessThan4~0_combout\);

-- Location: LCCOMB_X14_Y8_N22
\io3|rxInPointer[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxInPointer[4]~16_combout\ = (\io3|rxInPointer\(4) & (\io3|rxInPointer[3]~15\ $ (GND))) # (!\io3|rxInPointer\(4) & (!\io3|rxInPointer[3]~15\ & VCC))
-- \io3|rxInPointer[4]~17\ = CARRY((\io3|rxInPointer\(4) & !\io3|rxInPointer[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \io3|rxInPointer\(4),
	datad => VCC,
	cin => \io3|rxInPointer[3]~15\,
	combout => \io3|rxInPointer[4]~16_combout\,
	cout => \io3|rxInPointer[4]~17\);

-- Location: FF_X14_Y8_N23
\io3|rxInPointer[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	d => \io3|rxInPointer[4]~16_combout\,
	sclr => \io3|LessThan4~1_combout\,
	ena => \io3|rxInPointer[5]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxInPointer\(4));

-- Location: LCCOMB_X14_Y8_N24
\io3|rxInPointer[5]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxInPointer[5]~18_combout\ = \io3|rxInPointer[4]~17\ $ (\io3|rxInPointer\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \io3|rxInPointer\(5),
	cin => \io3|rxInPointer[4]~17\,
	combout => \io3|rxInPointer[5]~18_combout\);

-- Location: FF_X14_Y8_N25
\io3|rxInPointer[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	d => \io3|rxInPointer[5]~18_combout\,
	sclr => \io3|LessThan4~1_combout\,
	ena => \io3|rxInPointer[5]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxInPointer\(5));

-- Location: LCCOMB_X14_Y8_N26
\io3|LessThan4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|LessThan4~1_combout\ = ((\io3|rxInPointer\(4)) # (\io3|rxInPointer\(5))) # (!\io3|LessThan4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \io3|LessThan4~0_combout\,
	datac => \io3|rxInPointer\(4),
	datad => \io3|rxInPointer\(5),
	combout => \io3|LessThan4~1_combout\);

-- Location: FF_X14_Y8_N15
\io3|rxInPointer[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	d => \io3|rxInPointer[0]~7_combout\,
	sclr => \io3|LessThan4~1_combout\,
	ena => \io3|rxInPointer[5]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxInPointer\(0));

-- Location: FF_X14_Y8_N17
\io3|rxInPointer[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	d => \io3|rxInPointer[1]~10_combout\,
	sclr => \io3|LessThan4~1_combout\,
	ena => \io3|rxInPointer[5]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxInPointer\(1));

-- Location: LCCOMB_X14_Y11_N26
\io3|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|Equal0~0_combout\ = (\io3|rxReadPointer\(1) & (\io3|rxInPointer\(1) & (\io3|rxInPointer\(0) $ (!\io3|rxReadPointer\(0))))) # (!\io3|rxReadPointer\(1) & (!\io3|rxInPointer\(1) & (\io3|rxInPointer\(0) $ (!\io3|rxReadPointer\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|rxReadPointer\(1),
	datab => \io3|rxInPointer\(1),
	datac => \io3|rxInPointer\(0),
	datad => \io3|rxReadPointer\(0),
	combout => \io3|Equal0~0_combout\);

-- Location: LCCOMB_X14_Y11_N28
\io3|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|Equal0~1_combout\ = (\io3|rxReadPointer\(2) & (\io3|rxInPointer\(2) & (\io3|rxReadPointer\(3) $ (!\io3|rxInPointer\(3))))) # (!\io3|rxReadPointer\(2) & (!\io3|rxInPointer\(2) & (\io3|rxReadPointer\(3) $ (!\io3|rxInPointer\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|rxReadPointer\(2),
	datab => \io3|rxInPointer\(2),
	datac => \io3|rxReadPointer\(3),
	datad => \io3|rxInPointer\(3),
	combout => \io3|Equal0~1_combout\);

-- Location: LCCOMB_X14_Y11_N14
\io3|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|Equal0~2_combout\ = (\io3|rxReadPointer\(5) & (\io3|rxInPointer\(5) & (\io3|rxInPointer\(4) $ (!\io3|rxReadPointer\(4))))) # (!\io3|rxReadPointer\(5) & (!\io3|rxInPointer\(5) & (\io3|rxInPointer\(4) $ (!\io3|rxReadPointer\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|rxReadPointer\(5),
	datab => \io3|rxInPointer\(5),
	datac => \io3|rxInPointer\(4),
	datad => \io3|rxReadPointer\(4),
	combout => \io3|Equal0~2_combout\);

-- Location: LCCOMB_X14_Y11_N22
\io3|rxReadPointer[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxReadPointer[5]~10_combout\ = (\fAddress[0]~input_o\ & (((!\io3|Equal0~2_combout\) # (!\io3|Equal0~1_combout\)) # (!\io3|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|Equal0~0_combout\,
	datab => \io3|Equal0~1_combout\,
	datac => \io3|Equal0~2_combout\,
	datad => \fAddress[0]~input_o\,
	combout => \io3|rxReadPointer[5]~10_combout\);

-- Location: FF_X14_Y11_N7
\io3|rxReadPointer[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_comb~2clkctrl_outclk\,
	d => \io3|rxReadPointer[2]~11_combout\,
	sclr => \io3|LessThan3~1_combout\,
	ena => \io3|rxReadPointer[5]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxReadPointer\(2));

-- Location: LCCOMB_X14_Y11_N8
\io3|rxReadPointer[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxReadPointer[3]~13_combout\ = (\io3|rxReadPointer\(3) & (!\io3|rxReadPointer[2]~12\)) # (!\io3|rxReadPointer\(3) & ((\io3|rxReadPointer[2]~12\) # (GND)))
-- \io3|rxReadPointer[3]~14\ = CARRY((!\io3|rxReadPointer[2]~12\) # (!\io3|rxReadPointer\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \io3|rxReadPointer\(3),
	datad => VCC,
	cin => \io3|rxReadPointer[2]~12\,
	combout => \io3|rxReadPointer[3]~13_combout\,
	cout => \io3|rxReadPointer[3]~14\);

-- Location: FF_X14_Y11_N9
\io3|rxReadPointer[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_comb~2clkctrl_outclk\,
	d => \io3|rxReadPointer[3]~13_combout\,
	sclr => \io3|LessThan3~1_combout\,
	ena => \io3|rxReadPointer[5]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxReadPointer\(3));

-- Location: LCCOMB_X14_Y11_N10
\io3|rxReadPointer[4]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxReadPointer[4]~15_combout\ = (\io3|rxReadPointer\(4) & (\io3|rxReadPointer[3]~14\ $ (GND))) # (!\io3|rxReadPointer\(4) & (!\io3|rxReadPointer[3]~14\ & VCC))
-- \io3|rxReadPointer[4]~16\ = CARRY((\io3|rxReadPointer\(4) & !\io3|rxReadPointer[3]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \io3|rxReadPointer\(4),
	datad => VCC,
	cin => \io3|rxReadPointer[3]~14\,
	combout => \io3|rxReadPointer[4]~15_combout\,
	cout => \io3|rxReadPointer[4]~16\);

-- Location: FF_X14_Y11_N11
\io3|rxReadPointer[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_comb~2clkctrl_outclk\,
	d => \io3|rxReadPointer[4]~15_combout\,
	sclr => \io3|LessThan3~1_combout\,
	ena => \io3|rxReadPointer[5]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxReadPointer\(4));

-- Location: LCCOMB_X14_Y11_N12
\io3|rxReadPointer[5]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxReadPointer[5]~17_combout\ = \io3|rxReadPointer[4]~16\ $ (\io3|rxReadPointer\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \io3|rxReadPointer\(5),
	cin => \io3|rxReadPointer[4]~16\,
	combout => \io3|rxReadPointer[5]~17_combout\);

-- Location: FF_X14_Y11_N13
\io3|rxReadPointer[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_comb~2clkctrl_outclk\,
	d => \io3|rxReadPointer[5]~17_combout\,
	sclr => \io3|LessThan3~1_combout\,
	ena => \io3|rxReadPointer[5]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxReadPointer\(5));

-- Location: LCCOMB_X14_Y11_N18
\io3|LessThan3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|LessThan3~0_combout\ = (((!\io3|rxReadPointer\(2)) # (!\io3|rxReadPointer\(3))) # (!\io3|rxReadPointer\(0))) # (!\io3|rxReadPointer\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|rxReadPointer\(1),
	datab => \io3|rxReadPointer\(0),
	datac => \io3|rxReadPointer\(3),
	datad => \io3|rxReadPointer\(2),
	combout => \io3|LessThan3~0_combout\);

-- Location: LCCOMB_X14_Y11_N20
\io3|LessThan3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|LessThan3~1_combout\ = (\io3|rxReadPointer\(5)) # ((\io3|rxReadPointer\(4)) # (!\io3|LessThan3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|rxReadPointer\(5),
	datab => \io3|LessThan3~0_combout\,
	datad => \io3|rxReadPointer\(4),
	combout => \io3|LessThan3~1_combout\);

-- Location: FF_X14_Y11_N3
\io3|rxReadPointer[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_comb~2clkctrl_outclk\,
	d => \io3|rxReadPointer[0]~6_combout\,
	sclr => \io3|LessThan3~1_combout\,
	ena => \io3|rxReadPointer[5]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxReadPointer\(0));

-- Location: FF_X14_Y11_N5
\io3|rxReadPointer[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_comb~2clkctrl_outclk\,
	d => \io3|rxReadPointer[1]~8_combout\,
	sclr => \io3|LessThan3~1_combout\,
	ena => \io3|rxReadPointer[5]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxReadPointer\(1));

-- Location: LCCOMB_X11_Y8_N22
\io3|rxCurrentByteBuffer[7]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxCurrentByteBuffer[7]~2_combout\ = !\io3|rxdFiltered~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \io3|rxdFiltered~q\,
	combout => \io3|rxCurrentByteBuffer[7]~2_combout\);

-- Location: LCCOMB_X16_Y8_N8
\io3|rxCurrentByteBuffer[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxCurrentByteBuffer[0]~1_combout\ = (!\io3|reset~0_combout\ & \io3|rxCurrentByteBuffer[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|reset~0_combout\,
	datad => \io3|rxCurrentByteBuffer[0]~0_combout\,
	combout => \io3|rxCurrentByteBuffer[0]~1_combout\);

-- Location: FF_X11_Y8_N23
\io3|rxCurrentByteBuffer[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	d => \io3|rxCurrentByteBuffer[7]~2_combout\,
	ena => \io3|rxCurrentByteBuffer[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxCurrentByteBuffer\(7));

-- Location: FF_X11_Y8_N21
\io3|rxCurrentByteBuffer[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	asdata => \io3|rxCurrentByteBuffer\(7),
	sload => VCC,
	ena => \io3|rxCurrentByteBuffer[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxCurrentByteBuffer\(6));

-- Location: LCCOMB_X11_Y8_N10
\io3|rxCurrentByteBuffer[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxCurrentByteBuffer[5]~feeder_combout\ = \io3|rxCurrentByteBuffer\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \io3|rxCurrentByteBuffer\(6),
	combout => \io3|rxCurrentByteBuffer[5]~feeder_combout\);

-- Location: FF_X11_Y8_N11
\io3|rxCurrentByteBuffer[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	d => \io3|rxCurrentByteBuffer[5]~feeder_combout\,
	ena => \io3|rxCurrentByteBuffer[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxCurrentByteBuffer\(5));

-- Location: LCCOMB_X11_Y8_N0
\io3|rxCurrentByteBuffer[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxCurrentByteBuffer[4]~feeder_combout\ = \io3|rxCurrentByteBuffer\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \io3|rxCurrentByteBuffer\(5),
	combout => \io3|rxCurrentByteBuffer[4]~feeder_combout\);

-- Location: FF_X11_Y8_N1
\io3|rxCurrentByteBuffer[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	d => \io3|rxCurrentByteBuffer[4]~feeder_combout\,
	ena => \io3|rxCurrentByteBuffer[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxCurrentByteBuffer\(4));

-- Location: LCCOMB_X11_Y8_N30
\io3|rxCurrentByteBuffer[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxCurrentByteBuffer[3]~feeder_combout\ = \io3|rxCurrentByteBuffer\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \io3|rxCurrentByteBuffer\(4),
	combout => \io3|rxCurrentByteBuffer[3]~feeder_combout\);

-- Location: FF_X11_Y8_N31
\io3|rxCurrentByteBuffer[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	d => \io3|rxCurrentByteBuffer[3]~feeder_combout\,
	ena => \io3|rxCurrentByteBuffer[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxCurrentByteBuffer\(3));

-- Location: FF_X11_Y8_N13
\io3|rxCurrentByteBuffer[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	asdata => \io3|rxCurrentByteBuffer\(3),
	sload => VCC,
	ena => \io3|rxCurrentByteBuffer[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxCurrentByteBuffer\(2));

-- Location: LCCOMB_X11_Y8_N26
\io3|rxCurrentByteBuffer[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxCurrentByteBuffer[1]~feeder_combout\ = \io3|rxCurrentByteBuffer\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \io3|rxCurrentByteBuffer\(2),
	combout => \io3|rxCurrentByteBuffer[1]~feeder_combout\);

-- Location: FF_X11_Y8_N27
\io3|rxCurrentByteBuffer[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	d => \io3|rxCurrentByteBuffer[1]~feeder_combout\,
	ena => \io3|rxCurrentByteBuffer[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxCurrentByteBuffer\(1));

-- Location: FF_X11_Y8_N17
\io3|rxCurrentByteBuffer[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	asdata => \io3|rxCurrentByteBuffer\(1),
	sload => VCC,
	ena => \io3|rxCurrentByteBuffer[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxCurrentByteBuffer\(0));

-- Location: LCCOMB_X14_Y8_N12
\io3|rxBuffer~239\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~239_combout\ = (!\io3|rxInPointer\(3) & (!\io3|rxInPointer\(2) & (\io3|rxInPointer\(0) & !\io3|rxInPointer\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|rxInPointer\(3),
	datab => \io3|rxInPointer\(2),
	datac => \io3|rxInPointer\(0),
	datad => \io3|rxInPointer\(1),
	combout => \io3|rxBuffer~239_combout\);

-- Location: LCCOMB_X14_Y8_N6
\io3|rxBuffer~240\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~240_combout\ = (\io3|rxBuffer~239_combout\ & (!\io3|reset~0_combout\ & \io3|rxInPointer[5]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|rxBuffer~239_combout\,
	datac => \io3|reset~0_combout\,
	datad => \io3|rxInPointer[5]~6_combout\,
	combout => \io3|rxBuffer~240_combout\);

-- Location: FF_X11_Y9_N9
\io3|rxBuffer~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	asdata => \io3|rxCurrentByteBuffer\(0),
	sload => VCC,
	ena => \io3|rxBuffer~240_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxBuffer~21_q\);

-- Location: LCCOMB_X14_Y9_N22
\io3|rxBuffer~241\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~241_combout\ = (!\io3|rxInPointer\(3) & (!\io3|rxInPointer\(2) & (!\io3|rxInPointer\(0) & !\io3|rxInPointer\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|rxInPointer\(3),
	datab => \io3|rxInPointer\(2),
	datac => \io3|rxInPointer\(0),
	datad => \io3|rxInPointer\(1),
	combout => \io3|rxBuffer~241_combout\);

-- Location: LCCOMB_X14_Y9_N0
\io3|rxBuffer~242\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~242_combout\ = (!\io3|reset~0_combout\ & (\io3|rxBuffer~241_combout\ & \io3|rxInPointer[5]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \io3|reset~0_combout\,
	datac => \io3|rxBuffer~241_combout\,
	datad => \io3|rxInPointer[5]~6_combout\,
	combout => \io3|rxBuffer~242_combout\);

-- Location: FF_X12_Y9_N27
\io3|rxBuffer~13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	asdata => \io3|rxCurrentByteBuffer\(0),
	sload => VCC,
	ena => \io3|rxBuffer~242_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxBuffer~13_q\);

-- Location: LCCOMB_X12_Y9_N26
\io3|rxBuffer~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~145_combout\ = (\io3|rxReadPointer\(1) & (((\io3|rxReadPointer\(0))))) # (!\io3|rxReadPointer\(1) & ((\io3|rxReadPointer\(0) & (\io3|rxBuffer~21_q\)) # (!\io3|rxReadPointer\(0) & ((\io3|rxBuffer~13_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|rxBuffer~21_q\,
	datab => \io3|rxReadPointer\(1),
	datac => \io3|rxBuffer~13_q\,
	datad => \io3|rxReadPointer\(0),
	combout => \io3|rxBuffer~145_combout\);

-- Location: LCCOMB_X14_Y7_N12
\io3|rxBuffer~243\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~243_combout\ = (\io3|rxInPointer\(0) & (!\io3|rxInPointer\(3) & (!\io3|rxInPointer\(2) & \io3|rxInPointer\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|rxInPointer\(0),
	datab => \io3|rxInPointer\(3),
	datac => \io3|rxInPointer\(2),
	datad => \io3|rxInPointer\(1),
	combout => \io3|rxBuffer~243_combout\);

-- Location: LCCOMB_X14_Y7_N14
\io3|rxBuffer~244\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~244_combout\ = (\io3|rxInPointer[5]~6_combout\ & (!\io3|reset~0_combout\ & \io3|rxBuffer~243_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|rxInPointer[5]~6_combout\,
	datac => \io3|reset~0_combout\,
	datad => \io3|rxBuffer~243_combout\,
	combout => \io3|rxBuffer~244_combout\);

-- Location: FF_X13_Y9_N27
\io3|rxBuffer~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	asdata => \io3|rxCurrentByteBuffer\(0),
	sload => VCC,
	ena => \io3|rxBuffer~244_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxBuffer~37_q\);

-- Location: LCCOMB_X14_Y7_N8
\io3|rxBuffer~237\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~237_combout\ = (!\io3|rxInPointer\(0) & (!\io3|rxInPointer\(3) & (!\io3|rxInPointer\(2) & \io3|rxInPointer\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|rxInPointer\(0),
	datab => \io3|rxInPointer\(3),
	datac => \io3|rxInPointer\(2),
	datad => \io3|rxInPointer\(1),
	combout => \io3|rxBuffer~237_combout\);

-- Location: LCCOMB_X14_Y7_N18
\io3|rxBuffer~238\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~238_combout\ = (\io3|rxInPointer[5]~6_combout\ & (\io3|rxBuffer~237_combout\ & !\io3|reset~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|rxInPointer[5]~6_combout\,
	datab => \io3|rxBuffer~237_combout\,
	datac => \io3|reset~0_combout\,
	combout => \io3|rxBuffer~238_combout\);

-- Location: FF_X12_Y9_N9
\io3|rxBuffer~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	asdata => \io3|rxCurrentByteBuffer\(0),
	sload => VCC,
	ena => \io3|rxBuffer~238_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxBuffer~29_q\);

-- Location: LCCOMB_X13_Y9_N26
\io3|rxBuffer~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~146_combout\ = (\io3|rxReadPointer\(1) & ((\io3|rxBuffer~145_combout\ & (\io3|rxBuffer~37_q\)) # (!\io3|rxBuffer~145_combout\ & ((\io3|rxBuffer~29_q\))))) # (!\io3|rxReadPointer\(1) & (\io3|rxBuffer~145_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|rxReadPointer\(1),
	datab => \io3|rxBuffer~145_combout\,
	datac => \io3|rxBuffer~37_q\,
	datad => \io3|rxBuffer~29_q\,
	combout => \io3|rxBuffer~146_combout\);

-- Location: LCCOMB_X11_Y8_N8
\io3|rxBuffer~53feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~53feeder_combout\ = \io3|rxCurrentByteBuffer\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \io3|rxCurrentByteBuffer\(0),
	combout => \io3|rxBuffer~53feeder_combout\);

-- Location: LCCOMB_X14_Y9_N14
\io3|rxBuffer~229\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~229_combout\ = (!\io3|rxInPointer\(3) & (\io3|rxInPointer\(2) & (\io3|rxInPointer\(0) & !\io3|rxInPointer\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|rxInPointer\(3),
	datab => \io3|rxInPointer\(2),
	datac => \io3|rxInPointer\(0),
	datad => \io3|rxInPointer\(1),
	combout => \io3|rxBuffer~229_combout\);

-- Location: LCCOMB_X14_Y9_N8
\io3|rxBuffer~230\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~230_combout\ = (!\io3|reset~0_combout\ & (\io3|rxBuffer~229_combout\ & \io3|rxInPointer[5]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \io3|reset~0_combout\,
	datac => \io3|rxBuffer~229_combout\,
	datad => \io3|rxInPointer[5]~6_combout\,
	combout => \io3|rxBuffer~230_combout\);

-- Location: FF_X11_Y8_N9
\io3|rxBuffer~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	d => \io3|rxBuffer~53feeder_combout\,
	ena => \io3|rxBuffer~230_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxBuffer~53_q\);

-- Location: LCCOMB_X14_Y8_N8
\io3|rxBuffer~233\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~233_combout\ = (!\io3|rxInPointer\(3) & (\io3|rxInPointer\(2) & (!\io3|rxInPointer\(0) & !\io3|rxInPointer\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|rxInPointer\(3),
	datab => \io3|rxInPointer\(2),
	datac => \io3|rxInPointer\(0),
	datad => \io3|rxInPointer\(1),
	combout => \io3|rxBuffer~233_combout\);

-- Location: LCCOMB_X14_Y8_N10
\io3|rxBuffer~234\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~234_combout\ = (\io3|rxBuffer~233_combout\ & (!\io3|reset~0_combout\ & \io3|rxInPointer[5]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \io3|rxBuffer~233_combout\,
	datac => \io3|reset~0_combout\,
	datad => \io3|rxInPointer[5]~6_combout\,
	combout => \io3|rxBuffer~234_combout\);

-- Location: FF_X13_Y8_N17
\io3|rxBuffer~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	asdata => \io3|rxCurrentByteBuffer\(0),
	sload => VCC,
	ena => \io3|rxBuffer~234_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxBuffer~45_q\);

-- Location: LCCOMB_X12_Y8_N2
\io3|rxBuffer~61feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~61feeder_combout\ = \io3|rxCurrentByteBuffer\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \io3|rxCurrentByteBuffer\(0),
	combout => \io3|rxBuffer~61feeder_combout\);

-- Location: LCCOMB_X14_Y7_N28
\io3|rxBuffer~231\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~231_combout\ = (!\io3|rxInPointer\(0) & (!\io3|rxInPointer\(3) & (\io3|rxInPointer\(2) & \io3|rxInPointer\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|rxInPointer\(0),
	datab => \io3|rxInPointer\(3),
	datac => \io3|rxInPointer\(2),
	datad => \io3|rxInPointer\(1),
	combout => \io3|rxBuffer~231_combout\);

-- Location: LCCOMB_X14_Y7_N30
\io3|rxBuffer~232\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~232_combout\ = (\io3|rxInPointer[5]~6_combout\ & (\io3|rxBuffer~231_combout\ & !\io3|reset~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|rxInPointer[5]~6_combout\,
	datab => \io3|rxBuffer~231_combout\,
	datac => \io3|reset~0_combout\,
	combout => \io3|rxBuffer~232_combout\);

-- Location: FF_X12_Y8_N3
\io3|rxBuffer~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	d => \io3|rxBuffer~61feeder_combout\,
	ena => \io3|rxBuffer~232_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxBuffer~61_q\);

-- Location: LCCOMB_X13_Y8_N16
\io3|rxBuffer~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~143_combout\ = (\io3|rxReadPointer\(1) & ((\io3|rxReadPointer\(0)) # ((\io3|rxBuffer~61_q\)))) # (!\io3|rxReadPointer\(1) & (!\io3|rxReadPointer\(0) & (\io3|rxBuffer~45_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|rxReadPointer\(1),
	datab => \io3|rxReadPointer\(0),
	datac => \io3|rxBuffer~45_q\,
	datad => \io3|rxBuffer~61_q\,
	combout => \io3|rxBuffer~143_combout\);

-- Location: LCCOMB_X14_Y9_N18
\io3|rxBuffer~235\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~235_combout\ = (!\io3|rxInPointer\(3) & (\io3|rxInPointer\(2) & (\io3|rxInPointer\(0) & \io3|rxInPointer\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|rxInPointer\(3),
	datab => \io3|rxInPointer\(2),
	datac => \io3|rxInPointer\(0),
	datad => \io3|rxInPointer\(1),
	combout => \io3|rxBuffer~235_combout\);

-- Location: LCCOMB_X14_Y9_N12
\io3|rxBuffer~236\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~236_combout\ = (!\io3|reset~0_combout\ & (\io3|rxInPointer[5]~6_combout\ & \io3|rxBuffer~235_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|reset~0_combout\,
	datab => \io3|rxInPointer[5]~6_combout\,
	datad => \io3|rxBuffer~235_combout\,
	combout => \io3|rxBuffer~236_combout\);

-- Location: FF_X13_Y8_N11
\io3|rxBuffer~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	asdata => \io3|rxCurrentByteBuffer\(0),
	sload => VCC,
	ena => \io3|rxBuffer~236_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxBuffer~69_q\);

-- Location: LCCOMB_X13_Y8_N10
\io3|rxBuffer~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~144_combout\ = (\io3|rxBuffer~143_combout\ & (((\io3|rxBuffer~69_q\) # (!\io3|rxReadPointer\(0))))) # (!\io3|rxBuffer~143_combout\ & (\io3|rxBuffer~53_q\ & ((\io3|rxReadPointer\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|rxBuffer~53_q\,
	datab => \io3|rxBuffer~143_combout\,
	datac => \io3|rxBuffer~69_q\,
	datad => \io3|rxReadPointer\(0),
	combout => \io3|rxBuffer~144_combout\);

-- Location: LCCOMB_X14_Y11_N30
\io3|rxBuffer~147\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~147_combout\ = (\io3|rxReadPointer\(3) & (((\io3|rxReadPointer\(2))))) # (!\io3|rxReadPointer\(3) & ((\io3|rxReadPointer\(2) & ((\io3|rxBuffer~144_combout\))) # (!\io3|rxReadPointer\(2) & (\io3|rxBuffer~146_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|rxBuffer~146_combout\,
	datab => \io3|rxBuffer~144_combout\,
	datac => \io3|rxReadPointer\(3),
	datad => \io3|rxReadPointer\(2),
	combout => \io3|rxBuffer~147_combout\);

-- Location: LCCOMB_X14_Y7_N20
\io3|rxBuffer~247\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~247_combout\ = (!\io3|rxInPointer\(0) & (\io3|rxInPointer\(3) & (\io3|rxInPointer\(2) & \io3|rxInPointer\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|rxInPointer\(0),
	datab => \io3|rxInPointer\(3),
	datac => \io3|rxInPointer\(2),
	datad => \io3|rxInPointer\(1),
	combout => \io3|rxBuffer~247_combout\);

-- Location: LCCOMB_X14_Y7_N22
\io3|rxBuffer~248\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~248_combout\ = (\io3|rxInPointer[5]~6_combout\ & (\io3|rxBuffer~247_combout\ & !\io3|reset~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|rxInPointer[5]~6_combout\,
	datab => \io3|rxBuffer~247_combout\,
	datac => \io3|reset~0_combout\,
	combout => \io3|rxBuffer~248_combout\);

-- Location: FF_X11_Y10_N3
\io3|rxBuffer~125\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	asdata => \io3|rxCurrentByteBuffer\(0),
	sload => VCC,
	ena => \io3|rxBuffer~248_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxBuffer~125_q\);

-- Location: LCCOMB_X14_Y7_N16
\io3|rxBuffer~249\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~249_combout\ = (!\io3|rxInPointer\(0) & (\io3|rxInPointer\(3) & (\io3|rxInPointer\(2) & !\io3|rxInPointer\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|rxInPointer\(0),
	datab => \io3|rxInPointer\(3),
	datac => \io3|rxInPointer\(2),
	datad => \io3|rxInPointer\(1),
	combout => \io3|rxBuffer~249_combout\);

-- Location: LCCOMB_X14_Y7_N10
\io3|rxBuffer~250\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~250_combout\ = (\io3|rxInPointer[5]~6_combout\ & (\io3|rxBuffer~249_combout\ & !\io3|reset~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|rxInPointer[5]~6_combout\,
	datab => \io3|rxBuffer~249_combout\,
	datac => \io3|reset~0_combout\,
	combout => \io3|rxBuffer~250_combout\);

-- Location: FF_X12_Y10_N27
\io3|rxBuffer~109\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	asdata => \io3|rxCurrentByteBuffer\(0),
	sload => VCC,
	ena => \io3|rxBuffer~250_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxBuffer~109_q\);

-- Location: LCCOMB_X12_Y10_N26
\io3|rxBuffer~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~148_combout\ = (\io3|rxReadPointer\(1) & ((\io3|rxBuffer~125_q\) # ((\io3|rxReadPointer\(0))))) # (!\io3|rxReadPointer\(1) & (((\io3|rxBuffer~109_q\ & !\io3|rxReadPointer\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|rxBuffer~125_q\,
	datab => \io3|rxReadPointer\(1),
	datac => \io3|rxBuffer~109_q\,
	datad => \io3|rxReadPointer\(0),
	combout => \io3|rxBuffer~148_combout\);

-- Location: LCCOMB_X14_Y7_N0
\io3|rxBuffer~245\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~245_combout\ = (\io3|rxInPointer\(0) & (\io3|rxInPointer\(3) & (\io3|rxInPointer\(2) & !\io3|rxInPointer\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|rxInPointer\(0),
	datab => \io3|rxInPointer\(3),
	datac => \io3|rxInPointer\(2),
	datad => \io3|rxInPointer\(1),
	combout => \io3|rxBuffer~245_combout\);

-- Location: LCCOMB_X14_Y7_N26
\io3|rxBuffer~246\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~246_combout\ = (\io3|rxInPointer[5]~6_combout\ & (\io3|rxBuffer~245_combout\ & !\io3|reset~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|rxInPointer[5]~6_combout\,
	datab => \io3|rxBuffer~245_combout\,
	datac => \io3|reset~0_combout\,
	combout => \io3|rxBuffer~246_combout\);

-- Location: FF_X13_Y10_N1
\io3|rxBuffer~117\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	asdata => \io3|rxCurrentByteBuffer\(0),
	sload => VCC,
	ena => \io3|rxBuffer~246_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxBuffer~117_q\);

-- Location: LCCOMB_X14_Y9_N2
\io3|rxBuffer~251\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~251_combout\ = (\io3|rxInPointer\(3) & (\io3|rxInPointer\(2) & (\io3|rxInPointer\(0) & \io3|rxInPointer\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|rxInPointer\(3),
	datab => \io3|rxInPointer\(2),
	datac => \io3|rxInPointer\(0),
	datad => \io3|rxInPointer\(1),
	combout => \io3|rxBuffer~251_combout\);

-- Location: LCCOMB_X14_Y9_N20
\io3|rxBuffer~252\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~252_combout\ = (!\io3|reset~0_combout\ & (\io3|rxInPointer[5]~6_combout\ & \io3|rxBuffer~251_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|reset~0_combout\,
	datab => \io3|rxInPointer[5]~6_combout\,
	datad => \io3|rxBuffer~251_combout\,
	combout => \io3|rxBuffer~252_combout\);

-- Location: FF_X13_Y10_N27
\io3|rxBuffer~133\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	asdata => \io3|rxCurrentByteBuffer\(0),
	sload => VCC,
	ena => \io3|rxBuffer~252_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxBuffer~133_q\);

-- Location: LCCOMB_X13_Y10_N26
\io3|rxBuffer~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~149_combout\ = (\io3|rxBuffer~148_combout\ & (((\io3|rxBuffer~133_q\) # (!\io3|rxReadPointer\(0))))) # (!\io3|rxBuffer~148_combout\ & (\io3|rxBuffer~117_q\ & ((\io3|rxReadPointer\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|rxBuffer~148_combout\,
	datab => \io3|rxBuffer~117_q\,
	datac => \io3|rxBuffer~133_q\,
	datad => \io3|rxReadPointer\(0),
	combout => \io3|rxBuffer~149_combout\);

-- Location: LCCOMB_X14_Y9_N10
\io3|rxBuffer~221\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~221_combout\ = (\io3|rxInPointer\(3) & (!\io3|rxInPointer\(2) & (!\io3|rxInPointer\(0) & \io3|rxInPointer\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|rxInPointer\(3),
	datab => \io3|rxInPointer\(2),
	datac => \io3|rxInPointer\(0),
	datad => \io3|rxInPointer\(1),
	combout => \io3|rxBuffer~221_combout\);

-- Location: LCCOMB_X14_Y9_N4
\io3|rxBuffer~222\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~222_combout\ = (\io3|rxBuffer~221_combout\ & (!\io3|reset~0_combout\ & \io3|rxInPointer[5]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|rxBuffer~221_combout\,
	datab => \io3|reset~0_combout\,
	datad => \io3|rxInPointer[5]~6_combout\,
	combout => \io3|rxBuffer~222_combout\);

-- Location: FF_X11_Y10_N1
\io3|rxBuffer~93\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	asdata => \io3|rxCurrentByteBuffer\(0),
	sload => VCC,
	ena => \io3|rxBuffer~222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxBuffer~93_q\);

-- Location: LCCOMB_X14_Y9_N26
\io3|rxBuffer~227\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~227_combout\ = (\io3|rxInPointer\(3) & (!\io3|rxInPointer\(2) & (\io3|rxInPointer\(0) & \io3|rxInPointer\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|rxInPointer\(3),
	datab => \io3|rxInPointer\(2),
	datac => \io3|rxInPointer\(0),
	datad => \io3|rxInPointer\(1),
	combout => \io3|rxBuffer~227_combout\);

-- Location: LCCOMB_X14_Y9_N28
\io3|rxBuffer~228\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~228_combout\ = (!\io3|reset~0_combout\ & (\io3|rxBuffer~227_combout\ & \io3|rxInPointer[5]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \io3|reset~0_combout\,
	datac => \io3|rxBuffer~227_combout\,
	datad => \io3|rxInPointer[5]~6_combout\,
	combout => \io3|rxBuffer~228_combout\);

-- Location: FF_X13_Y9_N25
\io3|rxBuffer~101\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	asdata => \io3|rxCurrentByteBuffer\(0),
	sload => VCC,
	ena => \io3|rxBuffer~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxBuffer~101_q\);

-- Location: LCCOMB_X12_Y8_N0
\io3|rxBuffer~85feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~85feeder_combout\ = \io3|rxCurrentByteBuffer\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \io3|rxCurrentByteBuffer\(0),
	combout => \io3|rxBuffer~85feeder_combout\);

-- Location: LCCOMB_X14_Y7_N24
\io3|rxBuffer~223\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~223_combout\ = (\io3|rxInPointer\(0) & (\io3|rxInPointer\(3) & (!\io3|rxInPointer\(2) & !\io3|rxInPointer\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|rxInPointer\(0),
	datab => \io3|rxInPointer\(3),
	datac => \io3|rxInPointer\(2),
	datad => \io3|rxInPointer\(1),
	combout => \io3|rxBuffer~223_combout\);

-- Location: LCCOMB_X14_Y7_N2
\io3|rxBuffer~224\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~224_combout\ = (\io3|rxInPointer[5]~6_combout\ & (\io3|rxBuffer~223_combout\ & !\io3|reset~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|rxInPointer[5]~6_combout\,
	datab => \io3|rxBuffer~223_combout\,
	datac => \io3|reset~0_combout\,
	combout => \io3|rxBuffer~224_combout\);

-- Location: FF_X12_Y8_N1
\io3|rxBuffer~85\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	d => \io3|rxBuffer~85feeder_combout\,
	ena => \io3|rxBuffer~224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxBuffer~85_q\);

-- Location: LCCOMB_X14_Y9_N6
\io3|rxBuffer~225\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~225_combout\ = (\io3|rxInPointer\(3) & (!\io3|rxInPointer\(2) & (!\io3|rxInPointer\(0) & !\io3|rxInPointer\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|rxInPointer\(3),
	datab => \io3|rxInPointer\(2),
	datac => \io3|rxInPointer\(0),
	datad => \io3|rxInPointer\(1),
	combout => \io3|rxBuffer~225_combout\);

-- Location: LCCOMB_X14_Y9_N24
\io3|rxBuffer~226\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~226_combout\ = (\io3|rxBuffer~225_combout\ & (!\io3|reset~0_combout\ & \io3|rxInPointer[5]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|rxBuffer~225_combout\,
	datab => \io3|reset~0_combout\,
	datad => \io3|rxInPointer[5]~6_combout\,
	combout => \io3|rxBuffer~226_combout\);

-- Location: FF_X12_Y10_N25
\io3|rxBuffer~77\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	asdata => \io3|rxCurrentByteBuffer\(0),
	sload => VCC,
	ena => \io3|rxBuffer~226_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxBuffer~77_q\);

-- Location: LCCOMB_X12_Y10_N24
\io3|rxBuffer~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~141_combout\ = (\io3|rxReadPointer\(1) & (((\io3|rxReadPointer\(0))))) # (!\io3|rxReadPointer\(1) & ((\io3|rxReadPointer\(0) & (\io3|rxBuffer~85_q\)) # (!\io3|rxReadPointer\(0) & ((\io3|rxBuffer~77_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|rxBuffer~85_q\,
	datab => \io3|rxReadPointer\(1),
	datac => \io3|rxBuffer~77_q\,
	datad => \io3|rxReadPointer\(0),
	combout => \io3|rxBuffer~141_combout\);

-- Location: LCCOMB_X13_Y9_N24
\io3|rxBuffer~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~142_combout\ = (\io3|rxReadPointer\(1) & ((\io3|rxBuffer~141_combout\ & ((\io3|rxBuffer~101_q\))) # (!\io3|rxBuffer~141_combout\ & (\io3|rxBuffer~93_q\)))) # (!\io3|rxReadPointer\(1) & (((\io3|rxBuffer~141_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|rxReadPointer\(1),
	datab => \io3|rxBuffer~93_q\,
	datac => \io3|rxBuffer~101_q\,
	datad => \io3|rxBuffer~141_combout\,
	combout => \io3|rxBuffer~142_combout\);

-- Location: LCCOMB_X14_Y11_N16
\io3|rxBuffer~150\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~150_combout\ = (\io3|rxBuffer~147_combout\ & ((\io3|rxBuffer~149_combout\) # ((!\io3|rxReadPointer\(3))))) # (!\io3|rxBuffer~147_combout\ & (((\io3|rxReadPointer\(3) & \io3|rxBuffer~142_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|rxBuffer~147_combout\,
	datab => \io3|rxBuffer~149_combout\,
	datac => \io3|rxReadPointer\(3),
	datad => \io3|rxBuffer~142_combout\,
	combout => \io3|rxBuffer~150_combout\);

-- Location: LCCOMB_X14_Y11_N0
\io3|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|Equal0~3_combout\ = (\io3|Equal0~0_combout\ & (\io3|Equal0~1_combout\ & \io3|Equal0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|Equal0~0_combout\,
	datab => \io3|Equal0~1_combout\,
	datac => \io3|Equal0~2_combout\,
	combout => \io3|Equal0~3_combout\);

-- Location: LCCOMB_X14_Y11_N24
\io3|dataOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|dataOut~0_combout\ = (\fAddress[0]~input_o\ & (\io3|rxBuffer~150_combout\)) # (!\fAddress[0]~input_o\ & ((!\io3|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|rxBuffer~150_combout\,
	datab => \fAddress[0]~input_o\,
	datad => \io3|Equal0~3_combout\,
	combout => \io3|dataOut~0_combout\);

-- Location: FF_X14_Y11_N25
\io3|dataOut[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_comb~2clkctrl_outclk\,
	d => \io3|dataOut~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|dataOut\(0));

-- Location: IOIBUF_X13_Y24_N22
\fnClk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fnClk,
	o => \fnClk~input_o\);

-- Location: LCCOMB_X24_Y11_N20
\comb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = LCELL((\fnWr~input_o\) # (((\fAddress[7]~input_o\) # (!\fAddress[5]~input_o\)) # (!\nButtoncs~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fnWr~input_o\,
	datab => \nButtoncs~0_combout\,
	datac => \fAddress[7]~input_o\,
	datad => \fAddress[5]~input_o\,
	combout => \comb~0_combout\);

-- Location: CLKCTRL_G7
\comb~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \comb~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \comb~0clkctrl_outclk\);

-- Location: LCCOMB_X22_Y17_N26
\io4|host_write_flag~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|host_write_flag~0_combout\ = !\io4|sd_write_flag~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \io4|sd_write_flag~q\,
	combout => \io4|host_write_flag~0_combout\);

-- Location: LCCOMB_X24_Y18_N6
\io4|Equal6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Equal6~0_combout\ = (!\fAddress[1]~input_o\ & (!\fAddress[0]~input_o\ & !\fAddress[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fAddress[1]~input_o\,
	datac => \fAddress[0]~input_o\,
	datad => \fAddress[2]~input_o\,
	combout => \io4|Equal6~0_combout\);

-- Location: FF_X22_Y17_N27
\io4|host_write_flag\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb~0clkctrl_outclk\,
	d => \io4|host_write_flag~0_combout\,
	ena => \io4|Equal6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|host_write_flag~q\);

-- Location: LCCOMB_X22_Y16_N20
\io4|return_state.idle~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|return_state.idle~0_combout\ = (\io4|state.read_block_data~q\ & !\io4|Equal11~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \io4|state.read_block_data~q\,
	datad => \io4|Equal11~0_combout\,
	combout => \io4|return_state.idle~0_combout\);

-- Location: LCCOMB_X21_Y19_N6
\io4|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Add1~0_combout\ = \io4|fsm:byte_counter[0]~q\ $ (VCC)
-- \io4|Add1~1\ = CARRY(\io4|fsm:byte_counter[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \io4|fsm:byte_counter[0]~q\,
	datad => VCC,
	combout => \io4|Add1~0_combout\,
	cout => \io4|Add1~1\);

-- Location: LCCOMB_X22_Y19_N0
\io4|Selector68~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector68~0_combout\ = (\io4|state.write_block_init~q\) # ((\io4|state.read_block_wait~q\) # ((\io4|cmd_out[16]~36_combout\ & \io4|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|state.write_block_init~q\,
	datab => \io4|state.read_block_wait~q\,
	datac => \io4|cmd_out[16]~36_combout\,
	datad => \io4|Add1~0_combout\,
	combout => \io4|Selector68~0_combout\);

-- Location: LCCOMB_X22_Y19_N28
\io4|fsm~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|fsm~0_combout\ = (!\io4|fsm:byte_counter[9]~q\ & (\io4|Equal12~1_combout\ & (\io4|fsm:byte_counter[1]~q\ $ (\io4|fsm:byte_counter[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|fsm:byte_counter[9]~q\,
	datab => \io4|Equal12~1_combout\,
	datac => \io4|fsm:byte_counter[1]~q\,
	datad => \io4|fsm:byte_counter[0]~q\,
	combout => \io4|fsm~0_combout\);

-- Location: LCCOMB_X22_Y17_N28
\io4|data_sig[7]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|data_sig[7]~8_combout\ = (\io4|Equal14~0_combout\ & (!\io4|fsm~0_combout\ & (\io4|sd_write_flag~q\ $ (!\io4|host_write_flag~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|Equal14~0_combout\,
	datab => \io4|sd_write_flag~q\,
	datac => \io4|host_write_flag~q\,
	datad => \io4|fsm~0_combout\,
	combout => \io4|data_sig[7]~8_combout\);

-- Location: LCCOMB_X22_Y17_N8
\io4|data_sig[7]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|data_sig[7]~2_combout\ = (\fnReset~input_o\ & (((\io4|Equal11~0_combout\ & !\io4|data_sig[7]~8_combout\)) # (!\io4|state.write_block_data~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|Equal11~0_combout\,
	datab => \io4|data_sig[7]~8_combout\,
	datac => \fnReset~input_o\,
	datad => \io4|state.write_block_data~q\,
	combout => \io4|data_sig[7]~2_combout\);

-- Location: IOIBUF_X34_Y10_N8
\fSD_DO~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fSD_DO,
	o => \fSD_DO~input_o\);

-- Location: LCCOMB_X22_Y16_N18
\io4|fsm:bit_counter[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|fsm:bit_counter[1]~3_combout\ = (\io4|state.read_block_wait~q\ & ((\io4|sclk_sig~q\) # (\fSD_DO~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|sclk_sig~q\,
	datac => \io4|state.read_block_wait~q\,
	datad => \fSD_DO~input_o\,
	combout => \io4|fsm:bit_counter[1]~3_combout\);

-- Location: FF_X22_Y16_N7
\io4|return_state.write_block_wait\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	asdata => \io4|state.write_block_data~q\,
	sload => VCC,
	ena => \io4|return_state.init~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|return_state.write_block_wait~q\);

-- Location: LCCOMB_X22_Y18_N16
\io4|Selector102~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector102~0_combout\ = (\io4|Equal9~1_combout\ & (\io4|Selector2~3_combout\ & (\io4|Equal9~0_combout\ & \io4|return_state.write_block_wait~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|Equal9~1_combout\,
	datab => \io4|Selector2~3_combout\,
	datac => \io4|Equal9~0_combout\,
	datad => \io4|return_state.write_block_wait~q\,
	combout => \io4|Selector102~0_combout\);

-- Location: LCCOMB_X24_Y16_N22
\io4|Selector100~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector100~0_combout\ = (\io4|sclk_sig~q\ & (\io4|Equal9~1_combout\ & \io4|Equal9~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|sclk_sig~q\,
	datab => \io4|Equal9~1_combout\,
	datac => \io4|Equal9~0_combout\,
	combout => \io4|Selector100~0_combout\);

-- Location: LCCOMB_X24_Y16_N4
\io4|fsm~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|fsm~2_combout\ = (!\io4|sclk_sig~q\ & !\fSD_DO~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \io4|sclk_sig~q\,
	datad => \fSD_DO~input_o\,
	combout => \io4|fsm~2_combout\);

-- Location: LCCOMB_X22_Y18_N6
\io4|Selector81~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector81~0_combout\ = ((\io4|state.init~q\ & ((!\io4|Equal9~1_combout\) # (!\io4|Equal9~0_combout\)))) # (!\io4|state.rst~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|Equal9~0_combout\,
	datab => \io4|Equal9~1_combout\,
	datac => \io4|state.init~q\,
	datad => \io4|state.rst~q\,
	combout => \io4|Selector81~0_combout\);

-- Location: FF_X22_Y18_N7
\io4|state.init\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|Selector81~0_combout\,
	clrn => \fnReset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|state.init~q\);

-- Location: LCCOMB_X23_Y16_N0
\io4|fsm:bit_counter[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|fsm:bit_counter[1]~4_combout\ = (\io4|Equal9~0_combout\ & (\io4|Equal9~1_combout\ & \io4|state.init~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \io4|Equal9~0_combout\,
	datac => \io4|Equal9~1_combout\,
	datad => \io4|state.init~q\,
	combout => \io4|fsm:bit_counter[1]~4_combout\);

-- Location: FF_X23_Y16_N1
\io4|state.cmd0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|fsm:bit_counter[1]~4_combout\,
	clrn => \fnReset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|state.cmd0~q\);

-- Location: IOIBUF_X34_Y2_N22
\fData[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => fData(2),
	o => \fData[2]~input_o\);

-- Location: IOIBUF_X5_Y0_N15
\fData[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => fData(5),
	o => \fData[5]~input_o\);

-- Location: IOIBUF_X5_Y0_N22
\fData[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => fData(4),
	o => \fData[4]~input_o\);

-- Location: IOIBUF_X7_Y0_N1
\fData[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => fData(6),
	o => \fData[6]~input_o\);

-- Location: IOIBUF_X32_Y0_N8
\fData[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => fData(3),
	o => \fData[3]~input_o\);

-- Location: LCCOMB_X25_Y17_N26
\io4|wr_cmd_reg~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|wr_cmd_reg~1_combout\ = (!\fData[5]~input_o\ & (!\fData[4]~input_o\ & (!\fData[6]~input_o\ & !\fData[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fData[5]~input_o\,
	datab => \fData[4]~input_o\,
	datac => \fData[6]~input_o\,
	datad => \fData[3]~input_o\,
	combout => \io4|wr_cmd_reg~1_combout\);

-- Location: IOIBUF_X13_Y0_N15
\fData[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => fData(7),
	o => \fData[7]~input_o\);

-- Location: LCCOMB_X24_Y18_N30
\io4|wr_cmd_reg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|wr_cmd_reg~0_combout\ = (!\fData[7]~input_o\ & (!\fAddress[1]~input_o\ & (\fAddress[0]~input_o\ & !\fAddress[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fData[7]~input_o\,
	datab => \fAddress[1]~input_o\,
	datac => \fAddress[0]~input_o\,
	datad => \fAddress[2]~input_o\,
	combout => \io4|wr_cmd_reg~0_combout\);

-- Location: LCCOMB_X24_Y18_N24
\io4|wr_cmd_reg~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|wr_cmd_reg~2_combout\ = (!\fData[2]~input_o\ & (\io4|wr_cmd_reg~1_combout\ & (\io4|wr_cmd_reg~0_combout\ & !\fData[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fData[2]~input_o\,
	datab => \io4|wr_cmd_reg~1_combout\,
	datac => \io4|wr_cmd_reg~0_combout\,
	datad => \fData[1]~input_o\,
	combout => \io4|wr_cmd_reg~2_combout\);

-- Location: LCCOMB_X24_Y18_N26
\io4|block_read~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|block_read~0_combout\ = (\io4|block_read~q\) # ((!\fData[0]~input_o\ & \io4|wr_cmd_reg~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fData[0]~input_o\,
	datac => \io4|block_read~q\,
	datad => \io4|wr_cmd_reg~2_combout\,
	combout => \io4|block_read~0_combout\);

-- Location: LCCOMB_X24_Y18_N0
\io4|block_write~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|block_write~0_combout\ = (\io4|block_write~q\) # ((\fData[0]~input_o\ & \io4|wr_cmd_reg~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fData[0]~input_o\,
	datac => \io4|block_write~q\,
	datad => \io4|wr_cmd_reg~2_combout\,
	combout => \io4|block_write~0_combout\);

-- Location: FF_X24_Y18_N1
\io4|block_write\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb~0clkctrl_outclk\,
	d => \io4|block_write~0_combout\,
	clrn => \io4|ALT_INV_wr_cmd_reg~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|block_write~q\);

-- Location: LCCOMB_X24_Y18_N2
\io4|Selector104~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector104~1_combout\ = (\io4|state.idle~q\ & ((\io4|block_write~q\) # ((\io4|block_read~q\) # (\io4|block_start_ack~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|state.idle~q\,
	datab => \io4|block_write~q\,
	datac => \io4|block_read~q\,
	datad => \io4|block_start_ack~q\,
	combout => \io4|Selector104~1_combout\);

-- Location: LCCOMB_X21_Y16_N14
\io4|Selector104~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector104~2_combout\ = (\io4|Selector104~1_combout\) # ((\io4|state.rst~q\ & (\io4|Selector104~0_combout\ & \io4|block_start_ack~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|state.rst~q\,
	datab => \io4|Selector104~0_combout\,
	datac => \io4|block_start_ack~q\,
	datad => \io4|Selector104~1_combout\,
	combout => \io4|Selector104~2_combout\);

-- Location: FF_X21_Y16_N15
\io4|block_start_ack\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|Selector104~2_combout\,
	ena => \fnReset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|block_start_ack~q\);

-- Location: LCCOMB_X21_Y16_N22
\io4|Selector103~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector103~0_combout\ = (\io4|state.rst~q\ & ((\io4|state.idle~q\) # (\io4|init_busy~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|state.rst~q\,
	datab => \io4|state.idle~q\,
	datac => \io4|init_busy~q\,
	combout => \io4|Selector103~0_combout\);

-- Location: FF_X21_Y16_N23
\io4|init_busy\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|Selector103~0_combout\,
	ena => \fnReset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|init_busy~q\);

-- Location: LCCOMB_X19_Y19_N10
\io4|wr_cmd_reg~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|wr_cmd_reg~3_combout\ = (\io4|block_start_ack~q\) # (!\io4|init_busy~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \io4|block_start_ack~q\,
	datad => \io4|init_busy~q\,
	combout => \io4|wr_cmd_reg~3_combout\);

-- Location: FF_X24_Y18_N27
\io4|block_read\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb~0clkctrl_outclk\,
	d => \io4|block_read~0_combout\,
	clrn => \io4|ALT_INV_wr_cmd_reg~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|block_read~q\);

-- Location: LCCOMB_X24_Y18_N16
\io4|Selector98~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector98~0_combout\ = (\io4|state.idle~q\ & (!\io4|block_read~q\ & \io4|block_write~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|state.idle~q\,
	datac => \io4|block_read~q\,
	datad => \io4|block_write~q\,
	combout => \io4|Selector98~0_combout\);

-- Location: FF_X24_Y18_N17
\io4|state.write_block_cmd\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|Selector98~0_combout\,
	clrn => \fnReset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|state.write_block_cmd~q\);

-- Location: LCCOMB_X24_Y18_N18
\io4|Selector90~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector90~0_combout\ = (\io4|state.idle~q\ & \io4|block_read~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|state.idle~q\,
	datac => \io4|block_read~q\,
	combout => \io4|Selector90~0_combout\);

-- Location: FF_X24_Y18_N19
\io4|state.read_block_cmd\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|Selector90~0_combout\,
	clrn => \fnReset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|state.read_block_cmd~q\);

-- Location: LCCOMB_X24_Y18_N28
\io4|Selector104~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector104~0_combout\ = (!\io4|state.write_block_cmd~q\ & !\io4|state.read_block_cmd~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \io4|state.write_block_cmd~q\,
	datad => \io4|state.read_block_cmd~q\,
	combout => \io4|Selector104~0_combout\);

-- Location: LCCOMB_X23_Y16_N18
\io4|Selector109~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector109~0_combout\ = (\io4|state.cmd8~q\) # ((\io4|return_state.cmd55~q\ & ((\io4|fsm:bit_counter[1]~5_combout\) # (!\io4|return_state.init~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|state.cmd8~q\,
	datab => \io4|fsm:bit_counter[1]~5_combout\,
	datac => \io4|return_state.cmd55~q\,
	datad => \io4|return_state.init~0_combout\,
	combout => \io4|Selector109~0_combout\);

-- Location: FF_X23_Y16_N19
\io4|return_state.cmd55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|Selector109~0_combout\,
	ena => \fnReset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|return_state.cmd55~q\);

-- Location: LCCOMB_X23_Y18_N0
\io4|Selector176~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector176~0_combout\ = (\io4|state.receive_byte~q\ & \fSD_DO~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|state.receive_byte~q\,
	datad => \fSD_DO~input_o\,
	combout => \io4|Selector176~0_combout\);

-- Location: LCCOMB_X21_Y17_N14
\io4|Selector78~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector78~0_combout\ = (!\io4|state.receive_byte_wait~q\ & !\io4|state.receive_ocr_wait~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \io4|state.receive_byte_wait~q\,
	datad => \io4|state.receive_ocr_wait~q\,
	combout => \io4|Selector78~0_combout\);

-- Location: LCCOMB_X21_Y17_N4
\io4|recv_data[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|recv_data[0]~0_combout\ = (\fnReset~input_o\ & ((\io4|Selector2~3_combout\) # ((!\io4|Selector78~0_combout\ & \io4|fsm~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fnReset~input_o\,
	datab => \io4|Selector2~3_combout\,
	datac => \io4|Selector78~0_combout\,
	datad => \io4|fsm~2_combout\,
	combout => \io4|recv_data[0]~0_combout\);

-- Location: FF_X23_Y18_N1
\io4|recv_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|Selector176~0_combout\,
	ena => \io4|recv_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|recv_data\(0));

-- Location: LCCOMB_X23_Y18_N4
\io4|Selector84~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector84~1_combout\ = (\io4|state.poll_cmd~q\ & ((\io4|recv_data\(0)) # ((\io4|Selector84~0_combout\ & \io4|return_state.cmd55~q\)))) # (!\io4|state.poll_cmd~q\ & (\io4|Selector84~0_combout\ & (\io4|return_state.cmd55~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|state.poll_cmd~q\,
	datab => \io4|Selector84~0_combout\,
	datac => \io4|return_state.cmd55~q\,
	datad => \io4|recv_data\(0),
	combout => \io4|Selector84~1_combout\);

-- Location: FF_X23_Y18_N5
\io4|state.cmd55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|Selector84~1_combout\,
	clrn => \fnReset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|state.cmd55~q\);

-- Location: LCCOMB_X23_Y16_N6
\io4|Selector110~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector110~0_combout\ = (\io4|state.cmd55~q\) # ((\io4|return_state.acmd41~q\ & ((\io4|fsm:bit_counter[1]~5_combout\) # (!\io4|return_state.init~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|fsm:bit_counter[1]~5_combout\,
	datab => \io4|state.cmd55~q\,
	datac => \io4|return_state.acmd41~q\,
	datad => \io4|return_state.init~0_combout\,
	combout => \io4|Selector110~0_combout\);

-- Location: FF_X23_Y16_N7
\io4|return_state.acmd41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|Selector110~0_combout\,
	ena => \fnReset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|return_state.acmd41~q\);

-- Location: LCCOMB_X23_Y16_N2
\io4|Selector85~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector85~0_combout\ = (\io4|Equal9~1_combout\ & (\io4|Equal9~0_combout\ & (\io4|Selector2~3_combout\ & \io4|return_state.acmd41~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|Equal9~1_combout\,
	datab => \io4|Equal9~0_combout\,
	datac => \io4|Selector2~3_combout\,
	datad => \io4|return_state.acmd41~q\,
	combout => \io4|Selector85~0_combout\);

-- Location: FF_X23_Y16_N3
\io4|state.acmd41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|Selector85~0_combout\,
	clrn => \fnReset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|state.acmd41~q\);

-- Location: LCCOMB_X23_Y16_N28
\io4|Selector111~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector111~0_combout\ = (\io4|state.acmd41~q\) # ((\io4|return_state.poll_cmd~q\ & ((\io4|fsm:bit_counter[1]~5_combout\) # (!\io4|return_state.init~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|fsm:bit_counter[1]~5_combout\,
	datab => \io4|state.acmd41~q\,
	datac => \io4|return_state.poll_cmd~q\,
	datad => \io4|return_state.init~0_combout\,
	combout => \io4|Selector111~0_combout\);

-- Location: FF_X23_Y16_N29
\io4|return_state.poll_cmd\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|Selector111~0_combout\,
	ena => \fnReset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|return_state.poll_cmd~q\);

-- Location: LCCOMB_X23_Y18_N10
\io4|Selector86~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector86~0_combout\ = (\io4|Selector2~3_combout\ & (\io4|Equal9~0_combout\ & (\io4|Equal9~1_combout\ & \io4|return_state.poll_cmd~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|Selector2~3_combout\,
	datab => \io4|Equal9~0_combout\,
	datac => \io4|Equal9~1_combout\,
	datad => \io4|return_state.poll_cmd~q\,
	combout => \io4|Selector86~0_combout\);

-- Location: FF_X23_Y18_N11
\io4|state.poll_cmd\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|Selector86~0_combout\,
	clrn => \fnReset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|state.poll_cmd~q\);

-- Location: LCCOMB_X23_Y20_N24
\io4|Selector175~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector175~0_combout\ = (\io4|state.receive_byte~q\ & \io4|recv_data\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \io4|state.receive_byte~q\,
	datad => \io4|recv_data\(0),
	combout => \io4|Selector175~0_combout\);

-- Location: FF_X23_Y20_N25
\io4|recv_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|Selector175~0_combout\,
	ena => \io4|recv_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|recv_data\(1));

-- Location: LCCOMB_X23_Y20_N2
\io4|Selector174~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector174~0_combout\ = (\io4|state.receive_byte~q\ & \io4|recv_data\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \io4|state.receive_byte~q\,
	datad => \io4|recv_data\(1),
	combout => \io4|Selector174~0_combout\);

-- Location: FF_X23_Y20_N3
\io4|recv_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|Selector174~0_combout\,
	ena => \io4|recv_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|recv_data\(2));

-- Location: LCCOMB_X23_Y20_N4
\io4|Selector173~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector173~0_combout\ = (\io4|state.receive_byte~q\ & \io4|recv_data\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \io4|state.receive_byte~q\,
	datad => \io4|recv_data\(2),
	combout => \io4|Selector173~0_combout\);

-- Location: FF_X23_Y20_N5
\io4|recv_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|Selector173~0_combout\,
	ena => \io4|recv_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|recv_data\(3));

-- Location: LCCOMB_X23_Y20_N6
\io4|Selector172~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector172~0_combout\ = (\io4|recv_data\(3) & \io4|state.receive_byte~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \io4|recv_data\(3),
	datad => \io4|state.receive_byte~q\,
	combout => \io4|Selector172~0_combout\);

-- Location: FF_X23_Y20_N7
\io4|recv_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|Selector172~0_combout\,
	ena => \io4|recv_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|recv_data\(4));

-- Location: LCCOMB_X23_Y20_N8
\io4|Selector171~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector171~0_combout\ = (\io4|state.receive_byte~q\ & \io4|recv_data\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \io4|state.receive_byte~q\,
	datad => \io4|recv_data\(4),
	combout => \io4|Selector171~0_combout\);

-- Location: FF_X23_Y20_N9
\io4|recv_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|Selector171~0_combout\,
	ena => \io4|recv_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|recv_data\(5));

-- Location: LCCOMB_X23_Y20_N10
\io4|Selector170~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector170~0_combout\ = (\io4|recv_data\(5) & \io4|state.receive_byte~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \io4|recv_data\(5),
	datad => \io4|state.receive_byte~q\,
	combout => \io4|Selector170~0_combout\);

-- Location: FF_X23_Y20_N11
\io4|recv_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|Selector170~0_combout\,
	ena => \io4|recv_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|recv_data\(6));

-- Location: LCCOMB_X23_Y20_N28
\io4|Selector169~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector169~0_combout\ = (\io4|state.receive_byte~q\ & \io4|recv_data\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \io4|state.receive_byte~q\,
	datad => \io4|recv_data\(6),
	combout => \io4|Selector169~0_combout\);

-- Location: FF_X23_Y20_N29
\io4|recv_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|Selector169~0_combout\,
	ena => \io4|recv_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|recv_data\(7));

-- Location: LCCOMB_X23_Y20_N0
\io4|Selector168~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector168~0_combout\ = (\io4|state.receive_byte~q\ & \io4|recv_data\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \io4|state.receive_byte~q\,
	datad => \io4|recv_data\(7),
	combout => \io4|Selector168~0_combout\);

-- Location: FF_X23_Y20_N1
\io4|recv_data[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|Selector168~0_combout\,
	ena => \io4|recv_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|recv_data\(8));

-- Location: LCCOMB_X23_Y20_N30
\io4|Selector167~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector167~0_combout\ = (\io4|state.receive_byte~q\ & \io4|recv_data\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \io4|state.receive_byte~q\,
	datad => \io4|recv_data\(8),
	combout => \io4|Selector167~0_combout\);

-- Location: FF_X23_Y20_N31
\io4|recv_data[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|Selector167~0_combout\,
	ena => \io4|recv_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|recv_data\(9));

-- Location: LCCOMB_X23_Y20_N20
\io4|Selector166~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector166~0_combout\ = (\io4|recv_data\(9) & \io4|state.receive_byte~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \io4|recv_data\(9),
	datad => \io4|state.receive_byte~q\,
	combout => \io4|Selector166~0_combout\);

-- Location: FF_X23_Y20_N21
\io4|recv_data[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|Selector166~0_combout\,
	ena => \io4|recv_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|recv_data\(10));

-- Location: LCCOMB_X23_Y20_N18
\io4|Selector165~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector165~0_combout\ = (\io4|state.receive_byte~q\ & \io4|recv_data\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \io4|state.receive_byte~q\,
	datad => \io4|recv_data\(10),
	combout => \io4|Selector165~0_combout\);

-- Location: FF_X23_Y20_N19
\io4|recv_data[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|Selector165~0_combout\,
	ena => \io4|recv_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|recv_data\(11));

-- Location: LCCOMB_X23_Y20_N16
\io4|Selector164~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector164~0_combout\ = (\io4|state.receive_byte~q\ & \io4|recv_data\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \io4|state.receive_byte~q\,
	datad => \io4|recv_data\(11),
	combout => \io4|Selector164~0_combout\);

-- Location: FF_X23_Y20_N17
\io4|recv_data[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|Selector164~0_combout\,
	ena => \io4|recv_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|recv_data\(12));

-- Location: LCCOMB_X23_Y20_N22
\io4|Selector163~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector163~0_combout\ = (\io4|state.receive_byte~q\ & \io4|recv_data\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \io4|state.receive_byte~q\,
	datad => \io4|recv_data\(12),
	combout => \io4|Selector163~0_combout\);

-- Location: FF_X23_Y20_N23
\io4|recv_data[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|Selector163~0_combout\,
	ena => \io4|recv_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|recv_data\(13));

-- Location: LCCOMB_X22_Y21_N14
\io4|Selector162~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector162~0_combout\ = (\io4|recv_data\(13) & \io4|state.receive_byte~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \io4|recv_data\(13),
	datad => \io4|state.receive_byte~q\,
	combout => \io4|Selector162~0_combout\);

-- Location: FF_X22_Y21_N15
\io4|recv_data[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|Selector162~0_combout\,
	ena => \io4|recv_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|recv_data\(14));

-- Location: LCCOMB_X22_Y21_N28
\io4|Selector161~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector161~0_combout\ = (\io4|recv_data\(14) & \io4|state.receive_byte~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \io4|recv_data\(14),
	datad => \io4|state.receive_byte~q\,
	combout => \io4|Selector161~0_combout\);

-- Location: FF_X22_Y21_N29
\io4|recv_data[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|Selector161~0_combout\,
	ena => \io4|recv_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|recv_data\(15));

-- Location: LCCOMB_X22_Y21_N26
\io4|Selector160~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector160~0_combout\ = (\io4|state.receive_byte~q\ & \io4|recv_data\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \io4|state.receive_byte~q\,
	datad => \io4|recv_data\(15),
	combout => \io4|Selector160~0_combout\);

-- Location: FF_X22_Y21_N27
\io4|recv_data[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|Selector160~0_combout\,
	ena => \io4|recv_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|recv_data\(16));

-- Location: LCCOMB_X22_Y21_N24
\io4|Selector159~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector159~0_combout\ = (\io4|recv_data\(16) & \io4|state.receive_byte~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \io4|recv_data\(16),
	datad => \io4|state.receive_byte~q\,
	combout => \io4|Selector159~0_combout\);

-- Location: FF_X22_Y21_N25
\io4|recv_data[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|Selector159~0_combout\,
	ena => \io4|recv_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|recv_data\(17));

-- Location: LCCOMB_X22_Y21_N6
\io4|Selector158~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector158~0_combout\ = (\io4|state.receive_byte~q\ & \io4|recv_data\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \io4|state.receive_byte~q\,
	datad => \io4|recv_data\(17),
	combout => \io4|Selector158~0_combout\);

-- Location: FF_X22_Y21_N7
\io4|recv_data[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|Selector158~0_combout\,
	ena => \io4|recv_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|recv_data\(18));

-- Location: LCCOMB_X22_Y21_N20
\io4|Selector157~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector157~0_combout\ = (\io4|state.receive_byte~q\ & \io4|recv_data\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \io4|state.receive_byte~q\,
	datad => \io4|recv_data\(18),
	combout => \io4|Selector157~0_combout\);

-- Location: FF_X22_Y21_N21
\io4|recv_data[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|Selector157~0_combout\,
	ena => \io4|recv_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|recv_data\(19));

-- Location: LCCOMB_X22_Y21_N10
\io4|Selector156~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector156~0_combout\ = (\io4|state.receive_byte~q\ & \io4|recv_data\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \io4|state.receive_byte~q\,
	datad => \io4|recv_data\(19),
	combout => \io4|Selector156~0_combout\);

-- Location: FF_X22_Y21_N11
\io4|recv_data[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|Selector156~0_combout\,
	ena => \io4|recv_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|recv_data\(20));

-- Location: LCCOMB_X22_Y21_N16
\io4|Selector155~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector155~0_combout\ = (\io4|state.receive_byte~q\ & \io4|recv_data\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \io4|state.receive_byte~q\,
	datad => \io4|recv_data\(20),
	combout => \io4|Selector155~0_combout\);

-- Location: FF_X22_Y21_N17
\io4|recv_data[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|Selector155~0_combout\,
	ena => \io4|recv_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|recv_data\(21));

-- Location: LCCOMB_X22_Y21_N30
\io4|Selector154~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector154~0_combout\ = (\io4|state.receive_byte~q\ & \io4|recv_data\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \io4|state.receive_byte~q\,
	datad => \io4|recv_data\(21),
	combout => \io4|Selector154~0_combout\);

-- Location: FF_X22_Y21_N31
\io4|recv_data[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|Selector154~0_combout\,
	ena => \io4|recv_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|recv_data\(22));

-- Location: LCCOMB_X22_Y21_N4
\io4|Selector153~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector153~0_combout\ = (\io4|recv_data\(22) & \io4|state.receive_byte~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \io4|recv_data\(22),
	datad => \io4|state.receive_byte~q\,
	combout => \io4|Selector153~0_combout\);

-- Location: FF_X22_Y21_N5
\io4|recv_data[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|Selector153~0_combout\,
	ena => \io4|recv_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|recv_data\(23));

-- Location: LCCOMB_X22_Y21_N2
\io4|Selector152~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector152~0_combout\ = (\io4|recv_data\(23) & \io4|state.receive_byte~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \io4|recv_data\(23),
	datad => \io4|state.receive_byte~q\,
	combout => \io4|Selector152~0_combout\);

-- Location: FF_X22_Y21_N3
\io4|recv_data[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|Selector152~0_combout\,
	ena => \io4|recv_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|recv_data\(24));

-- Location: LCCOMB_X22_Y21_N8
\io4|Selector151~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector151~0_combout\ = (\io4|state.receive_byte~q\ & \io4|recv_data\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \io4|state.receive_byte~q\,
	datad => \io4|recv_data\(24),
	combout => \io4|Selector151~0_combout\);

-- Location: FF_X22_Y21_N9
\io4|recv_data[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|Selector151~0_combout\,
	ena => \io4|recv_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|recv_data\(25));

-- Location: LCCOMB_X22_Y21_N22
\io4|Selector150~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector150~0_combout\ = (\io4|recv_data\(25) & \io4|state.receive_byte~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \io4|recv_data\(25),
	datad => \io4|state.receive_byte~q\,
	combout => \io4|Selector150~0_combout\);

-- Location: FF_X22_Y21_N23
\io4|recv_data[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|Selector150~0_combout\,
	ena => \io4|recv_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|recv_data\(26));

-- Location: LCCOMB_X22_Y21_N12
\io4|Selector149~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector149~0_combout\ = (\io4|recv_data\(26) & \io4|state.receive_byte~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \io4|recv_data\(26),
	datad => \io4|state.receive_byte~q\,
	combout => \io4|Selector149~0_combout\);

-- Location: FF_X22_Y21_N13
\io4|recv_data[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|Selector149~0_combout\,
	ena => \io4|recv_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|recv_data\(27));

-- Location: LCCOMB_X22_Y21_N18
\io4|Selector148~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector148~0_combout\ = (\io4|state.receive_byte~q\ & \io4|recv_data\(27))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \io4|state.receive_byte~q\,
	datad => \io4|recv_data\(27),
	combout => \io4|Selector148~0_combout\);

-- Location: FF_X22_Y21_N19
\io4|recv_data[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|Selector148~0_combout\,
	ena => \io4|recv_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|recv_data\(28));

-- Location: LCCOMB_X22_Y21_N0
\io4|Selector147~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector147~0_combout\ = (\io4|state.receive_byte~q\ & \io4|recv_data\(28))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \io4|state.receive_byte~q\,
	datad => \io4|recv_data\(28),
	combout => \io4|Selector147~0_combout\);

-- Location: FF_X22_Y21_N1
\io4|recv_data[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|Selector147~0_combout\,
	ena => \io4|recv_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|recv_data\(29));

-- Location: LCCOMB_X23_Y18_N28
\io4|Selector146~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector146~0_combout\ = (\io4|recv_data\(29) & \io4|state.receive_byte~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \io4|recv_data\(29),
	datad => \io4|state.receive_byte~q\,
	combout => \io4|Selector146~0_combout\);

-- Location: FF_X23_Y18_N29
\io4|recv_data[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|Selector146~0_combout\,
	ena => \io4|recv_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|recv_data\(30));

-- Location: LCCOMB_X23_Y18_N26
\io4|Selector145~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector145~0_combout\ = (\io4|state.receive_byte~q\ & \io4|recv_data\(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|state.receive_byte~q\,
	datad => \io4|recv_data\(30),
	combout => \io4|Selector145~0_combout\);

-- Location: FF_X23_Y18_N27
\io4|recv_data[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|Selector145~0_combout\,
	ena => \io4|recv_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|recv_data\(31));

-- Location: LCCOMB_X23_Y16_N14
\io4|Selector113~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector113~0_combout\ = (\io4|state.cmd58~q\) # ((\io4|return_state.cardsel~q\ & ((\io4|fsm:bit_counter[1]~5_combout\) # (!\io4|return_state.init~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|fsm:bit_counter[1]~5_combout\,
	datab => \io4|state.cmd58~q\,
	datac => \io4|return_state.cardsel~q\,
	datad => \io4|return_state.init~0_combout\,
	combout => \io4|Selector113~0_combout\);

-- Location: FF_X23_Y16_N15
\io4|return_state.cardsel\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|Selector113~0_combout\,
	ena => \fnReset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|return_state.cardsel~q\);

-- Location: LCCOMB_X23_Y18_N12
\io4|Selector88~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector88~0_combout\ = (\io4|Selector2~3_combout\ & (\io4|Equal9~0_combout\ & (\io4|Equal9~1_combout\ & \io4|return_state.cardsel~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|Selector2~3_combout\,
	datab => \io4|Equal9~0_combout\,
	datac => \io4|Equal9~1_combout\,
	datad => \io4|return_state.cardsel~q\,
	combout => \io4|Selector88~0_combout\);

-- Location: FF_X23_Y18_N13
\io4|state.cardsel\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|Selector88~0_combout\,
	clrn => \fnReset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|state.cardsel~q\);

-- Location: LCCOMB_X23_Y18_N30
\io4|Selector87~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector87~0_combout\ = (\io4|state.poll_cmd~q\ & (((!\io4|recv_data\(31) & \io4|state.cardsel~q\)) # (!\io4|recv_data\(0)))) # (!\io4|state.poll_cmd~q\ & (((!\io4|recv_data\(31) & \io4|state.cardsel~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|state.poll_cmd~q\,
	datab => \io4|recv_data\(0),
	datac => \io4|recv_data\(31),
	datad => \io4|state.cardsel~q\,
	combout => \io4|Selector87~0_combout\);

-- Location: FF_X23_Y18_N31
\io4|state.cmd58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|Selector87~0_combout\,
	clrn => \fnReset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|state.cmd58~q\);

-- Location: LCCOMB_X24_Y19_N8
\io4|WideOr18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|WideOr18~0_combout\ = (!\io4|state.cmd8~q\ & !\io4|state.cmd58~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \io4|state.cmd8~q\,
	datad => \io4|state.cmd58~q\,
	combout => \io4|WideOr18~0_combout\);

-- Location: LCCOMB_X24_Y19_N18
\io4|WideOr28~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|WideOr28~3_combout\ = (\io4|Selector104~0_combout\ & (\io4|WideOr18~0_combout\ & (!\io4|state.acmd41~q\ & !\io4|state.cmd0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|Selector104~0_combout\,
	datab => \io4|WideOr18~0_combout\,
	datac => \io4|state.acmd41~q\,
	datad => \io4|state.cmd0~q\,
	combout => \io4|WideOr28~3_combout\);

-- Location: LCCOMB_X22_Y16_N4
\io4|WideOr60~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|WideOr60~1_combout\ = (\io4|WideOr28~3_combout\ & (!\io4|state.cmd55~q\ & (!\io4|state.read_block_wait~q\ & !\io4|state.read_block_data~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|WideOr28~3_combout\,
	datab => \io4|state.cmd55~q\,
	datac => \io4|state.read_block_wait~q\,
	datad => \io4|state.read_block_data~q\,
	combout => \io4|WideOr60~1_combout\);

-- Location: LCCOMB_X22_Y16_N8
\io4|return_state.init~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|return_state.init~0_combout\ = (!\io4|fsm:bit_counter[1]~3_combout\ & ((\io4|state.write_block_data~q\ & ((!\io4|Equal11~0_combout\))) # (!\io4|state.write_block_data~q\ & (!\io4|WideOr60~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|WideOr60~1_combout\,
	datab => \io4|fsm:bit_counter[1]~3_combout\,
	datac => \io4|state.write_block_data~q\,
	datad => \io4|Equal11~0_combout\,
	combout => \io4|return_state.init~0_combout\);

-- Location: LCCOMB_X23_Y16_N4
\io4|Selector108~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector108~0_combout\ = (\io4|state.cmd0~q\) # ((\io4|return_state.cmd8~q\ & ((\io4|fsm:bit_counter[1]~5_combout\) # (!\io4|return_state.init~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|fsm:bit_counter[1]~5_combout\,
	datab => \io4|state.cmd0~q\,
	datac => \io4|return_state.cmd8~q\,
	datad => \io4|return_state.init~0_combout\,
	combout => \io4|Selector108~0_combout\);

-- Location: FF_X23_Y16_N5
\io4|return_state.cmd8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|Selector108~0_combout\,
	ena => \fnReset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|return_state.cmd8~q\);

-- Location: LCCOMB_X23_Y16_N22
\io4|Selector83~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector83~10_combout\ = (\io4|Equal9~1_combout\ & (\io4|return_state.cmd8~q\ & (\io4|Selector2~3_combout\ & \io4|Equal9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|Equal9~1_combout\,
	datab => \io4|return_state.cmd8~q\,
	datac => \io4|Selector2~3_combout\,
	datad => \io4|Equal9~0_combout\,
	combout => \io4|Selector83~10_combout\);

-- Location: FF_X23_Y16_N23
\io4|state.cmd8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|Selector83~10_combout\,
	clrn => \fnReset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|state.cmd8~q\);

-- Location: LCCOMB_X24_Y19_N30
\io4|Selector94~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector94~2_combout\ = (\io4|state.cmd8~q\) # ((\io4|state.cmd58~q\) # ((!\io4|Selector100~0_combout\ & \io4|state.send_regreq~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|Selector100~0_combout\,
	datab => \io4|state.cmd8~q\,
	datac => \io4|state.send_regreq~q\,
	datad => \io4|state.cmd58~q\,
	combout => \io4|Selector94~2_combout\);

-- Location: FF_X24_Y19_N31
\io4|state.send_regreq\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|Selector94~2_combout\,
	clrn => \fnReset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|state.send_regreq~q\);

-- Location: LCCOMB_X24_Y19_N24
\io4|Selector95~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector95~0_combout\ = (\io4|Selector100~0_combout\ & ((\io4|state.send_regreq~q\) # ((!\io4|fsm~2_combout\ & \io4|state.receive_ocr_wait~q\)))) # (!\io4|Selector100~0_combout\ & (!\io4|fsm~2_combout\ & (\io4|state.receive_ocr_wait~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|Selector100~0_combout\,
	datab => \io4|fsm~2_combout\,
	datac => \io4|state.receive_ocr_wait~q\,
	datad => \io4|state.send_regreq~q\,
	combout => \io4|Selector95~0_combout\);

-- Location: FF_X24_Y19_N25
\io4|state.receive_ocr_wait\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|Selector95~0_combout\,
	clrn => \fnReset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|state.receive_ocr_wait~q\);

-- Location: LCCOMB_X23_Y17_N8
\io4|Selector83~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector83~6_combout\ = ((!\io4|state.receive_byte_wait~q\ & (!\io4|state.write_block_wait~q\ & !\io4|state.receive_ocr_wait~q\))) # (!\io4|sclk_sig~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|sclk_sig~q\,
	datab => \io4|state.receive_byte_wait~q\,
	datac => \io4|state.write_block_wait~q\,
	datad => \io4|state.receive_ocr_wait~q\,
	combout => \io4|Selector83~6_combout\);

-- Location: LCCOMB_X24_Y17_N6
\io4|Selector101~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector101~0_combout\ = (\io4|state.write_block_byte~q\ & (!\io4|Selector84~0_combout\ & ((\io4|Equal11~0_combout\) # (!\io4|state.write_block_data~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|state.write_block_data~q\,
	datab => \io4|state.write_block_byte~q\,
	datac => \io4|Selector84~0_combout\,
	datad => \io4|Equal11~0_combout\,
	combout => \io4|Selector101~0_combout\);

-- Location: LCCOMB_X25_Y17_N10
\io4|bit_counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|bit_counter~0_combout\ = (\io4|Equal11~0_combout\ & ((\io4|fsm~1_combout\) # ((\io4|fsm~0_combout\) # (!\io4|Equal14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|fsm~1_combout\,
	datab => \io4|Equal14~0_combout\,
	datac => \io4|Equal11~0_combout\,
	datad => \io4|fsm~0_combout\,
	combout => \io4|bit_counter~0_combout\);

-- Location: LCCOMB_X21_Y17_N24
\io4|Selector101~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector101~1_combout\ = (\io4|Selector101~0_combout\ & (((\io4|state.write_block_data~q\ & \io4|bit_counter~0_combout\)) # (!\io4|Selector83~8_combout\))) # (!\io4|Selector101~0_combout\ & (((\io4|state.write_block_data~q\ & 
-- \io4|bit_counter~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|Selector101~0_combout\,
	datab => \io4|Selector83~8_combout\,
	datac => \io4|state.write_block_data~q\,
	datad => \io4|bit_counter~0_combout\,
	combout => \io4|Selector101~1_combout\);

-- Location: FF_X21_Y17_N25
\io4|state.write_block_byte\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|Selector101~1_combout\,
	clrn => \fnReset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|state.write_block_byte~q\);

-- Location: LCCOMB_X24_Y19_N12
\io4|WideOr17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|WideOr17~0_combout\ = (!\io4|state.cmd55~q\ & (!\io4|state.acmd41~q\ & !\io4|state.cmd0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \io4|state.cmd55~q\,
	datac => \io4|state.acmd41~q\,
	datad => \io4|state.cmd0~q\,
	combout => \io4|WideOr17~0_combout\);

-- Location: LCCOMB_X24_Y19_N20
\io4|Selector93~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector93~0_combout\ = (((!\io4|Selector100~0_combout\ & \io4|state.send_cmd~q\)) # (!\io4|WideOr17~0_combout\)) # (!\io4|Selector104~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|Selector100~0_combout\,
	datab => \io4|Selector104~0_combout\,
	datac => \io4|state.send_cmd~q\,
	datad => \io4|WideOr17~0_combout\,
	combout => \io4|Selector93~0_combout\);

-- Location: FF_X24_Y19_N21
\io4|state.send_cmd\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|Selector93~0_combout\,
	clrn => \fnReset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|state.send_cmd~q\);

-- Location: LCCOMB_X23_Y19_N0
\io4|WideOr29~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|WideOr29~2_combout\ = (!\io4|state.send_cmd~q\ & !\io4|state.send_regreq~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \io4|state.send_cmd~q\,
	datad => \io4|state.send_regreq~q\,
	combout => \io4|WideOr29~2_combout\);

-- Location: LCCOMB_X23_Y17_N6
\io4|Selector83~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector83~5_combout\ = (\io4|state.write_block_byte~q\ & (\io4|state.write_block_wait~q\ $ (((\io4|sclk_sig~q\))))) # (!\io4|state.write_block_byte~q\ & ((\io4|WideOr29~2_combout\) # (\io4|state.write_block_wait~q\ $ (\io4|sclk_sig~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|state.write_block_wait~q\,
	datab => \io4|state.write_block_byte~q\,
	datac => \io4|WideOr29~2_combout\,
	datad => \io4|sclk_sig~q\,
	combout => \io4|Selector83~5_combout\);

-- Location: LCCOMB_X23_Y17_N10
\io4|Selector83~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector83~7_combout\ = (!\io4|state.write_block_data~q\ & (!\io4|state.receive_byte~q\ & (\io4|Selector83~6_combout\ & \io4|Selector83~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|state.write_block_data~q\,
	datab => \io4|state.receive_byte~q\,
	datac => \io4|Selector83~6_combout\,
	datad => \io4|Selector83~5_combout\,
	combout => \io4|Selector83~7_combout\);

-- Location: LCCOMB_X23_Y17_N12
\io4|Selector83~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector83~0_combout\ = (!\io4|state.read_block_wait~q\ & (!\fSD_DO~input_o\ & ((\io4|state.receive_byte_wait~q\) # (\io4|state.receive_ocr_wait~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|state.read_block_wait~q\,
	datab => \io4|state.receive_byte_wait~q\,
	datac => \fSD_DO~input_o\,
	datad => \io4|state.receive_ocr_wait~q\,
	combout => \io4|Selector83~0_combout\);

-- Location: LCCOMB_X23_Y17_N18
\io4|Selector83~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector83~3_combout\ = (!\io4|state.read_block_wait~q\ & (((\io4|state.write_block_byte~q\) # (\io4|state.init~q\)) # (!\io4|WideOr29~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|WideOr29~2_combout\,
	datab => \io4|state.write_block_byte~q\,
	datac => \io4|state.init~q\,
	datad => \io4|state.read_block_wait~q\,
	combout => \io4|Selector83~3_combout\);

-- Location: LCCOMB_X23_Y17_N14
\io4|Selector83~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector83~1_combout\ = (\io4|state.read_block_wait~q\ & (((!\fSD_DO~input_o\ & !\io4|sclk_sig~q\)))) # (!\io4|state.read_block_wait~q\ & (\io4|state.write_block_wait~q\ & (\fSD_DO~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|state.write_block_wait~q\,
	datab => \io4|state.read_block_wait~q\,
	datac => \fSD_DO~input_o\,
	datad => \io4|sclk_sig~q\,
	combout => \io4|Selector83~1_combout\);

-- Location: LCCOMB_X23_Y17_N24
\io4|Selector83~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector83~2_combout\ = (\io4|state.write_block_wait~q\ & (((\fSD_DO~input_o\)))) # (!\io4|state.write_block_wait~q\ & (\io4|Equal9~0_combout\ & ((\io4|Equal9~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|state.write_block_wait~q\,
	datab => \io4|Equal9~0_combout\,
	datac => \fSD_DO~input_o\,
	datad => \io4|Equal9~1_combout\,
	combout => \io4|Selector83~2_combout\);

-- Location: LCCOMB_X23_Y17_N20
\io4|Selector83~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector83~4_combout\ = (\io4|Selector83~0_combout\) # ((\io4|Selector83~1_combout\) # ((\io4|Selector83~3_combout\ & \io4|Selector83~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|Selector83~0_combout\,
	datab => \io4|Selector83~3_combout\,
	datac => \io4|Selector83~1_combout\,
	datad => \io4|Selector83~2_combout\,
	combout => \io4|Selector83~4_combout\);

-- Location: LCCOMB_X23_Y17_N4
\io4|Selector83~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector83~8_combout\ = (\io4|Selector83~4_combout\ & ((\io4|Selector83~7_combout\) # ((\io4|state.read_block_wait~q\) # (\io4|state.init~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|Selector83~7_combout\,
	datab => \io4|state.read_block_wait~q\,
	datac => \io4|state.init~q\,
	datad => \io4|Selector83~4_combout\,
	combout => \io4|Selector83~8_combout\);

-- Location: LCCOMB_X22_Y18_N0
\io4|WideOr49~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|WideOr49~0_combout\ = (\io4|state.init~q\) # ((\io4|state.write_block_data~q\) # ((\io4|state.receive_byte~q\) # (!\io4|Selector2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|state.init~q\,
	datab => \io4|state.write_block_data~q\,
	datac => \io4|state.receive_byte~q\,
	datad => \io4|Selector2~0_combout\,
	combout => \io4|WideOr49~0_combout\);

-- Location: LCCOMB_X22_Y18_N2
\io4|Selector91~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector91~0_combout\ = (\io4|Selector83~8_combout\) # ((\io4|Selector84~0_combout\) # (!\io4|WideOr49~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \io4|Selector83~8_combout\,
	datac => \io4|Selector84~0_combout\,
	datad => \io4|WideOr49~0_combout\,
	combout => \io4|Selector91~0_combout\);

-- Location: FF_X22_Y18_N17
\io4|state.write_block_wait\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|Selector102~0_combout\,
	clrn => \fnReset~input_o\,
	ena => \io4|Selector91~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|state.write_block_wait~q\);

-- Location: LCCOMB_X21_Y16_N20
\io4|Selector69~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector69~0_combout\ = (!\io4|state.write_block_wait~q\ & (\io4|state.rst~q\ & !\io4|state.idle~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \io4|state.write_block_wait~q\,
	datac => \io4|state.rst~q\,
	datad => \io4|state.idle~q\,
	combout => \io4|Selector69~0_combout\);

-- Location: LCCOMB_X23_Y16_N8
\io4|Selector70~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector70~0_combout\ = (\io4|state.write_block_data~q\ & (((\io4|response_mode~q\)) # (!\io4|Equal11~0_combout\))) # (!\io4|state.write_block_data~q\ & (((\io4|response_mode~q\ & \io4|Selector69~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|Equal11~0_combout\,
	datab => \io4|state.write_block_data~q\,
	datac => \io4|response_mode~q\,
	datad => \io4|Selector69~0_combout\,
	combout => \io4|Selector70~0_combout\);

-- Location: FF_X23_Y16_N9
\io4|response_mode\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|Selector70~0_combout\,
	ena => \fnReset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|response_mode~q\);

-- Location: LCCOMB_X21_Y16_N8
\io4|Selector77~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector77~0_combout\ = (\io4|state.rst~q\ & !\io4|state.read_block_wait~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|state.rst~q\,
	datad => \io4|state.read_block_wait~q\,
	combout => \io4|Selector77~0_combout\);

-- Location: LCCOMB_X21_Y16_N26
\io4|WideOr60~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|WideOr60~0_combout\ = (!\io4|state.read_block_data~q\ & (!\io4|state.cmd55~q\ & \io4|WideOr28~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \io4|state.read_block_data~q\,
	datac => \io4|state.cmd55~q\,
	datad => \io4|WideOr28~3_combout\,
	combout => \io4|WideOr60~0_combout\);

-- Location: LCCOMB_X21_Y18_N4
\io4|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Add0~0_combout\ = \io4|fsm:bit_counter[0]~q\ $ (VCC)
-- \io4|Add0~1\ = CARRY(\io4|fsm:bit_counter[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \io4|fsm:bit_counter[0]~q\,
	datad => VCC,
	combout => \io4|Add0~0_combout\,
	cout => \io4|Add0~1\);

-- Location: LCCOMB_X21_Y17_N16
\io4|Selector78~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector78~1_combout\ = (\io4|Selector78~0_combout\ & (((\io4|Selector77~0_combout\ & \io4|Add0~0_combout\)) # (!\io4|WideOr60~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|Selector77~0_combout\,
	datab => \io4|Selector78~0_combout\,
	datac => \io4|WideOr60~0_combout\,
	datad => \io4|Add0~0_combout\,
	combout => \io4|Selector78~1_combout\);

-- Location: LCCOMB_X21_Y20_N16
\io4|Selector78~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector78~2_combout\ = (\io4|Selector78~1_combout\) # ((\io4|response_mode~q\ & \io4|state.receive_byte_wait~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|response_mode~q\,
	datab => \io4|state.receive_byte_wait~q\,
	datad => \io4|Selector78~1_combout\,
	combout => \io4|Selector78~2_combout\);

-- Location: LCCOMB_X23_Y17_N26
\io4|fsm:bit_counter[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|fsm:bit_counter[0]~4_combout\ = (\io4|sclk_sig~q\ & (!\io4|state.receive_byte_wait~q\ & ((!\io4|state.receive_ocr_wait~q\)))) # (!\io4|sclk_sig~q\ & (((!\io4|state.receive_byte_wait~q\ & !\io4|state.receive_ocr_wait~q\)) # (!\fSD_DO~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|sclk_sig~q\,
	datab => \io4|state.receive_byte_wait~q\,
	datac => \fSD_DO~input_o\,
	datad => \io4|state.receive_ocr_wait~q\,
	combout => \io4|fsm:bit_counter[0]~4_combout\);

-- Location: LCCOMB_X23_Y18_N14
\io4|WideOr37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|WideOr37~0_combout\ = (\io4|state.cardsel~q\) # ((\io4|state.idle~q\) # ((\io4|state.write_block_init~q\) # (\io4|state.poll_cmd~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|state.cardsel~q\,
	datab => \io4|state.idle~q\,
	datac => \io4|state.write_block_init~q\,
	datad => \io4|state.poll_cmd~q\,
	combout => \io4|WideOr37~0_combout\);

-- Location: LCCOMB_X22_Y16_N12
\io4|fsm:bit_counter[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|fsm:bit_counter[0]~2_combout\ = (!\io4|state.write_block_wait~q\ & (!\io4|fsm:bit_counter[1]~3_combout\ & (!\io4|fsm:bit_counter[1]~4_combout\ & !\io4|WideOr37~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|state.write_block_wait~q\,
	datab => \io4|fsm:bit_counter[1]~3_combout\,
	datac => \io4|fsm:bit_counter[1]~4_combout\,
	datad => \io4|WideOr37~0_combout\,
	combout => \io4|fsm:bit_counter[0]~2_combout\);

-- Location: LCCOMB_X22_Y18_N20
\io4|Equal9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Equal9~2_combout\ = (\io4|Equal9~1_combout\ & \io4|Equal9~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|Equal9~1_combout\,
	datac => \io4|Equal9~0_combout\,
	combout => \io4|Equal9~2_combout\);

-- Location: LCCOMB_X22_Y18_N10
\io4|fsm:bit_counter[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|fsm:bit_counter[0]~0_combout\ = (\io4|state.receive_byte~q\ & (((!\io4|sclk_sig~q\ & !\io4|Equal9~2_combout\)))) # (!\io4|state.receive_byte~q\ & (((\io4|sclk_sig~q\ & !\io4|Equal9~2_combout\)) # (!\io4|state.write_block_byte~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|state.receive_byte~q\,
	datab => \io4|state.write_block_byte~q\,
	datac => \io4|sclk_sig~q\,
	datad => \io4|Equal9~2_combout\,
	combout => \io4|fsm:bit_counter[0]~0_combout\);

-- Location: LCCOMB_X22_Y18_N28
\io4|fsm:bit_counter[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|fsm:bit_counter[1]~2_combout\ = (\io4|Equal9~0_combout\ & ((\io4|Equal9~1_combout\) # (\io4|sclk_sig~q\ $ (!\io4|state.receive_byte~q\)))) # (!\io4|Equal9~0_combout\ & (\io4|sclk_sig~q\ $ ((!\io4|state.receive_byte~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100110011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|sclk_sig~q\,
	datab => \io4|state.receive_byte~q\,
	datac => \io4|Equal9~0_combout\,
	datad => \io4|Equal9~1_combout\,
	combout => \io4|fsm:bit_counter[1]~2_combout\);

-- Location: LCCOMB_X22_Y18_N30
\io4|fsm:bit_counter[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|fsm:bit_counter[0]~1_combout\ = (\io4|fsm:bit_counter[0]~0_combout\ & (((!\io4|state.send_cmd~q\ & !\io4|state.send_regreq~q\)) # (!\io4|fsm:bit_counter[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|fsm:bit_counter[0]~0_combout\,
	datab => \io4|state.send_cmd~q\,
	datac => \io4|fsm:bit_counter[1]~2_combout\,
	datad => \io4|state.send_regreq~q\,
	combout => \io4|fsm:bit_counter[0]~1_combout\);

-- Location: LCCOMB_X21_Y17_N18
\io4|fsm:bit_counter[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|fsm:bit_counter[0]~3_combout\ = (\io4|fsm:bit_counter[0]~2_combout\ & (!\io4|fsm:bit_counter[1]~5_combout\ & (\fnReset~input_o\ & \io4|fsm:bit_counter[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|fsm:bit_counter[0]~2_combout\,
	datab => \io4|fsm:bit_counter[1]~5_combout\,
	datac => \fnReset~input_o\,
	datad => \io4|fsm:bit_counter[0]~1_combout\,
	combout => \io4|fsm:bit_counter[0]~3_combout\);

-- Location: LCCOMB_X21_Y17_N2
\io4|fsm:bit_counter[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|fsm:bit_counter[0]~5_combout\ = (\io4|fsm:bit_counter[0]~4_combout\ & (\io4|fsm:bit_counter[0]~3_combout\ & ((\io4|bit_counter~0_combout\) # (!\io4|state.write_block_data~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|fsm:bit_counter[0]~4_combout\,
	datab => \io4|fsm:bit_counter[0]~3_combout\,
	datac => \io4|state.write_block_data~q\,
	datad => \io4|bit_counter~0_combout\,
	combout => \io4|fsm:bit_counter[0]~5_combout\);

-- Location: FF_X21_Y20_N17
\io4|fsm:bit_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|Selector78~2_combout\,
	asdata => VCC,
	sload => \io4|state.write_block_data~q\,
	ena => \io4|fsm:bit_counter[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|fsm:bit_counter[0]~q\);

-- Location: LCCOMB_X21_Y18_N6
\io4|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Add0~2_combout\ = (\io4|fsm:bit_counter[1]~q\ & (\io4|Add0~1\ & VCC)) # (!\io4|fsm:bit_counter[1]~q\ & (!\io4|Add0~1\))
-- \io4|Add0~3\ = CARRY((!\io4|fsm:bit_counter[1]~q\ & !\io4|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \io4|fsm:bit_counter[1]~q\,
	datad => VCC,
	cin => \io4|Add0~1\,
	combout => \io4|Add0~2_combout\,
	cout => \io4|Add0~3\);

-- Location: LCCOMB_X22_Y17_N20
\io4|data_sig[7]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|data_sig[7]~6_combout\ = (\io4|state.write_block_data~q\ & (\io4|Equal14~0_combout\ & !\io4|fsm~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \io4|state.write_block_data~q\,
	datac => \io4|Equal14~0_combout\,
	datad => \io4|fsm~0_combout\,
	combout => \io4|data_sig[7]~6_combout\);

-- Location: LCCOMB_X21_Y17_N0
\io4|fsm:bit_counter[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|fsm:bit_counter[1]~1_combout\ = (((\io4|data_sig[7]~6_combout\) # (!\io4|WideOr60~0_combout\)) # (!\io4|Selector78~0_combout\)) # (!\io4|Selector77~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|Selector77~0_combout\,
	datab => \io4|Selector78~0_combout\,
	datac => \io4|WideOr60~0_combout\,
	datad => \io4|data_sig[7]~6_combout\,
	combout => \io4|fsm:bit_counter[1]~1_combout\);

-- Location: LCCOMB_X21_Y18_N0
\io4|Selector77~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector77~1_combout\ = (\io4|fsm:bit_counter[1]~0_combout\) # ((\io4|fsm:bit_counter[1]~1_combout\ & ((\io4|Selector77~0_combout\))) # (!\io4|fsm:bit_counter[1]~1_combout\ & (\io4|Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|Add0~2_combout\,
	datab => \io4|fsm:bit_counter[1]~1_combout\,
	datac => \io4|Selector77~0_combout\,
	datad => \io4|fsm:bit_counter[1]~0_combout\,
	combout => \io4|Selector77~1_combout\);

-- Location: LCCOMB_X22_Y17_N14
\io4|fsm:bit_counter[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|fsm:bit_counter[1]~6_combout\ = (!\io4|sclk_sig~q\ & (\io4|state.write_block_data~q\ & (\io4|Equal11~0_combout\ & \io4|fsm~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|sclk_sig~q\,
	datab => \io4|state.write_block_data~q\,
	datac => \io4|Equal11~0_combout\,
	datad => \io4|fsm~1_combout\,
	combout => \io4|fsm:bit_counter[1]~6_combout\);

-- Location: LCCOMB_X21_Y17_N12
\io4|fsm:bit_counter[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|fsm:bit_counter[1]~7_combout\ = (\io4|fsm:bit_counter[1]~6_combout\) # ((!\io4|state.write_block_data~q\ & ((\io4|Selector78~0_combout\) # (\io4|fsm~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|state.write_block_data~q\,
	datab => \io4|fsm:bit_counter[1]~6_combout\,
	datac => \io4|Selector78~0_combout\,
	datad => \io4|fsm~2_combout\,
	combout => \io4|fsm:bit_counter[1]~7_combout\);

-- Location: LCCOMB_X21_Y17_N30
\io4|fsm:bit_counter[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|fsm:bit_counter[1]~8_combout\ = (\io4|fsm:bit_counter[0]~3_combout\ & ((\io4|fsm:bit_counter[1]~7_combout\) # ((\io4|Selector78~0_combout\ & \io4|bit_counter~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|fsm:bit_counter[1]~7_combout\,
	datab => \io4|fsm:bit_counter[0]~3_combout\,
	datac => \io4|Selector78~0_combout\,
	datad => \io4|bit_counter~0_combout\,
	combout => \io4|fsm:bit_counter[1]~8_combout\);

-- Location: FF_X21_Y18_N1
\io4|fsm:bit_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|Selector77~1_combout\,
	ena => \io4|fsm:bit_counter[1]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|fsm:bit_counter[1]~q\);

-- Location: LCCOMB_X21_Y18_N8
\io4|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Add0~4_combout\ = (\io4|fsm:bit_counter[2]~q\ & ((GND) # (!\io4|Add0~3\))) # (!\io4|fsm:bit_counter[2]~q\ & (\io4|Add0~3\ $ (GND)))
-- \io4|Add0~5\ = CARRY((\io4|fsm:bit_counter[2]~q\) # (!\io4|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \io4|fsm:bit_counter[2]~q\,
	datad => VCC,
	cin => \io4|Add0~3\,
	combout => \io4|Add0~4_combout\,
	cout => \io4|Add0~5\);

-- Location: LCCOMB_X21_Y17_N20
\io4|Selector76~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector76~0_combout\ = ((\io4|state.receive_ocr_wait~q\) # ((\io4|Selector77~0_combout\ & \io4|Add0~4_combout\))) # (!\io4|WideOr60~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|Selector77~0_combout\,
	datab => \io4|WideOr60~0_combout\,
	datac => \io4|Add0~4_combout\,
	datad => \io4|state.receive_ocr_wait~q\,
	combout => \io4|Selector76~0_combout\);

-- Location: LCCOMB_X21_Y20_N2
\io4|Selector76~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector76~1_combout\ = (\io4|state.receive_byte_wait~q\ & (!\io4|response_mode~q\)) # (!\io4|state.receive_byte_wait~q\ & ((\io4|Selector76~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|response_mode~q\,
	datab => \io4|Selector76~0_combout\,
	datad => \io4|state.receive_byte_wait~q\,
	combout => \io4|Selector76~1_combout\);

-- Location: FF_X21_Y20_N3
\io4|fsm:bit_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|Selector76~1_combout\,
	asdata => VCC,
	sload => \io4|state.write_block_data~q\,
	ena => \io4|fsm:bit_counter[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|fsm:bit_counter[2]~q\);

-- Location: LCCOMB_X21_Y18_N10
\io4|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Add0~6_combout\ = (\io4|fsm:bit_counter[3]~q\ & (\io4|Add0~5\ & VCC)) # (!\io4|fsm:bit_counter[3]~q\ & (!\io4|Add0~5\))
-- \io4|Add0~7\ = CARRY((!\io4|fsm:bit_counter[3]~q\ & !\io4|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \io4|fsm:bit_counter[3]~q\,
	datad => VCC,
	cin => \io4|Add0~5\,
	combout => \io4|Add0~6_combout\,
	cout => \io4|Add0~7\);

-- Location: LCCOMB_X21_Y18_N26
\io4|Selector75~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector75~0_combout\ = (\io4|fsm:bit_counter[1]~0_combout\ & (\io4|Add0~6_combout\ & (!\io4|fsm:bit_counter[6]~1_combout\))) # (!\io4|fsm:bit_counter[1]~0_combout\ & ((\io4|state.read_block_wait~q\) # ((\io4|Add0~6_combout\ & 
-- !\io4|fsm:bit_counter[6]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|fsm:bit_counter[1]~0_combout\,
	datab => \io4|Add0~6_combout\,
	datac => \io4|fsm:bit_counter[6]~1_combout\,
	datad => \io4|state.read_block_wait~q\,
	combout => \io4|Selector75~0_combout\);

-- Location: FF_X21_Y18_N27
\io4|fsm:bit_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|Selector75~0_combout\,
	ena => \io4|fsm:bit_counter[1]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|fsm:bit_counter[3]~q\);

-- Location: LCCOMB_X21_Y18_N12
\io4|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Add0~8_combout\ = (\io4|fsm:bit_counter[4]~q\ & ((GND) # (!\io4|Add0~7\))) # (!\io4|fsm:bit_counter[4]~q\ & (\io4|Add0~7\ $ (GND)))
-- \io4|Add0~9\ = CARRY((\io4|fsm:bit_counter[4]~q\) # (!\io4|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \io4|fsm:bit_counter[4]~q\,
	datad => VCC,
	cin => \io4|Add0~7\,
	combout => \io4|Add0~8_combout\,
	cout => \io4|Add0~9\);

-- Location: LCCOMB_X21_Y16_N16
\io4|WideOr61~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|WideOr61~0_combout\ = (!\io4|state.cmd55~q\ & \io4|WideOr28~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \io4|state.cmd55~q\,
	datad => \io4|WideOr28~3_combout\,
	combout => \io4|WideOr61~0_combout\);

-- Location: LCCOMB_X21_Y16_N0
\io4|Selector74~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector74~0_combout\ = (!\io4|fsm:bit_counter[1]~0_combout\ & (((\io4|Add0~8_combout\ & !\io4|fsm:bit_counter[1]~1_combout\)) # (!\io4|WideOr61~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|Add0~8_combout\,
	datab => \io4|WideOr61~0_combout\,
	datac => \io4|fsm:bit_counter[1]~0_combout\,
	datad => \io4|fsm:bit_counter[1]~1_combout\,
	combout => \io4|Selector74~0_combout\);

-- Location: FF_X21_Y16_N1
\io4|fsm:bit_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|Selector74~0_combout\,
	ena => \io4|fsm:bit_counter[1]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|fsm:bit_counter[4]~q\);

-- Location: LCCOMB_X21_Y18_N14
\io4|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Add0~10_combout\ = (\io4|fsm:bit_counter[5]~q\ & (\io4|Add0~9\ & VCC)) # (!\io4|fsm:bit_counter[5]~q\ & (!\io4|Add0~9\))
-- \io4|Add0~11\ = CARRY((!\io4|fsm:bit_counter[5]~q\ & !\io4|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \io4|fsm:bit_counter[5]~q\,
	datad => VCC,
	cin => \io4|Add0~9\,
	combout => \io4|Add0~10_combout\,
	cout => \io4|Add0~11\);

-- Location: LCCOMB_X22_Y19_N22
\io4|Selector73~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector73~6_combout\ = (\io4|sclk_sig~q\ & (((\io4|Equal9~2_combout\)) # (!\io4|Add0~10_combout\))) # (!\io4|sclk_sig~q\ & (((!\io4|fsm:bit_counter[5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|Add0~10_combout\,
	datab => \io4|Equal9~2_combout\,
	datac => \io4|sclk_sig~q\,
	datad => \io4|fsm:bit_counter[5]~q\,
	combout => \io4|Selector73~6_combout\);

-- Location: LCCOMB_X21_Y18_N20
\io4|bit_counter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|bit_counter~1_combout\ = (\io4|Add0~10_combout\ & ((!\io4|Equal9~0_combout\) # (!\io4|Equal9~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \io4|Equal9~1_combout\,
	datac => \io4|Add0~10_combout\,
	datad => \io4|Equal9~0_combout\,
	combout => \io4|bit_counter~1_combout\);

-- Location: LCCOMB_X22_Y19_N24
\io4|Selector73~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector73~7_combout\ = (\io4|Selector73~6_combout\ & (!\io4|state.send_cmd~q\ & ((\io4|bit_counter~1_combout\) # (!\io4|state.init~q\)))) # (!\io4|Selector73~6_combout\ & (((\io4|bit_counter~1_combout\)) # (!\io4|state.init~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|Selector73~6_combout\,
	datab => \io4|state.init~q\,
	datac => \io4|bit_counter~1_combout\,
	datad => \io4|state.send_cmd~q\,
	combout => \io4|Selector73~7_combout\);

-- Location: LCCOMB_X22_Y19_N18
\io4|Selector73~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector73~8_combout\ = (\io4|Selector73~7_combout\ & (((!\io4|state.write_block_byte~q\ & !\io4|state.send_regreq~q\)) # (!\io4|Selector73~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|Selector73~6_combout\,
	datab => \io4|Selector73~7_combout\,
	datac => \io4|state.write_block_byte~q\,
	datad => \io4|state.send_regreq~q\,
	combout => \io4|Selector73~8_combout\);

-- Location: LCCOMB_X22_Y19_N12
\io4|Selector73~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector73~9_combout\ = (\io4|Selector73~8_combout\ & (((\io4|return_state~48_combout\ & \io4|fsm:bit_counter[5]~q\)) # (!\io4|state.read_block_data~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|state.read_block_data~q\,
	datab => \io4|Selector73~8_combout\,
	datac => \io4|return_state~48_combout\,
	datad => \io4|fsm:bit_counter[5]~q\,
	combout => \io4|Selector73~9_combout\);

-- Location: LCCOMB_X22_Y19_N4
\io4|Selector73~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector73~1_combout\ = ((\io4|sclk_sig~q\ & ((\io4|fsm:bit_counter[5]~q\))) # (!\io4|sclk_sig~q\ & (\io4|bit_counter~1_combout\))) # (!\io4|state.receive_byte~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|sclk_sig~q\,
	datab => \io4|state.receive_byte~q\,
	datac => \io4|bit_counter~1_combout\,
	datad => \io4|fsm:bit_counter[5]~q\,
	combout => \io4|Selector73~1_combout\);

-- Location: LCCOMB_X23_Y17_N28
\io4|Selector73~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector73~3_combout\ = (\io4|fsm:bit_counter[5]~q\) # ((!\io4|state.write_block_wait~q\ & !\io4|WideOr37~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|state.write_block_wait~q\,
	datac => \io4|WideOr37~0_combout\,
	datad => \io4|fsm:bit_counter[5]~q\,
	combout => \io4|Selector73~3_combout\);

-- Location: LCCOMB_X23_Y17_N30
\io4|Selector73~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector73~4_combout\ = (\io4|fsm~2_combout\ & (!\io4|state.read_block_wait~q\)) # (!\io4|fsm~2_combout\ & ((\io4|fsm:bit_counter[5]~q\) # ((!\io4|state.read_block_wait~q\ & !\io4|state.receive_ocr_wait~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010001110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|state.read_block_wait~q\,
	datab => \io4|fsm~2_combout\,
	datac => \io4|fsm:bit_counter[5]~q\,
	datad => \io4|state.receive_ocr_wait~q\,
	combout => \io4|Selector73~4_combout\);

-- Location: LCCOMB_X23_Y17_N2
\io4|Selector73~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector73~2_combout\ = ((\io4|fsm:bit_counter[5]~q\ & ((\fSD_DO~input_o\) # (\io4|sclk_sig~q\)))) # (!\io4|state.receive_byte_wait~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|fsm:bit_counter[5]~q\,
	datab => \io4|state.receive_byte_wait~q\,
	datac => \fSD_DO~input_o\,
	datad => \io4|sclk_sig~q\,
	combout => \io4|Selector73~2_combout\);

-- Location: LCCOMB_X23_Y17_N16
\io4|Selector73~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector73~5_combout\ = (\io4|Selector73~3_combout\ & (\io4|Selector73~4_combout\ & \io4|Selector73~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \io4|Selector73~3_combout\,
	datac => \io4|Selector73~4_combout\,
	datad => \io4|Selector73~2_combout\,
	combout => \io4|Selector73~5_combout\);

-- Location: LCCOMB_X22_Y17_N2
\io4|Selector73~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector73~0_combout\ = ((\io4|fsm:bit_counter[5]~q\ & ((\io4|data_sig[7]~8_combout\) # (!\io4|Equal11~0_combout\)))) # (!\io4|state.write_block_data~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|fsm:bit_counter[5]~q\,
	datab => \io4|state.write_block_data~q\,
	datac => \io4|Equal11~0_combout\,
	datad => \io4|data_sig[7]~8_combout\,
	combout => \io4|Selector73~0_combout\);

-- Location: LCCOMB_X23_Y16_N20
\io4|Selector73~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector73~10_combout\ = (\io4|Selector73~9_combout\ & (\io4|Selector73~1_combout\ & (\io4|Selector73~5_combout\ & \io4|Selector73~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|Selector73~9_combout\,
	datab => \io4|Selector73~1_combout\,
	datac => \io4|Selector73~5_combout\,
	datad => \io4|Selector73~0_combout\,
	combout => \io4|Selector73~10_combout\);

-- Location: FF_X23_Y16_N21
\io4|fsm:bit_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|Selector73~10_combout\,
	ena => \fnReset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|fsm:bit_counter[5]~q\);

-- Location: LCCOMB_X21_Y18_N28
\io4|Equal9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Equal9~0_combout\ = (!\io4|fsm:bit_counter[3]~q\ & (!\io4|fsm:bit_counter[1]~q\ & (!\io4|fsm:bit_counter[5]~q\ & !\io4|fsm:bit_counter[4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|fsm:bit_counter[3]~q\,
	datab => \io4|fsm:bit_counter[1]~q\,
	datac => \io4|fsm:bit_counter[5]~q\,
	datad => \io4|fsm:bit_counter[4]~q\,
	combout => \io4|Equal9~0_combout\);

-- Location: LCCOMB_X22_Y16_N24
\io4|return_state.rst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|return_state.rst~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \io4|return_state.rst~feeder_combout\);

-- Location: FF_X22_Y16_N25
\io4|return_state.rst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|return_state.rst~feeder_combout\,
	ena => \io4|return_state.init~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|return_state.rst~q\);

-- Location: LCCOMB_X23_Y18_N16
\io4|Selector80~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector80~0_combout\ = (((\io4|return_state.rst~q\) # (!\io4|Equal9~1_combout\)) # (!\io4|Equal9~0_combout\)) # (!\io4|Selector2~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|Selector2~3_combout\,
	datab => \io4|Equal9~0_combout\,
	datac => \io4|Equal9~1_combout\,
	datad => \io4|return_state.rst~q\,
	combout => \io4|Selector80~0_combout\);

-- Location: FF_X23_Y18_N17
\io4|state.rst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|Selector80~0_combout\,
	clrn => \fnReset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|state.rst~q\);

-- Location: LCCOMB_X21_Y16_N12
\io4|fsm:byte_counter[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|fsm:byte_counter[3]~0_combout\ = (!\io4|state.write_block_init~q\ & (!\io4|state.idle~q\ & (\io4|state.rst~q\ & !\io4|state.read_block_wait~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|state.write_block_init~q\,
	datab => \io4|state.idle~q\,
	datac => \io4|state.rst~q\,
	datad => \io4|state.read_block_wait~q\,
	combout => \io4|fsm:byte_counter[3]~0_combout\);

-- Location: LCCOMB_X22_Y16_N30
\io4|fsm:byte_counter[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|fsm:byte_counter[0]~0_combout\ = (!\io4|state.read_block_data~q\ & ((\io4|state.write_block_data~q\) # (!\io4|fsm:byte_counter[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|fsm:byte_counter[3]~0_combout\,
	datac => \io4|state.write_block_data~q\,
	datad => \io4|state.read_block_data~q\,
	combout => \io4|fsm:byte_counter[0]~0_combout\);

-- Location: LCCOMB_X24_Y11_N16
\comb~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~1_combout\ = LCELL((\fnRd~input_o\) # (((\fAddress[7]~input_o\) # (!\fAddress[5]~input_o\)) # (!\nButtoncs~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fnRd~input_o\,
	datab => \nButtoncs~0_combout\,
	datac => \fAddress[7]~input_o\,
	datad => \fAddress[5]~input_o\,
	combout => \comb~1_combout\);

-- Location: FF_X22_Y16_N15
\io4|host_read_flag\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb~1_combout\,
	asdata => \io4|sd_read_flag~q\,
	sload => VCC,
	ena => \io4|Equal6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|host_read_flag~q\);

-- Location: LCCOMB_X22_Y16_N0
\io4|rd_dat_reg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|rd_dat_reg~0_combout\ = \io4|sd_read_flag~q\ $ (\io4|host_read_flag~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \io4|sd_read_flag~q\,
	datac => \io4|host_read_flag~q\,
	combout => \io4|rd_dat_reg~0_combout\);

-- Location: LCCOMB_X22_Y16_N16
\io4|fsm:byte_counter[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|fsm:byte_counter[0]~1_combout\ = (\io4|state.read_block_data~q\ & ((\io4|Equal13~0_combout\) # ((!\io4|rd_dat_reg~0_combout\ & \io4|Equal11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|Equal13~0_combout\,
	datab => \io4|state.read_block_data~q\,
	datac => \io4|rd_dat_reg~0_combout\,
	datad => \io4|Equal11~0_combout\,
	combout => \io4|fsm:byte_counter[0]~1_combout\);

-- Location: LCCOMB_X22_Y16_N2
\io4|fsm:byte_counter[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|fsm:byte_counter[0]~2_combout\ = (\io4|data_sig[7]~2_combout\ & (!\io4|fsm:bit_counter[1]~3_combout\ & ((\io4|fsm:byte_counter[0]~0_combout\) # (\io4|fsm:byte_counter[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|data_sig[7]~2_combout\,
	datab => \io4|fsm:bit_counter[1]~3_combout\,
	datac => \io4|fsm:byte_counter[0]~0_combout\,
	datad => \io4|fsm:byte_counter[0]~1_combout\,
	combout => \io4|fsm:byte_counter[0]~2_combout\);

-- Location: FF_X22_Y19_N1
\io4|fsm:byte_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|Selector68~0_combout\,
	ena => \io4|fsm:byte_counter[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|fsm:byte_counter[0]~q\);

-- Location: LCCOMB_X21_Y19_N8
\io4|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Add1~2_combout\ = (\io4|fsm:byte_counter[1]~q\ & (\io4|Add1~1\ & VCC)) # (!\io4|fsm:byte_counter[1]~q\ & (!\io4|Add1~1\))
-- \io4|Add1~3\ = CARRY((!\io4|fsm:byte_counter[1]~q\ & !\io4|Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \io4|fsm:byte_counter[1]~q\,
	datad => VCC,
	cin => \io4|Add1~1\,
	combout => \io4|Add1~2_combout\,
	cout => \io4|Add1~3\);

-- Location: LCCOMB_X22_Y19_N30
\io4|Selector67~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector67~0_combout\ = (\io4|state.write_block_init~q\) # ((\io4|Add1~2_combout\ & (!\io4|state.read_block_wait~q\ & \io4|cmd_out[16]~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|Add1~2_combout\,
	datab => \io4|state.read_block_wait~q\,
	datac => \io4|cmd_out[16]~36_combout\,
	datad => \io4|state.write_block_init~q\,
	combout => \io4|Selector67~0_combout\);

-- Location: FF_X22_Y19_N31
\io4|fsm:byte_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|Selector67~0_combout\,
	ena => \io4|fsm:byte_counter[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|fsm:byte_counter[1]~q\);

-- Location: LCCOMB_X22_Y19_N26
\io4|Equal13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Equal13~0_combout\ = (!\io4|fsm:byte_counter[9]~q\ & (\io4|Equal12~1_combout\ & (!\io4|fsm:byte_counter[1]~q\ & \io4|fsm:byte_counter[0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|fsm:byte_counter[9]~q\,
	datab => \io4|Equal12~1_combout\,
	datac => \io4|fsm:byte_counter[1]~q\,
	datad => \io4|fsm:byte_counter[0]~q\,
	combout => \io4|Equal13~0_combout\);

-- Location: LCCOMB_X22_Y16_N10
\io4|fsm:bit_counter[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|fsm:bit_counter[1]~5_combout\ = (!\io4|Equal13~0_combout\ & (\io4|state.read_block_data~q\ & (\io4|rd_dat_reg~0_combout\ & \io4|Equal11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|Equal13~0_combout\,
	datab => \io4|state.read_block_data~q\,
	datac => \io4|rd_dat_reg~0_combout\,
	datad => \io4|Equal11~0_combout\,
	combout => \io4|fsm:bit_counter[1]~5_combout\);

-- Location: LCCOMB_X22_Y16_N26
\io4|return_state.init~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|return_state.init~1_combout\ = (!\io4|fsm:bit_counter[1]~5_combout\ & (\fnReset~input_o\ & \io4|return_state.init~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|fsm:bit_counter[1]~5_combout\,
	datab => \fnReset~input_o\,
	datac => \io4|return_state.init~0_combout\,
	combout => \io4|return_state.init~1_combout\);

-- Location: FF_X22_Y16_N21
\io4|return_state.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|return_state.idle~0_combout\,
	ena => \io4|return_state.init~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|return_state.idle~q\);

-- Location: LCCOMB_X23_Y17_N22
\io4|Selector83~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector83~9_combout\ = (\fSD_DO~input_o\ & \io4|state.write_block_wait~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fSD_DO~input_o\,
	datac => \io4|state.write_block_wait~q\,
	combout => \io4|Selector83~9_combout\);

-- Location: LCCOMB_X23_Y18_N6
\io4|Selector89~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector89~2_combout\ = (\io4|Selector83~9_combout\) # ((\io4|return_state.idle~q\ & (\io4|Equal9~2_combout\ & \io4|state.receive_byte~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|return_state.idle~q\,
	datab => \io4|Selector83~9_combout\,
	datac => \io4|Equal9~2_combout\,
	datad => \io4|state.receive_byte~q\,
	combout => \io4|Selector89~2_combout\);

-- Location: LCCOMB_X23_Y18_N20
\io4|Selector89~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector89~1_combout\ = (\io4|recv_data\(31) & \io4|state.cardsel~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \io4|recv_data\(31),
	datad => \io4|state.cardsel~q\,
	combout => \io4|Selector89~1_combout\);

-- Location: LCCOMB_X24_Y18_N4
\io4|Selector89~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector89~0_combout\ = (\io4|state.idle~q\ & (!\io4|block_read~q\ & !\io4|block_write~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|state.idle~q\,
	datac => \io4|block_read~q\,
	datad => \io4|block_write~q\,
	combout => \io4|Selector89~0_combout\);

-- Location: LCCOMB_X23_Y18_N2
\io4|Selector89~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector89~3_combout\ = (\io4|Selector89~1_combout\) # ((\io4|Selector89~0_combout\) # ((\io4|Selector89~2_combout\ & !\io4|sclk_sig~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|Selector89~2_combout\,
	datab => \io4|Selector89~1_combout\,
	datac => \io4|sclk_sig~q\,
	datad => \io4|Selector89~0_combout\,
	combout => \io4|Selector89~3_combout\);

-- Location: FF_X23_Y18_N3
\io4|state.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|Selector89~3_combout\,
	clrn => \fnReset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|state.idle~q\);

-- Location: LCCOMB_X23_Y18_N24
\io4|cmd_out[16]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|cmd_out[16]~36_combout\ = (!\io4|state.idle~q\ & \io4|state.rst~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \io4|state.idle~q\,
	datad => \io4|state.rst~q\,
	combout => \io4|cmd_out[16]~36_combout\);

-- Location: LCCOMB_X22_Y16_N22
\io4|Selector0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector0~3_combout\ = (\io4|cmd_out[16]~36_combout\ & (\io4|sd_read_flag~q\ $ (((\io4|Selector0~2_combout\ & \io4|state.receive_byte~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|Selector0~2_combout\,
	datab => \io4|sd_read_flag~q\,
	datac => \io4|state.receive_byte~q\,
	datad => \io4|cmd_out[16]~36_combout\,
	combout => \io4|Selector0~3_combout\);

-- Location: LCCOMB_X21_Y16_N28
\io4|Selector0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector0~4_combout\ = (\io4|Selector0~3_combout\) # ((\io4|host_read_flag~q\ & ((\io4|state.idle~q\) # (!\io4|state.rst~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|Selector0~3_combout\,
	datab => \io4|host_read_flag~q\,
	datac => \io4|state.rst~q\,
	datad => \io4|state.idle~q\,
	combout => \io4|Selector0~4_combout\);

-- Location: FF_X21_Y16_N29
\io4|sd_read_flag\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|Selector0~4_combout\,
	ena => \fnReset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|sd_read_flag~q\);

-- Location: LCCOMB_X22_Y16_N14
\io4|return_state~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|return_state~48_combout\ = (!\io4|Equal13~0_combout\ & (\io4|Equal11~0_combout\ & (\io4|sd_read_flag~q\ $ (\io4|host_read_flag~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|sd_read_flag~q\,
	datab => \io4|Equal13~0_combout\,
	datac => \io4|host_read_flag~q\,
	datad => \io4|Equal11~0_combout\,
	combout => \io4|return_state~48_combout\);

-- Location: LCCOMB_X22_Y18_N18
\io4|Selector97~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector97~0_combout\ = (!\io4|state.send_regreq~q\ & (!\io4|state.send_cmd~q\ & (!\io4|state.write_block_wait~q\ & !\io4|state.write_block_byte~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|state.send_regreq~q\,
	datab => \io4|state.send_cmd~q\,
	datac => \io4|state.write_block_wait~q\,
	datad => \io4|state.write_block_byte~q\,
	combout => \io4|Selector97~0_combout\);

-- Location: LCCOMB_X22_Y18_N12
\io4|Selector97~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector97~4_combout\ = (\io4|state.init~q\) # ((!\io4|Selector97~0_combout\ & (\io4|sclk_sig~q\ $ (\io4|state.write_block_wait~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|state.init~q\,
	datab => \io4|Selector97~0_combout\,
	datac => \io4|sclk_sig~q\,
	datad => \io4|state.write_block_wait~q\,
	combout => \io4|Selector97~4_combout\);

-- Location: LCCOMB_X22_Y17_N0
\io4|Selector97~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector97~5_combout\ = (\io4|state.write_block_data~q\ & (\io4|host_write_flag~q\ $ ((\io4|sd_write_flag~q\)))) # (!\io4|state.write_block_data~q\ & (((\io4|Selector83~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|host_write_flag~q\,
	datab => \io4|state.write_block_data~q\,
	datac => \io4|sd_write_flag~q\,
	datad => \io4|Selector83~2_combout\,
	combout => \io4|Selector97~5_combout\);

-- Location: LCCOMB_X22_Y19_N6
\io4|data_sig[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|data_sig[7]~7_combout\ = ((\io4|fsm:byte_counter[9]~q\ & ((!\io4|fsm:byte_counter[0]~q\) # (!\io4|fsm:byte_counter[1]~q\))) # (!\io4|fsm:byte_counter[9]~q\ & (\io4|fsm:byte_counter[1]~q\ $ (!\io4|fsm:byte_counter[0]~q\)))) # 
-- (!\io4|Equal12~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|fsm:byte_counter[9]~q\,
	datab => \io4|Equal12~1_combout\,
	datac => \io4|fsm:byte_counter[1]~q\,
	datad => \io4|fsm:byte_counter[0]~q\,
	combout => \io4|data_sig[7]~7_combout\);

-- Location: LCCOMB_X22_Y17_N22
\io4|Selector100~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector100~3_combout\ = (\io4|state.write_block_data~q\ & (\io4|Equal11~0_combout\ & \io4|data_sig[7]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \io4|state.write_block_data~q\,
	datac => \io4|Equal11~0_combout\,
	datad => \io4|data_sig[7]~7_combout\,
	combout => \io4|Selector100~3_combout\);

-- Location: LCCOMB_X22_Y17_N18
\io4|Selector97~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector97~6_combout\ = (\io4|WideOr49~0_combout\ & (((!\io4|Selector97~4_combout\ & !\io4|Selector100~3_combout\)) # (!\io4|Selector97~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|Selector97~4_combout\,
	datab => \io4|Selector97~5_combout\,
	datac => \io4|Selector100~3_combout\,
	datad => \io4|WideOr49~0_combout\,
	combout => \io4|Selector97~6_combout\);

-- Location: LCCOMB_X21_Y17_N22
\io4|Selector97~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector97~3_combout\ = (\io4|sclk_sig~q\) # ((\fSD_DO~input_o\) # ((!\io4|state.read_block_wait~q\ & \io4|Selector78~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|state.read_block_wait~q\,
	datab => \io4|sclk_sig~q\,
	datac => \io4|Selector78~0_combout\,
	datad => \fSD_DO~input_o\,
	combout => \io4|Selector97~3_combout\);

-- Location: LCCOMB_X21_Y17_N10
\io4|Selector97~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector97~8_combout\ = (\io4|state.read_block_data~q\ & (!\io4|return_state~48_combout\)) # (!\io4|state.read_block_data~q\ & (((\io4|Selector97~6_combout\ & !\io4|Selector97~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|return_state~48_combout\,
	datab => \io4|Selector97~6_combout\,
	datac => \io4|Selector97~3_combout\,
	datad => \io4|state.read_block_data~q\,
	combout => \io4|Selector97~8_combout\);

-- Location: LCCOMB_X24_Y17_N28
\io4|Selector97~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector97~1_combout\ = (!\io4|Selector84~0_combout\ & ((\io4|Equal11~0_combout\) # (!\io4|state.write_block_data~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|state.write_block_data~q\,
	datac => \io4|Selector84~0_combout\,
	datad => \io4|Equal11~0_combout\,
	combout => \io4|Selector97~1_combout\);

-- Location: LCCOMB_X21_Y17_N8
\io4|Selector97~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector97~7_combout\ = (\io4|state.receive_byte~q\ & (\io4|Selector97~6_combout\ & (\io4|Selector97~3_combout\ & !\io4|state.read_block_data~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|state.receive_byte~q\,
	datab => \io4|Selector97~6_combout\,
	datac => \io4|Selector97~3_combout\,
	datad => \io4|state.read_block_data~q\,
	combout => \io4|Selector97~7_combout\);

-- Location: LCCOMB_X25_Y17_N6
\io4|Selector97~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector97~2_combout\ = ((\io4|Equal14~0_combout\ & !\io4|fsm~0_combout\)) # (!\io4|state.write_block_data~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \io4|Equal14~0_combout\,
	datac => \io4|state.write_block_data~q\,
	datad => \io4|fsm~0_combout\,
	combout => \io4|Selector97~2_combout\);

-- Location: LCCOMB_X21_Y17_N26
\io4|Selector97~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector97~9_combout\ = (\io4|Selector97~1_combout\ & (\io4|Selector97~2_combout\ & ((\io4|Selector97~8_combout\) # (\io4|Selector97~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|Selector97~8_combout\,
	datab => \io4|Selector97~1_combout\,
	datac => \io4|Selector97~7_combout\,
	datad => \io4|Selector97~2_combout\,
	combout => \io4|Selector97~9_combout\);

-- Location: FF_X21_Y17_N27
\io4|state.receive_byte\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|Selector97~9_combout\,
	clrn => \fnReset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|state.receive_byte~q\);

-- Location: LCCOMB_X21_Y17_N28
\io4|Selector2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector2~3_combout\ = (\io4|state.receive_byte~q\ & !\io4|sclk_sig~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \io4|state.receive_byte~q\,
	datad => \io4|sclk_sig~q\,
	combout => \io4|Selector2~3_combout\);

-- Location: LCCOMB_X23_Y16_N10
\io4|Selector116~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector116~0_combout\ = (\io4|state.read_block_cmd~q\) # ((\io4|return_state.read_block_wait~q\ & ((\io4|fsm:bit_counter[1]~5_combout\) # (!\io4|return_state.init~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|return_state.init~0_combout\,
	datab => \io4|fsm:bit_counter[1]~5_combout\,
	datac => \io4|return_state.read_block_wait~q\,
	datad => \io4|state.read_block_cmd~q\,
	combout => \io4|Selector116~0_combout\);

-- Location: FF_X23_Y16_N11
\io4|return_state.read_block_wait\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|Selector116~0_combout\,
	ena => \fnReset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|return_state.read_block_wait~q\);

-- Location: LCCOMB_X22_Y18_N4
\io4|Selector91~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector91~1_combout\ = (\io4|Equal9~1_combout\ & (\io4|Selector2~3_combout\ & (\io4|Equal9~0_combout\ & \io4|return_state.read_block_wait~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|Equal9~1_combout\,
	datab => \io4|Selector2~3_combout\,
	datac => \io4|Equal9~0_combout\,
	datad => \io4|return_state.read_block_wait~q\,
	combout => \io4|Selector91~1_combout\);

-- Location: FF_X22_Y18_N5
\io4|state.read_block_wait\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|Selector91~1_combout\,
	clrn => \fnReset~input_o\,
	ena => \io4|Selector91~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|state.read_block_wait~q\);

-- Location: LCCOMB_X21_Y19_N10
\io4|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Add1~4_combout\ = (\io4|fsm:byte_counter[2]~q\ & ((GND) # (!\io4|Add1~3\))) # (!\io4|fsm:byte_counter[2]~q\ & (\io4|Add1~3\ $ (GND)))
-- \io4|Add1~5\ = CARRY((\io4|fsm:byte_counter[2]~q\) # (!\io4|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \io4|fsm:byte_counter[2]~q\,
	datad => VCC,
	cin => \io4|Add1~3\,
	combout => \io4|Add1~4_combout\,
	cout => \io4|Add1~5\);

-- Location: LCCOMB_X21_Y19_N0
\io4|Selector66~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector66~0_combout\ = (!\io4|state.write_block_init~q\ & (!\io4|state.read_block_wait~q\ & (\io4|Add1~4_combout\ & \io4|cmd_out[16]~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|state.write_block_init~q\,
	datab => \io4|state.read_block_wait~q\,
	datac => \io4|Add1~4_combout\,
	datad => \io4|cmd_out[16]~36_combout\,
	combout => \io4|Selector66~0_combout\);

-- Location: FF_X21_Y19_N1
\io4|fsm:byte_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|Selector66~0_combout\,
	ena => \io4|fsm:byte_counter[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|fsm:byte_counter[2]~q\);

-- Location: LCCOMB_X21_Y19_N12
\io4|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Add1~6_combout\ = (\io4|fsm:byte_counter[3]~q\ & (\io4|Add1~5\ & VCC)) # (!\io4|fsm:byte_counter[3]~q\ & (!\io4|Add1~5\))
-- \io4|Add1~7\ = CARRY((!\io4|fsm:byte_counter[3]~q\ & !\io4|Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \io4|fsm:byte_counter[3]~q\,
	datad => VCC,
	cin => \io4|Add1~5\,
	combout => \io4|Add1~6_combout\,
	cout => \io4|Add1~7\);

-- Location: LCCOMB_X21_Y19_N2
\io4|Selector65~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector65~0_combout\ = (!\io4|state.write_block_init~q\ & (!\io4|state.read_block_wait~q\ & (\io4|Add1~6_combout\ & \io4|cmd_out[16]~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|state.write_block_init~q\,
	datab => \io4|state.read_block_wait~q\,
	datac => \io4|Add1~6_combout\,
	datad => \io4|cmd_out[16]~36_combout\,
	combout => \io4|Selector65~0_combout\);

-- Location: FF_X21_Y19_N3
\io4|fsm:byte_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|Selector65~0_combout\,
	ena => \io4|fsm:byte_counter[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|fsm:byte_counter[3]~q\);

-- Location: LCCOMB_X21_Y19_N14
\io4|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Add1~8_combout\ = (\io4|fsm:byte_counter[4]~q\ & ((GND) # (!\io4|Add1~7\))) # (!\io4|fsm:byte_counter[4]~q\ & (\io4|Add1~7\ $ (GND)))
-- \io4|Add1~9\ = CARRY((\io4|fsm:byte_counter[4]~q\) # (!\io4|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \io4|fsm:byte_counter[4]~q\,
	datad => VCC,
	cin => \io4|Add1~7\,
	combout => \io4|Add1~8_combout\,
	cout => \io4|Add1~9\);

-- Location: LCCOMB_X21_Y19_N28
\io4|Selector64~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector64~0_combout\ = (!\io4|state.write_block_init~q\ & (!\io4|state.read_block_wait~q\ & (\io4|Add1~8_combout\ & \io4|cmd_out[16]~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|state.write_block_init~q\,
	datab => \io4|state.read_block_wait~q\,
	datac => \io4|Add1~8_combout\,
	datad => \io4|cmd_out[16]~36_combout\,
	combout => \io4|Selector64~0_combout\);

-- Location: FF_X21_Y19_N29
\io4|fsm:byte_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|Selector64~0_combout\,
	ena => \io4|fsm:byte_counter[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|fsm:byte_counter[4]~q\);

-- Location: LCCOMB_X21_Y19_N16
\io4|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Add1~10_combout\ = (\io4|fsm:byte_counter[5]~q\ & (\io4|Add1~9\ & VCC)) # (!\io4|fsm:byte_counter[5]~q\ & (!\io4|Add1~9\))
-- \io4|Add1~11\ = CARRY((!\io4|fsm:byte_counter[5]~q\ & !\io4|Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \io4|fsm:byte_counter[5]~q\,
	datad => VCC,
	cin => \io4|Add1~9\,
	combout => \io4|Add1~10_combout\,
	cout => \io4|Add1~11\);

-- Location: LCCOMB_X21_Y19_N26
\io4|Selector63~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector63~0_combout\ = (!\io4|state.write_block_init~q\ & (!\io4|state.read_block_wait~q\ & (\io4|Add1~10_combout\ & \io4|cmd_out[16]~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|state.write_block_init~q\,
	datab => \io4|state.read_block_wait~q\,
	datac => \io4|Add1~10_combout\,
	datad => \io4|cmd_out[16]~36_combout\,
	combout => \io4|Selector63~0_combout\);

-- Location: FF_X21_Y19_N27
\io4|fsm:byte_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|Selector63~0_combout\,
	ena => \io4|fsm:byte_counter[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|fsm:byte_counter[5]~q\);

-- Location: LCCOMB_X21_Y19_N4
\io4|Equal12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Equal12~0_combout\ = (!\io4|fsm:byte_counter[4]~q\ & (!\io4|fsm:byte_counter[3]~q\ & (!\io4|fsm:byte_counter[5]~q\ & !\io4|fsm:byte_counter[2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|fsm:byte_counter[4]~q\,
	datab => \io4|fsm:byte_counter[3]~q\,
	datac => \io4|fsm:byte_counter[5]~q\,
	datad => \io4|fsm:byte_counter[2]~q\,
	combout => \io4|Equal12~0_combout\);

-- Location: LCCOMB_X21_Y19_N18
\io4|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Add1~12_combout\ = (\io4|fsm:byte_counter[6]~q\ & ((GND) # (!\io4|Add1~11\))) # (!\io4|fsm:byte_counter[6]~q\ & (\io4|Add1~11\ $ (GND)))
-- \io4|Add1~13\ = CARRY((\io4|fsm:byte_counter[6]~q\) # (!\io4|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \io4|fsm:byte_counter[6]~q\,
	datad => VCC,
	cin => \io4|Add1~11\,
	combout => \io4|Add1~12_combout\,
	cout => \io4|Add1~13\);

-- Location: LCCOMB_X21_Y19_N30
\io4|Selector62~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector62~0_combout\ = (!\io4|state.write_block_init~q\ & (!\io4|state.read_block_wait~q\ & (\io4|Add1~12_combout\ & \io4|cmd_out[16]~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|state.write_block_init~q\,
	datab => \io4|state.read_block_wait~q\,
	datac => \io4|Add1~12_combout\,
	datad => \io4|cmd_out[16]~36_combout\,
	combout => \io4|Selector62~0_combout\);

-- Location: FF_X21_Y19_N31
\io4|fsm:byte_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|Selector62~0_combout\,
	ena => \io4|fsm:byte_counter[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|fsm:byte_counter[6]~q\);

-- Location: LCCOMB_X21_Y19_N20
\io4|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Add1~14_combout\ = (\io4|fsm:byte_counter[7]~q\ & (\io4|Add1~13\ & VCC)) # (!\io4|fsm:byte_counter[7]~q\ & (!\io4|Add1~13\))
-- \io4|Add1~15\ = CARRY((!\io4|fsm:byte_counter[7]~q\ & !\io4|Add1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \io4|fsm:byte_counter[7]~q\,
	datad => VCC,
	cin => \io4|Add1~13\,
	combout => \io4|Add1~14_combout\,
	cout => \io4|Add1~15\);

-- Location: LCCOMB_X22_Y19_N8
\io4|Selector61~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector61~0_combout\ = (!\io4|state.write_block_init~q\ & (!\io4|state.read_block_wait~q\ & (\io4|cmd_out[16]~36_combout\ & \io4|Add1~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|state.write_block_init~q\,
	datab => \io4|state.read_block_wait~q\,
	datac => \io4|cmd_out[16]~36_combout\,
	datad => \io4|Add1~14_combout\,
	combout => \io4|Selector61~0_combout\);

-- Location: FF_X22_Y19_N9
\io4|fsm:byte_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|Selector61~0_combout\,
	ena => \io4|fsm:byte_counter[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|fsm:byte_counter[7]~q\);

-- Location: LCCOMB_X21_Y19_N22
\io4|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Add1~16_combout\ = (\io4|fsm:byte_counter[8]~q\ & ((GND) # (!\io4|Add1~15\))) # (!\io4|fsm:byte_counter[8]~q\ & (\io4|Add1~15\ $ (GND)))
-- \io4|Add1~17\ = CARRY((\io4|fsm:byte_counter[8]~q\) # (!\io4|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \io4|fsm:byte_counter[8]~q\,
	datad => VCC,
	cin => \io4|Add1~15\,
	combout => \io4|Add1~16_combout\,
	cout => \io4|Add1~17\);

-- Location: LCCOMB_X22_Y19_N2
\io4|Selector60~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector60~0_combout\ = (!\io4|state.write_block_init~q\ & (!\io4|state.read_block_wait~q\ & (\io4|cmd_out[16]~36_combout\ & \io4|Add1~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|state.write_block_init~q\,
	datab => \io4|state.read_block_wait~q\,
	datac => \io4|cmd_out[16]~36_combout\,
	datad => \io4|Add1~16_combout\,
	combout => \io4|Selector60~0_combout\);

-- Location: FF_X22_Y19_N3
\io4|fsm:byte_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|Selector60~0_combout\,
	ena => \io4|fsm:byte_counter[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|fsm:byte_counter[8]~q\);

-- Location: LCCOMB_X22_Y19_N20
\io4|Equal12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Equal12~1_combout\ = (\io4|Equal12~0_combout\ & (!\io4|fsm:byte_counter[6]~q\ & (!\io4|fsm:byte_counter[7]~q\ & !\io4|fsm:byte_counter[8]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|Equal12~0_combout\,
	datab => \io4|fsm:byte_counter[6]~q\,
	datac => \io4|fsm:byte_counter[7]~q\,
	datad => \io4|fsm:byte_counter[8]~q\,
	combout => \io4|Equal12~1_combout\);

-- Location: LCCOMB_X22_Y19_N14
\io4|Equal14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Equal14~0_combout\ = (((!\io4|fsm:byte_counter[0]~q\) # (!\io4|fsm:byte_counter[1]~q\)) # (!\io4|Equal12~1_combout\)) # (!\io4|fsm:byte_counter[9]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|fsm:byte_counter[9]~q\,
	datab => \io4|Equal12~1_combout\,
	datac => \io4|fsm:byte_counter[1]~q\,
	datad => \io4|fsm:byte_counter[0]~q\,
	combout => \io4|Equal14~0_combout\);

-- Location: LCCOMB_X22_Y17_N10
\io4|fsm:bit_counter[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|fsm:bit_counter[1]~0_combout\ = (\io4|state.write_block_data~q\ & ((\io4|fsm~0_combout\) # (!\io4|Equal14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \io4|state.write_block_data~q\,
	datac => \io4|Equal14~0_combout\,
	datad => \io4|fsm~0_combout\,
	combout => \io4|fsm:bit_counter[1]~0_combout\);

-- Location: LCCOMB_X22_Y17_N16
\io4|fsm:bit_counter[6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|fsm:bit_counter[6]~0_combout\ = (\io4|Selector78~0_combout\ & (((\io4|fsm~0_combout\) # (!\io4|Equal14~0_combout\)) # (!\io4|state.write_block_data~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|Selector78~0_combout\,
	datab => \io4|state.write_block_data~q\,
	datac => \io4|Equal14~0_combout\,
	datad => \io4|fsm~0_combout\,
	combout => \io4|fsm:bit_counter[6]~0_combout\);

-- Location: LCCOMB_X21_Y16_N6
\io4|fsm:bit_counter[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|fsm:bit_counter[6]~1_combout\ = (\io4|fsm:bit_counter[1]~0_combout\) # (((!\io4|WideOr60~1_combout\) # (!\io4|state.rst~q\)) # (!\io4|fsm:bit_counter[6]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|fsm:bit_counter[1]~0_combout\,
	datab => \io4|fsm:bit_counter[6]~0_combout\,
	datac => \io4|state.rst~q\,
	datad => \io4|WideOr60~1_combout\,
	combout => \io4|fsm:bit_counter[6]~1_combout\);

-- Location: LCCOMB_X21_Y18_N16
\io4|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Add0~12_combout\ = (\io4|fsm:bit_counter[6]~q\ & ((GND) # (!\io4|Add0~11\))) # (!\io4|fsm:bit_counter[6]~q\ & (\io4|Add0~11\ $ (GND)))
-- \io4|Add0~13\ = CARRY((\io4|fsm:bit_counter[6]~q\) # (!\io4|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \io4|fsm:bit_counter[6]~q\,
	datad => VCC,
	cin => \io4|Add0~11\,
	combout => \io4|Add0~12_combout\,
	cout => \io4|Add0~13\);

-- Location: LCCOMB_X21_Y18_N30
\io4|Selector72~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector72~0_combout\ = (!\io4|fsm:bit_counter[6]~1_combout\ & \io4|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \io4|fsm:bit_counter[6]~1_combout\,
	datad => \io4|Add0~12_combout\,
	combout => \io4|Selector72~0_combout\);

-- Location: FF_X21_Y18_N31
\io4|fsm:bit_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|Selector72~0_combout\,
	ena => \io4|fsm:bit_counter[1]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|fsm:bit_counter[6]~q\);

-- Location: LCCOMB_X21_Y18_N18
\io4|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Add0~14_combout\ = \io4|Add0~13\ $ (!\io4|fsm:bit_counter[7]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \io4|fsm:bit_counter[7]~q\,
	cin => \io4|Add0~13\,
	combout => \io4|Add0~14_combout\);

-- Location: LCCOMB_X21_Y16_N18
\io4|Selector71~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector71~0_combout\ = (!\io4|state.rst~q\ & (!\io4|state.cmd55~q\ & \io4|WideOr28~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|state.rst~q\,
	datac => \io4|state.cmd55~q\,
	datad => \io4|WideOr28~3_combout\,
	combout => \io4|Selector71~0_combout\);

-- Location: LCCOMB_X21_Y18_N24
\io4|Selector71~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector71~1_combout\ = (!\io4|fsm:bit_counter[1]~0_combout\ & ((\io4|Selector71~0_combout\) # ((\io4|Add0~14_combout\ & !\io4|fsm:bit_counter[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|fsm:bit_counter[1]~0_combout\,
	datab => \io4|Add0~14_combout\,
	datac => \io4|Selector71~0_combout\,
	datad => \io4|fsm:bit_counter[1]~1_combout\,
	combout => \io4|Selector71~1_combout\);

-- Location: FF_X21_Y18_N25
\io4|fsm:bit_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|Selector71~1_combout\,
	ena => \io4|fsm:bit_counter[1]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|fsm:bit_counter[7]~q\);

-- Location: LCCOMB_X21_Y18_N2
\io4|Equal9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Equal9~1_combout\ = (!\io4|fsm:bit_counter[6]~q\ & (!\io4|fsm:bit_counter[7]~q\ & (!\io4|fsm:bit_counter[0]~q\ & !\io4|fsm:bit_counter[2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|fsm:bit_counter[6]~q\,
	datab => \io4|fsm:bit_counter[7]~q\,
	datac => \io4|fsm:bit_counter[0]~q\,
	datad => \io4|fsm:bit_counter[2]~q\,
	combout => \io4|Equal9~1_combout\);

-- Location: LCCOMB_X23_Y16_N16
\io4|Selector124~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector124~0_combout\ = (\io4|state.write_block_cmd~q\) # ((\io4|return_state.write_block_init~q\ & ((\io4|fsm:bit_counter[1]~5_combout\) # (!\io4|return_state.init~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|return_state.init~0_combout\,
	datab => \io4|fsm:bit_counter[1]~5_combout\,
	datac => \io4|return_state.write_block_init~q\,
	datad => \io4|state.write_block_cmd~q\,
	combout => \io4|Selector124~0_combout\);

-- Location: FF_X23_Y16_N17
\io4|return_state.write_block_init\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|Selector124~0_combout\,
	ena => \fnReset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|return_state.write_block_init~q\);

-- Location: LCCOMB_X23_Y16_N12
\io4|Selector99~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector99~0_combout\ = (\io4|Equal9~1_combout\ & (\io4|Equal9~0_combout\ & (\io4|Selector2~3_combout\ & \io4|return_state.write_block_init~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|Equal9~1_combout\,
	datab => \io4|Equal9~0_combout\,
	datac => \io4|Selector2~3_combout\,
	datad => \io4|return_state.write_block_init~q\,
	combout => \io4|Selector99~0_combout\);

-- Location: FF_X23_Y16_N13
\io4|state.write_block_init\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|Selector99~0_combout\,
	clrn => \fnReset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|state.write_block_init~q\);

-- Location: LCCOMB_X21_Y19_N24
\io4|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Add1~18_combout\ = \io4|fsm:byte_counter[9]~q\ $ (!\io4|Add1~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \io4|fsm:byte_counter[9]~q\,
	cin => \io4|Add1~17\,
	combout => \io4|Add1~18_combout\);

-- Location: LCCOMB_X22_Y19_N10
\io4|Selector59~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector59~0_combout\ = (\io4|state.write_block_init~q\) # ((\io4|state.read_block_wait~q\) # ((\io4|cmd_out[16]~36_combout\ & \io4|Add1~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|state.write_block_init~q\,
	datab => \io4|state.read_block_wait~q\,
	datac => \io4|cmd_out[16]~36_combout\,
	datad => \io4|Add1~18_combout\,
	combout => \io4|Selector59~0_combout\);

-- Location: FF_X22_Y19_N11
\io4|fsm:byte_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|Selector59~0_combout\,
	ena => \io4|fsm:byte_counter[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|fsm:byte_counter[9]~q\);

-- Location: LCCOMB_X22_Y19_N16
\io4|Equal11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Equal11~0_combout\ = (\io4|fsm:byte_counter[9]~q\) # (((\io4|fsm:byte_counter[1]~q\) # (\io4|fsm:byte_counter[0]~q\)) # (!\io4|Equal12~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|fsm:byte_counter[9]~q\,
	datab => \io4|Equal12~1_combout\,
	datac => \io4|fsm:byte_counter[1]~q\,
	datad => \io4|fsm:byte_counter[0]~q\,
	combout => \io4|Equal11~0_combout\);

-- Location: LCCOMB_X22_Y17_N12
\io4|sd_write_flag~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|sd_write_flag~0_combout\ = (\fnReset~input_o\ & (((\io4|Equal11~0_combout\ & \io4|data_sig[7]~6_combout\)) # (!\io4|cmd_out[16]~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|Equal11~0_combout\,
	datab => \io4|data_sig[7]~6_combout\,
	datac => \fnReset~input_o\,
	datad => \io4|cmd_out[16]~36_combout\,
	combout => \io4|sd_write_flag~0_combout\);

-- Location: LCCOMB_X22_Y17_N4
\io4|sd_write_flag~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|sd_write_flag~1_combout\ = (\io4|sd_write_flag~0_combout\ & (\io4|host_write_flag~q\)) # (!\io4|sd_write_flag~0_combout\ & ((\io4|sd_write_flag~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|host_write_flag~q\,
	datac => \io4|sd_write_flag~q\,
	datad => \io4|sd_write_flag~0_combout\,
	combout => \io4|sd_write_flag~1_combout\);

-- Location: FF_X22_Y17_N5
\io4|sd_write_flag\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|sd_write_flag~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|sd_write_flag~q\);

-- Location: LCCOMB_X22_Y17_N30
\io4|fsm~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|fsm~1_combout\ = \io4|sd_write_flag~q\ $ (\io4|host_write_flag~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \io4|sd_write_flag~q\,
	datac => \io4|host_write_flag~q\,
	combout => \io4|fsm~1_combout\);

-- Location: LCCOMB_X24_Y17_N20
\io4|Selector100~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector100~1_combout\ = (\io4|state.write_block_init~q\) # ((\io4|state.write_block_byte~q\ & \io4|Selector100~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \io4|state.write_block_byte~q\,
	datac => \io4|state.write_block_init~q\,
	datad => \io4|Selector100~0_combout\,
	combout => \io4|Selector100~1_combout\);

-- Location: LCCOMB_X22_Y17_N24
\io4|Selector100~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector100~2_combout\ = (\io4|Selector100~1_combout\) # ((!\io4|fsm~1_combout\ & (\io4|data_sig[7]~6_combout\ & \io4|Equal11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|fsm~1_combout\,
	datab => \io4|data_sig[7]~6_combout\,
	datac => \io4|Equal11~0_combout\,
	datad => \io4|Selector100~1_combout\,
	combout => \io4|Selector100~2_combout\);

-- Location: FF_X22_Y17_N25
\io4|state.write_block_data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|Selector100~2_combout\,
	clrn => \fnReset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|state.write_block_data~q\);

-- Location: LCCOMB_X24_Y19_N22
\io4|Selector96~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector96~0_combout\ = (\io4|Selector100~0_combout\ & ((\io4|state.send_cmd~q\) # ((!\io4|fsm~2_combout\ & \io4|state.receive_byte_wait~q\)))) # (!\io4|Selector100~0_combout\ & (!\io4|fsm~2_combout\ & (\io4|state.receive_byte_wait~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|Selector100~0_combout\,
	datab => \io4|fsm~2_combout\,
	datac => \io4|state.receive_byte_wait~q\,
	datad => \io4|state.send_cmd~q\,
	combout => \io4|Selector96~0_combout\);

-- Location: LCCOMB_X24_Y19_N26
\io4|Selector96~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector96~1_combout\ = (\io4|Selector96~0_combout\) # ((\io4|state.write_block_data~q\ & !\io4|Equal11~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|state.write_block_data~q\,
	datab => \io4|Equal11~0_combout\,
	datac => \io4|Selector96~0_combout\,
	combout => \io4|Selector96~1_combout\);

-- Location: FF_X24_Y19_N27
\io4|state.receive_byte_wait\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|Selector96~1_combout\,
	clrn => \fnReset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|state.receive_byte_wait~q\);

-- Location: LCCOMB_X23_Y17_N0
\io4|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector2~0_combout\ = (!\io4|state.receive_byte_wait~q\ & (!\io4|state.read_block_wait~q\ & (\io4|Selector97~0_combout\ & !\io4|state.receive_ocr_wait~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|state.receive_byte_wait~q\,
	datab => \io4|state.read_block_wait~q\,
	datac => \io4|Selector97~0_combout\,
	datad => \io4|state.receive_ocr_wait~q\,
	combout => \io4|Selector2~0_combout\);

-- Location: LCCOMB_X22_Y18_N22
\io4|Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector2~1_combout\ = (\io4|Selector2~0_combout\ & (!\io4|state.receive_byte~q\ & ((\io4|cmd_out[16]~36_combout\) # (!\io4|sclk_sig~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|sclk_sig~q\,
	datab => \io4|Selector2~0_combout\,
	datac => \io4|state.receive_byte~q\,
	datad => \io4|cmd_out[16]~36_combout\,
	combout => \io4|Selector2~1_combout\);

-- Location: LCCOMB_X22_Y18_N26
\io4|Selector2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector2~2_combout\ = (\io4|Selector2~1_combout\ & (\io4|sclk_sig~q\ $ (((!\io4|Equal9~2_combout\ & \io4|state.init~q\))))) # (!\io4|Selector2~1_combout\ & (((\io4|Equal9~2_combout\ & \io4|state.init~q\)) # (!\io4|sclk_sig~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|Selector2~1_combout\,
	datab => \io4|Equal9~2_combout\,
	datac => \io4|sclk_sig~q\,
	datad => \io4|state.init~q\,
	combout => \io4|Selector2~2_combout\);

-- Location: FF_X22_Y18_N27
\io4|sclk_sig\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|Selector2~2_combout\,
	clrn => \fnReset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|sclk_sig~q\);

-- Location: LCCOMB_X23_Y18_N8
\io4|Selector84~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector84~0_combout\ = (!\io4|sclk_sig~q\ & (\io4|Equal9~0_combout\ & (\io4|Equal9~1_combout\ & \io4|state.receive_byte~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|sclk_sig~q\,
	datab => \io4|Equal9~0_combout\,
	datac => \io4|Equal9~1_combout\,
	datad => \io4|state.receive_byte~q\,
	combout => \io4|Selector84~0_combout\);

-- Location: LCCOMB_X22_Y18_N8
\io4|Selector92~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector92~0_combout\ = (\io4|Selector84~0_combout\ & (\io4|return_state.read_block_data~q\)) # (!\io4|Selector84~0_combout\ & ((\io4|fsm:bit_counter[1]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|return_state.read_block_data~q\,
	datab => \io4|Selector84~0_combout\,
	datac => \io4|fsm:bit_counter[1]~5_combout\,
	combout => \io4|Selector92~0_combout\);

-- Location: FF_X22_Y18_N9
\io4|state.read_block_data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|Selector92~0_combout\,
	clrn => \fnReset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|state.read_block_data~q\);

-- Location: LCCOMB_X22_Y16_N28
\io4|return_state.read_block_data~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|return_state.read_block_data~0_combout\ = (\io4|state.read_block_data~q\ & ((\io4|Equal11~0_combout\))) # (!\io4|state.read_block_data~q\ & (\io4|state.read_block_wait~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \io4|state.read_block_data~q\,
	datac => \io4|state.read_block_wait~q\,
	datad => \io4|Equal11~0_combout\,
	combout => \io4|return_state.read_block_data~0_combout\);

-- Location: FF_X22_Y16_N29
\io4|return_state.read_block_data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|return_state.read_block_data~0_combout\,
	ena => \io4|return_state.init~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|return_state.read_block_data~q\);

-- Location: LCCOMB_X22_Y18_N14
\io4|Selector0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector0~2_combout\ = (\io4|return_state.read_block_data~q\ & (\io4|Equal9~2_combout\ & (!\io4|sclk_sig~q\ & \io4|Equal11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|return_state.read_block_data~q\,
	datab => \io4|Equal9~2_combout\,
	datac => \io4|sclk_sig~q\,
	datad => \io4|Equal11~0_combout\,
	combout => \io4|Selector0~2_combout\);

-- Location: LCCOMB_X22_Y20_N0
\io4|dout[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|dout[0]~0_combout\ = (\io4|Selector0~2_combout\ & (\io4|recv_data\(0))) # (!\io4|Selector0~2_combout\ & ((\io4|dout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|Selector0~2_combout\,
	datab => \io4|recv_data\(0),
	datac => \io4|dout\(0),
	combout => \io4|dout[0]~0_combout\);

-- Location: LCCOMB_X22_Y20_N8
\io4|Selector144~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector144~0_combout\ = (\io4|dout\(0) & !\io4|state.idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \io4|dout\(0),
	datad => \io4|state.idle~q\,
	combout => \io4|Selector144~0_combout\);

-- Location: FF_X22_Y20_N1
\io4|dout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|dout[0]~0_combout\,
	asdata => \io4|Selector144~0_combout\,
	sload => \io4|ALT_INV_state.receive_byte~q\,
	ena => \fnReset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|dout\(0));

-- Location: LCCOMB_X23_Y18_N18
\io4|sdhc~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|sdhc~0_combout\ = (\fnReset~input_o\ & ((\io4|Selector89~1_combout\ & ((\io4|recv_data\(30)))) # (!\io4|Selector89~1_combout\ & (\io4|sdhc~q\)))) # (!\fnReset~input_o\ & (((\io4|sdhc~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fnReset~input_o\,
	datab => \io4|Selector89~1_combout\,
	datac => \io4|sdhc~q\,
	datad => \io4|recv_data\(30),
	combout => \io4|sdhc~0_combout\);

-- Location: FF_X23_Y18_N19
\io4|sdhc\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|sdhc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|sdhc~q\);

-- Location: LCCOMB_X24_Y11_N18
\fData[0]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \fData[0]~25_combout\ = (\fAddress[0]~input_o\ & (((\fAddress[2]~input_o\ & \io4|sdhc~q\)))) # (!\fAddress[0]~input_o\ & (\io4|dout\(0) & (!\fAddress[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|dout\(0),
	datab => \fAddress[0]~input_o\,
	datac => \fAddress[2]~input_o\,
	datad => \io4|sdhc~q\,
	combout => \fData[0]~25_combout\);

-- Location: LCCOMB_X24_Y11_N28
\fData[0]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \fData[0]~26_combout\ = (\comb~2_combout\ & (((\fData[0]~25_combout\ & !\fAddress[1]~input_o\)))) # (!\comb~2_combout\ & (\io3|dataOut\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|dataOut\(0),
	datab => \fData[0]~25_combout\,
	datac => \comb~2_combout\,
	datad => \fAddress[1]~input_o\,
	combout => \fData[0]~26_combout\);

-- Location: LCCOMB_X25_Y12_N0
\fData[0]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \fData[0]~28_combout\ = (!\fData~27_combout\ & (\fData[0]~26_combout\ & !\nButtoncs~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fData~27_combout\,
	datac => \fData[0]~26_combout\,
	datad => \nButtoncs~2_combout\,
	combout => \fData[0]~28_combout\);

-- Location: LCCOMB_X25_Y12_N20
\fData[0]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \fData[0]~31_combout\ = (\fData~30_combout\ & (\io2|LEDreturn\(0))) # (!\fData~30_combout\ & (((\fData[0]~29_combout\) # (\fData[0]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io2|LEDreturn\(0),
	datab => \fData~30_combout\,
	datac => \fData[0]~29_combout\,
	datad => \fData[0]~28_combout\,
	combout => \fData[0]~31_combout\);

-- Location: LCCOMB_X24_Y11_N6
\fData[7]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \fData[7]~32_combout\ = (\fAddress[5]~input_o\ & (((!\fAddress[7]~input_o\)))) # (!\fAddress[5]~input_o\ & (!\fAddress[2]~input_o\ & (\fAddress[7]~input_o\ & !\fAddress[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fAddress[5]~input_o\,
	datab => \fAddress[2]~input_o\,
	datac => \fAddress[7]~input_o\,
	datad => \fAddress[1]~input_o\,
	combout => \fData[7]~32_combout\);

-- Location: LCCOMB_X24_Y11_N24
\fData[7]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \fData[7]~33_combout\ = (!\fnRd~input_o\ & (\nButtoncs~0_combout\ & \fData[7]~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fnRd~input_o\,
	datab => \nButtoncs~0_combout\,
	datad => \fData[7]~32_combout\,
	combout => \fData[7]~33_combout\);

-- Location: LCCOMB_X24_Y11_N26
\fData[7]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \fData[7]~34_combout\ = (\nButtoncs~2_combout\) # ((\fData[7]~33_combout\) # ((\fData~27_combout\) # (\fData~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nButtoncs~2_combout\,
	datab => \fData[7]~33_combout\,
	datac => \fData~27_combout\,
	datad => \fData~30_combout\,
	combout => \fData[7]~34_combout\);

-- Location: LCCOMB_X25_Y12_N16
\io2|leds_status[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \io2|leds_status\(1) = (\fnReset~input_o\ & ((GLOBAL(\io2|process_0~0clkctrl_outclk\) & (\fData[1]~input_o\)) # (!GLOBAL(\io2|process_0~0clkctrl_outclk\) & ((\io2|leds_status\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fnReset~input_o\,
	datab => \fData[1]~input_o\,
	datac => \io2|process_0~0clkctrl_outclk\,
	datad => \io2|leds_status\(1),
	combout => \io2|leds_status\(1));

-- Location: LCCOMB_X25_Y12_N12
\io2|LEDreturn[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \io2|LEDreturn\(1) = (GLOBAL(\io2|LEDreturn[2]~0clkctrl_outclk\) & (\io2|leds_status\(1))) # (!GLOBAL(\io2|LEDreturn[2]~0clkctrl_outclk\) & ((\io2|LEDreturn\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \io2|leds_status\(1),
	datac => \io2|LEDreturn[2]~0clkctrl_outclk\,
	datad => \io2|LEDreturn\(1),
	combout => \io2|LEDreturn\(1));

-- Location: LCCOMB_X23_Y12_N18
\timer1|timer[9]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer1|timer[9]~31_combout\ = (\timer1|timer\(9) & (\timer1|timer[8]~30\ $ (GND))) # (!\timer1|timer\(9) & (!\timer1|timer[8]~30\ & VCC))
-- \timer1|timer[9]~32\ = CARRY((\timer1|timer\(9) & !\timer1|timer[8]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer1|timer\(9),
	datad => VCC,
	cin => \timer1|timer[8]~30\,
	combout => \timer1|timer[9]~31_combout\,
	cout => \timer1|timer[9]~32\);

-- Location: FF_X23_Y12_N19
\timer1|timer[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \systemTimerOut~clkctrl_outclk\,
	d => \timer1|timer[9]~31_combout\,
	clrn => \timer1|TimerOut[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer1|timer\(9));

-- Location: LCCOMB_X24_Y11_N30
\timer1|TimerOut[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer1|TimerOut[1]~3_combout\ = (\fAddress[0]~input_o\ & (\timer1|timer\(9))) # (!\fAddress[0]~input_o\ & ((\timer1|timer\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer1|timer\(9),
	datab => \fAddress[0]~input_o\,
	datad => \timer1|timer\(1),
	combout => \timer1|TimerOut[1]~3_combout\);

-- Location: LCCOMB_X24_Y11_N10
\timer1|TimerOut[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer1|TimerOut\(1) = (GLOBAL(\timer1|TimerOut[7]~2clkctrl_outclk\) & (\timer1|TimerOut[1]~3_combout\)) # (!GLOBAL(\timer1|TimerOut[7]~2clkctrl_outclk\) & ((\timer1|TimerOut\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer1|TimerOut[1]~3_combout\,
	datac => \timer1|TimerOut[7]~2clkctrl_outclk\,
	datad => \timer1|TimerOut\(1),
	combout => \timer1|TimerOut\(1));

-- Location: LCCOMB_X25_Y12_N22
\fData[1]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \fData[1]~35_combout\ = (\fData~30_combout\ & (\io2|LEDreturn\(1))) # (!\fData~30_combout\ & (((\fData~27_combout\ & \timer1|TimerOut\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io2|LEDreturn\(1),
	datab => \fData~30_combout\,
	datac => \fData~27_combout\,
	datad => \timer1|TimerOut\(1),
	combout => \fData[1]~35_combout\);

-- Location: CLKCTRL_G3
\comb~3clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \comb~3clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \comb~3clkctrl_outclk\);

-- Location: LCCOMB_X12_Y12_N18
\io3|txByteWritten~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|txByteWritten~0_combout\ = !\io3|txByteSent~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \io3|txByteSent~q\,
	combout => \io3|txByteWritten~0_combout\);

-- Location: FF_X12_Y12_N19
\io3|txByteWritten\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb~3clkctrl_outclk\,
	d => \io3|txByteWritten~0_combout\,
	ena => \fAddress[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|txByteWritten~q\);

-- Location: LCCOMB_X11_Y16_N30
\io3|txBitCount[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|txBitCount[1]~0_combout\ = (\io3|txState.idle~q\) # (\io3|txByteSent~q\ $ (!\io3|txByteWritten~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \io3|txByteSent~q\,
	datac => \io3|txState.idle~q\,
	datad => \io3|txByteWritten~q\,
	combout => \io3|txBitCount[1]~0_combout\);

-- Location: LCCOMB_X11_Y16_N12
\io3|txClockCount[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|txClockCount[0]~9_combout\ = \io3|txClockCount\(0) $ (VCC)
-- \io3|txClockCount[0]~10\ = CARRY(\io3|txClockCount\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \io3|txClockCount\(0),
	datad => VCC,
	combout => \io3|txClockCount[0]~9_combout\,
	cout => \io3|txClockCount[0]~10\);

-- Location: LCCOMB_X12_Y16_N6
\io3|txClockCount[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|txClockCount[2]~6_combout\ = (\io3|Selector25~0_combout\) # (!\io3|txState.idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|txState.idle~q\,
	datac => \io3|Selector25~0_combout\,
	combout => \io3|txClockCount[2]~6_combout\);

-- Location: FF_X11_Y16_N13
\io3|txClockCount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	d => \io3|txClockCount[0]~9_combout\,
	clrn => \io3|ALT_INV_reset~0clkctrl_outclk\,
	sclr => \io3|txClockCount[2]~6_combout\,
	ena => \io3|ALT_INV_txClockCount[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|txClockCount\(0));

-- Location: LCCOMB_X11_Y16_N14
\io3|txClockCount[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|txClockCount[1]~11_combout\ = (\io3|txClockCount\(1) & (!\io3|txClockCount[0]~10\)) # (!\io3|txClockCount\(1) & ((\io3|txClockCount[0]~10\) # (GND)))
-- \io3|txClockCount[1]~12\ = CARRY((!\io3|txClockCount[0]~10\) # (!\io3|txClockCount\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \io3|txClockCount\(1),
	datad => VCC,
	cin => \io3|txClockCount[0]~10\,
	combout => \io3|txClockCount[1]~11_combout\,
	cout => \io3|txClockCount[1]~12\);

-- Location: FF_X11_Y16_N15
\io3|txClockCount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	d => \io3|txClockCount[1]~11_combout\,
	clrn => \io3|ALT_INV_reset~0clkctrl_outclk\,
	sclr => \io3|txClockCount[2]~6_combout\,
	ena => \io3|ALT_INV_txClockCount[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|txClockCount\(1));

-- Location: LCCOMB_X11_Y16_N16
\io3|txClockCount[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|txClockCount[2]~13_combout\ = (\io3|txClockCount\(2) & (\io3|txClockCount[1]~12\ $ (GND))) # (!\io3|txClockCount\(2) & (!\io3|txClockCount[1]~12\ & VCC))
-- \io3|txClockCount[2]~14\ = CARRY((\io3|txClockCount\(2) & !\io3|txClockCount[1]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \io3|txClockCount\(2),
	datad => VCC,
	cin => \io3|txClockCount[1]~12\,
	combout => \io3|txClockCount[2]~13_combout\,
	cout => \io3|txClockCount[2]~14\);

-- Location: FF_X11_Y16_N17
\io3|txClockCount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	d => \io3|txClockCount[2]~13_combout\,
	clrn => \io3|ALT_INV_reset~0clkctrl_outclk\,
	sclr => \io3|txClockCount[2]~6_combout\,
	ena => \io3|ALT_INV_txClockCount[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|txClockCount\(2));

-- Location: LCCOMB_X11_Y16_N18
\io3|txClockCount[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|txClockCount[3]~15_combout\ = (\io3|txClockCount\(3) & (!\io3|txClockCount[2]~14\)) # (!\io3|txClockCount\(3) & ((\io3|txClockCount[2]~14\) # (GND)))
-- \io3|txClockCount[3]~16\ = CARRY((!\io3|txClockCount[2]~14\) # (!\io3|txClockCount\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \io3|txClockCount\(3),
	datad => VCC,
	cin => \io3|txClockCount[2]~14\,
	combout => \io3|txClockCount[3]~15_combout\,
	cout => \io3|txClockCount[3]~16\);

-- Location: FF_X11_Y16_N19
\io3|txClockCount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	d => \io3|txClockCount[3]~15_combout\,
	clrn => \io3|ALT_INV_reset~0clkctrl_outclk\,
	sclr => \io3|txClockCount[2]~6_combout\,
	ena => \io3|ALT_INV_txClockCount[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|txClockCount\(3));

-- Location: LCCOMB_X11_Y16_N20
\io3|txClockCount[4]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|txClockCount[4]~17_combout\ = (\io3|txClockCount\(4) & (\io3|txClockCount[3]~16\ $ (GND))) # (!\io3|txClockCount\(4) & (!\io3|txClockCount[3]~16\ & VCC))
-- \io3|txClockCount[4]~18\ = CARRY((\io3|txClockCount\(4) & !\io3|txClockCount[3]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \io3|txClockCount\(4),
	datad => VCC,
	cin => \io3|txClockCount[3]~16\,
	combout => \io3|txClockCount[4]~17_combout\,
	cout => \io3|txClockCount[4]~18\);

-- Location: FF_X11_Y16_N21
\io3|txClockCount[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	d => \io3|txClockCount[4]~17_combout\,
	clrn => \io3|ALT_INV_reset~0clkctrl_outclk\,
	sclr => \io3|txClockCount[2]~6_combout\,
	ena => \io3|ALT_INV_txClockCount[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|txClockCount\(4));

-- Location: LCCOMB_X11_Y16_N22
\io3|txClockCount[5]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|txClockCount[5]~19_combout\ = \io3|txClockCount\(5) $ (\io3|txClockCount[4]~18\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \io3|txClockCount\(5),
	cin => \io3|txClockCount[4]~18\,
	combout => \io3|txClockCount[5]~19_combout\);

-- Location: FF_X11_Y16_N23
\io3|txClockCount[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	d => \io3|txClockCount[5]~19_combout\,
	clrn => \io3|ALT_INV_reset~0clkctrl_outclk\,
	sclr => \io3|txClockCount[2]~6_combout\,
	ena => \io3|ALT_INV_txClockCount[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|txClockCount\(5));

-- Location: LCCOMB_X11_Y16_N4
\io3|Equal7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|Equal7~0_combout\ = (\io3|txClockCount\(0) & (\io3|txClockCount\(2) & (\io3|txClockCount\(1) & \io3|txClockCount\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|txClockCount\(0),
	datab => \io3|txClockCount\(2),
	datac => \io3|txClockCount\(1),
	datad => \io3|txClockCount\(3),
	combout => \io3|Equal7~0_combout\);

-- Location: LCCOMB_X11_Y16_N10
\io3|Selector35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|Selector35~0_combout\ = (!\io3|txClockCount[2]~7_combout\ & (!\io3|Selector36~0_combout\ & ((\io3|txState.dataBit~q\) # (!\io3|txBitCount[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|txBitCount[1]~0_combout\,
	datab => \io3|txClockCount[2]~7_combout\,
	datac => \io3|txState.dataBit~q\,
	datad => \io3|Selector36~0_combout\,
	combout => \io3|Selector35~0_combout\);

-- Location: FF_X11_Y16_N11
\io3|txState.dataBit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	d => \io3|Selector35~0_combout\,
	clrn => \io3|ALT_INV_reset~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|txState.dataBit~q\);

-- Location: LCCOMB_X11_Y16_N6
\io3|Selector25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|Selector25~0_combout\ = (!\io3|txClockCount\(5) & (!\io3|txClockCount\(4) & (\io3|Equal7~0_combout\ & \io3|txState.dataBit~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|txClockCount\(5),
	datab => \io3|txClockCount\(4),
	datac => \io3|Equal7~0_combout\,
	datad => \io3|txState.dataBit~q\,
	combout => \io3|Selector25~0_combout\);

-- Location: LCCOMB_X12_Y16_N22
\io3|txBitCount[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|txBitCount[1]~1_combout\ = (\io3|txBitCount[1]~0_combout\ & ((\io3|Equal8~0_combout\) # (!\io3|Selector25~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \io3|txBitCount[1]~0_combout\,
	datac => \io3|Selector25~0_combout\,
	datad => \io3|Equal8~0_combout\,
	combout => \io3|txBitCount[1]~1_combout\);

-- Location: LCCOMB_X12_Y16_N0
\io3|txBitCount[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|txBitCount[0]~5_combout\ = (\io3|txBitCount[1]~1_combout\ & (\io3|txBitCount\(0))) # (!\io3|txBitCount[1]~1_combout\ & (!\io3|txBitCount\(0) & \io3|txState.dataBit~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|txBitCount[1]~1_combout\,
	datac => \io3|txBitCount\(0),
	datad => \io3|txState.dataBit~q\,
	combout => \io3|txBitCount[0]~5_combout\);

-- Location: FF_X12_Y16_N1
\io3|txBitCount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	d => \io3|txBitCount[0]~5_combout\,
	clrn => \io3|ALT_INV_reset~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|txBitCount\(0));

-- Location: LCCOMB_X12_Y16_N14
\io3|txBitCount[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|txBitCount[1]~4_combout\ = (\io3|txBitCount[1]~1_combout\ & (((\io3|txBitCount\(1))))) # (!\io3|txBitCount[1]~1_combout\ & (\io3|txState.dataBit~q\ & (\io3|txBitCount\(0) $ (\io3|txBitCount\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|txBitCount[1]~1_combout\,
	datab => \io3|txBitCount\(0),
	datac => \io3|txBitCount\(1),
	datad => \io3|txState.dataBit~q\,
	combout => \io3|txBitCount[1]~4_combout\);

-- Location: FF_X12_Y16_N15
\io3|txBitCount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	d => \io3|txBitCount[1]~4_combout\,
	clrn => \io3|ALT_INV_reset~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|txBitCount\(1));

-- Location: LCCOMB_X12_Y16_N16
\io3|Add9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|Add9~1_combout\ = \io3|txBitCount\(2) $ (((\io3|txBitCount\(0) & \io3|txBitCount\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|txBitCount\(2),
	datab => \io3|txBitCount\(0),
	datac => \io3|txBitCount\(1),
	combout => \io3|Add9~1_combout\);

-- Location: LCCOMB_X12_Y16_N12
\io3|txBitCount[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|txBitCount[2]~3_combout\ = (\io3|txBitCount[1]~1_combout\ & (((\io3|txBitCount\(2))))) # (!\io3|txBitCount[1]~1_combout\ & (\io3|Add9~1_combout\ & ((\io3|txState.dataBit~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|txBitCount[1]~1_combout\,
	datab => \io3|Add9~1_combout\,
	datac => \io3|txBitCount\(2),
	datad => \io3|txState.dataBit~q\,
	combout => \io3|txBitCount[2]~3_combout\);

-- Location: FF_X12_Y16_N13
\io3|txBitCount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	d => \io3|txBitCount[2]~3_combout\,
	clrn => \io3|ALT_INV_reset~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|txBitCount\(2));

-- Location: LCCOMB_X12_Y16_N28
\io3|Add9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|Add9~0_combout\ = \io3|txBitCount\(3) $ (((\io3|txBitCount\(2) & (\io3|txBitCount\(1) & \io3|txBitCount\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|txBitCount\(2),
	datab => \io3|txBitCount\(3),
	datac => \io3|txBitCount\(1),
	datad => \io3|txBitCount\(0),
	combout => \io3|Add9~0_combout\);

-- Location: LCCOMB_X12_Y16_N18
\io3|txBitCount[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|txBitCount[3]~2_combout\ = (\io3|txBitCount[1]~1_combout\ & (((\io3|txBitCount\(3))))) # (!\io3|txBitCount[1]~1_combout\ & (\io3|Add9~0_combout\ & ((\io3|txState.dataBit~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|txBitCount[1]~1_combout\,
	datab => \io3|Add9~0_combout\,
	datac => \io3|txBitCount\(3),
	datad => \io3|txState.dataBit~q\,
	combout => \io3|txBitCount[3]~2_combout\);

-- Location: FF_X12_Y16_N19
\io3|txBitCount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	d => \io3|txBitCount[3]~2_combout\,
	clrn => \io3|ALT_INV_reset~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|txBitCount\(3));

-- Location: LCCOMB_X12_Y16_N10
\io3|Equal8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|Equal8~0_combout\ = (!\io3|txBitCount\(2) & (\io3|txBitCount\(3) & (!\io3|txBitCount\(1) & !\io3|txBitCount\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|txBitCount\(2),
	datab => \io3|txBitCount\(3),
	datac => \io3|txBitCount\(1),
	datad => \io3|txBitCount\(0),
	combout => \io3|Equal8~0_combout\);

-- Location: LCCOMB_X12_Y16_N24
\io3|Selector36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|Selector36~0_combout\ = (\io3|Selector25~0_combout\ & \io3|Equal8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \io3|Selector25~0_combout\,
	datad => \io3|Equal8~0_combout\,
	combout => \io3|Selector36~0_combout\);

-- Location: LCCOMB_X11_Y16_N24
\io3|Selector36~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|Selector36~1_combout\ = (!\io3|txClockCount[2]~7_combout\ & ((\io3|Selector36~0_combout\) # ((\io3|txBitCount[1]~0_combout\ & \io3|txState.stopBit~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|txBitCount[1]~0_combout\,
	datab => \io3|txClockCount[2]~7_combout\,
	datac => \io3|txState.stopBit~q\,
	datad => \io3|Selector36~0_combout\,
	combout => \io3|Selector36~1_combout\);

-- Location: FF_X11_Y16_N25
\io3|txState.stopBit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	d => \io3|Selector36~1_combout\,
	clrn => \io3|ALT_INV_reset~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|txState.stopBit~q\);

-- Location: LCCOMB_X11_Y16_N26
\io3|txClockCount[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|txClockCount[2]~7_combout\ = (\io3|txState.stopBit~q\ & (\io3|Equal7~0_combout\ & (!\io3|txClockCount\(5) & !\io3|txClockCount\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|txState.stopBit~q\,
	datab => \io3|Equal7~0_combout\,
	datac => \io3|txClockCount\(5),
	datad => \io3|txClockCount\(4),
	combout => \io3|txClockCount[2]~7_combout\);

-- Location: LCCOMB_X11_Y16_N28
\io3|txClockCount[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|txClockCount[2]~8_combout\ = (\io3|txClockCount[2]~7_combout\) # ((!\io3|txState.idle~q\ & (\io3|txByteSent~q\ $ (!\io3|txByteWritten~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|txClockCount[2]~7_combout\,
	datab => \io3|txByteSent~q\,
	datac => \io3|txState.idle~q\,
	datad => \io3|txByteWritten~q\,
	combout => \io3|txClockCount[2]~8_combout\);

-- Location: LCCOMB_X11_Y16_N8
\io3|txState.idle~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|txState.idle~0_combout\ = !\io3|txClockCount[2]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \io3|txClockCount[2]~8_combout\,
	combout => \io3|txState.idle~0_combout\);

-- Location: FF_X11_Y16_N9
\io3|txState.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	d => \io3|txState.idle~0_combout\,
	clrn => \io3|ALT_INV_reset~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|txState.idle~q\);

-- Location: LCCOMB_X11_Y16_N0
\io3|txByteSent~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|txByteSent~0_combout\ = (\io3|txState.idle~q\ & (\io3|txByteSent~q\)) # (!\io3|txState.idle~q\ & ((\io3|txByteWritten~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \io3|txState.idle~q\,
	datac => \io3|txByteSent~q\,
	datad => \io3|txByteWritten~q\,
	combout => \io3|txByteSent~0_combout\);

-- Location: FF_X11_Y16_N1
\io3|txByteSent\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	d => \io3|txByteSent~0_combout\,
	clrn => \io3|ALT_INV_reset~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|txByteSent~q\);

-- Location: LCCOMB_X11_Y10_N4
\io3|rxBuffer~94feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~94feeder_combout\ = \io3|rxCurrentByteBuffer\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \io3|rxCurrentByteBuffer\(1),
	combout => \io3|rxBuffer~94feeder_combout\);

-- Location: FF_X11_Y10_N5
\io3|rxBuffer~94\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	d => \io3|rxBuffer~94feeder_combout\,
	ena => \io3|rxBuffer~222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxBuffer~94_q\);

-- Location: FF_X12_Y9_N5
\io3|rxBuffer~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	asdata => \io3|rxCurrentByteBuffer\(1),
	sload => VCC,
	ena => \io3|rxBuffer~238_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxBuffer~30_q\);

-- Location: LCCOMB_X12_Y9_N4
\io3|rxBuffer~151\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~151_combout\ = (\io3|rxReadPointer\(3) & ((\io3|rxBuffer~94_q\) # ((\io3|rxReadPointer\(2))))) # (!\io3|rxReadPointer\(3) & (((\io3|rxBuffer~30_q\ & !\io3|rxReadPointer\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|rxReadPointer\(3),
	datab => \io3|rxBuffer~94_q\,
	datac => \io3|rxBuffer~30_q\,
	datad => \io3|rxReadPointer\(2),
	combout => \io3|rxBuffer~151_combout\);

-- Location: FF_X11_Y10_N31
\io3|rxBuffer~126\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	asdata => \io3|rxCurrentByteBuffer\(1),
	sload => VCC,
	ena => \io3|rxBuffer~248_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxBuffer~126_q\);

-- Location: FF_X12_Y8_N5
\io3|rxBuffer~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	asdata => \io3|rxCurrentByteBuffer\(1),
	sload => VCC,
	ena => \io3|rxBuffer~232_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxBuffer~62_q\);

-- Location: LCCOMB_X11_Y10_N30
\io3|rxBuffer~152\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~152_combout\ = (\io3|rxReadPointer\(2) & ((\io3|rxBuffer~151_combout\ & (\io3|rxBuffer~126_q\)) # (!\io3|rxBuffer~151_combout\ & ((\io3|rxBuffer~62_q\))))) # (!\io3|rxReadPointer\(2) & (\io3|rxBuffer~151_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|rxReadPointer\(2),
	datab => \io3|rxBuffer~151_combout\,
	datac => \io3|rxBuffer~126_q\,
	datad => \io3|rxBuffer~62_q\,
	combout => \io3|rxBuffer~152_combout\);

-- Location: FF_X13_Y8_N29
\io3|rxBuffer~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	asdata => \io3|rxCurrentByteBuffer\(1),
	sload => VCC,
	ena => \io3|rxBuffer~234_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxBuffer~46_q\);

-- Location: FF_X12_Y10_N23
\io3|rxBuffer~110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	asdata => \io3|rxCurrentByteBuffer\(1),
	sload => VCC,
	ena => \io3|rxBuffer~250_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxBuffer~110_q\);

-- Location: FF_X12_Y10_N5
\io3|rxBuffer~78\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	asdata => \io3|rxCurrentByteBuffer\(1),
	sload => VCC,
	ena => \io3|rxBuffer~226_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxBuffer~78_q\);

-- Location: FF_X12_Y9_N23
\io3|rxBuffer~14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	asdata => \io3|rxCurrentByteBuffer\(1),
	sload => VCC,
	ena => \io3|rxBuffer~242_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxBuffer~14_q\);

-- Location: LCCOMB_X12_Y9_N22
\io3|rxBuffer~155\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~155_combout\ = (\io3|rxReadPointer\(3) & ((\io3|rxBuffer~78_q\) # ((\io3|rxReadPointer\(2))))) # (!\io3|rxReadPointer\(3) & (((\io3|rxBuffer~14_q\ & !\io3|rxReadPointer\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|rxReadPointer\(3),
	datab => \io3|rxBuffer~78_q\,
	datac => \io3|rxBuffer~14_q\,
	datad => \io3|rxReadPointer\(2),
	combout => \io3|rxBuffer~155_combout\);

-- Location: LCCOMB_X12_Y10_N22
\io3|rxBuffer~156\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~156_combout\ = (\io3|rxReadPointer\(2) & ((\io3|rxBuffer~155_combout\ & ((\io3|rxBuffer~110_q\))) # (!\io3|rxBuffer~155_combout\ & (\io3|rxBuffer~46_q\)))) # (!\io3|rxReadPointer\(2) & (((\io3|rxBuffer~155_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|rxReadPointer\(2),
	datab => \io3|rxBuffer~46_q\,
	datac => \io3|rxBuffer~110_q\,
	datad => \io3|rxBuffer~155_combout\,
	combout => \io3|rxBuffer~156_combout\);

-- Location: FF_X12_Y8_N31
\io3|rxBuffer~86\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	asdata => \io3|rxCurrentByteBuffer\(1),
	sload => VCC,
	ena => \io3|rxBuffer~224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxBuffer~86_q\);

-- Location: FF_X11_Y9_N13
\io3|rxBuffer~118\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	asdata => \io3|rxCurrentByteBuffer\(1),
	sload => VCC,
	ena => \io3|rxBuffer~246_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxBuffer~118_q\);

-- Location: FF_X11_Y8_N19
\io3|rxBuffer~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	asdata => \io3|rxCurrentByteBuffer\(1),
	sload => VCC,
	ena => \io3|rxBuffer~230_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxBuffer~54_q\);

-- Location: FF_X11_Y9_N11
\io3|rxBuffer~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	asdata => \io3|rxCurrentByteBuffer\(1),
	sload => VCC,
	ena => \io3|rxBuffer~240_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxBuffer~22_q\);

-- Location: LCCOMB_X11_Y9_N10
\io3|rxBuffer~153\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~153_combout\ = (\io3|rxReadPointer\(3) & (((\io3|rxReadPointer\(2))))) # (!\io3|rxReadPointer\(3) & ((\io3|rxReadPointer\(2) & (\io3|rxBuffer~54_q\)) # (!\io3|rxReadPointer\(2) & ((\io3|rxBuffer~22_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|rxReadPointer\(3),
	datab => \io3|rxBuffer~54_q\,
	datac => \io3|rxBuffer~22_q\,
	datad => \io3|rxReadPointer\(2),
	combout => \io3|rxBuffer~153_combout\);

-- Location: LCCOMB_X11_Y9_N12
\io3|rxBuffer~154\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~154_combout\ = (\io3|rxReadPointer\(3) & ((\io3|rxBuffer~153_combout\ & ((\io3|rxBuffer~118_q\))) # (!\io3|rxBuffer~153_combout\ & (\io3|rxBuffer~86_q\)))) # (!\io3|rxReadPointer\(3) & (((\io3|rxBuffer~153_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|rxReadPointer\(3),
	datab => \io3|rxBuffer~86_q\,
	datac => \io3|rxBuffer~118_q\,
	datad => \io3|rxBuffer~153_combout\,
	combout => \io3|rxBuffer~154_combout\);

-- Location: LCCOMB_X12_Y12_N6
\io3|rxBuffer~157\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~157_combout\ = (\io3|rxReadPointer\(1) & (\io3|rxReadPointer\(0))) # (!\io3|rxReadPointer\(1) & ((\io3|rxReadPointer\(0) & ((\io3|rxBuffer~154_combout\))) # (!\io3|rxReadPointer\(0) & (\io3|rxBuffer~156_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|rxReadPointer\(1),
	datab => \io3|rxReadPointer\(0),
	datac => \io3|rxBuffer~156_combout\,
	datad => \io3|rxBuffer~154_combout\,
	combout => \io3|rxBuffer~157_combout\);

-- Location: FF_X13_Y8_N7
\io3|rxBuffer~70\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	asdata => \io3|rxCurrentByteBuffer\(1),
	sload => VCC,
	ena => \io3|rxBuffer~236_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxBuffer~70_q\);

-- Location: FF_X13_Y9_N23
\io3|rxBuffer~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	asdata => \io3|rxCurrentByteBuffer\(1),
	sload => VCC,
	ena => \io3|rxBuffer~244_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxBuffer~38_q\);

-- Location: LCCOMB_X13_Y9_N22
\io3|rxBuffer~158\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~158_combout\ = (\io3|rxReadPointer\(2) & ((\io3|rxBuffer~70_q\) # ((\io3|rxReadPointer\(3))))) # (!\io3|rxReadPointer\(2) & (((\io3|rxBuffer~38_q\ & !\io3|rxReadPointer\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|rxReadPointer\(2),
	datab => \io3|rxBuffer~70_q\,
	datac => \io3|rxBuffer~38_q\,
	datad => \io3|rxReadPointer\(3),
	combout => \io3|rxBuffer~158_combout\);

-- Location: FF_X13_Y10_N13
\io3|rxBuffer~134\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	asdata => \io3|rxCurrentByteBuffer\(1),
	sload => VCC,
	ena => \io3|rxBuffer~252_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxBuffer~134_q\);

-- Location: FF_X13_Y9_N5
\io3|rxBuffer~102\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	asdata => \io3|rxCurrentByteBuffer\(1),
	sload => VCC,
	ena => \io3|rxBuffer~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxBuffer~102_q\);

-- Location: LCCOMB_X13_Y10_N12
\io3|rxBuffer~159\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~159_combout\ = (\io3|rxBuffer~158_combout\ & (((\io3|rxBuffer~134_q\)) # (!\io3|rxReadPointer\(3)))) # (!\io3|rxBuffer~158_combout\ & (\io3|rxReadPointer\(3) & ((\io3|rxBuffer~102_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|rxBuffer~158_combout\,
	datab => \io3|rxReadPointer\(3),
	datac => \io3|rxBuffer~134_q\,
	datad => \io3|rxBuffer~102_q\,
	combout => \io3|rxBuffer~159_combout\);

-- Location: LCCOMB_X13_Y10_N22
\io3|rxBuffer~160\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~160_combout\ = (\io3|rxBuffer~157_combout\ & (((\io3|rxBuffer~159_combout\) # (!\io3|rxReadPointer\(1))))) # (!\io3|rxBuffer~157_combout\ & (\io3|rxBuffer~152_combout\ & (\io3|rxReadPointer\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|rxBuffer~152_combout\,
	datab => \io3|rxBuffer~157_combout\,
	datac => \io3|rxReadPointer\(1),
	datad => \io3|rxBuffer~159_combout\,
	combout => \io3|rxBuffer~160_combout\);

-- Location: LCCOMB_X12_Y12_N28
\io3|dataOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|dataOut~1_combout\ = (\fAddress[0]~input_o\ & (((\io3|rxBuffer~160_combout\)))) # (!\fAddress[0]~input_o\ & (\io3|txByteSent~q\ $ ((!\io3|txByteWritten~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100100001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|txByteSent~q\,
	datab => \io3|txByteWritten~q\,
	datac => \fAddress[0]~input_o\,
	datad => \io3|rxBuffer~160_combout\,
	combout => \io3|dataOut~1_combout\);

-- Location: FF_X12_Y12_N29
\io3|dataOut[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_comb~2clkctrl_outclk\,
	d => \io3|dataOut~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|dataOut\(1));

-- Location: LCCOMB_X22_Y20_N18
\io4|dout[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|dout[1]~1_combout\ = (\io4|Selector0~2_combout\ & ((\io4|recv_data\(1)))) # (!\io4|Selector0~2_combout\ & (\io4|dout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|Selector0~2_combout\,
	datac => \io4|dout\(1),
	datad => \io4|recv_data\(1),
	combout => \io4|dout[1]~1_combout\);

-- Location: LCCOMB_X22_Y20_N26
\io4|Selector143~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector143~0_combout\ = (\io4|dout\(1) & !\io4|state.idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \io4|dout\(1),
	datad => \io4|state.idle~q\,
	combout => \io4|Selector143~0_combout\);

-- Location: FF_X22_Y20_N19
\io4|dout[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|dout[1]~1_combout\,
	asdata => \io4|Selector143~0_combout\,
	sload => \io4|ALT_INV_state.receive_byte~q\,
	ena => \fnReset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|dout\(1));

-- Location: LCCOMB_X22_Y12_N24
\fData[1]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \fData[1]~36_combout\ = (\comb~2_combout\ & (((\io4|dout\(1) & \io4|Equal6~0_combout\)))) # (!\comb~2_combout\ & (\io3|dataOut\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~2_combout\,
	datab => \io3|dataOut\(1),
	datac => \io4|dout\(1),
	datad => \io4|Equal6~0_combout\,
	combout => \fData[1]~36_combout\);

-- Location: IOIBUF_X34_Y18_N1
\nBtn_usr~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nBtn_usr,
	o => \nBtn_usr~input_o\);

-- Location: LCCOMB_X25_Y12_N8
\fData[1]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \fData[1]~37_combout\ = (\nButtoncs~2_combout\ & ((\nBtn_usr~input_o\))) # (!\nButtoncs~2_combout\ & (\fData[1]~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fData[1]~36_combout\,
	datac => \nBtn_usr~input_o\,
	datad => \nButtoncs~2_combout\,
	combout => \fData[1]~37_combout\);

-- Location: LCCOMB_X25_Y12_N2
\fData[1]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \fData[1]~38_combout\ = (\fData[1]~35_combout\) # ((!\fData~27_combout\ & (\fData[1]~37_combout\ & !\fData~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fData[1]~35_combout\,
	datab => \fData~27_combout\,
	datac => \fData[1]~37_combout\,
	datad => \fData~30_combout\,
	combout => \fData[1]~38_combout\);

-- Location: LCCOMB_X11_Y8_N28
\io3|rxBuffer~55feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~55feeder_combout\ = \io3|rxCurrentByteBuffer\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \io3|rxCurrentByteBuffer\(2),
	combout => \io3|rxBuffer~55feeder_combout\);

-- Location: FF_X11_Y8_N29
\io3|rxBuffer~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	d => \io3|rxBuffer~55feeder_combout\,
	ena => \io3|rxBuffer~230_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxBuffer~55_q\);

-- Location: FF_X13_Y8_N25
\io3|rxBuffer~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	asdata => \io3|rxCurrentByteBuffer\(2),
	sload => VCC,
	ena => \io3|rxBuffer~234_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxBuffer~47_q\);

-- Location: LCCOMB_X13_Y8_N24
\io3|rxBuffer~161\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~161_combout\ = (\io3|rxReadPointer\(1) & (((\io3|rxReadPointer\(0))))) # (!\io3|rxReadPointer\(1) & ((\io3|rxReadPointer\(0) & (\io3|rxBuffer~55_q\)) # (!\io3|rxReadPointer\(0) & ((\io3|rxBuffer~47_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|rxReadPointer\(1),
	datab => \io3|rxBuffer~55_q\,
	datac => \io3|rxBuffer~47_q\,
	datad => \io3|rxReadPointer\(0),
	combout => \io3|rxBuffer~161_combout\);

-- Location: FF_X13_Y8_N27
\io3|rxBuffer~71\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	asdata => \io3|rxCurrentByteBuffer\(2),
	sload => VCC,
	ena => \io3|rxBuffer~236_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxBuffer~71_q\);

-- Location: LCCOMB_X12_Y8_N8
\io3|rxBuffer~63feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~63feeder_combout\ = \io3|rxCurrentByteBuffer\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \io3|rxCurrentByteBuffer\(2),
	combout => \io3|rxBuffer~63feeder_combout\);

-- Location: FF_X12_Y8_N9
\io3|rxBuffer~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	d => \io3|rxBuffer~63feeder_combout\,
	ena => \io3|rxBuffer~232_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxBuffer~63_q\);

-- Location: LCCOMB_X13_Y8_N26
\io3|rxBuffer~162\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~162_combout\ = (\io3|rxReadPointer\(1) & ((\io3|rxBuffer~161_combout\ & (\io3|rxBuffer~71_q\)) # (!\io3|rxBuffer~161_combout\ & ((\io3|rxBuffer~63_q\))))) # (!\io3|rxReadPointer\(1) & (\io3|rxBuffer~161_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|rxReadPointer\(1),
	datab => \io3|rxBuffer~161_combout\,
	datac => \io3|rxBuffer~71_q\,
	datad => \io3|rxBuffer~63_q\,
	combout => \io3|rxBuffer~162_combout\);

-- Location: LCCOMB_X11_Y10_N8
\io3|rxBuffer~95feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~95feeder_combout\ = \io3|rxCurrentByteBuffer\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \io3|rxCurrentByteBuffer\(2),
	combout => \io3|rxBuffer~95feeder_combout\);

-- Location: FF_X11_Y10_N9
\io3|rxBuffer~95\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	d => \io3|rxBuffer~95feeder_combout\,
	ena => \io3|rxBuffer~222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxBuffer~95_q\);

-- Location: FF_X12_Y10_N9
\io3|rxBuffer~79\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	asdata => \io3|rxCurrentByteBuffer\(2),
	sload => VCC,
	ena => \io3|rxBuffer~226_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxBuffer~79_q\);

-- Location: LCCOMB_X12_Y10_N8
\io3|rxBuffer~163\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~163_combout\ = (\io3|rxReadPointer\(1) & ((\io3|rxBuffer~95_q\) # ((\io3|rxReadPointer\(0))))) # (!\io3|rxReadPointer\(1) & (((\io3|rxBuffer~79_q\ & !\io3|rxReadPointer\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|rxBuffer~95_q\,
	datab => \io3|rxReadPointer\(1),
	datac => \io3|rxBuffer~79_q\,
	datad => \io3|rxReadPointer\(0),
	combout => \io3|rxBuffer~163_combout\);

-- Location: LCCOMB_X12_Y8_N18
\io3|rxBuffer~87feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~87feeder_combout\ = \io3|rxCurrentByteBuffer\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \io3|rxCurrentByteBuffer\(2),
	combout => \io3|rxBuffer~87feeder_combout\);

-- Location: FF_X12_Y8_N19
\io3|rxBuffer~87\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	d => \io3|rxBuffer~87feeder_combout\,
	ena => \io3|rxBuffer~224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxBuffer~87_q\);

-- Location: FF_X13_Y9_N17
\io3|rxBuffer~103\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	asdata => \io3|rxCurrentByteBuffer\(2),
	sload => VCC,
	ena => \io3|rxBuffer~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxBuffer~103_q\);

-- Location: LCCOMB_X13_Y9_N16
\io3|rxBuffer~164\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~164_combout\ = (\io3|rxBuffer~163_combout\ & (((\io3|rxBuffer~103_q\) # (!\io3|rxReadPointer\(0))))) # (!\io3|rxBuffer~163_combout\ & (\io3|rxBuffer~87_q\ & ((\io3|rxReadPointer\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|rxBuffer~163_combout\,
	datab => \io3|rxBuffer~87_q\,
	datac => \io3|rxBuffer~103_q\,
	datad => \io3|rxReadPointer\(0),
	combout => \io3|rxBuffer~164_combout\);

-- Location: FF_X12_Y9_N11
\io3|rxBuffer~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	asdata => \io3|rxCurrentByteBuffer\(2),
	sload => VCC,
	ena => \io3|rxBuffer~242_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxBuffer~15_q\);

-- Location: LCCOMB_X12_Y9_N16
\io3|rxBuffer~31feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~31feeder_combout\ = \io3|rxCurrentByteBuffer\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \io3|rxCurrentByteBuffer\(2),
	combout => \io3|rxBuffer~31feeder_combout\);

-- Location: FF_X12_Y9_N17
\io3|rxBuffer~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	d => \io3|rxBuffer~31feeder_combout\,
	ena => \io3|rxBuffer~238_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxBuffer~31_q\);

-- Location: LCCOMB_X12_Y9_N10
\io3|rxBuffer~165\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~165_combout\ = (\io3|rxReadPointer\(0) & (\io3|rxReadPointer\(1))) # (!\io3|rxReadPointer\(0) & ((\io3|rxReadPointer\(1) & ((\io3|rxBuffer~31_q\))) # (!\io3|rxReadPointer\(1) & (\io3|rxBuffer~15_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|rxReadPointer\(0),
	datab => \io3|rxReadPointer\(1),
	datac => \io3|rxBuffer~15_q\,
	datad => \io3|rxBuffer~31_q\,
	combout => \io3|rxBuffer~165_combout\);

-- Location: LCCOMB_X11_Y9_N14
\io3|rxBuffer~23feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~23feeder_combout\ = \io3|rxCurrentByteBuffer\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \io3|rxCurrentByteBuffer\(2),
	combout => \io3|rxBuffer~23feeder_combout\);

-- Location: FF_X11_Y9_N15
\io3|rxBuffer~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	d => \io3|rxBuffer~23feeder_combout\,
	ena => \io3|rxBuffer~240_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxBuffer~23_q\);

-- Location: FF_X13_Y9_N19
\io3|rxBuffer~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	asdata => \io3|rxCurrentByteBuffer\(2),
	sload => VCC,
	ena => \io3|rxBuffer~244_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxBuffer~39_q\);

-- Location: LCCOMB_X13_Y9_N18
\io3|rxBuffer~166\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~166_combout\ = (\io3|rxBuffer~165_combout\ & (((\io3|rxBuffer~39_q\) # (!\io3|rxReadPointer\(0))))) # (!\io3|rxBuffer~165_combout\ & (\io3|rxBuffer~23_q\ & ((\io3|rxReadPointer\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|rxBuffer~165_combout\,
	datab => \io3|rxBuffer~23_q\,
	datac => \io3|rxBuffer~39_q\,
	datad => \io3|rxReadPointer\(0),
	combout => \io3|rxBuffer~166_combout\);

-- Location: LCCOMB_X12_Y12_N24
\io3|rxBuffer~167\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~167_combout\ = (\io3|rxReadPointer\(2) & (((\io3|rxReadPointer\(3))))) # (!\io3|rxReadPointer\(2) & ((\io3|rxReadPointer\(3) & (\io3|rxBuffer~164_combout\)) # (!\io3|rxReadPointer\(3) & ((\io3|rxBuffer~166_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|rxReadPointer\(2),
	datab => \io3|rxBuffer~164_combout\,
	datac => \io3|rxReadPointer\(3),
	datad => \io3|rxBuffer~166_combout\,
	combout => \io3|rxBuffer~167_combout\);

-- Location: LCCOMB_X11_Y10_N18
\io3|rxBuffer~127feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~127feeder_combout\ = \io3|rxCurrentByteBuffer\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \io3|rxCurrentByteBuffer\(2),
	combout => \io3|rxBuffer~127feeder_combout\);

-- Location: FF_X11_Y10_N19
\io3|rxBuffer~127\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	d => \io3|rxBuffer~127feeder_combout\,
	ena => \io3|rxBuffer~248_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxBuffer~127_q\);

-- Location: FF_X13_Y10_N25
\io3|rxBuffer~135\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	asdata => \io3|rxCurrentByteBuffer\(2),
	sload => VCC,
	ena => \io3|rxBuffer~252_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxBuffer~135_q\);

-- Location: LCCOMB_X11_Y9_N16
\io3|rxBuffer~119feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~119feeder_combout\ = \io3|rxCurrentByteBuffer\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \io3|rxCurrentByteBuffer\(2),
	combout => \io3|rxBuffer~119feeder_combout\);

-- Location: FF_X11_Y9_N17
\io3|rxBuffer~119\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	d => \io3|rxBuffer~119feeder_combout\,
	ena => \io3|rxBuffer~246_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxBuffer~119_q\);

-- Location: FF_X12_Y10_N3
\io3|rxBuffer~111\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	asdata => \io3|rxCurrentByteBuffer\(2),
	sload => VCC,
	ena => \io3|rxBuffer~250_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxBuffer~111_q\);

-- Location: LCCOMB_X12_Y10_N2
\io3|rxBuffer~168\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~168_combout\ = (\io3|rxReadPointer\(1) & (((\io3|rxReadPointer\(0))))) # (!\io3|rxReadPointer\(1) & ((\io3|rxReadPointer\(0) & (\io3|rxBuffer~119_q\)) # (!\io3|rxReadPointer\(0) & ((\io3|rxBuffer~111_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|rxBuffer~119_q\,
	datab => \io3|rxReadPointer\(1),
	datac => \io3|rxBuffer~111_q\,
	datad => \io3|rxReadPointer\(0),
	combout => \io3|rxBuffer~168_combout\);

-- Location: LCCOMB_X13_Y10_N24
\io3|rxBuffer~169\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~169_combout\ = (\io3|rxReadPointer\(1) & ((\io3|rxBuffer~168_combout\ & ((\io3|rxBuffer~135_q\))) # (!\io3|rxBuffer~168_combout\ & (\io3|rxBuffer~127_q\)))) # (!\io3|rxReadPointer\(1) & (((\io3|rxBuffer~168_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|rxReadPointer\(1),
	datab => \io3|rxBuffer~127_q\,
	datac => \io3|rxBuffer~135_q\,
	datad => \io3|rxBuffer~168_combout\,
	combout => \io3|rxBuffer~169_combout\);

-- Location: LCCOMB_X12_Y12_N16
\io3|rxBuffer~170\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~170_combout\ = (\io3|rxReadPointer\(2) & ((\io3|rxBuffer~167_combout\ & ((\io3|rxBuffer~169_combout\))) # (!\io3|rxBuffer~167_combout\ & (\io3|rxBuffer~162_combout\)))) # (!\io3|rxReadPointer\(2) & (((\io3|rxBuffer~167_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|rxReadPointer\(2),
	datab => \io3|rxBuffer~162_combout\,
	datac => \io3|rxBuffer~167_combout\,
	datad => \io3|rxBuffer~169_combout\,
	combout => \io3|rxBuffer~170_combout\);

-- Location: FF_X12_Y12_N17
\io3|dataOut[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_comb~2clkctrl_outclk\,
	d => \io3|rxBuffer~170_combout\,
	sclr => \ALT_INV_fAddress[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|dataOut\(2));

-- Location: LCCOMB_X22_Y20_N28
\io4|dout[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|dout[2]~2_combout\ = (\io4|Selector0~2_combout\ & ((\io4|recv_data\(2)))) # (!\io4|Selector0~2_combout\ & (\io4|dout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|Selector0~2_combout\,
	datac => \io4|dout\(2),
	datad => \io4|recv_data\(2),
	combout => \io4|dout[2]~2_combout\);

-- Location: LCCOMB_X22_Y20_N4
\io4|Selector142~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector142~0_combout\ = (\io4|dout\(2) & !\io4|state.idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \io4|dout\(2),
	datad => \io4|state.idle~q\,
	combout => \io4|Selector142~0_combout\);

-- Location: FF_X22_Y20_N29
\io4|dout[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|dout[2]~2_combout\,
	asdata => \io4|Selector142~0_combout\,
	sload => \io4|ALT_INV_state.receive_byte~q\,
	ena => \fnReset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|dout\(2));

-- Location: LCCOMB_X22_Y12_N10
\fData[2]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \fData[2]~39_combout\ = (\comb~2_combout\ & (((\io4|dout\(2) & \io4|Equal6~0_combout\)))) # (!\comb~2_combout\ & (\io3|dataOut\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|dataOut\(2),
	datab => \comb~2_combout\,
	datac => \io4|dout\(2),
	datad => \io4|Equal6~0_combout\,
	combout => \fData[2]~39_combout\);

-- Location: LCCOMB_X23_Y12_N20
\timer1|timer[10]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer1|timer[10]~33_combout\ = (\timer1|timer\(10) & (!\timer1|timer[9]~32\)) # (!\timer1|timer\(10) & ((\timer1|timer[9]~32\) # (GND)))
-- \timer1|timer[10]~34\ = CARRY((!\timer1|timer[9]~32\) # (!\timer1|timer\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer1|timer\(10),
	datad => VCC,
	cin => \timer1|timer[9]~32\,
	combout => \timer1|timer[10]~33_combout\,
	cout => \timer1|timer[10]~34\);

-- Location: FF_X23_Y12_N21
\timer1|timer[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \systemTimerOut~clkctrl_outclk\,
	d => \timer1|timer[10]~33_combout\,
	clrn => \timer1|TimerOut[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer1|timer\(10));

-- Location: LCCOMB_X22_Y12_N4
\timer1|TimerOut[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer1|TimerOut[2]~4_combout\ = (\fAddress[0]~input_o\ & (\timer1|timer\(10))) # (!\fAddress[0]~input_o\ & ((\timer1|timer\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fAddress[0]~input_o\,
	datac => \timer1|timer\(10),
	datad => \timer1|timer\(2),
	combout => \timer1|TimerOut[2]~4_combout\);

-- Location: LCCOMB_X22_Y12_N18
\timer1|TimerOut[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer1|TimerOut\(2) = (GLOBAL(\timer1|TimerOut[7]~2clkctrl_outclk\) & (\timer1|TimerOut[2]~4_combout\)) # (!GLOBAL(\timer1|TimerOut[7]~2clkctrl_outclk\) & ((\timer1|TimerOut\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer1|TimerOut[2]~4_combout\,
	datac => \timer1|TimerOut[7]~2clkctrl_outclk\,
	datad => \timer1|TimerOut\(2),
	combout => \timer1|TimerOut\(2));

-- Location: LCCOMB_X22_Y12_N12
\fData[2]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \fData[2]~40_combout\ = (!\fData~30_combout\ & ((\fData~27_combout\ & ((\timer1|TimerOut\(2)))) # (!\fData~27_combout\ & (\fData[2]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fData[2]~39_combout\,
	datab => \timer1|TimerOut\(2),
	datac => \fData~27_combout\,
	datad => \fData~30_combout\,
	combout => \fData[2]~40_combout\);

-- Location: LCCOMB_X19_Y15_N12
\io2|leds_status[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \io2|leds_status\(2) = (\fnReset~input_o\ & ((GLOBAL(\io2|process_0~0clkctrl_outclk\) & (\fData[2]~input_o\)) # (!GLOBAL(\io2|process_0~0clkctrl_outclk\) & ((\io2|leds_status\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fnReset~input_o\,
	datab => \fData[2]~input_o\,
	datac => \io2|process_0~0clkctrl_outclk\,
	datad => \io2|leds_status\(2),
	combout => \io2|leds_status\(2));

-- Location: LCCOMB_X19_Y15_N2
\io2|LEDreturn[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \io2|LEDreturn\(2) = (GLOBAL(\io2|LEDreturn[2]~0clkctrl_outclk\) & (\io2|leds_status\(2))) # (!GLOBAL(\io2|LEDreturn[2]~0clkctrl_outclk\) & ((\io2|LEDreturn\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io2|leds_status\(2),
	datac => \io2|LEDreturn[2]~0clkctrl_outclk\,
	datad => \io2|LEDreturn\(2),
	combout => \io2|LEDreturn\(2));

-- Location: LCCOMB_X22_Y12_N6
\fData[2]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \fData[2]~41_combout\ = (\fData[2]~40_combout\) # ((\io2|LEDreturn\(2) & \fData~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fData[2]~40_combout\,
	datac => \io2|LEDreturn\(2),
	datad => \fData~30_combout\,
	combout => \fData[2]~41_combout\);

-- Location: LCCOMB_X23_Y12_N22
\timer1|timer[11]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer1|timer[11]~35_combout\ = (\timer1|timer\(11) & (\timer1|timer[10]~34\ $ (GND))) # (!\timer1|timer\(11) & (!\timer1|timer[10]~34\ & VCC))
-- \timer1|timer[11]~36\ = CARRY((\timer1|timer\(11) & !\timer1|timer[10]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer1|timer\(11),
	datad => VCC,
	cin => \timer1|timer[10]~34\,
	combout => \timer1|timer[11]~35_combout\,
	cout => \timer1|timer[11]~36\);

-- Location: FF_X23_Y12_N23
\timer1|timer[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \systemTimerOut~clkctrl_outclk\,
	d => \timer1|timer[11]~35_combout\,
	clrn => \timer1|TimerOut[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer1|timer\(11));

-- Location: LCCOMB_X22_Y12_N14
\timer1|TimerOut[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer1|TimerOut[3]~5_combout\ = (\fAddress[0]~input_o\ & (\timer1|timer\(11))) # (!\fAddress[0]~input_o\ & ((\timer1|timer\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fAddress[0]~input_o\,
	datab => \timer1|timer\(11),
	datad => \timer1|timer\(3),
	combout => \timer1|TimerOut[3]~5_combout\);

-- Location: LCCOMB_X22_Y12_N28
\timer1|TimerOut[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer1|TimerOut\(3) = (GLOBAL(\timer1|TimerOut[7]~2clkctrl_outclk\) & (\timer1|TimerOut[3]~5_combout\)) # (!GLOBAL(\timer1|TimerOut[7]~2clkctrl_outclk\) & ((\timer1|TimerOut\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer1|TimerOut[3]~5_combout\,
	datac => \timer1|TimerOut[7]~2clkctrl_outclk\,
	datad => \timer1|TimerOut\(3),
	combout => \timer1|TimerOut\(3));

-- Location: LCCOMB_X22_Y20_N6
\io4|dout[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|dout[3]~3_combout\ = (\io4|Selector0~2_combout\ & ((\io4|recv_data\(3)))) # (!\io4|Selector0~2_combout\ & (\io4|dout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|Selector0~2_combout\,
	datac => \io4|dout\(3),
	datad => \io4|recv_data\(3),
	combout => \io4|dout[3]~3_combout\);

-- Location: LCCOMB_X22_Y20_N22
\io4|Selector141~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector141~0_combout\ = (\io4|dout\(3) & !\io4|state.idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|dout\(3),
	datad => \io4|state.idle~q\,
	combout => \io4|Selector141~0_combout\);

-- Location: FF_X22_Y20_N7
\io4|dout[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|dout[3]~3_combout\,
	asdata => \io4|Selector141~0_combout\,
	sload => \io4|ALT_INV_state.receive_byte~q\,
	ena => \fnReset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|dout\(3));

-- Location: FF_X11_Y10_N29
\io3|rxBuffer~96\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	asdata => \io3|rxCurrentByteBuffer\(3),
	sload => VCC,
	ena => \io3|rxBuffer~222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxBuffer~96_q\);

-- Location: FF_X11_Y10_N23
\io3|rxBuffer~128\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	asdata => \io3|rxCurrentByteBuffer\(3),
	sload => VCC,
	ena => \io3|rxBuffer~248_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxBuffer~128_q\);

-- Location: LCCOMB_X12_Y8_N22
\io3|rxBuffer~64feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~64feeder_combout\ = \io3|rxCurrentByteBuffer\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \io3|rxCurrentByteBuffer\(3),
	combout => \io3|rxBuffer~64feeder_combout\);

-- Location: FF_X12_Y8_N23
\io3|rxBuffer~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	d => \io3|rxBuffer~64feeder_combout\,
	ena => \io3|rxBuffer~232_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxBuffer~64_q\);

-- Location: FF_X12_Y9_N21
\io3|rxBuffer~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	asdata => \io3|rxCurrentByteBuffer\(3),
	sload => VCC,
	ena => \io3|rxBuffer~238_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxBuffer~32_q\);

-- Location: LCCOMB_X12_Y9_N20
\io3|rxBuffer~173\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~173_combout\ = (\io3|rxReadPointer\(3) & (((\io3|rxReadPointer\(2))))) # (!\io3|rxReadPointer\(3) & ((\io3|rxReadPointer\(2) & (\io3|rxBuffer~64_q\)) # (!\io3|rxReadPointer\(2) & ((\io3|rxBuffer~32_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|rxReadPointer\(3),
	datab => \io3|rxBuffer~64_q\,
	datac => \io3|rxBuffer~32_q\,
	datad => \io3|rxReadPointer\(2),
	combout => \io3|rxBuffer~173_combout\);

-- Location: LCCOMB_X11_Y10_N22
\io3|rxBuffer~174\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~174_combout\ = (\io3|rxReadPointer\(3) & ((\io3|rxBuffer~173_combout\ & ((\io3|rxBuffer~128_q\))) # (!\io3|rxBuffer~173_combout\ & (\io3|rxBuffer~96_q\)))) # (!\io3|rxReadPointer\(3) & (((\io3|rxBuffer~173_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|rxReadPointer\(3),
	datab => \io3|rxBuffer~96_q\,
	datac => \io3|rxBuffer~128_q\,
	datad => \io3|rxBuffer~173_combout\,
	combout => \io3|rxBuffer~174_combout\);

-- Location: FF_X12_Y9_N7
\io3|rxBuffer~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	asdata => \io3|rxCurrentByteBuffer\(3),
	sload => VCC,
	ena => \io3|rxBuffer~242_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxBuffer~16_q\);

-- Location: FF_X13_Y8_N13
\io3|rxBuffer~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	asdata => \io3|rxCurrentByteBuffer\(3),
	sload => VCC,
	ena => \io3|rxBuffer~234_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxBuffer~48_q\);

-- Location: LCCOMB_X12_Y9_N6
\io3|rxBuffer~175\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~175_combout\ = (\io3|rxReadPointer\(3) & (\io3|rxReadPointer\(2))) # (!\io3|rxReadPointer\(3) & ((\io3|rxReadPointer\(2) & ((\io3|rxBuffer~48_q\))) # (!\io3|rxReadPointer\(2) & (\io3|rxBuffer~16_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|rxReadPointer\(3),
	datab => \io3|rxReadPointer\(2),
	datac => \io3|rxBuffer~16_q\,
	datad => \io3|rxBuffer~48_q\,
	combout => \io3|rxBuffer~175_combout\);

-- Location: FF_X12_Y10_N29
\io3|rxBuffer~80\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	asdata => \io3|rxCurrentByteBuffer\(3),
	sload => VCC,
	ena => \io3|rxBuffer~226_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxBuffer~80_q\);

-- Location: FF_X12_Y10_N31
\io3|rxBuffer~112\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	asdata => \io3|rxCurrentByteBuffer\(3),
	sload => VCC,
	ena => \io3|rxBuffer~250_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxBuffer~112_q\);

-- Location: LCCOMB_X12_Y10_N30
\io3|rxBuffer~176\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~176_combout\ = (\io3|rxBuffer~175_combout\ & (((\io3|rxBuffer~112_q\) # (!\io3|rxReadPointer\(3))))) # (!\io3|rxBuffer~175_combout\ & (\io3|rxBuffer~80_q\ & ((\io3|rxReadPointer\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|rxBuffer~175_combout\,
	datab => \io3|rxBuffer~80_q\,
	datac => \io3|rxBuffer~112_q\,
	datad => \io3|rxReadPointer\(3),
	combout => \io3|rxBuffer~176_combout\);

-- Location: LCCOMB_X12_Y12_N10
\io3|rxBuffer~177\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~177_combout\ = (\io3|rxReadPointer\(1) & ((\io3|rxBuffer~174_combout\) # ((\io3|rxReadPointer\(0))))) # (!\io3|rxReadPointer\(1) & (((\io3|rxBuffer~176_combout\ & !\io3|rxReadPointer\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|rxReadPointer\(1),
	datab => \io3|rxBuffer~174_combout\,
	datac => \io3|rxBuffer~176_combout\,
	datad => \io3|rxReadPointer\(0),
	combout => \io3|rxBuffer~177_combout\);

-- Location: FF_X11_Y9_N27
\io3|rxBuffer~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	asdata => \io3|rxCurrentByteBuffer\(3),
	sload => VCC,
	ena => \io3|rxBuffer~240_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxBuffer~24_q\);

-- Location: LCCOMB_X12_Y8_N12
\io3|rxBuffer~88feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~88feeder_combout\ = \io3|rxCurrentByteBuffer\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \io3|rxCurrentByteBuffer\(3),
	combout => \io3|rxBuffer~88feeder_combout\);

-- Location: FF_X12_Y8_N13
\io3|rxBuffer~88\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	d => \io3|rxBuffer~88feeder_combout\,
	ena => \io3|rxBuffer~224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxBuffer~88_q\);

-- Location: LCCOMB_X11_Y9_N26
\io3|rxBuffer~171\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~171_combout\ = (\io3|rxReadPointer\(3) & ((\io3|rxReadPointer\(2)) # ((\io3|rxBuffer~88_q\)))) # (!\io3|rxReadPointer\(3) & (!\io3|rxReadPointer\(2) & (\io3|rxBuffer~24_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|rxReadPointer\(3),
	datab => \io3|rxReadPointer\(2),
	datac => \io3|rxBuffer~24_q\,
	datad => \io3|rxBuffer~88_q\,
	combout => \io3|rxBuffer~171_combout\);

-- Location: FF_X11_Y8_N15
\io3|rxBuffer~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	asdata => \io3|rxCurrentByteBuffer\(3),
	sload => VCC,
	ena => \io3|rxBuffer~230_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxBuffer~56_q\);

-- Location: FF_X11_Y9_N29
\io3|rxBuffer~120\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	asdata => \io3|rxCurrentByteBuffer\(3),
	sload => VCC,
	ena => \io3|rxBuffer~246_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxBuffer~120_q\);

-- Location: LCCOMB_X11_Y9_N28
\io3|rxBuffer~172\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~172_combout\ = (\io3|rxBuffer~171_combout\ & (((\io3|rxBuffer~120_q\) # (!\io3|rxReadPointer\(2))))) # (!\io3|rxBuffer~171_combout\ & (\io3|rxBuffer~56_q\ & ((\io3|rxReadPointer\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|rxBuffer~171_combout\,
	datab => \io3|rxBuffer~56_q\,
	datac => \io3|rxBuffer~120_q\,
	datad => \io3|rxReadPointer\(2),
	combout => \io3|rxBuffer~172_combout\);

-- Location: FF_X13_Y8_N31
\io3|rxBuffer~72\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	asdata => \io3|rxCurrentByteBuffer\(3),
	sload => VCC,
	ena => \io3|rxBuffer~236_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxBuffer~72_q\);

-- Location: FF_X13_Y9_N7
\io3|rxBuffer~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	asdata => \io3|rxCurrentByteBuffer\(3),
	sload => VCC,
	ena => \io3|rxBuffer~244_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxBuffer~40_q\);

-- Location: FF_X13_Y9_N13
\io3|rxBuffer~104\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	asdata => \io3|rxCurrentByteBuffer\(3),
	sload => VCC,
	ena => \io3|rxBuffer~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxBuffer~104_q\);

-- Location: LCCOMB_X13_Y9_N6
\io3|rxBuffer~178\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~178_combout\ = (\io3|rxReadPointer\(2) & (\io3|rxReadPointer\(3))) # (!\io3|rxReadPointer\(2) & ((\io3|rxReadPointer\(3) & ((\io3|rxBuffer~104_q\))) # (!\io3|rxReadPointer\(3) & (\io3|rxBuffer~40_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|rxReadPointer\(2),
	datab => \io3|rxReadPointer\(3),
	datac => \io3|rxBuffer~40_q\,
	datad => \io3|rxBuffer~104_q\,
	combout => \io3|rxBuffer~178_combout\);

-- Location: FF_X13_Y10_N11
\io3|rxBuffer~136\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	asdata => \io3|rxCurrentByteBuffer\(3),
	sload => VCC,
	ena => \io3|rxBuffer~252_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxBuffer~136_q\);

-- Location: LCCOMB_X13_Y10_N10
\io3|rxBuffer~179\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~179_combout\ = (\io3|rxBuffer~178_combout\ & (((\io3|rxBuffer~136_q\) # (!\io3|rxReadPointer\(2))))) # (!\io3|rxBuffer~178_combout\ & (\io3|rxBuffer~72_q\ & ((\io3|rxReadPointer\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|rxBuffer~72_q\,
	datab => \io3|rxBuffer~178_combout\,
	datac => \io3|rxBuffer~136_q\,
	datad => \io3|rxReadPointer\(2),
	combout => \io3|rxBuffer~179_combout\);

-- Location: LCCOMB_X12_Y12_N26
\io3|rxBuffer~180\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~180_combout\ = (\io3|rxBuffer~177_combout\ & (((\io3|rxBuffer~179_combout\) # (!\io3|rxReadPointer\(0))))) # (!\io3|rxBuffer~177_combout\ & (\io3|rxBuffer~172_combout\ & ((\io3|rxReadPointer\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|rxBuffer~177_combout\,
	datab => \io3|rxBuffer~172_combout\,
	datac => \io3|rxBuffer~179_combout\,
	datad => \io3|rxReadPointer\(0),
	combout => \io3|rxBuffer~180_combout\);

-- Location: FF_X12_Y12_N27
\io3|dataOut[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_comb~2clkctrl_outclk\,
	d => \io3|rxBuffer~180_combout\,
	sclr => \ALT_INV_fAddress[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|dataOut\(3));

-- Location: LCCOMB_X22_Y12_N8
\fData[3]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \fData[3]~42_combout\ = (\comb~2_combout\ & (\io4|dout\(3) & ((\io4|Equal6~0_combout\)))) # (!\comb~2_combout\ & (((\io3|dataOut\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~2_combout\,
	datab => \io4|dout\(3),
	datac => \io3|dataOut\(3),
	datad => \io4|Equal6~0_combout\,
	combout => \fData[3]~42_combout\);

-- Location: LCCOMB_X22_Y12_N2
\fData[3]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \fData[3]~43_combout\ = (\fData~30_combout\) # ((\fData~27_combout\ & (\timer1|TimerOut\(3))) # (!\fData~27_combout\ & ((\fData[3]~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fData~27_combout\,
	datab => \timer1|TimerOut\(3),
	datac => \fData[3]~42_combout\,
	datad => \fData~30_combout\,
	combout => \fData[3]~43_combout\);

-- Location: LCCOMB_X22_Y20_N16
\io4|dout[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|dout[4]~4_combout\ = (\io4|Selector0~2_combout\ & ((\io4|recv_data\(4)))) # (!\io4|Selector0~2_combout\ & (\io4|dout\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|Selector0~2_combout\,
	datac => \io4|dout\(4),
	datad => \io4|recv_data\(4),
	combout => \io4|dout[4]~4_combout\);

-- Location: LCCOMB_X22_Y20_N24
\io4|Selector140~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector140~0_combout\ = (\io4|dout\(4) & !\io4|state.idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \io4|dout\(4),
	datad => \io4|state.idle~q\,
	combout => \io4|Selector140~0_combout\);

-- Location: FF_X22_Y20_N17
\io4|dout[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|dout[4]~4_combout\,
	asdata => \io4|Selector140~0_combout\,
	sload => \io4|ALT_INV_state.receive_byte~q\,
	ena => \fnReset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|dout\(4));

-- Location: LCCOMB_X22_Y12_N20
\fData[6]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \fData[6]~44_combout\ = (\fData~27_combout\) # ((\io4|Equal6~0_combout\ & (\comb~2_combout\ & !\nButtoncs~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|Equal6~0_combout\,
	datab => \comb~2_combout\,
	datac => \fData~27_combout\,
	datad => \nButtoncs~2_combout\,
	combout => \fData[6]~44_combout\);

-- Location: LCCOMB_X11_Y8_N24
\io3|rxBuffer~57feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~57feeder_combout\ = \io3|rxCurrentByteBuffer\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \io3|rxCurrentByteBuffer\(4),
	combout => \io3|rxBuffer~57feeder_combout\);

-- Location: FF_X11_Y8_N25
\io3|rxBuffer~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	d => \io3|rxBuffer~57feeder_combout\,
	ena => \io3|rxBuffer~230_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxBuffer~57_q\);

-- Location: FF_X12_Y8_N11
\io3|rxBuffer~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	asdata => \io3|rxCurrentByteBuffer\(4),
	sload => VCC,
	ena => \io3|rxBuffer~232_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxBuffer~65_q\);

-- Location: FF_X13_Y8_N9
\io3|rxBuffer~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	asdata => \io3|rxCurrentByteBuffer\(4),
	sload => VCC,
	ena => \io3|rxBuffer~234_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxBuffer~49_q\);

-- Location: LCCOMB_X13_Y8_N8
\io3|rxBuffer~183\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~183_combout\ = (\io3|rxReadPointer\(1) & ((\io3|rxBuffer~65_q\) # ((\io3|rxReadPointer\(0))))) # (!\io3|rxReadPointer\(1) & (((\io3|rxBuffer~49_q\ & !\io3|rxReadPointer\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|rxReadPointer\(1),
	datab => \io3|rxBuffer~65_q\,
	datac => \io3|rxBuffer~49_q\,
	datad => \io3|rxReadPointer\(0),
	combout => \io3|rxBuffer~183_combout\);

-- Location: FF_X13_Y8_N19
\io3|rxBuffer~73\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	asdata => \io3|rxCurrentByteBuffer\(4),
	sload => VCC,
	ena => \io3|rxBuffer~236_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxBuffer~73_q\);

-- Location: LCCOMB_X13_Y8_N18
\io3|rxBuffer~184\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~184_combout\ = (\io3|rxBuffer~183_combout\ & (((\io3|rxBuffer~73_q\) # (!\io3|rxReadPointer\(0))))) # (!\io3|rxBuffer~183_combout\ & (\io3|rxBuffer~57_q\ & ((\io3|rxReadPointer\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|rxBuffer~57_q\,
	datab => \io3|rxBuffer~183_combout\,
	datac => \io3|rxBuffer~73_q\,
	datad => \io3|rxReadPointer\(0),
	combout => \io3|rxBuffer~184_combout\);

-- Location: LCCOMB_X12_Y9_N24
\io3|rxBuffer~33feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~33feeder_combout\ = \io3|rxCurrentByteBuffer\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \io3|rxCurrentByteBuffer\(4),
	combout => \io3|rxBuffer~33feeder_combout\);

-- Location: FF_X12_Y9_N25
\io3|rxBuffer~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	d => \io3|rxBuffer~33feeder_combout\,
	ena => \io3|rxBuffer~238_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxBuffer~33_q\);

-- Location: FF_X13_Y9_N11
\io3|rxBuffer~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	asdata => \io3|rxCurrentByteBuffer\(4),
	sload => VCC,
	ena => \io3|rxBuffer~244_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxBuffer~41_q\);

-- Location: FF_X12_Y9_N19
\io3|rxBuffer~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	asdata => \io3|rxCurrentByteBuffer\(4),
	sload => VCC,
	ena => \io3|rxBuffer~242_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxBuffer~17_q\);

-- Location: LCCOMB_X11_Y9_N22
\io3|rxBuffer~25feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~25feeder_combout\ = \io3|rxCurrentByteBuffer\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \io3|rxCurrentByteBuffer\(4),
	combout => \io3|rxBuffer~25feeder_combout\);

-- Location: FF_X11_Y9_N23
\io3|rxBuffer~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	d => \io3|rxBuffer~25feeder_combout\,
	ena => \io3|rxBuffer~240_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxBuffer~25_q\);

-- Location: LCCOMB_X12_Y9_N18
\io3|rxBuffer~185\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~185_combout\ = (\io3|rxReadPointer\(0) & ((\io3|rxReadPointer\(1)) # ((\io3|rxBuffer~25_q\)))) # (!\io3|rxReadPointer\(0) & (!\io3|rxReadPointer\(1) & (\io3|rxBuffer~17_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|rxReadPointer\(0),
	datab => \io3|rxReadPointer\(1),
	datac => \io3|rxBuffer~17_q\,
	datad => \io3|rxBuffer~25_q\,
	combout => \io3|rxBuffer~185_combout\);

-- Location: LCCOMB_X13_Y9_N10
\io3|rxBuffer~186\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~186_combout\ = (\io3|rxReadPointer\(1) & ((\io3|rxBuffer~185_combout\ & ((\io3|rxBuffer~41_q\))) # (!\io3|rxBuffer~185_combout\ & (\io3|rxBuffer~33_q\)))) # (!\io3|rxReadPointer\(1) & (((\io3|rxBuffer~185_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|rxReadPointer\(1),
	datab => \io3|rxBuffer~33_q\,
	datac => \io3|rxBuffer~41_q\,
	datad => \io3|rxBuffer~185_combout\,
	combout => \io3|rxBuffer~186_combout\);

-- Location: LCCOMB_X12_Y12_N12
\io3|rxBuffer~187\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~187_combout\ = (\io3|rxReadPointer\(3) & (((\io3|rxReadPointer\(2))))) # (!\io3|rxReadPointer\(3) & ((\io3|rxReadPointer\(2) & (\io3|rxBuffer~184_combout\)) # (!\io3|rxReadPointer\(2) & ((\io3|rxBuffer~186_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|rxBuffer~184_combout\,
	datab => \io3|rxBuffer~186_combout\,
	datac => \io3|rxReadPointer\(3),
	datad => \io3|rxReadPointer\(2),
	combout => \io3|rxBuffer~187_combout\);

-- Location: FF_X11_Y10_N17
\io3|rxBuffer~97\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	asdata => \io3|rxCurrentByteBuffer\(4),
	sload => VCC,
	ena => \io3|rxBuffer~222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxBuffer~97_q\);

-- Location: FF_X13_Y9_N1
\io3|rxBuffer~105\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	asdata => \io3|rxCurrentByteBuffer\(4),
	sload => VCC,
	ena => \io3|rxBuffer~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxBuffer~105_q\);

-- Location: FF_X12_Y8_N17
\io3|rxBuffer~89\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	asdata => \io3|rxCurrentByteBuffer\(4),
	sload => VCC,
	ena => \io3|rxBuffer~224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxBuffer~89_q\);

-- Location: FF_X12_Y10_N1
\io3|rxBuffer~81\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	asdata => \io3|rxCurrentByteBuffer\(4),
	sload => VCC,
	ena => \io3|rxBuffer~226_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxBuffer~81_q\);

-- Location: LCCOMB_X12_Y10_N0
\io3|rxBuffer~181\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~181_combout\ = (\io3|rxReadPointer\(1) & (((\io3|rxReadPointer\(0))))) # (!\io3|rxReadPointer\(1) & ((\io3|rxReadPointer\(0) & (\io3|rxBuffer~89_q\)) # (!\io3|rxReadPointer\(0) & ((\io3|rxBuffer~81_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|rxBuffer~89_q\,
	datab => \io3|rxReadPointer\(1),
	datac => \io3|rxBuffer~81_q\,
	datad => \io3|rxReadPointer\(0),
	combout => \io3|rxBuffer~181_combout\);

-- Location: LCCOMB_X13_Y9_N0
\io3|rxBuffer~182\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~182_combout\ = (\io3|rxReadPointer\(1) & ((\io3|rxBuffer~181_combout\ & ((\io3|rxBuffer~105_q\))) # (!\io3|rxBuffer~181_combout\ & (\io3|rxBuffer~97_q\)))) # (!\io3|rxReadPointer\(1) & (((\io3|rxBuffer~181_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|rxReadPointer\(1),
	datab => \io3|rxBuffer~97_q\,
	datac => \io3|rxBuffer~105_q\,
	datad => \io3|rxBuffer~181_combout\,
	combout => \io3|rxBuffer~182_combout\);

-- Location: FF_X11_Y10_N11
\io3|rxBuffer~129\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	asdata => \io3|rxCurrentByteBuffer\(4),
	sload => VCC,
	ena => \io3|rxBuffer~248_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxBuffer~129_q\);

-- Location: FF_X12_Y10_N19
\io3|rxBuffer~113\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	asdata => \io3|rxCurrentByteBuffer\(4),
	sload => VCC,
	ena => \io3|rxBuffer~250_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxBuffer~113_q\);

-- Location: LCCOMB_X12_Y10_N18
\io3|rxBuffer~188\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~188_combout\ = (\io3|rxReadPointer\(1) & ((\io3|rxBuffer~129_q\) # ((\io3|rxReadPointer\(0))))) # (!\io3|rxReadPointer\(1) & (((\io3|rxBuffer~113_q\ & !\io3|rxReadPointer\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|rxBuffer~129_q\,
	datab => \io3|rxReadPointer\(1),
	datac => \io3|rxBuffer~113_q\,
	datad => \io3|rxReadPointer\(0),
	combout => \io3|rxBuffer~188_combout\);

-- Location: LCCOMB_X13_Y10_N28
\io3|rxBuffer~121feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~121feeder_combout\ = \io3|rxCurrentByteBuffer\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \io3|rxCurrentByteBuffer\(4),
	combout => \io3|rxBuffer~121feeder_combout\);

-- Location: FF_X13_Y10_N29
\io3|rxBuffer~121\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	d => \io3|rxBuffer~121feeder_combout\,
	ena => \io3|rxBuffer~246_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxBuffer~121_q\);

-- Location: FF_X13_Y10_N15
\io3|rxBuffer~137\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	asdata => \io3|rxCurrentByteBuffer\(4),
	sload => VCC,
	ena => \io3|rxBuffer~252_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxBuffer~137_q\);

-- Location: LCCOMB_X13_Y10_N14
\io3|rxBuffer~189\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~189_combout\ = (\io3|rxBuffer~188_combout\ & (((\io3|rxBuffer~137_q\) # (!\io3|rxReadPointer\(0))))) # (!\io3|rxBuffer~188_combout\ & (\io3|rxBuffer~121_q\ & ((\io3|rxReadPointer\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|rxBuffer~188_combout\,
	datab => \io3|rxBuffer~121_q\,
	datac => \io3|rxBuffer~137_q\,
	datad => \io3|rxReadPointer\(0),
	combout => \io3|rxBuffer~189_combout\);

-- Location: LCCOMB_X12_Y12_N20
\io3|rxBuffer~190\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~190_combout\ = (\io3|rxBuffer~187_combout\ & (((\io3|rxBuffer~189_combout\) # (!\io3|rxReadPointer\(3))))) # (!\io3|rxBuffer~187_combout\ & (\io3|rxBuffer~182_combout\ & (\io3|rxReadPointer\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|rxBuffer~187_combout\,
	datab => \io3|rxBuffer~182_combout\,
	datac => \io3|rxReadPointer\(3),
	datad => \io3|rxBuffer~189_combout\,
	combout => \io3|rxBuffer~190_combout\);

-- Location: FF_X12_Y12_N21
\io3|dataOut[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_comb~2clkctrl_outclk\,
	d => \io3|rxBuffer~190_combout\,
	sclr => \ALT_INV_fAddress[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|dataOut\(4));

-- Location: LCCOMB_X21_Y12_N18
\fData[4]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \fData[4]~47_combout\ = (\io3|dataOut\(4) & !\nButtoncs~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \io3|dataOut\(4),
	datac => \nButtoncs~2_combout\,
	combout => \fData[4]~47_combout\);

-- Location: LCCOMB_X23_Y12_N24
\timer1|timer[12]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer1|timer[12]~37_combout\ = (\timer1|timer\(12) & (!\timer1|timer[11]~36\)) # (!\timer1|timer\(12) & ((\timer1|timer[11]~36\) # (GND)))
-- \timer1|timer[12]~38\ = CARRY((!\timer1|timer[11]~36\) # (!\timer1|timer\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer1|timer\(12),
	datad => VCC,
	cin => \timer1|timer[11]~36\,
	combout => \timer1|timer[12]~37_combout\,
	cout => \timer1|timer[12]~38\);

-- Location: FF_X23_Y12_N25
\timer1|timer[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \systemTimerOut~clkctrl_outclk\,
	d => \timer1|timer[12]~37_combout\,
	clrn => \timer1|TimerOut[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer1|timer\(12));

-- Location: LCCOMB_X23_Y12_N0
\timer1|TimerOut[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer1|TimerOut[4]~6_combout\ = (\fAddress[0]~input_o\ & ((\timer1|timer\(12)))) # (!\fAddress[0]~input_o\ & (\timer1|timer\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fAddress[0]~input_o\,
	datac => \timer1|timer\(4),
	datad => \timer1|timer\(12),
	combout => \timer1|TimerOut[4]~6_combout\);

-- Location: LCCOMB_X24_Y12_N6
\timer1|TimerOut[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer1|TimerOut\(4) = (GLOBAL(\timer1|TimerOut[7]~2clkctrl_outclk\) & (\timer1|TimerOut[4]~6_combout\)) # (!GLOBAL(\timer1|TimerOut[7]~2clkctrl_outclk\) & ((\timer1|TimerOut\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer1|TimerOut[4]~6_combout\,
	datac => \timer1|TimerOut[7]~2clkctrl_outclk\,
	datad => \timer1|TimerOut\(4),
	combout => \timer1|TimerOut\(4));

-- Location: LCCOMB_X22_Y12_N22
\fData[6]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \fData[6]~45_combout\ = ((\fData~27_combout\) # (\nButtoncs~2_combout\)) # (!\comb~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~2_combout\,
	datac => \fData~27_combout\,
	datad => \nButtoncs~2_combout\,
	combout => \fData[6]~45_combout\);

-- Location: LCCOMB_X21_Y12_N4
\fData[4]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \fData[4]~48_combout\ = (\fData[6]~44_combout\ & (((\timer1|TimerOut\(4)) # (!\fData[6]~45_combout\)))) # (!\fData[6]~44_combout\ & (\fData[4]~47_combout\ & ((\fData[6]~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fData[6]~44_combout\,
	datab => \fData[4]~47_combout\,
	datac => \timer1|TimerOut\(4),
	datad => \fData[6]~45_combout\,
	combout => \fData[4]~48_combout\);

-- Location: LCCOMB_X21_Y12_N24
\fData[6]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \fData[6]~46_combout\ = (!\fData[6]~45_combout\ & ((\nButtoncs~1_combout\) # (\fData[6]~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nButtoncs~1_combout\,
	datab => \fData[6]~45_combout\,
	datac => \fData[6]~44_combout\,
	combout => \fData[6]~46_combout\);

-- Location: LCCOMB_X21_Y12_N6
\fData[4]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \fData[4]~49_combout\ = (\fData[4]~48_combout\ & ((\io4|dout\(4)) # ((!\fData[6]~46_combout\)))) # (!\fData[4]~48_combout\ & (((!\io4|init_busy~q\ & \fData[6]~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|dout\(4),
	datab => \io4|init_busy~q\,
	datac => \fData[4]~48_combout\,
	datad => \fData[6]~46_combout\,
	combout => \fData[4]~49_combout\);

-- Location: LCCOMB_X21_Y12_N22
\fData[4]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \fData[4]~59_combout\ = (\fData[4]~49_combout\) # ((\Equal0~2_combout\ & (!\fnRd~input_o\ & !\fnIorq~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datab => \fnRd~input_o\,
	datac => \fnIorq~input_o\,
	datad => \fData[4]~49_combout\,
	combout => \fData[4]~59_combout\);

-- Location: LCCOMB_X22_Y20_N2
\io4|dout[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|dout[5]~5_combout\ = (\io4|Selector0~2_combout\ & (\io4|recv_data\(5))) # (!\io4|Selector0~2_combout\ & ((\io4|dout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|Selector0~2_combout\,
	datab => \io4|recv_data\(5),
	datac => \io4|dout\(5),
	combout => \io4|dout[5]~5_combout\);

-- Location: LCCOMB_X22_Y20_N10
\io4|Selector139~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector139~0_combout\ = (\io4|dout\(5) & !\io4|state.idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \io4|dout\(5),
	datad => \io4|state.idle~q\,
	combout => \io4|Selector139~0_combout\);

-- Location: FF_X22_Y20_N3
\io4|dout[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|dout[5]~5_combout\,
	asdata => \io4|Selector139~0_combout\,
	sload => \io4|ALT_INV_state.receive_byte~q\,
	ena => \fnReset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|dout\(5));

-- Location: LCCOMB_X23_Y12_N26
\timer1|timer[13]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer1|timer[13]~39_combout\ = (\timer1|timer\(13) & (\timer1|timer[12]~38\ $ (GND))) # (!\timer1|timer\(13) & (!\timer1|timer[12]~38\ & VCC))
-- \timer1|timer[13]~40\ = CARRY((\timer1|timer\(13) & !\timer1|timer[12]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer1|timer\(13),
	datad => VCC,
	cin => \timer1|timer[12]~38\,
	combout => \timer1|timer[13]~39_combout\,
	cout => \timer1|timer[13]~40\);

-- Location: FF_X23_Y12_N27
\timer1|timer[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \systemTimerOut~clkctrl_outclk\,
	d => \timer1|timer[13]~39_combout\,
	clrn => \timer1|TimerOut[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer1|timer\(13));

-- Location: LCCOMB_X23_Y11_N0
\timer1|TimerOut[5]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer1|TimerOut[5]~7_combout\ = (\fAddress[0]~input_o\ & (\timer1|timer\(13))) # (!\fAddress[0]~input_o\ & ((\timer1|timer\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fAddress[0]~input_o\,
	datac => \timer1|timer\(13),
	datad => \timer1|timer\(5),
	combout => \timer1|TimerOut[5]~7_combout\);

-- Location: LCCOMB_X23_Y11_N12
\timer1|TimerOut[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer1|TimerOut\(5) = (GLOBAL(\timer1|TimerOut[7]~2clkctrl_outclk\) & (\timer1|TimerOut[5]~7_combout\)) # (!GLOBAL(\timer1|TimerOut[7]~2clkctrl_outclk\) & ((\timer1|TimerOut\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer1|TimerOut[5]~7_combout\,
	datac => \timer1|TimerOut[7]~2clkctrl_outclk\,
	datad => \timer1|TimerOut\(5),
	combout => \timer1|TimerOut\(5));

-- Location: FF_X13_Y9_N21
\io3|rxBuffer~106\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	asdata => \io3|rxCurrentByteBuffer\(5),
	sload => VCC,
	ena => \io3|rxBuffer~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxBuffer~106_q\);

-- Location: FF_X13_Y9_N31
\io3|rxBuffer~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	asdata => \io3|rxCurrentByteBuffer\(5),
	sload => VCC,
	ena => \io3|rxBuffer~244_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxBuffer~42_q\);

-- Location: LCCOMB_X13_Y8_N22
\io3|rxBuffer~74feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~74feeder_combout\ = \io3|rxCurrentByteBuffer\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \io3|rxCurrentByteBuffer\(5),
	combout => \io3|rxBuffer~74feeder_combout\);

-- Location: FF_X13_Y8_N23
\io3|rxBuffer~74\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	d => \io3|rxBuffer~74feeder_combout\,
	ena => \io3|rxBuffer~236_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxBuffer~74_q\);

-- Location: LCCOMB_X13_Y9_N30
\io3|rxBuffer~198\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~198_combout\ = (\io3|rxReadPointer\(2) & ((\io3|rxReadPointer\(3)) # ((\io3|rxBuffer~74_q\)))) # (!\io3|rxReadPointer\(2) & (!\io3|rxReadPointer\(3) & (\io3|rxBuffer~42_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|rxReadPointer\(2),
	datab => \io3|rxReadPointer\(3),
	datac => \io3|rxBuffer~42_q\,
	datad => \io3|rxBuffer~74_q\,
	combout => \io3|rxBuffer~198_combout\);

-- Location: FF_X14_Y9_N17
\io3|rxBuffer~138\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	asdata => \io3|rxCurrentByteBuffer\(5),
	sload => VCC,
	ena => \io3|rxBuffer~252_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxBuffer~138_q\);

-- Location: LCCOMB_X14_Y9_N16
\io3|rxBuffer~199\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~199_combout\ = (\io3|rxBuffer~198_combout\ & (((\io3|rxBuffer~138_q\) # (!\io3|rxReadPointer\(3))))) # (!\io3|rxBuffer~198_combout\ & (\io3|rxBuffer~106_q\ & ((\io3|rxReadPointer\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|rxBuffer~106_q\,
	datab => \io3|rxBuffer~198_combout\,
	datac => \io3|rxBuffer~138_q\,
	datad => \io3|rxReadPointer\(3),
	combout => \io3|rxBuffer~199_combout\);

-- Location: FF_X11_Y9_N25
\io3|rxBuffer~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	asdata => \io3|rxCurrentByteBuffer\(5),
	sload => VCC,
	ena => \io3|rxBuffer~240_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxBuffer~26_q\);

-- Location: LCCOMB_X11_Y8_N2
\io3|rxBuffer~58feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~58feeder_combout\ = \io3|rxCurrentByteBuffer\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \io3|rxCurrentByteBuffer\(5),
	combout => \io3|rxBuffer~58feeder_combout\);

-- Location: FF_X11_Y8_N3
\io3|rxBuffer~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	d => \io3|rxBuffer~58feeder_combout\,
	ena => \io3|rxBuffer~230_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxBuffer~58_q\);

-- Location: LCCOMB_X11_Y9_N24
\io3|rxBuffer~193\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~193_combout\ = (\io3|rxReadPointer\(3) & (\io3|rxReadPointer\(2))) # (!\io3|rxReadPointer\(3) & ((\io3|rxReadPointer\(2) & ((\io3|rxBuffer~58_q\))) # (!\io3|rxReadPointer\(2) & (\io3|rxBuffer~26_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|rxReadPointer\(3),
	datab => \io3|rxReadPointer\(2),
	datac => \io3|rxBuffer~26_q\,
	datad => \io3|rxBuffer~58_q\,
	combout => \io3|rxBuffer~193_combout\);

-- Location: FF_X11_Y9_N19
\io3|rxBuffer~122\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	asdata => \io3|rxCurrentByteBuffer\(5),
	sload => VCC,
	ena => \io3|rxBuffer~246_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxBuffer~122_q\);

-- Location: LCCOMB_X12_Y8_N6
\io3|rxBuffer~90feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~90feeder_combout\ = \io3|rxCurrentByteBuffer\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \io3|rxCurrentByteBuffer\(5),
	combout => \io3|rxBuffer~90feeder_combout\);

-- Location: FF_X12_Y8_N7
\io3|rxBuffer~90\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	d => \io3|rxBuffer~90feeder_combout\,
	ena => \io3|rxBuffer~224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxBuffer~90_q\);

-- Location: LCCOMB_X11_Y9_N18
\io3|rxBuffer~194\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~194_combout\ = (\io3|rxReadPointer\(3) & ((\io3|rxBuffer~193_combout\ & (\io3|rxBuffer~122_q\)) # (!\io3|rxBuffer~193_combout\ & ((\io3|rxBuffer~90_q\))))) # (!\io3|rxReadPointer\(3) & (\io3|rxBuffer~193_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|rxReadPointer\(3),
	datab => \io3|rxBuffer~193_combout\,
	datac => \io3|rxBuffer~122_q\,
	datad => \io3|rxBuffer~90_q\,
	combout => \io3|rxBuffer~194_combout\);

-- Location: LCCOMB_X13_Y8_N4
\io3|rxBuffer~50feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~50feeder_combout\ = \io3|rxCurrentByteBuffer\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \io3|rxCurrentByteBuffer\(5),
	combout => \io3|rxBuffer~50feeder_combout\);

-- Location: FF_X13_Y8_N5
\io3|rxBuffer~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	d => \io3|rxBuffer~50feeder_combout\,
	ena => \io3|rxBuffer~234_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxBuffer~50_q\);

-- Location: FF_X12_Y10_N7
\io3|rxBuffer~114\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	asdata => \io3|rxCurrentByteBuffer\(5),
	sload => VCC,
	ena => \io3|rxBuffer~250_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxBuffer~114_q\);

-- Location: FF_X12_Y10_N21
\io3|rxBuffer~82\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	asdata => \io3|rxCurrentByteBuffer\(5),
	sload => VCC,
	ena => \io3|rxBuffer~226_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxBuffer~82_q\);

-- Location: FF_X12_Y9_N15
\io3|rxBuffer~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	asdata => \io3|rxCurrentByteBuffer\(5),
	sload => VCC,
	ena => \io3|rxBuffer~242_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxBuffer~18_q\);

-- Location: LCCOMB_X12_Y9_N14
\io3|rxBuffer~195\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~195_combout\ = (\io3|rxReadPointer\(3) & ((\io3|rxBuffer~82_q\) # ((\io3|rxReadPointer\(2))))) # (!\io3|rxReadPointer\(3) & (((\io3|rxBuffer~18_q\ & !\io3|rxReadPointer\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|rxReadPointer\(3),
	datab => \io3|rxBuffer~82_q\,
	datac => \io3|rxBuffer~18_q\,
	datad => \io3|rxReadPointer\(2),
	combout => \io3|rxBuffer~195_combout\);

-- Location: LCCOMB_X12_Y10_N6
\io3|rxBuffer~196\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~196_combout\ = (\io3|rxReadPointer\(2) & ((\io3|rxBuffer~195_combout\ & ((\io3|rxBuffer~114_q\))) # (!\io3|rxBuffer~195_combout\ & (\io3|rxBuffer~50_q\)))) # (!\io3|rxReadPointer\(2) & (((\io3|rxBuffer~195_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|rxReadPointer\(2),
	datab => \io3|rxBuffer~50_q\,
	datac => \io3|rxBuffer~114_q\,
	datad => \io3|rxBuffer~195_combout\,
	combout => \io3|rxBuffer~196_combout\);

-- Location: LCCOMB_X12_Y12_N30
\io3|rxBuffer~197\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~197_combout\ = (\io3|rxReadPointer\(1) & (((\io3|rxReadPointer\(0))))) # (!\io3|rxReadPointer\(1) & ((\io3|rxReadPointer\(0) & (\io3|rxBuffer~194_combout\)) # (!\io3|rxReadPointer\(0) & ((\io3|rxBuffer~196_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|rxReadPointer\(1),
	datab => \io3|rxBuffer~194_combout\,
	datac => \io3|rxBuffer~196_combout\,
	datad => \io3|rxReadPointer\(0),
	combout => \io3|rxBuffer~197_combout\);

-- Location: FF_X11_Y10_N21
\io3|rxBuffer~98\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	asdata => \io3|rxCurrentByteBuffer\(5),
	sload => VCC,
	ena => \io3|rxBuffer~222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxBuffer~98_q\);

-- Location: FF_X12_Y9_N29
\io3|rxBuffer~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	asdata => \io3|rxCurrentByteBuffer\(5),
	sload => VCC,
	ena => \io3|rxBuffer~238_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxBuffer~34_q\);

-- Location: LCCOMB_X12_Y9_N28
\io3|rxBuffer~191\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~191_combout\ = (\io3|rxReadPointer\(3) & ((\io3|rxBuffer~98_q\) # ((\io3|rxReadPointer\(2))))) # (!\io3|rxReadPointer\(3) & (((\io3|rxBuffer~34_q\ & !\io3|rxReadPointer\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|rxReadPointer\(3),
	datab => \io3|rxBuffer~98_q\,
	datac => \io3|rxBuffer~34_q\,
	datad => \io3|rxReadPointer\(2),
	combout => \io3|rxBuffer~191_combout\);

-- Location: FF_X11_Y10_N15
\io3|rxBuffer~130\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	asdata => \io3|rxCurrentByteBuffer\(5),
	sload => VCC,
	ena => \io3|rxBuffer~248_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxBuffer~130_q\);

-- Location: LCCOMB_X12_Y8_N20
\io3|rxBuffer~66feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~66feeder_combout\ = \io3|rxCurrentByteBuffer\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \io3|rxCurrentByteBuffer\(5),
	combout => \io3|rxBuffer~66feeder_combout\);

-- Location: FF_X12_Y8_N21
\io3|rxBuffer~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	d => \io3|rxBuffer~66feeder_combout\,
	ena => \io3|rxBuffer~232_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxBuffer~66_q\);

-- Location: LCCOMB_X11_Y10_N14
\io3|rxBuffer~192\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~192_combout\ = (\io3|rxReadPointer\(2) & ((\io3|rxBuffer~191_combout\ & (\io3|rxBuffer~130_q\)) # (!\io3|rxBuffer~191_combout\ & ((\io3|rxBuffer~66_q\))))) # (!\io3|rxReadPointer\(2) & (\io3|rxBuffer~191_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|rxReadPointer\(2),
	datab => \io3|rxBuffer~191_combout\,
	datac => \io3|rxBuffer~130_q\,
	datad => \io3|rxBuffer~66_q\,
	combout => \io3|rxBuffer~192_combout\);

-- Location: LCCOMB_X12_Y12_N22
\io3|rxBuffer~200\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~200_combout\ = (\io3|rxReadPointer\(1) & ((\io3|rxBuffer~197_combout\ & (\io3|rxBuffer~199_combout\)) # (!\io3|rxBuffer~197_combout\ & ((\io3|rxBuffer~192_combout\))))) # (!\io3|rxReadPointer\(1) & (((\io3|rxBuffer~197_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|rxReadPointer\(1),
	datab => \io3|rxBuffer~199_combout\,
	datac => \io3|rxBuffer~197_combout\,
	datad => \io3|rxBuffer~192_combout\,
	combout => \io3|rxBuffer~200_combout\);

-- Location: FF_X12_Y12_N23
\io3|dataOut[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_comb~2clkctrl_outclk\,
	d => \io3|rxBuffer~200_combout\,
	sclr => \ALT_INV_fAddress[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|dataOut\(5));

-- Location: LCCOMB_X21_Y12_N0
\fData[5]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \fData[5]~50_combout\ = (\io3|dataOut\(5) & !\nButtoncs~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|dataOut\(5),
	datac => \nButtoncs~2_combout\,
	combout => \fData[5]~50_combout\);

-- Location: LCCOMB_X21_Y12_N26
\fData[5]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \fData[5]~51_combout\ = (\fData[6]~44_combout\ & ((\timer1|TimerOut\(5)) # ((!\fData[6]~45_combout\)))) # (!\fData[6]~44_combout\ & (((\fData[5]~50_combout\ & \fData[6]~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer1|TimerOut\(5),
	datab => \fData[5]~50_combout\,
	datac => \fData[6]~44_combout\,
	datad => \fData[6]~45_combout\,
	combout => \fData[5]~51_combout\);

-- Location: LCCOMB_X23_Y16_N30
\io4|Selector136~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector136~0_combout\ = (\io4|state.write_block_cmd~q\) # ((\io4|state.read_block_cmd~q\) # ((!\io4|state.idle~q\ & \io4|block_busy~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|state.write_block_cmd~q\,
	datab => \io4|state.idle~q\,
	datac => \io4|block_busy~q\,
	datad => \io4|state.read_block_cmd~q\,
	combout => \io4|Selector136~0_combout\);

-- Location: FF_X23_Y16_N31
\io4|block_busy\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|Selector136~0_combout\,
	ena => \fnReset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|block_busy~q\);

-- Location: LCCOMB_X21_Y12_N20
\fData[5]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \fData[5]~52_combout\ = (\fData[6]~46_combout\ & ((\fData[5]~51_combout\ & (\io4|dout\(5))) # (!\fData[5]~51_combout\ & ((\io4|block_busy~q\))))) # (!\fData[6]~46_combout\ & (((\fData[5]~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|dout\(5),
	datab => \fData[6]~46_combout\,
	datac => \fData[5]~51_combout\,
	datad => \io4|block_busy~q\,
	combout => \fData[5]~52_combout\);

-- Location: LCCOMB_X21_Y12_N16
\fData[5]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \fData[5]~60_combout\ = (\fData[5]~52_combout\) # ((\Equal0~2_combout\ & (!\fnIorq~input_o\ & !\fnRd~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datab => \fnIorq~input_o\,
	datac => \fnRd~input_o\,
	datad => \fData[5]~52_combout\,
	combout => \fData[5]~60_combout\);

-- Location: LCCOMB_X22_Y20_N12
\io4|dout[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|dout[6]~6_combout\ = (\io4|Selector0~2_combout\ & (\io4|recv_data\(6))) # (!\io4|Selector0~2_combout\ & ((\io4|dout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|Selector0~2_combout\,
	datab => \io4|recv_data\(6),
	datac => \io4|dout\(6),
	combout => \io4|dout[6]~6_combout\);

-- Location: LCCOMB_X22_Y20_N20
\io4|Selector138~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector138~0_combout\ = (\io4|dout\(6) & !\io4|state.idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|dout\(6),
	datad => \io4|state.idle~q\,
	combout => \io4|Selector138~0_combout\);

-- Location: FF_X22_Y20_N13
\io4|dout[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|dout[6]~6_combout\,
	asdata => \io4|Selector138~0_combout\,
	sload => \io4|ALT_INV_state.receive_byte~q\,
	ena => \fnReset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|dout\(6));

-- Location: FF_X12_Y10_N17
\io3|rxBuffer~83\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	asdata => \io3|rxCurrentByteBuffer\(6),
	sload => VCC,
	ena => \io3|rxBuffer~226_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxBuffer~83_q\);

-- Location: LCCOMB_X11_Y10_N24
\io3|rxBuffer~99feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~99feeder_combout\ = \io3|rxCurrentByteBuffer\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \io3|rxCurrentByteBuffer\(6),
	combout => \io3|rxBuffer~99feeder_combout\);

-- Location: FF_X11_Y10_N25
\io3|rxBuffer~99\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	d => \io3|rxBuffer~99feeder_combout\,
	ena => \io3|rxBuffer~222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxBuffer~99_q\);

-- Location: LCCOMB_X12_Y10_N16
\io3|rxBuffer~203\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~203_combout\ = (\io3|rxReadPointer\(0) & (\io3|rxReadPointer\(1))) # (!\io3|rxReadPointer\(0) & ((\io3|rxReadPointer\(1) & ((\io3|rxBuffer~99_q\))) # (!\io3|rxReadPointer\(1) & (\io3|rxBuffer~83_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|rxReadPointer\(0),
	datab => \io3|rxReadPointer\(1),
	datac => \io3|rxBuffer~83_q\,
	datad => \io3|rxBuffer~99_q\,
	combout => \io3|rxBuffer~203_combout\);

-- Location: LCCOMB_X12_Y8_N26
\io3|rxBuffer~91feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~91feeder_combout\ = \io3|rxCurrentByteBuffer\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \io3|rxCurrentByteBuffer\(6),
	combout => \io3|rxBuffer~91feeder_combout\);

-- Location: FF_X12_Y8_N27
\io3|rxBuffer~91\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	d => \io3|rxBuffer~91feeder_combout\,
	ena => \io3|rxBuffer~224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxBuffer~91_q\);

-- Location: FF_X13_Y9_N9
\io3|rxBuffer~107\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	asdata => \io3|rxCurrentByteBuffer\(6),
	sload => VCC,
	ena => \io3|rxBuffer~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxBuffer~107_q\);

-- Location: LCCOMB_X13_Y9_N8
\io3|rxBuffer~204\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~204_combout\ = (\io3|rxBuffer~203_combout\ & (((\io3|rxBuffer~107_q\) # (!\io3|rxReadPointer\(0))))) # (!\io3|rxBuffer~203_combout\ & (\io3|rxBuffer~91_q\ & ((\io3|rxReadPointer\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|rxBuffer~203_combout\,
	datab => \io3|rxBuffer~91_q\,
	datac => \io3|rxBuffer~107_q\,
	datad => \io3|rxReadPointer\(0),
	combout => \io3|rxBuffer~204_combout\);

-- Location: LCCOMB_X11_Y9_N20
\io3|rxBuffer~27feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~27feeder_combout\ = \io3|rxCurrentByteBuffer\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \io3|rxCurrentByteBuffer\(6),
	combout => \io3|rxBuffer~27feeder_combout\);

-- Location: FF_X11_Y9_N21
\io3|rxBuffer~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	d => \io3|rxBuffer~27feeder_combout\,
	ena => \io3|rxBuffer~240_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxBuffer~27_q\);

-- Location: FF_X13_Y9_N3
\io3|rxBuffer~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	asdata => \io3|rxCurrentByteBuffer\(6),
	sload => VCC,
	ena => \io3|rxBuffer~244_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxBuffer~43_q\);

-- Location: FF_X12_Y9_N3
\io3|rxBuffer~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	asdata => \io3|rxCurrentByteBuffer\(6),
	sload => VCC,
	ena => \io3|rxBuffer~242_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxBuffer~19_q\);

-- Location: LCCOMB_X12_Y9_N0
\io3|rxBuffer~35feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~35feeder_combout\ = \io3|rxCurrentByteBuffer\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \io3|rxCurrentByteBuffer\(6),
	combout => \io3|rxBuffer~35feeder_combout\);

-- Location: FF_X12_Y9_N1
\io3|rxBuffer~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	d => \io3|rxBuffer~35feeder_combout\,
	ena => \io3|rxBuffer~238_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxBuffer~35_q\);

-- Location: LCCOMB_X12_Y9_N2
\io3|rxBuffer~205\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~205_combout\ = (\io3|rxReadPointer\(0) & (\io3|rxReadPointer\(1))) # (!\io3|rxReadPointer\(0) & ((\io3|rxReadPointer\(1) & ((\io3|rxBuffer~35_q\))) # (!\io3|rxReadPointer\(1) & (\io3|rxBuffer~19_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|rxReadPointer\(0),
	datab => \io3|rxReadPointer\(1),
	datac => \io3|rxBuffer~19_q\,
	datad => \io3|rxBuffer~35_q\,
	combout => \io3|rxBuffer~205_combout\);

-- Location: LCCOMB_X13_Y9_N2
\io3|rxBuffer~206\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~206_combout\ = (\io3|rxReadPointer\(0) & ((\io3|rxBuffer~205_combout\ & ((\io3|rxBuffer~43_q\))) # (!\io3|rxBuffer~205_combout\ & (\io3|rxBuffer~27_q\)))) # (!\io3|rxReadPointer\(0) & (((\io3|rxBuffer~205_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|rxBuffer~27_q\,
	datab => \io3|rxReadPointer\(0),
	datac => \io3|rxBuffer~43_q\,
	datad => \io3|rxBuffer~205_combout\,
	combout => \io3|rxBuffer~206_combout\);

-- Location: LCCOMB_X12_Y12_N0
\io3|rxBuffer~207\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~207_combout\ = (\io3|rxReadPointer\(3) & ((\io3|rxBuffer~204_combout\) # ((\io3|rxReadPointer\(2))))) # (!\io3|rxReadPointer\(3) & (((\io3|rxBuffer~206_combout\ & !\io3|rxReadPointer\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|rxBuffer~204_combout\,
	datab => \io3|rxBuffer~206_combout\,
	datac => \io3|rxReadPointer\(3),
	datad => \io3|rxReadPointer\(2),
	combout => \io3|rxBuffer~207_combout\);

-- Location: LCCOMB_X12_Y8_N24
\io3|rxBuffer~67feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~67feeder_combout\ = \io3|rxCurrentByteBuffer\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \io3|rxCurrentByteBuffer\(6),
	combout => \io3|rxBuffer~67feeder_combout\);

-- Location: FF_X12_Y8_N25
\io3|rxBuffer~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	d => \io3|rxBuffer~67feeder_combout\,
	ena => \io3|rxBuffer~232_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxBuffer~67_q\);

-- Location: FF_X13_Y8_N3
\io3|rxBuffer~75\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	asdata => \io3|rxCurrentByteBuffer\(6),
	sload => VCC,
	ena => \io3|rxBuffer~236_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxBuffer~75_q\);

-- Location: LCCOMB_X11_Y8_N4
\io3|rxBuffer~59feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~59feeder_combout\ = \io3|rxCurrentByteBuffer\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \io3|rxCurrentByteBuffer\(6),
	combout => \io3|rxBuffer~59feeder_combout\);

-- Location: FF_X11_Y8_N5
\io3|rxBuffer~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	d => \io3|rxBuffer~59feeder_combout\,
	ena => \io3|rxBuffer~230_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxBuffer~59_q\);

-- Location: FF_X13_Y8_N1
\io3|rxBuffer~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	asdata => \io3|rxCurrentByteBuffer\(6),
	sload => VCC,
	ena => \io3|rxBuffer~234_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxBuffer~51_q\);

-- Location: LCCOMB_X13_Y8_N0
\io3|rxBuffer~201\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~201_combout\ = (\io3|rxReadPointer\(1) & (((\io3|rxReadPointer\(0))))) # (!\io3|rxReadPointer\(1) & ((\io3|rxReadPointer\(0) & (\io3|rxBuffer~59_q\)) # (!\io3|rxReadPointer\(0) & ((\io3|rxBuffer~51_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|rxReadPointer\(1),
	datab => \io3|rxBuffer~59_q\,
	datac => \io3|rxBuffer~51_q\,
	datad => \io3|rxReadPointer\(0),
	combout => \io3|rxBuffer~201_combout\);

-- Location: LCCOMB_X13_Y8_N2
\io3|rxBuffer~202\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~202_combout\ = (\io3|rxReadPointer\(1) & ((\io3|rxBuffer~201_combout\ & ((\io3|rxBuffer~75_q\))) # (!\io3|rxBuffer~201_combout\ & (\io3|rxBuffer~67_q\)))) # (!\io3|rxReadPointer\(1) & (((\io3|rxBuffer~201_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|rxReadPointer\(1),
	datab => \io3|rxBuffer~67_q\,
	datac => \io3|rxBuffer~75_q\,
	datad => \io3|rxBuffer~201_combout\,
	combout => \io3|rxBuffer~202_combout\);

-- Location: LCCOMB_X11_Y9_N30
\io3|rxBuffer~123feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~123feeder_combout\ = \io3|rxCurrentByteBuffer\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \io3|rxCurrentByteBuffer\(6),
	combout => \io3|rxBuffer~123feeder_combout\);

-- Location: FF_X11_Y9_N31
\io3|rxBuffer~123\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	d => \io3|rxBuffer~123feeder_combout\,
	ena => \io3|rxBuffer~246_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxBuffer~123_q\);

-- Location: FF_X12_Y10_N11
\io3|rxBuffer~115\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	asdata => \io3|rxCurrentByteBuffer\(6),
	sload => VCC,
	ena => \io3|rxBuffer~250_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxBuffer~115_q\);

-- Location: LCCOMB_X12_Y10_N10
\io3|rxBuffer~208\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~208_combout\ = (\io3|rxReadPointer\(1) & (((\io3|rxReadPointer\(0))))) # (!\io3|rxReadPointer\(1) & ((\io3|rxReadPointer\(0) & (\io3|rxBuffer~123_q\)) # (!\io3|rxReadPointer\(0) & ((\io3|rxBuffer~115_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|rxBuffer~123_q\,
	datab => \io3|rxReadPointer\(1),
	datac => \io3|rxBuffer~115_q\,
	datad => \io3|rxReadPointer\(0),
	combout => \io3|rxBuffer~208_combout\);

-- Location: FF_X16_Y10_N9
\io3|rxBuffer~139\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	asdata => \io3|rxCurrentByteBuffer\(6),
	sload => VCC,
	ena => \io3|rxBuffer~252_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxBuffer~139_q\);

-- Location: LCCOMB_X11_Y10_N26
\io3|rxBuffer~131feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~131feeder_combout\ = \io3|rxCurrentByteBuffer\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \io3|rxCurrentByteBuffer\(6),
	combout => \io3|rxBuffer~131feeder_combout\);

-- Location: FF_X11_Y10_N27
\io3|rxBuffer~131\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	d => \io3|rxBuffer~131feeder_combout\,
	ena => \io3|rxBuffer~248_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxBuffer~131_q\);

-- Location: LCCOMB_X16_Y10_N8
\io3|rxBuffer~209\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~209_combout\ = (\io3|rxBuffer~208_combout\ & (((\io3|rxBuffer~139_q\)) # (!\io3|rxReadPointer\(1)))) # (!\io3|rxBuffer~208_combout\ & (\io3|rxReadPointer\(1) & ((\io3|rxBuffer~131_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|rxBuffer~208_combout\,
	datab => \io3|rxReadPointer\(1),
	datac => \io3|rxBuffer~139_q\,
	datad => \io3|rxBuffer~131_q\,
	combout => \io3|rxBuffer~209_combout\);

-- Location: LCCOMB_X12_Y12_N8
\io3|rxBuffer~210\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~210_combout\ = (\io3|rxReadPointer\(2) & ((\io3|rxBuffer~207_combout\ & ((\io3|rxBuffer~209_combout\))) # (!\io3|rxBuffer~207_combout\ & (\io3|rxBuffer~202_combout\)))) # (!\io3|rxReadPointer\(2) & (\io3|rxBuffer~207_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|rxReadPointer\(2),
	datab => \io3|rxBuffer~207_combout\,
	datac => \io3|rxBuffer~202_combout\,
	datad => \io3|rxBuffer~209_combout\,
	combout => \io3|rxBuffer~210_combout\);

-- Location: FF_X12_Y12_N9
\io3|dataOut[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_comb~2clkctrl_outclk\,
	d => \io3|rxBuffer~210_combout\,
	sclr => \ALT_INV_fAddress[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|dataOut\(6));

-- Location: LCCOMB_X22_Y12_N0
\fData[6]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \fData[6]~53_combout\ = (\io3|dataOut\(6) & !\nButtoncs~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \io3|dataOut\(6),
	datad => \nButtoncs~2_combout\,
	combout => \fData[6]~53_combout\);

-- Location: LCCOMB_X23_Y12_N28
\timer1|timer[14]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer1|timer[14]~41_combout\ = (\timer1|timer\(14) & (!\timer1|timer[13]~40\)) # (!\timer1|timer\(14) & ((\timer1|timer[13]~40\) # (GND)))
-- \timer1|timer[14]~42\ = CARRY((!\timer1|timer[13]~40\) # (!\timer1|timer\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer1|timer\(14),
	datad => VCC,
	cin => \timer1|timer[13]~40\,
	combout => \timer1|timer[14]~41_combout\,
	cout => \timer1|timer[14]~42\);

-- Location: FF_X23_Y12_N29
\timer1|timer[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \systemTimerOut~clkctrl_outclk\,
	d => \timer1|timer[14]~41_combout\,
	clrn => \timer1|TimerOut[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer1|timer\(14));

-- Location: LCCOMB_X22_Y12_N16
\timer1|TimerOut[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer1|TimerOut[6]~8_combout\ = (\fAddress[0]~input_o\ & ((\timer1|timer\(14)))) # (!\fAddress[0]~input_o\ & (\timer1|timer\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fAddress[0]~input_o\,
	datac => \timer1|timer\(6),
	datad => \timer1|timer\(14),
	combout => \timer1|TimerOut[6]~8_combout\);

-- Location: LCCOMB_X22_Y12_N30
\timer1|TimerOut[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer1|TimerOut\(6) = (GLOBAL(\timer1|TimerOut[7]~2clkctrl_outclk\) & ((\timer1|TimerOut[6]~8_combout\))) # (!GLOBAL(\timer1|TimerOut[7]~2clkctrl_outclk\) & (\timer1|TimerOut\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer1|TimerOut[7]~2clkctrl_outclk\,
	datac => \timer1|TimerOut\(6),
	datad => \timer1|TimerOut[6]~8_combout\,
	combout => \timer1|TimerOut\(6));

-- Location: LCCOMB_X22_Y12_N26
\fData[6]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \fData[6]~54_combout\ = (\fData[6]~45_combout\ & ((\fData[6]~44_combout\ & ((\timer1|TimerOut\(6)))) # (!\fData[6]~44_combout\ & (\fData[6]~53_combout\)))) # (!\fData[6]~45_combout\ & (((\fData[6]~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fData[6]~45_combout\,
	datab => \fData[6]~53_combout\,
	datac => \timer1|TimerOut\(6),
	datad => \fData[6]~44_combout\,
	combout => \fData[6]~54_combout\);

-- Location: LCCOMB_X21_Y12_N30
\fData[6]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \fData[6]~55_combout\ = (\fData[6]~54_combout\ & ((\io4|dout\(6)) # ((!\fData[6]~46_combout\)))) # (!\fData[6]~54_combout\ & (((\io4|rd_dat_reg~0_combout\ & \fData[6]~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|dout\(6),
	datab => \fData[6]~54_combout\,
	datac => \io4|rd_dat_reg~0_combout\,
	datad => \fData[6]~46_combout\,
	combout => \fData[6]~55_combout\);

-- Location: LCCOMB_X21_Y12_N10
\fData[6]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \fData[6]~61_combout\ = (\fData[6]~55_combout\) # ((\Equal0~2_combout\ & (!\fnRd~input_o\ & !\fnIorq~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datab => \fnRd~input_o\,
	datac => \fnIorq~input_o\,
	datad => \fData[6]~55_combout\,
	combout => \fData[6]~61_combout\);

-- Location: FF_X12_Y14_N1
\io3|controlReg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb~3clkctrl_outclk\,
	asdata => \fData[6]~input_o\,
	sload => VCC,
	ena => \ALT_INV_fAddress[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|controlReg\(6));

-- Location: FF_X12_Y14_N19
\io3|controlReg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb~3clkctrl_outclk\,
	asdata => \fData[5]~input_o\,
	sload => VCC,
	ena => \ALT_INV_fAddress[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|controlReg\(5));

-- Location: LCCOMB_X12_Y14_N18
\io3|n_int~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|n_int~0_combout\ = (\io3|controlReg\(6)) # ((\io3|txByteSent~q\ $ (\io3|txByteWritten~q\)) # (!\io3|controlReg\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|txByteSent~q\,
	datab => \io3|controlReg\(6),
	datac => \io3|controlReg\(5),
	datad => \io3|txByteWritten~q\,
	combout => \io3|n_int~0_combout\);

-- Location: LCCOMB_X14_Y12_N2
\io3|controlReg[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|controlReg[7]~feeder_combout\ = \fData[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fData[7]~input_o\,
	combout => \io3|controlReg[7]~feeder_combout\);

-- Location: FF_X14_Y12_N3
\io3|controlReg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb~3clkctrl_outclk\,
	d => \io3|controlReg[7]~feeder_combout\,
	ena => \ALT_INV_fAddress[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|controlReg\(7));

-- Location: LCCOMB_X14_Y12_N24
\io3|n_int~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|n_int~1_combout\ = ((!\io3|Equal0~3_combout\ & \io3|controlReg\(7))) # (!\io3|n_int~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|n_int~0_combout\,
	datab => \io3|Equal0~3_combout\,
	datad => \io3|controlReg\(7),
	combout => \io3|n_int~1_combout\);

-- Location: FF_X11_Y8_N7
\io3|rxBuffer~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	asdata => \io3|rxCurrentByteBuffer\(7),
	sload => VCC,
	ena => \io3|rxBuffer~230_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxBuffer~60_q\);

-- Location: LCCOMB_X12_Y8_N28
\io3|rxBuffer~92feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~92feeder_combout\ = \io3|rxCurrentByteBuffer\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \io3|rxCurrentByteBuffer\(7),
	combout => \io3|rxBuffer~92feeder_combout\);

-- Location: FF_X12_Y8_N29
\io3|rxBuffer~92\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	d => \io3|rxBuffer~92feeder_combout\,
	ena => \io3|rxBuffer~224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxBuffer~92_q\);

-- Location: FF_X11_Y9_N1
\io3|rxBuffer~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	asdata => \io3|rxCurrentByteBuffer\(7),
	sload => VCC,
	ena => \io3|rxBuffer~240_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxBuffer~28_q\);

-- Location: LCCOMB_X11_Y9_N0
\io3|rxBuffer~211\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~211_combout\ = (\io3|rxReadPointer\(3) & ((\io3|rxBuffer~92_q\) # ((\io3|rxReadPointer\(2))))) # (!\io3|rxReadPointer\(3) & (((\io3|rxBuffer~28_q\ & !\io3|rxReadPointer\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|rxReadPointer\(3),
	datab => \io3|rxBuffer~92_q\,
	datac => \io3|rxBuffer~28_q\,
	datad => \io3|rxReadPointer\(2),
	combout => \io3|rxBuffer~211_combout\);

-- Location: FF_X11_Y9_N3
\io3|rxBuffer~124\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	asdata => \io3|rxCurrentByteBuffer\(7),
	sload => VCC,
	ena => \io3|rxBuffer~246_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxBuffer~124_q\);

-- Location: LCCOMB_X11_Y9_N2
\io3|rxBuffer~212\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~212_combout\ = (\io3|rxBuffer~211_combout\ & (((\io3|rxBuffer~124_q\) # (!\io3|rxReadPointer\(2))))) # (!\io3|rxBuffer~211_combout\ & (\io3|rxBuffer~60_q\ & ((\io3|rxReadPointer\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|rxBuffer~60_q\,
	datab => \io3|rxBuffer~211_combout\,
	datac => \io3|rxBuffer~124_q\,
	datad => \io3|rxReadPointer\(2),
	combout => \io3|rxBuffer~212_combout\);

-- Location: FF_X13_Y9_N29
\io3|rxBuffer~108\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	asdata => \io3|rxCurrentByteBuffer\(7),
	sload => VCC,
	ena => \io3|rxBuffer~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxBuffer~108_q\);

-- Location: FF_X13_Y9_N15
\io3|rxBuffer~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	asdata => \io3|rxCurrentByteBuffer\(7),
	sload => VCC,
	ena => \io3|rxBuffer~244_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxBuffer~44_q\);

-- Location: LCCOMB_X13_Y9_N14
\io3|rxBuffer~218\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~218_combout\ = (\io3|rxReadPointer\(2) & (((\io3|rxReadPointer\(3))))) # (!\io3|rxReadPointer\(2) & ((\io3|rxReadPointer\(3) & (\io3|rxBuffer~108_q\)) # (!\io3|rxReadPointer\(3) & ((\io3|rxBuffer~44_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|rxReadPointer\(2),
	datab => \io3|rxBuffer~108_q\,
	datac => \io3|rxBuffer~44_q\,
	datad => \io3|rxReadPointer\(3),
	combout => \io3|rxBuffer~218_combout\);

-- Location: LCCOMB_X13_Y8_N14
\io3|rxBuffer~76feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~76feeder_combout\ = \io3|rxCurrentByteBuffer\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \io3|rxCurrentByteBuffer\(7),
	combout => \io3|rxBuffer~76feeder_combout\);

-- Location: FF_X13_Y8_N15
\io3|rxBuffer~76\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	d => \io3|rxBuffer~76feeder_combout\,
	ena => \io3|rxBuffer~236_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxBuffer~76_q\);

-- Location: FF_X13_Y10_N19
\io3|rxBuffer~140\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	asdata => \io3|rxCurrentByteBuffer\(7),
	sload => VCC,
	ena => \io3|rxBuffer~252_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxBuffer~140_q\);

-- Location: LCCOMB_X13_Y10_N18
\io3|rxBuffer~219\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~219_combout\ = (\io3|rxBuffer~218_combout\ & (((\io3|rxBuffer~140_q\) # (!\io3|rxReadPointer\(2))))) # (!\io3|rxBuffer~218_combout\ & (\io3|rxBuffer~76_q\ & ((\io3|rxReadPointer\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|rxBuffer~218_combout\,
	datab => \io3|rxBuffer~76_q\,
	datac => \io3|rxBuffer~140_q\,
	datad => \io3|rxReadPointer\(2),
	combout => \io3|rxBuffer~219_combout\);

-- Location: FF_X12_Y10_N13
\io3|rxBuffer~84\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	asdata => \io3|rxCurrentByteBuffer\(7),
	sload => VCC,
	ena => \io3|rxBuffer~226_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxBuffer~84_q\);

-- Location: LCCOMB_X13_Y8_N20
\io3|rxBuffer~52feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~52feeder_combout\ = \io3|rxCurrentByteBuffer\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \io3|rxCurrentByteBuffer\(7),
	combout => \io3|rxBuffer~52feeder_combout\);

-- Location: FF_X13_Y8_N21
\io3|rxBuffer~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	d => \io3|rxBuffer~52feeder_combout\,
	ena => \io3|rxBuffer~234_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxBuffer~52_q\);

-- Location: FF_X12_Y9_N31
\io3|rxBuffer~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	asdata => \io3|rxCurrentByteBuffer\(7),
	sload => VCC,
	ena => \io3|rxBuffer~242_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxBuffer~20_q\);

-- Location: LCCOMB_X12_Y9_N30
\io3|rxBuffer~215\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~215_combout\ = (\io3|rxReadPointer\(3) & (((\io3|rxReadPointer\(2))))) # (!\io3|rxReadPointer\(3) & ((\io3|rxReadPointer\(2) & (\io3|rxBuffer~52_q\)) # (!\io3|rxReadPointer\(2) & ((\io3|rxBuffer~20_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|rxReadPointer\(3),
	datab => \io3|rxBuffer~52_q\,
	datac => \io3|rxBuffer~20_q\,
	datad => \io3|rxReadPointer\(2),
	combout => \io3|rxBuffer~215_combout\);

-- Location: FF_X12_Y10_N15
\io3|rxBuffer~116\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	asdata => \io3|rxCurrentByteBuffer\(7),
	sload => VCC,
	ena => \io3|rxBuffer~250_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxBuffer~116_q\);

-- Location: LCCOMB_X12_Y10_N14
\io3|rxBuffer~216\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~216_combout\ = (\io3|rxBuffer~215_combout\ & (((\io3|rxBuffer~116_q\) # (!\io3|rxReadPointer\(3))))) # (!\io3|rxBuffer~215_combout\ & (\io3|rxBuffer~84_q\ & ((\io3|rxReadPointer\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|rxBuffer~84_q\,
	datab => \io3|rxBuffer~215_combout\,
	datac => \io3|rxBuffer~116_q\,
	datad => \io3|rxReadPointer\(3),
	combout => \io3|rxBuffer~216_combout\);

-- Location: LCCOMB_X12_Y8_N14
\io3|rxBuffer~68feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~68feeder_combout\ = \io3|rxCurrentByteBuffer\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \io3|rxCurrentByteBuffer\(7),
	combout => \io3|rxBuffer~68feeder_combout\);

-- Location: FF_X12_Y8_N15
\io3|rxBuffer~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	d => \io3|rxBuffer~68feeder_combout\,
	ena => \io3|rxBuffer~232_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxBuffer~68_q\);

-- Location: FF_X12_Y9_N13
\io3|rxBuffer~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	asdata => \io3|rxCurrentByteBuffer\(7),
	sload => VCC,
	ena => \io3|rxBuffer~238_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxBuffer~36_q\);

-- Location: LCCOMB_X12_Y9_N12
\io3|rxBuffer~213\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~213_combout\ = (\io3|rxReadPointer\(3) & (((\io3|rxReadPointer\(2))))) # (!\io3|rxReadPointer\(3) & ((\io3|rxReadPointer\(2) & (\io3|rxBuffer~68_q\)) # (!\io3|rxReadPointer\(2) & ((\io3|rxBuffer~36_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|rxReadPointer\(3),
	datab => \io3|rxBuffer~68_q\,
	datac => \io3|rxBuffer~36_q\,
	datad => \io3|rxReadPointer\(2),
	combout => \io3|rxBuffer~213_combout\);

-- Location: FF_X11_Y10_N7
\io3|rxBuffer~132\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	asdata => \io3|rxCurrentByteBuffer\(7),
	sload => VCC,
	ena => \io3|rxBuffer~248_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxBuffer~132_q\);

-- Location: FF_X11_Y10_N13
\io3|rxBuffer~100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	asdata => \io3|rxCurrentByteBuffer\(7),
	sload => VCC,
	ena => \io3|rxBuffer~222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|rxBuffer~100_q\);

-- Location: LCCOMB_X11_Y10_N6
\io3|rxBuffer~214\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~214_combout\ = (\io3|rxReadPointer\(3) & ((\io3|rxBuffer~213_combout\ & (\io3|rxBuffer~132_q\)) # (!\io3|rxBuffer~213_combout\ & ((\io3|rxBuffer~100_q\))))) # (!\io3|rxReadPointer\(3) & (\io3|rxBuffer~213_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|rxReadPointer\(3),
	datab => \io3|rxBuffer~213_combout\,
	datac => \io3|rxBuffer~132_q\,
	datad => \io3|rxBuffer~100_q\,
	combout => \io3|rxBuffer~214_combout\);

-- Location: LCCOMB_X13_Y10_N8
\io3|rxBuffer~217\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~217_combout\ = (\io3|rxReadPointer\(1) & (((\io3|rxBuffer~214_combout\) # (\io3|rxReadPointer\(0))))) # (!\io3|rxReadPointer\(1) & (\io3|rxBuffer~216_combout\ & ((!\io3|rxReadPointer\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|rxBuffer~216_combout\,
	datab => \io3|rxBuffer~214_combout\,
	datac => \io3|rxReadPointer\(1),
	datad => \io3|rxReadPointer\(0),
	combout => \io3|rxBuffer~217_combout\);

-- Location: LCCOMB_X13_Y10_N20
\io3|rxBuffer~220\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|rxBuffer~220_combout\ = (\io3|rxBuffer~217_combout\ & (((\io3|rxBuffer~219_combout\) # (!\io3|rxReadPointer\(0))))) # (!\io3|rxBuffer~217_combout\ & (\io3|rxBuffer~212_combout\ & ((\io3|rxReadPointer\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|rxBuffer~212_combout\,
	datab => \io3|rxBuffer~219_combout\,
	datac => \io3|rxBuffer~217_combout\,
	datad => \io3|rxReadPointer\(0),
	combout => \io3|rxBuffer~220_combout\);

-- Location: FF_X14_Y12_N25
\io3|dataOut[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_comb~2clkctrl_outclk\,
	d => \io3|n_int~1_combout\,
	asdata => \io3|rxBuffer~220_combout\,
	sload => \fAddress[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|dataOut\(7));

-- Location: LCCOMB_X21_Y12_N8
\fData[7]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \fData[7]~56_combout\ = (\io3|dataOut\(7) & !\nButtoncs~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \io3|dataOut\(7),
	datac => \nButtoncs~2_combout\,
	combout => \fData[7]~56_combout\);

-- Location: LCCOMB_X23_Y12_N30
\timer1|timer[15]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer1|timer[15]~43_combout\ = \timer1|timer\(15) $ (!\timer1|timer[14]~42\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer1|timer\(15),
	cin => \timer1|timer[14]~42\,
	combout => \timer1|timer[15]~43_combout\);

-- Location: FF_X23_Y12_N31
\timer1|timer[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \systemTimerOut~clkctrl_outclk\,
	d => \timer1|timer[15]~43_combout\,
	clrn => \timer1|TimerOut[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer1|timer\(15));

-- Location: LCCOMB_X23_Y11_N2
\timer1|TimerOut[7]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer1|TimerOut[7]~9_combout\ = (\fAddress[0]~input_o\ & (\timer1|timer\(15))) # (!\fAddress[0]~input_o\ & ((\timer1|timer\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fAddress[0]~input_o\,
	datac => \timer1|timer\(15),
	datad => \timer1|timer\(7),
	combout => \timer1|TimerOut[7]~9_combout\);

-- Location: LCCOMB_X23_Y11_N6
\timer1|TimerOut[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer1|TimerOut\(7) = (GLOBAL(\timer1|TimerOut[7]~2clkctrl_outclk\) & (\timer1|TimerOut[7]~9_combout\)) # (!GLOBAL(\timer1|TimerOut[7]~2clkctrl_outclk\) & ((\timer1|TimerOut\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer1|TimerOut[7]~9_combout\,
	datac => \timer1|TimerOut[7]~2clkctrl_outclk\,
	datad => \timer1|TimerOut\(7),
	combout => \timer1|TimerOut\(7));

-- Location: LCCOMB_X21_Y12_N2
\fData[7]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \fData[7]~57_combout\ = (\fData[6]~44_combout\ & (((\timer1|TimerOut\(7)) # (!\fData[6]~45_combout\)))) # (!\fData[6]~44_combout\ & (\fData[7]~56_combout\ & ((\fData[6]~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fData[6]~44_combout\,
	datab => \fData[7]~56_combout\,
	datac => \timer1|TimerOut\(7),
	datad => \fData[6]~45_combout\,
	combout => \fData[7]~57_combout\);

-- Location: LCCOMB_X22_Y20_N30
\io4|dout[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|dout[7]~7_combout\ = (\io4|Selector0~2_combout\ & ((\io4|recv_data\(7)))) # (!\io4|Selector0~2_combout\ & (\io4|dout\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|Selector0~2_combout\,
	datac => \io4|dout\(7),
	datad => \io4|recv_data\(7),
	combout => \io4|dout[7]~7_combout\);

-- Location: LCCOMB_X22_Y20_N14
\io4|Selector137~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector137~0_combout\ = (\io4|dout\(7) & !\io4|state.idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \io4|dout\(7),
	datad => \io4|state.idle~q\,
	combout => \io4|Selector137~0_combout\);

-- Location: FF_X22_Y20_N31
\io4|dout[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|dout[7]~7_combout\,
	asdata => \io4|Selector137~0_combout\,
	sload => \io4|ALT_INV_state.receive_byte~q\,
	ena => \fnReset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|dout\(7));

-- Location: LCCOMB_X21_Y12_N12
\fData[7]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \fData[7]~58_combout\ = (\fData[7]~57_combout\ & (((\io4|dout\(7)) # (!\fData[6]~46_combout\)))) # (!\fData[7]~57_combout\ & (!\io4|fsm~1_combout\ & ((\fData[6]~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|fsm~1_combout\,
	datab => \fData[7]~57_combout\,
	datac => \io4|dout\(7),
	datad => \fData[6]~46_combout\,
	combout => \fData[7]~58_combout\);

-- Location: LCCOMB_X21_Y12_N28
\fData[7]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \fData[7]~62_combout\ = (\fData[7]~58_combout\) # ((\Equal0~2_combout\ & (!\fnRd~input_o\ & !\fnIorq~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datab => \fnRd~input_o\,
	datac => \fnIorq~input_o\,
	datad => \fData[7]~58_combout\,
	combout => \fData[7]~62_combout\);

-- Location: LCCOMB_X25_Y11_N28
\fData_dir~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fData_dir~1_combout\ = (\nButtoncs~2_combout\) # ((!\fnIorq~input_o\ & ((\nTimercs~0_combout\) # (\Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fnIorq~input_o\,
	datab => \nTimercs~0_combout\,
	datac => \nButtoncs~2_combout\,
	datad => \Equal0~2_combout\,
	combout => \fData_dir~1_combout\);

-- Location: LCCOMB_X24_Y11_N2
\fData_dir~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fData_dir~0_combout\ = (\nButtoncs~0_combout\ & ((\nSerialcs~0_combout\) # ((\fAddress[5]~input_o\ & !\fAddress[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fAddress[5]~input_o\,
	datab => \nSerialcs~0_combout\,
	datac => \fAddress[7]~input_o\,
	datad => \nButtoncs~0_combout\,
	combout => \fData_dir~0_combout\);

-- Location: LCCOMB_X25_Y11_N6
\fData_dir~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fData_dir~2_combout\ = (\fnRd~input_o\ & (!\fnIorq~input_o\ & ((\fData_dir~1_combout\) # (\fData_dir~0_combout\)))) # (!\fnRd~input_o\ & (((\fData_dir~1_combout\) # (\fData_dir~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fnRd~input_o\,
	datab => \fnIorq~input_o\,
	datac => \fData_dir~1_combout\,
	datad => \fData_dir~0_combout\,
	combout => \fData_dir~2_combout\);

-- Location: FF_X13_Y16_N31
\io3|txByteLatch[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb~3clkctrl_outclk\,
	asdata => \fData[0]~input_o\,
	sload => VCC,
	ena => \fAddress[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|txByteLatch\(0));

-- Location: FF_X13_Y16_N23
\io3|txByteLatch[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb~3clkctrl_outclk\,
	asdata => \fData[4]~input_o\,
	sload => VCC,
	ena => \fAddress[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|txByteLatch\(4));

-- Location: LCCOMB_X12_Y16_N30
\io3|txBuffer[7]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|txBuffer[7]~2_combout\ = ((\io3|txState.idle~q\ & (\io3|Selector25~0_combout\ & !\io3|Equal8~0_combout\))) # (!\io3|txBitCount[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|txState.idle~q\,
	datab => \io3|txBitCount[1]~0_combout\,
	datac => \io3|Selector25~0_combout\,
	datad => \io3|Equal8~0_combout\,
	combout => \io3|txBuffer[7]~2_combout\);

-- Location: FF_X12_Y16_N21
\io3|txByteLatch[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb~3clkctrl_outclk\,
	asdata => \fData[7]~input_o\,
	sload => VCC,
	ena => \fAddress[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|txByteLatch\(7));

-- Location: LCCOMB_X12_Y16_N20
\io3|txBuffer[7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|txBuffer[7]~1_combout\ = (\io3|txByteLatch\(7) & !\io3|txState.idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \io3|txByteLatch\(7),
	datad => \io3|txState.idle~q\,
	combout => \io3|txBuffer[7]~1_combout\);

-- Location: LCCOMB_X12_Y16_N26
\io3|txBuffer[7]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|txBuffer[7]~3_combout\ = (\io3|txBuffer[7]~2_combout\ & ((\io3|reset~0_combout\ & ((\io3|txBuffer\(7)))) # (!\io3|reset~0_combout\ & (\io3|txBuffer[7]~1_combout\)))) # (!\io3|txBuffer[7]~2_combout\ & (((\io3|txBuffer\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|txBuffer[7]~2_combout\,
	datab => \io3|txBuffer[7]~1_combout\,
	datac => \io3|txBuffer\(7),
	datad => \io3|reset~0_combout\,
	combout => \io3|txBuffer[7]~3_combout\);

-- Location: FF_X12_Y16_N27
\io3|txBuffer[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	d => \io3|txBuffer[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|txBuffer\(7));

-- Location: LCCOMB_X13_Y16_N28
\io3|txByteLatch[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|txByteLatch[6]~feeder_combout\ = \fData[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fData[6]~input_o\,
	combout => \io3|txByteLatch[6]~feeder_combout\);

-- Location: FF_X13_Y16_N29
\io3|txByteLatch[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb~3clkctrl_outclk\,
	d => \io3|txByteLatch[6]~feeder_combout\,
	ena => \fAddress[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|txByteLatch\(6));

-- Location: LCCOMB_X13_Y16_N16
\io3|Selector27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|Selector27~0_combout\ = (\io3|txState.dataBit~q\ & (\io3|txBuffer\(7))) # (!\io3|txState.dataBit~q\ & ((\io3|txByteLatch\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|txState.dataBit~q\,
	datac => \io3|txBuffer\(7),
	datad => \io3|txByteLatch\(6),
	combout => \io3|Selector27~0_combout\);

-- Location: LCCOMB_X12_Y16_N2
\io3|txBuffer[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|txBuffer[0]~0_combout\ = (!\io3|reset~0_combout\ & (((!\io3|Equal8~0_combout\ & \io3|Selector25~0_combout\)) # (!\io3|txBitCount[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|Equal8~0_combout\,
	datab => \io3|txBitCount[1]~0_combout\,
	datac => \io3|Selector25~0_combout\,
	datad => \io3|reset~0_combout\,
	combout => \io3|txBuffer[0]~0_combout\);

-- Location: FF_X13_Y16_N17
\io3|txBuffer[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	d => \io3|Selector27~0_combout\,
	ena => \io3|txBuffer[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|txBuffer\(6));

-- Location: LCCOMB_X13_Y16_N18
\io3|txByteLatch[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|txByteLatch[5]~feeder_combout\ = \fData[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fData[5]~input_o\,
	combout => \io3|txByteLatch[5]~feeder_combout\);

-- Location: FF_X13_Y16_N19
\io3|txByteLatch[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb~3clkctrl_outclk\,
	d => \io3|txByteLatch[5]~feeder_combout\,
	ena => \fAddress[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|txByteLatch\(5));

-- Location: LCCOMB_X13_Y16_N20
\io3|Selector28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|Selector28~0_combout\ = (\io3|txState.dataBit~q\ & (\io3|txBuffer\(6))) # (!\io3|txState.dataBit~q\ & ((\io3|txByteLatch\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|txState.dataBit~q\,
	datab => \io3|txBuffer\(6),
	datad => \io3|txByteLatch\(5),
	combout => \io3|Selector28~0_combout\);

-- Location: FF_X13_Y16_N21
\io3|txBuffer[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	d => \io3|Selector28~0_combout\,
	ena => \io3|txBuffer[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|txBuffer\(5));

-- Location: LCCOMB_X13_Y16_N8
\io3|Selector29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|Selector29~0_combout\ = (\io3|txState.dataBit~q\ & ((\io3|txBuffer\(5)))) # (!\io3|txState.dataBit~q\ & (\io3|txByteLatch\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|txState.dataBit~q\,
	datac => \io3|txByteLatch\(4),
	datad => \io3|txBuffer\(5),
	combout => \io3|Selector29~0_combout\);

-- Location: FF_X13_Y16_N9
\io3|txBuffer[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	d => \io3|Selector29~0_combout\,
	ena => \io3|txBuffer[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|txBuffer\(4));

-- Location: FF_X13_Y16_N3
\io3|txByteLatch[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb~3clkctrl_outclk\,
	asdata => \fData[3]~input_o\,
	sload => VCC,
	ena => \fAddress[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|txByteLatch\(3));

-- Location: LCCOMB_X13_Y16_N4
\io3|Selector30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|Selector30~0_combout\ = (\io3|txState.dataBit~q\ & (\io3|txBuffer\(4))) # (!\io3|txState.dataBit~q\ & ((\io3|txByteLatch\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|txState.dataBit~q\,
	datac => \io3|txBuffer\(4),
	datad => \io3|txByteLatch\(3),
	combout => \io3|Selector30~0_combout\);

-- Location: FF_X13_Y16_N5
\io3|txBuffer[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	d => \io3|Selector30~0_combout\,
	ena => \io3|txBuffer[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|txBuffer\(3));

-- Location: LCCOMB_X13_Y16_N14
\io3|txByteLatch[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|txByteLatch[2]~feeder_combout\ = \fData[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fData[2]~input_o\,
	combout => \io3|txByteLatch[2]~feeder_combout\);

-- Location: FF_X13_Y16_N15
\io3|txByteLatch[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb~3clkctrl_outclk\,
	d => \io3|txByteLatch[2]~feeder_combout\,
	ena => \fAddress[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|txByteLatch\(2));

-- Location: LCCOMB_X13_Y16_N0
\io3|Selector31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|Selector31~0_combout\ = (\io3|txState.dataBit~q\ & (\io3|txBuffer\(3))) # (!\io3|txState.dataBit~q\ & ((\io3|txByteLatch\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|txState.dataBit~q\,
	datab => \io3|txBuffer\(3),
	datac => \io3|txByteLatch\(2),
	combout => \io3|Selector31~0_combout\);

-- Location: FF_X13_Y16_N1
\io3|txBuffer[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	d => \io3|Selector31~0_combout\,
	ena => \io3|txBuffer[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|txBuffer\(2));

-- Location: LCCOMB_X13_Y16_N10
\io3|txByteLatch[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|txByteLatch[1]~feeder_combout\ = \fData[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fData[1]~input_o\,
	combout => \io3|txByteLatch[1]~feeder_combout\);

-- Location: FF_X13_Y16_N11
\io3|txByteLatch[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb~3clkctrl_outclk\,
	d => \io3|txByteLatch[1]~feeder_combout\,
	ena => \fAddress[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|txByteLatch\(1));

-- Location: LCCOMB_X13_Y16_N12
\io3|Selector32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|Selector32~0_combout\ = (\io3|txState.dataBit~q\ & (\io3|txBuffer\(2))) # (!\io3|txState.dataBit~q\ & ((\io3|txByteLatch\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|txState.dataBit~q\,
	datab => \io3|txBuffer\(2),
	datad => \io3|txByteLatch\(1),
	combout => \io3|Selector32~0_combout\);

-- Location: FF_X13_Y16_N13
\io3|txBuffer[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	d => \io3|Selector32~0_combout\,
	ena => \io3|txBuffer[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|txBuffer\(1));

-- Location: LCCOMB_X13_Y16_N24
\io3|Selector33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|Selector33~0_combout\ = (\io3|txState.dataBit~q\ & ((\io3|txBuffer\(1)))) # (!\io3|txState.dataBit~q\ & (\io3|txByteLatch\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|txState.dataBit~q\,
	datac => \io3|txByteLatch\(0),
	datad => \io3|txBuffer\(1),
	combout => \io3|Selector33~0_combout\);

-- Location: FF_X13_Y16_N25
\io3|txBuffer[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	d => \io3|Selector33~0_combout\,
	ena => \io3|txBuffer[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|txBuffer\(0));

-- Location: LCCOMB_X12_Y16_N4
\io3|txd~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|txd~0_combout\ = (\io3|txState.idle~q\ & (\io3|Selector25~0_combout\ & ((\io3|txBuffer\(0)) # (\io3|Equal8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|txState.idle~q\,
	datab => \io3|txBuffer\(0),
	datac => \io3|Selector25~0_combout\,
	datad => \io3|Equal8~0_combout\,
	combout => \io3|txd~0_combout\);

-- Location: LCCOMB_X11_Y16_N2
\io3|txd~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|txd~1_combout\ = (\io3|txd~0_combout\) # ((!\io3|txState.idle~q\ & (\io3|txByteSent~q\ $ (!\io3|txByteWritten~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|txd~0_combout\,
	datab => \io3|txByteSent~q\,
	datac => \io3|txState.idle~q\,
	datad => \io3|txByteWritten~q\,
	combout => \io3|txd~1_combout\);

-- Location: LCCOMB_X12_Y16_N8
\io3|txd~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \io3|txd~2_combout\ = (\io3|reset~0_combout\ & (((\io3|txd~q\)))) # (!\io3|reset~0_combout\ & ((\io3|txd~1_combout\) # ((\io3|txd~q\ & !\io3|txClockCount[2]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io3|txd~1_combout\,
	datab => \io3|reset~0_combout\,
	datac => \io3|txd~q\,
	datad => \io3|txClockCount[2]~6_combout\,
	combout => \io3|txd~2_combout\);

-- Location: FF_X12_Y16_N9
\io3|txd\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_serialClkCount[15]~clkctrl_outclk\,
	d => \io3|txd~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io3|txd~q\);

-- Location: LCCOMB_X22_Y18_N24
\io4|Selector79~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector79~0_combout\ = (\io4|state.init~q\ & ((\io4|Equal9~2_combout\) # ((\io4|sdCS~q\)))) # (!\io4|state.init~q\ & (((\io4|sdCS~q\ & \io4|state.rst~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|state.init~q\,
	datab => \io4|Equal9~2_combout\,
	datac => \io4|sdCS~q\,
	datad => \io4|state.rst~q\,
	combout => \io4|Selector79~0_combout\);

-- Location: FF_X22_Y18_N25
\io4|sdCS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|Selector79~0_combout\,
	clrn => \fnReset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|sdCS~q\);

-- Location: LCCOMB_X25_Y17_N14
\io4|wr_dat_reg~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|wr_dat_reg~4_combout\ = (!\io4|fsm~1_combout\ & (!\fAddress[0]~input_o\ & (!\fAddress[1]~input_o\ & !\fAddress[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|fsm~1_combout\,
	datab => \fAddress[0]~input_o\,
	datac => \fAddress[1]~input_o\,
	datad => \fAddress[2]~input_o\,
	combout => \io4|wr_dat_reg~4_combout\);

-- Location: FF_X25_Y17_N25
\io4|din_latched[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb~0clkctrl_outclk\,
	asdata => \fData[7]~input_o\,
	sload => VCC,
	ena => \io4|wr_dat_reg~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|din_latched\(7));

-- Location: LCCOMB_X25_Y17_N24
\io4|Selector128~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector128~0_combout\ = (((\io4|din_latched\(7)) # (\io4|fsm~0_combout\)) # (!\io4|Equal14~0_combout\)) # (!\io4|state.write_block_data~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|state.write_block_data~q\,
	datab => \io4|Equal14~0_combout\,
	datac => \io4|din_latched\(7),
	datad => \io4|fsm~0_combout\,
	combout => \io4|Selector128~0_combout\);

-- Location: LCCOMB_X24_Y17_N18
\io4|data_sig[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|data_sig[7]~feeder_combout\ = \io4|Selector128~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \io4|Selector128~0_combout\,
	combout => \io4|data_sig[7]~feeder_combout\);

-- Location: FF_X25_Y17_N29
\io4|din_latched[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb~0clkctrl_outclk\,
	asdata => \fData[6]~input_o\,
	sload => VCC,
	ena => \io4|wr_dat_reg~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|din_latched\(6));

-- Location: LCCOMB_X25_Y17_N28
\io4|Selector129~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector129~0_combout\ = (((\io4|din_latched\(6)) # (\io4|fsm~0_combout\)) # (!\io4|Equal14~0_combout\)) # (!\io4|state.write_block_data~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|state.write_block_data~q\,
	datab => \io4|Equal14~0_combout\,
	datac => \io4|din_latched\(6),
	datad => \io4|fsm~0_combout\,
	combout => \io4|Selector129~0_combout\);

-- Location: LCCOMB_X24_Y17_N8
\io4|data_sig[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|data_sig[6]~feeder_combout\ = \io4|Selector129~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|Selector129~0_combout\,
	combout => \io4|data_sig[6]~feeder_combout\);

-- Location: LCCOMB_X25_Y17_N8
\io4|din_latched[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|din_latched[5]~feeder_combout\ = \fData[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fData[5]~input_o\,
	combout => \io4|din_latched[5]~feeder_combout\);

-- Location: FF_X25_Y17_N9
\io4|din_latched[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb~0clkctrl_outclk\,
	d => \io4|din_latched[5]~feeder_combout\,
	ena => \io4|wr_dat_reg~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|din_latched\(5));

-- Location: LCCOMB_X24_Y17_N26
\io4|Selector130~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector130~0_combout\ = ((\io4|din_latched\(5)) # (!\io4|data_sig[7]~7_combout\)) # (!\io4|state.write_block_data~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|state.write_block_data~q\,
	datab => \io4|data_sig[7]~7_combout\,
	datad => \io4|din_latched\(5),
	combout => \io4|Selector130~0_combout\);

-- Location: LCCOMB_X25_Y17_N20
\io4|din_latched[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|din_latched[4]~feeder_combout\ = \fData[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fData[4]~input_o\,
	combout => \io4|din_latched[4]~feeder_combout\);

-- Location: FF_X25_Y17_N21
\io4|din_latched[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb~0clkctrl_outclk\,
	d => \io4|din_latched[4]~feeder_combout\,
	ena => \io4|wr_dat_reg~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|din_latched\(4));

-- Location: LCCOMB_X24_Y17_N30
\io4|Selector131~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector131~0_combout\ = (\io4|din_latched\(4)) # ((!\io4|state.write_block_data~q\) # (!\io4|data_sig[7]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|din_latched\(4),
	datab => \io4|data_sig[7]~7_combout\,
	datad => \io4|state.write_block_data~q\,
	combout => \io4|Selector131~0_combout\);

-- Location: LCCOMB_X25_Y17_N22
\io4|din_latched[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|din_latched[3]~feeder_combout\ = \fData[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fData[3]~input_o\,
	combout => \io4|din_latched[3]~feeder_combout\);

-- Location: FF_X25_Y17_N23
\io4|din_latched[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb~0clkctrl_outclk\,
	d => \io4|din_latched[3]~feeder_combout\,
	ena => \io4|wr_dat_reg~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|din_latched\(3));

-- Location: LCCOMB_X24_Y17_N22
\io4|Selector132~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector132~0_combout\ = ((\io4|din_latched\(3)) # (!\io4|data_sig[7]~7_combout\)) # (!\io4|state.write_block_data~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|state.write_block_data~q\,
	datab => \io4|data_sig[7]~7_combout\,
	datad => \io4|din_latched\(3),
	combout => \io4|Selector132~0_combout\);

-- Location: LCCOMB_X24_Y17_N24
\io4|din_latched[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|din_latched[2]~feeder_combout\ = \fData[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fData[2]~input_o\,
	combout => \io4|din_latched[2]~feeder_combout\);

-- Location: FF_X24_Y17_N25
\io4|din_latched[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb~0clkctrl_outclk\,
	d => \io4|din_latched[2]~feeder_combout\,
	ena => \io4|wr_dat_reg~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|din_latched\(2));

-- Location: LCCOMB_X24_Y17_N4
\io4|Selector133~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector133~0_combout\ = ((\io4|din_latched\(2)) # (!\io4|data_sig[7]~7_combout\)) # (!\io4|state.write_block_data~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|state.write_block_data~q\,
	datab => \io4|data_sig[7]~7_combout\,
	datad => \io4|din_latched\(2),
	combout => \io4|Selector133~0_combout\);

-- Location: LCCOMB_X24_Y17_N12
\io4|din_latched[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|din_latched[1]~feeder_combout\ = \fData[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fData[1]~input_o\,
	combout => \io4|din_latched[1]~feeder_combout\);

-- Location: FF_X24_Y17_N13
\io4|din_latched[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb~0clkctrl_outclk\,
	d => \io4|din_latched[1]~feeder_combout\,
	ena => \io4|wr_dat_reg~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|din_latched\(1));

-- Location: LCCOMB_X24_Y17_N14
\io4|Selector134~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector134~0_combout\ = ((\io4|din_latched\(1)) # (!\io4|data_sig[7]~7_combout\)) # (!\io4|state.write_block_data~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|state.write_block_data~q\,
	datab => \io4|data_sig[7]~7_combout\,
	datad => \io4|din_latched\(1),
	combout => \io4|Selector134~0_combout\);

-- Location: FF_X25_Y17_N19
\io4|din_latched[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb~0clkctrl_outclk\,
	asdata => \fData[0]~input_o\,
	sload => VCC,
	ena => \io4|wr_dat_reg~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|din_latched\(0));

-- Location: LCCOMB_X25_Y17_N18
\io4|Selector135~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector135~1_combout\ = (\io4|fsm~0_combout\) # ((\io4|fsm~1_combout\ & (\io4|Equal14~0_combout\ & \io4|din_latched\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|fsm~1_combout\,
	datab => \io4|Equal14~0_combout\,
	datac => \io4|din_latched\(0),
	datad => \io4|fsm~0_combout\,
	combout => \io4|Selector135~1_combout\);

-- Location: LCCOMB_X25_Y17_N0
\io4|Selector135~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector135~0_combout\ = (\io4|data_sig\(0) & (((!\io4|fsm~1_combout\ & \io4|Equal14~0_combout\)) # (!\io4|Equal11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|data_sig\(0),
	datab => \io4|Equal11~0_combout\,
	datac => \io4|fsm~1_combout\,
	datad => \io4|Equal14~0_combout\,
	combout => \io4|Selector135~0_combout\);

-- Location: LCCOMB_X25_Y17_N12
\io4|Selector135~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector135~2_combout\ = ((\io4|Selector135~0_combout\) # ((\io4|Selector135~1_combout\ & \io4|Equal11~0_combout\))) # (!\io4|state.write_block_data~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|state.write_block_data~q\,
	datab => \io4|Selector135~1_combout\,
	datac => \io4|Equal11~0_combout\,
	datad => \io4|Selector135~0_combout\,
	combout => \io4|Selector135~2_combout\);

-- Location: LCCOMB_X24_Y17_N2
\io4|data_sig[7]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|data_sig[7]~3_combout\ = (\io4|state.write_block_byte~q\ & (((\io4|Equal9~1_combout\ & \io4|Equal9~0_combout\)) # (!\io4|sclk_sig~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|Equal9~1_combout\,
	datab => \io4|state.write_block_byte~q\,
	datac => \io4|Equal9~0_combout\,
	datad => \io4|sclk_sig~q\,
	combout => \io4|data_sig[7]~3_combout\);

-- Location: LCCOMB_X24_Y17_N16
\io4|WideOr62~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|WideOr62~0_combout\ = (\io4|state.idle~q\) # ((\io4|state.write_block_byte~q\) # (\io4|state.write_block_data~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|state.idle~q\,
	datab => \io4|state.write_block_byte~q\,
	datac => \io4|state.write_block_data~q\,
	combout => \io4|WideOr62~0_combout\);

-- Location: LCCOMB_X21_Y17_N6
\io4|Selector135~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector135~3_combout\ = (\io4|Selector135~2_combout\ & ((\io4|data_sig\(0)) # ((!\io4|data_sig[7]~3_combout\ & \io4|WideOr62~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|Selector135~2_combout\,
	datab => \io4|data_sig[7]~3_combout\,
	datac => \io4|data_sig\(0),
	datad => \io4|WideOr62~0_combout\,
	combout => \io4|Selector135~3_combout\);

-- Location: FF_X21_Y17_N7
\io4|data_sig[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|Selector135~3_combout\,
	ena => \fnReset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|data_sig\(0));

-- Location: LCCOMB_X24_Y17_N10
\io4|data_sig[7]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|data_sig[7]~4_combout\ = (\io4|data_sig[7]~2_combout\ & (!\io4|data_sig[7]~3_combout\ & \io4|WideOr62~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|data_sig[7]~2_combout\,
	datab => \io4|data_sig[7]~3_combout\,
	datad => \io4|WideOr62~0_combout\,
	combout => \io4|data_sig[7]~4_combout\);

-- Location: FF_X24_Y17_N15
\io4|data_sig[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|Selector134~0_combout\,
	asdata => \io4|data_sig\(0),
	sload => \io4|state.write_block_byte~q\,
	ena => \io4|data_sig[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|data_sig\(1));

-- Location: FF_X24_Y17_N5
\io4|data_sig[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|Selector133~0_combout\,
	asdata => \io4|data_sig\(1),
	sload => \io4|state.write_block_byte~q\,
	ena => \io4|data_sig[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|data_sig\(2));

-- Location: FF_X24_Y17_N23
\io4|data_sig[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|Selector132~0_combout\,
	asdata => \io4|data_sig\(2),
	sload => \io4|state.write_block_byte~q\,
	ena => \io4|data_sig[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|data_sig\(3));

-- Location: FF_X24_Y17_N31
\io4|data_sig[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|Selector131~0_combout\,
	asdata => \io4|data_sig\(3),
	sload => \io4|state.write_block_byte~q\,
	ena => \io4|data_sig[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|data_sig\(4));

-- Location: FF_X24_Y17_N27
\io4|data_sig[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|Selector130~0_combout\,
	asdata => \io4|data_sig\(4),
	sload => \io4|state.write_block_byte~q\,
	ena => \io4|data_sig[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|data_sig\(5));

-- Location: FF_X24_Y17_N9
\io4|data_sig[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|data_sig[6]~feeder_combout\,
	asdata => \io4|data_sig\(5),
	sload => \io4|state.write_block_byte~q\,
	ena => \io4|data_sig[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|data_sig\(6));

-- Location: FF_X24_Y17_N19
\io4|data_sig[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|data_sig[7]~feeder_combout\,
	asdata => \io4|data_sig\(6),
	sload => \io4|state.write_block_byte~q\,
	ena => \io4|data_sig[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|data_sig\(7));

-- Location: LCCOMB_X23_Y16_N24
\io4|Selector69~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector69~1_combout\ = (\io4|Selector69~0_combout\ & (!\io4|state.write_block_cmd~q\ & ((\io4|state.write_block_init~q\) # (\io4|cmd_mode~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|state.write_block_init~q\,
	datab => \io4|Selector69~0_combout\,
	datac => \io4|cmd_mode~q\,
	datad => \io4|state.write_block_cmd~q\,
	combout => \io4|Selector69~1_combout\);

-- Location: FF_X23_Y16_N25
\io4|cmd_mode\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|Selector69~1_combout\,
	ena => \fnReset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|cmd_mode~q\);

-- Location: LCCOMB_X21_Y16_N2
\io4|WideOr28~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|WideOr28~2_combout\ = (\io4|state.rst~q\ & (!\io4|state.idle~q\ & !\io4|state.cmd55~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|state.rst~q\,
	datab => \io4|state.idle~q\,
	datac => \io4|state.cmd55~q\,
	combout => \io4|WideOr28~2_combout\);

-- Location: LCCOMB_X24_Y20_N6
\io4|WideOr29~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|WideOr29~3_combout\ = (\io4|state.send_cmd~q\) # ((\io4|state.send_regreq~q\) # ((!\io4|WideOr28~3_combout\) # (!\io4|WideOr28~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|state.send_cmd~q\,
	datab => \io4|state.send_regreq~q\,
	datac => \io4|WideOr28~2_combout\,
	datad => \io4|WideOr28~3_combout\,
	combout => \io4|WideOr29~3_combout\);

-- Location: LCCOMB_X24_Y16_N0
\io4|data_sig[7]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|data_sig[7]~5_combout\ = ((\io4|Equal9~1_combout\ & \io4|Equal9~0_combout\)) # (!\io4|sclk_sig~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|sclk_sig~q\,
	datab => \io4|Equal9~1_combout\,
	datac => \io4|Equal9~0_combout\,
	combout => \io4|data_sig[7]~5_combout\);

-- Location: LCCOMB_X21_Y16_N10
\io4|Selector17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector17~1_combout\ = (\io4|state.rst~q\ & (!\io4|state.idle~q\ & (!\io4|state.cmd55~q\ & !\io4|state.cmd58~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|state.rst~q\,
	datab => \io4|state.idle~q\,
	datac => \io4|state.cmd55~q\,
	datad => \io4|state.cmd58~q\,
	combout => \io4|Selector17~1_combout\);

-- Location: LCCOMB_X21_Y16_N4
\io4|cmd_out[36]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|cmd_out[36]~38_combout\ = ((\io4|state.idle~q\) # ((!\io4|WideOr17~0_combout\) # (!\io4|state.rst~q\))) # (!\io4|WideOr18~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|WideOr18~0_combout\,
	datab => \io4|state.idle~q\,
	datac => \io4|state.rst~q\,
	datad => \io4|WideOr17~0_combout\,
	combout => \io4|cmd_out[36]~38_combout\);

-- Location: LCCOMB_X24_Y19_N10
\io4|WideOr18\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|WideOr18~combout\ = (!\io4|state.acmd41~q\ & (!\io4|state.cmd55~q\ & (\io4|WideOr18~0_combout\ & !\io4|state.cmd0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|state.acmd41~q\,
	datab => \io4|state.cmd55~q\,
	datac => \io4|WideOr18~0_combout\,
	datad => \io4|state.cmd0~q\,
	combout => \io4|WideOr18~combout\);

-- Location: LCCOMB_X24_Y19_N14
\io4|WideOr17\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|WideOr17~combout\ = (!\io4|state.cmd0~q\ & (!\io4|state.cmd55~q\ & (!\io4|state.acmd41~q\ & !\io4|state.cmd58~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|state.cmd0~q\,
	datab => \io4|state.cmd55~q\,
	datac => \io4|state.acmd41~q\,
	datad => \io4|state.cmd58~q\,
	combout => \io4|WideOr17~combout\);

-- Location: LCCOMB_X24_Y19_N0
\io4|cmd_out[16]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|cmd_out[16]~37_combout\ = (\io4|cmd_out[16]~36_combout\ & (!\io4|state.cmd58~q\ & (\io4|WideOr17~0_combout\ & !\io4|state.cmd8~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|cmd_out[16]~36_combout\,
	datab => \io4|state.cmd58~q\,
	datac => \io4|WideOr17~0_combout\,
	datad => \io4|state.cmd8~q\,
	combout => \io4|cmd_out[16]~37_combout\);

-- Location: LCCOMB_X24_Y19_N2
\io4|Selector52~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector52~0_combout\ = (!\io4|state.cmd0~q\ & !\io4|state.cmd8~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|state.cmd0~q\,
	datad => \io4|state.cmd8~q\,
	combout => \io4|Selector52~0_combout\);

-- Location: LCCOMB_X23_Y19_N24
\io4|Selector51~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector51~1_combout\ = ((\io4|state.cmd58~q\) # ((!\io4|Selector52~0_combout\) # (!\io4|Selector104~0_combout\))) # (!\io4|cmd_out[16]~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|cmd_out[16]~36_combout\,
	datab => \io4|state.cmd58~q\,
	datac => \io4|Selector104~0_combout\,
	datad => \io4|Selector52~0_combout\,
	combout => \io4|Selector51~1_combout\);

-- Location: LCCOMB_X21_Y16_N30
\io4|WideOr28~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|WideOr28~4_combout\ = (\io4|state.rst~q\ & (!\io4|state.idle~q\ & (!\io4|state.cmd55~q\ & \io4|WideOr28~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|state.rst~q\,
	datab => \io4|state.idle~q\,
	datac => \io4|state.cmd55~q\,
	datad => \io4|WideOr28~3_combout\,
	combout => \io4|WideOr28~4_combout\);

-- Location: LCCOMB_X23_Y19_N28
\io4|Selector56~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector56~4_combout\ = ((\io4|state.idle~q\) # (!\io4|WideOr28~3_combout\)) # (!\io4|state.rst~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|state.rst~q\,
	datac => \io4|state.idle~q\,
	datad => \io4|WideOr28~3_combout\,
	combout => \io4|Selector56~4_combout\);

-- Location: LCCOMB_X23_Y19_N22
\io4|Selector57~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector57~4_combout\ = (\io4|data_sig[7]~5_combout\ & (\io4|cmd_out\(1) & ((\io4|state.send_cmd~q\) # (\io4|state.send_regreq~q\)))) # (!\io4|data_sig[7]~5_combout\ & (((\io4|state.send_cmd~q\) # (\io4|state.send_regreq~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|data_sig[7]~5_combout\,
	datab => \io4|cmd_out\(1),
	datac => \io4|state.send_cmd~q\,
	datad => \io4|state.send_regreq~q\,
	combout => \io4|Selector57~4_combout\);

-- Location: LCCOMB_X24_Y19_N6
\io4|Selector57~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector57~2_combout\ = ((\io4|state.cmd8~q\) # ((\io4|state.acmd41~q\) # (!\io4|cmd_out[16]~36_combout\))) # (!\io4|Selector104~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|Selector104~0_combout\,
	datab => \io4|state.cmd8~q\,
	datac => \io4|state.acmd41~q\,
	datad => \io4|cmd_out[16]~36_combout\,
	combout => \io4|Selector57~2_combout\);

-- Location: LCCOMB_X23_Y19_N30
\io4|Selector57~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector57~3_combout\ = (\io4|Selector57~4_combout\) # ((\io4|Selector57~2_combout\) # ((!\io4|WideOr29~3_combout\ & \io4|cmd_out\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|WideOr29~3_combout\,
	datab => \io4|Selector57~4_combout\,
	datac => \io4|cmd_out\(1),
	datad => \io4|Selector57~2_combout\,
	combout => \io4|Selector57~3_combout\);

-- Location: FF_X23_Y19_N31
\io4|cmd_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|Selector57~3_combout\,
	ena => \fnReset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|cmd_out\(1));

-- Location: LCCOMB_X23_Y19_N16
\io4|Selector56~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector56~2_combout\ = (!\io4|WideOr29~2_combout\ & ((\io4|data_sig[7]~5_combout\ & (\io4|cmd_out\(2))) # (!\io4|data_sig[7]~5_combout\ & ((\io4|cmd_out\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|data_sig[7]~5_combout\,
	datab => \io4|cmd_out\(2),
	datac => \io4|cmd_out\(1),
	datad => \io4|WideOr29~2_combout\,
	combout => \io4|Selector56~2_combout\);

-- Location: LCCOMB_X23_Y19_N18
\io4|Selector56~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector56~3_combout\ = (\io4|Selector56~4_combout\) # ((\io4|Selector56~2_combout\) # ((!\io4|WideOr29~3_combout\ & \io4|cmd_out\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|WideOr29~3_combout\,
	datab => \io4|Selector56~4_combout\,
	datac => \io4|cmd_out\(2),
	datad => \io4|Selector56~2_combout\,
	combout => \io4|Selector56~3_combout\);

-- Location: FF_X23_Y19_N19
\io4|cmd_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|Selector56~3_combout\,
	ena => \fnReset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|cmd_out\(2));

-- Location: LCCOMB_X23_Y19_N4
\io4|Selector55~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector55~4_combout\ = (!\io4|WideOr29~2_combout\ & ((\io4|data_sig[7]~5_combout\ & ((\io4|cmd_out\(3)))) # (!\io4|data_sig[7]~5_combout\ & (\io4|cmd_out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|data_sig[7]~5_combout\,
	datab => \io4|cmd_out\(2),
	datac => \io4|cmd_out\(3),
	datad => \io4|WideOr29~2_combout\,
	combout => \io4|Selector55~4_combout\);

-- Location: LCCOMB_X23_Y19_N2
\io4|Selector55~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector55~6_combout\ = (!\io4|state.idle~q\ & (!\io4|state.cmd58~q\ & (\io4|Selector104~0_combout\ & \io4|state.rst~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|state.idle~q\,
	datab => \io4|state.cmd58~q\,
	datac => \io4|Selector104~0_combout\,
	datad => \io4|state.rst~q\,
	combout => \io4|Selector55~6_combout\);

-- Location: LCCOMB_X23_Y19_N14
\io4|Selector55~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector55~5_combout\ = (\io4|Selector55~4_combout\) # (((!\io4|WideOr29~3_combout\ & \io4|cmd_out\(3))) # (!\io4|Selector55~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|WideOr29~3_combout\,
	datab => \io4|Selector55~4_combout\,
	datac => \io4|cmd_out\(3),
	datad => \io4|Selector55~6_combout\,
	combout => \io4|Selector55~5_combout\);

-- Location: FF_X23_Y19_N15
\io4|cmd_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|Selector55~5_combout\,
	ena => \fnReset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|cmd_out\(3));

-- Location: LCCOMB_X23_Y19_N8
\io4|Selector54~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector54~0_combout\ = (!\io4|WideOr29~2_combout\ & ((\io4|data_sig[7]~5_combout\ & (\io4|cmd_out\(4))) # (!\io4|data_sig[7]~5_combout\ & ((\io4|cmd_out\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|cmd_out\(4),
	datab => \io4|cmd_out\(3),
	datac => \io4|data_sig[7]~5_combout\,
	datad => \io4|WideOr29~2_combout\,
	combout => \io4|Selector54~0_combout\);

-- Location: LCCOMB_X24_Y19_N4
\io4|Selector54~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector54~1_combout\ = (\io4|state.cmd0~q\) # ((\io4|state.acmd41~q\) # (!\io4|Selector55~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|state.cmd0~q\,
	datac => \io4|state.acmd41~q\,
	datad => \io4|Selector55~6_combout\,
	combout => \io4|Selector54~1_combout\);

-- Location: LCCOMB_X23_Y19_N12
\io4|Selector54~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector54~2_combout\ = (\io4|Selector54~0_combout\) # ((\io4|Selector54~1_combout\) # ((!\io4|WideOr29~3_combout\ & \io4|cmd_out\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|WideOr29~3_combout\,
	datab => \io4|Selector54~0_combout\,
	datac => \io4|cmd_out\(4),
	datad => \io4|Selector54~1_combout\,
	combout => \io4|Selector54~2_combout\);

-- Location: FF_X23_Y19_N13
\io4|cmd_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|Selector54~2_combout\,
	ena => \fnReset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|cmd_out\(4));

-- Location: LCCOMB_X23_Y19_N26
\io4|Selector53~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector53~0_combout\ = (\io4|WideOr28~4_combout\ & (\io4|cmd_out\(4))) # (!\io4|WideOr28~4_combout\ & (((!\io4|state.cmd55~q\ & \io4|Selector52~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|cmd_out\(4),
	datab => \io4|state.cmd55~q\,
	datac => \io4|WideOr28~4_combout\,
	datad => \io4|Selector52~0_combout\,
	combout => \io4|Selector53~0_combout\);

-- Location: LCCOMB_X24_Y16_N10
\io4|cmd_out[55]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|cmd_out[55]~35_combout\ = (\fnReset~input_o\ & (\io4|WideOr29~3_combout\ & ((\io4|WideOr29~2_combout\) # (!\io4|data_sig[7]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|data_sig[7]~5_combout\,
	datab => \io4|WideOr29~2_combout\,
	datac => \fnReset~input_o\,
	datad => \io4|WideOr29~3_combout\,
	combout => \io4|cmd_out[55]~35_combout\);

-- Location: FF_X23_Y19_N27
\io4|cmd_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|Selector53~0_combout\,
	ena => \io4|cmd_out[55]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|cmd_out\(5));

-- Location: LCCOMB_X23_Y19_N20
\io4|Selector52~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector52~1_combout\ = (\io4|WideOr28~4_combout\ & (((\io4|cmd_out\(5))))) # (!\io4|WideOr28~4_combout\ & (!\io4|state.cmd55~q\ & ((\io4|Selector52~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|state.cmd55~q\,
	datab => \io4|WideOr28~4_combout\,
	datac => \io4|cmd_out\(5),
	datad => \io4|Selector52~0_combout\,
	combout => \io4|Selector52~1_combout\);

-- Location: FF_X23_Y19_N21
\io4|cmd_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|Selector52~1_combout\,
	ena => \io4|cmd_out[55]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|cmd_out\(6));

-- Location: LCCOMB_X23_Y19_N6
\io4|Selector51~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector51~0_combout\ = (!\io4|WideOr29~2_combout\ & ((\io4|data_sig[7]~5_combout\ & (\io4|cmd_out\(7))) # (!\io4|data_sig[7]~5_combout\ & ((\io4|cmd_out\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|cmd_out\(7),
	datab => \io4|cmd_out\(6),
	datac => \io4|data_sig[7]~5_combout\,
	datad => \io4|WideOr29~2_combout\,
	combout => \io4|Selector51~0_combout\);

-- Location: LCCOMB_X23_Y19_N10
\io4|Selector51~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector51~2_combout\ = (\io4|Selector51~1_combout\) # ((\io4|Selector51~0_combout\) # ((!\io4|WideOr29~3_combout\ & \io4|cmd_out\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|WideOr29~3_combout\,
	datab => \io4|Selector51~1_combout\,
	datac => \io4|cmd_out\(7),
	datad => \io4|Selector51~0_combout\,
	combout => \io4|Selector51~2_combout\);

-- Location: FF_X23_Y19_N11
\io4|cmd_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|Selector51~2_combout\,
	ena => \fnReset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|cmd_out\(7));

-- Location: LCCOMB_X19_Y18_N28
\io4|cmd_out[8]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|cmd_out[8]~30_combout\ = (\io4|cmd_out[36]~38_combout\ & ((\io4|WideOr18~combout\))) # (!\io4|cmd_out[36]~38_combout\ & (\io4|cmd_out\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|cmd_out\(7),
	datab => \io4|cmd_out[36]~38_combout\,
	datad => \io4|WideOr18~combout\,
	combout => \io4|cmd_out[8]~30_combout\);

-- Location: LCCOMB_X24_Y18_N22
\io4|address[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|address[0]~16_combout\ = (!\fAddress[2]~input_o\ & (!\fAddress[0]~input_o\ & (\io4|sdhc~q\ & \fAddress[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fAddress[2]~input_o\,
	datab => \fAddress[0]~input_o\,
	datac => \io4|sdhc~q\,
	datad => \fAddress[1]~input_o\,
	combout => \io4|address[0]~16_combout\);

-- Location: FF_X18_Y18_N5
\io4|address[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb~0clkctrl_outclk\,
	asdata => \fData[0]~input_o\,
	sload => VCC,
	ena => \io4|address[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|address\(0));

-- Location: FF_X19_Y18_N29
\io4|cmd_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|cmd_out[8]~30_combout\,
	asdata => \io4|address\(0),
	sload => \io4|ALT_INV_Selector104~0_combout\,
	ena => \io4|cmd_out[55]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|cmd_out\(8));

-- Location: LCCOMB_X19_Y18_N18
\io4|cmd_out[9]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|cmd_out[9]~29_combout\ = (\io4|cmd_out[16]~37_combout\ & ((\io4|cmd_out\(8)))) # (!\io4|cmd_out[16]~37_combout\ & (\io4|WideOr17~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|WideOr17~combout\,
	datab => \io4|cmd_out[16]~37_combout\,
	datad => \io4|cmd_out\(8),
	combout => \io4|cmd_out[9]~29_combout\);

-- Location: FF_X18_Y18_N27
\io4|address[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb~0clkctrl_outclk\,
	asdata => \fData[1]~input_o\,
	sload => VCC,
	ena => \io4|address[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|address\(1));

-- Location: FF_X19_Y18_N19
\io4|cmd_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|cmd_out[9]~29_combout\,
	asdata => \io4|address\(1),
	sload => \io4|ALT_INV_Selector104~0_combout\,
	ena => \io4|cmd_out[55]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|cmd_out\(9));

-- Location: LCCOMB_X19_Y18_N24
\io4|cmd_out[10]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|cmd_out[10]~28_combout\ = (\io4|cmd_out[36]~38_combout\ & (\io4|WideOr18~combout\)) # (!\io4|cmd_out[36]~38_combout\ & ((\io4|cmd_out\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|WideOr18~combout\,
	datab => \io4|cmd_out[36]~38_combout\,
	datad => \io4|cmd_out\(9),
	combout => \io4|cmd_out[10]~28_combout\);

-- Location: FF_X18_Y18_N17
\io4|address[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb~0clkctrl_outclk\,
	asdata => \fData[2]~input_o\,
	sload => VCC,
	ena => \io4|address[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|address\(2));

-- Location: FF_X19_Y18_N25
\io4|cmd_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|cmd_out[10]~28_combout\,
	asdata => \io4|address\(2),
	sload => \io4|ALT_INV_Selector104~0_combout\,
	ena => \io4|cmd_out[55]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|cmd_out\(10));

-- Location: LCCOMB_X19_Y18_N30
\io4|cmd_out[11]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|cmd_out[11]~27_combout\ = (\io4|cmd_out[16]~37_combout\ & ((\io4|cmd_out\(10)))) # (!\io4|cmd_out[16]~37_combout\ & (\io4|WideOr17~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|WideOr17~combout\,
	datab => \io4|cmd_out[16]~37_combout\,
	datad => \io4|cmd_out\(10),
	combout => \io4|cmd_out[11]~27_combout\);

-- Location: LCCOMB_X18_Y18_N6
\io4|address[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|address[3]~feeder_combout\ = \fData[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fData[3]~input_o\,
	combout => \io4|address[3]~feeder_combout\);

-- Location: FF_X18_Y18_N7
\io4|address[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb~0clkctrl_outclk\,
	d => \io4|address[3]~feeder_combout\,
	ena => \io4|address[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|address\(3));

-- Location: FF_X19_Y18_N31
\io4|cmd_out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|cmd_out[11]~27_combout\,
	asdata => \io4|address\(3),
	sload => \io4|ALT_INV_Selector104~0_combout\,
	ena => \io4|cmd_out[55]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|cmd_out\(11));

-- Location: LCCOMB_X19_Y18_N20
\io4|cmd_out[12]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|cmd_out[12]~26_combout\ = (\io4|cmd_out[36]~38_combout\ & ((\io4|WideOr18~combout\))) # (!\io4|cmd_out[36]~38_combout\ & (\io4|cmd_out\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|cmd_out\(11),
	datab => \io4|cmd_out[36]~38_combout\,
	datad => \io4|WideOr18~combout\,
	combout => \io4|cmd_out[12]~26_combout\);

-- Location: FF_X18_Y18_N21
\io4|address[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb~0clkctrl_outclk\,
	asdata => \fData[4]~input_o\,
	sload => VCC,
	ena => \io4|address[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|address\(4));

-- Location: FF_X19_Y18_N21
\io4|cmd_out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|cmd_out[12]~26_combout\,
	asdata => \io4|address\(4),
	sload => \io4|ALT_INV_Selector104~0_combout\,
	ena => \io4|cmd_out[55]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|cmd_out\(12));

-- Location: LCCOMB_X19_Y18_N10
\io4|cmd_out[13]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|cmd_out[13]~25_combout\ = (\io4|cmd_out[16]~37_combout\ & ((\io4|cmd_out\(12)))) # (!\io4|cmd_out[16]~37_combout\ & (\io4|WideOr17~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|WideOr17~combout\,
	datab => \io4|cmd_out[16]~37_combout\,
	datad => \io4|cmd_out\(12),
	combout => \io4|cmd_out[13]~25_combout\);

-- Location: FF_X18_Y18_N3
\io4|address[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb~0clkctrl_outclk\,
	asdata => \fData[5]~input_o\,
	sload => VCC,
	ena => \io4|address[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|address\(5));

-- Location: FF_X19_Y18_N11
\io4|cmd_out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|cmd_out[13]~25_combout\,
	asdata => \io4|address\(5),
	sload => \io4|ALT_INV_Selector104~0_combout\,
	ena => \io4|cmd_out[55]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|cmd_out\(13));

-- Location: LCCOMB_X19_Y18_N16
\io4|cmd_out[14]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|cmd_out[14]~24_combout\ = (\io4|cmd_out[36]~38_combout\ & ((\io4|WideOr18~combout\))) # (!\io4|cmd_out[36]~38_combout\ & (\io4|cmd_out\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|cmd_out\(13),
	datab => \io4|WideOr18~combout\,
	datad => \io4|cmd_out[36]~38_combout\,
	combout => \io4|cmd_out[14]~24_combout\);

-- Location: LCCOMB_X18_Y18_N0
\io4|address[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|address[6]~feeder_combout\ = \fData[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fData[6]~input_o\,
	combout => \io4|address[6]~feeder_combout\);

-- Location: FF_X18_Y18_N1
\io4|address[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb~0clkctrl_outclk\,
	d => \io4|address[6]~feeder_combout\,
	ena => \io4|address[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|address\(6));

-- Location: FF_X19_Y18_N17
\io4|cmd_out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|cmd_out[14]~24_combout\,
	asdata => \io4|address\(6),
	sload => \io4|ALT_INV_Selector104~0_combout\,
	ena => \io4|cmd_out[55]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|cmd_out\(14));

-- Location: LCCOMB_X19_Y18_N22
\io4|cmd_out[15]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|cmd_out[15]~23_combout\ = (\io4|cmd_out[16]~37_combout\ & ((\io4|cmd_out\(14)))) # (!\io4|cmd_out[16]~37_combout\ & (\io4|WideOr17~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|WideOr17~combout\,
	datab => \io4|cmd_out[16]~37_combout\,
	datad => \io4|cmd_out\(14),
	combout => \io4|cmd_out[15]~23_combout\);

-- Location: FF_X18_Y18_N15
\io4|address[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb~0clkctrl_outclk\,
	asdata => \fData[7]~input_o\,
	sload => VCC,
	ena => \io4|address[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|address\(7));

-- Location: FF_X19_Y18_N23
\io4|cmd_out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|cmd_out[15]~23_combout\,
	asdata => \io4|address\(7),
	sload => \io4|ALT_INV_Selector104~0_combout\,
	ena => \io4|cmd_out[55]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|cmd_out\(15));

-- Location: LCCOMB_X19_Y18_N4
\io4|cmd_out[16]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|cmd_out[16]~22_combout\ = (\io4|cmd_out[16]~37_combout\ & ((\io4|cmd_out\(15)))) # (!\io4|cmd_out[16]~37_combout\ & (\io4|WideOr17~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|WideOr17~combout\,
	datab => \io4|cmd_out\(15),
	datad => \io4|cmd_out[16]~37_combout\,
	combout => \io4|cmd_out[16]~22_combout\);

-- Location: LCCOMB_X25_Y17_N4
\io4|Equal6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Equal6~1_combout\ = (\fAddress[1]~input_o\ & (\fAddress[0]~input_o\ & !\fAddress[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fAddress[1]~input_o\,
	datab => \fAddress[0]~input_o\,
	datad => \fAddress[2]~input_o\,
	combout => \io4|Equal6~1_combout\);

-- Location: LCCOMB_X25_Y17_N2
\io4|address[8]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|address[8]~15_combout\ = (\io4|sdhc~q\ & ((\io4|Equal6~1_combout\ & (\fData[0]~input_o\)) # (!\io4|Equal6~1_combout\ & ((\io4|address\(8)))))) # (!\io4|sdhc~q\ & (((\io4|address\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|sdhc~q\,
	datab => \fData[0]~input_o\,
	datac => \io4|address\(8),
	datad => \io4|Equal6~1_combout\,
	combout => \io4|address[8]~15_combout\);

-- Location: FF_X25_Y17_N3
\io4|address[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb~0clkctrl_outclk\,
	d => \io4|address[8]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|address\(8));

-- Location: FF_X19_Y18_N5
\io4|cmd_out[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|cmd_out[16]~22_combout\,
	asdata => \io4|address\(8),
	sload => \io4|ALT_INV_Selector104~0_combout\,
	ena => \io4|cmd_out[55]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|cmd_out\(16));

-- Location: LCCOMB_X19_Y18_N26
\io4|cmd_out[17]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|cmd_out[17]~21_combout\ = (\io4|cmd_out[36]~38_combout\ & ((\io4|WideOr18~combout\))) # (!\io4|cmd_out[36]~38_combout\ & (\io4|cmd_out\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|cmd_out\(16),
	datab => \io4|cmd_out[36]~38_combout\,
	datad => \io4|WideOr18~combout\,
	combout => \io4|cmd_out[17]~21_combout\);

-- Location: LCCOMB_X18_Y18_N12
\io4|address~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|address~10_combout\ = (\io4|sdhc~q\ & ((\fData[1]~input_o\))) # (!\io4|sdhc~q\ & (\fData[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fData[0]~input_o\,
	datac => \fData[1]~input_o\,
	datad => \io4|sdhc~q\,
	combout => \io4|address~10_combout\);

-- Location: LCCOMB_X24_Y18_N12
\io4|address[10]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|address[10]~14_combout\ = (!\fAddress[2]~input_o\ & (\fAddress[1]~input_o\ & (\fAddress[0]~input_o\ $ (!\io4|sdhc~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fAddress[2]~input_o\,
	datab => \fAddress[0]~input_o\,
	datac => \io4|sdhc~q\,
	datad => \fAddress[1]~input_o\,
	combout => \io4|address[10]~14_combout\);

-- Location: FF_X18_Y18_N13
\io4|address[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb~0clkctrl_outclk\,
	d => \io4|address~10_combout\,
	ena => \io4|address[10]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|address\(9));

-- Location: FF_X19_Y18_N27
\io4|cmd_out[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|cmd_out[17]~21_combout\,
	asdata => \io4|address\(9),
	sload => \io4|ALT_INV_Selector104~0_combout\,
	ena => \io4|cmd_out[55]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|cmd_out\(17));

-- Location: LCCOMB_X19_Y18_N0
\io4|cmd_out[18]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|cmd_out[18]~20_combout\ = (\io4|cmd_out[36]~38_combout\ & ((\io4|WideOr18~combout\))) # (!\io4|cmd_out[36]~38_combout\ & (\io4|cmd_out\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|cmd_out\(17),
	datab => \io4|cmd_out[36]~38_combout\,
	datad => \io4|WideOr18~combout\,
	combout => \io4|cmd_out[18]~20_combout\);

-- Location: LCCOMB_X18_Y18_N10
\io4|address~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|address~9_combout\ = (\io4|sdhc~q\ & ((\fData[2]~input_o\))) # (!\io4|sdhc~q\ & (\fData[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fData[1]~input_o\,
	datac => \fData[2]~input_o\,
	datad => \io4|sdhc~q\,
	combout => \io4|address~9_combout\);

-- Location: FF_X18_Y18_N11
\io4|address[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb~0clkctrl_outclk\,
	d => \io4|address~9_combout\,
	ena => \io4|address[10]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|address\(10));

-- Location: FF_X19_Y18_N1
\io4|cmd_out[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|cmd_out[18]~20_combout\,
	asdata => \io4|address\(10),
	sload => \io4|ALT_INV_Selector104~0_combout\,
	ena => \io4|cmd_out[55]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|cmd_out\(18));

-- Location: LCCOMB_X19_Y18_N6
\io4|cmd_out[19]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|cmd_out[19]~19_combout\ = (\io4|cmd_out[36]~38_combout\ & (\io4|WideOr18~combout\)) # (!\io4|cmd_out[36]~38_combout\ & ((\io4|cmd_out\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|WideOr18~combout\,
	datab => \io4|cmd_out[36]~38_combout\,
	datad => \io4|cmd_out\(18),
	combout => \io4|cmd_out[19]~19_combout\);

-- Location: LCCOMB_X18_Y18_N24
\io4|address~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|address~8_combout\ = (\io4|sdhc~q\ & ((\fData[3]~input_o\))) # (!\io4|sdhc~q\ & (\fData[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \io4|sdhc~q\,
	datac => \fData[2]~input_o\,
	datad => \fData[3]~input_o\,
	combout => \io4|address~8_combout\);

-- Location: FF_X18_Y18_N25
\io4|address[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb~0clkctrl_outclk\,
	d => \io4|address~8_combout\,
	ena => \io4|address[10]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|address\(11));

-- Location: FF_X19_Y18_N7
\io4|cmd_out[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|cmd_out[19]~19_combout\,
	asdata => \io4|address\(11),
	sload => \io4|ALT_INV_Selector104~0_combout\,
	ena => \io4|cmd_out[55]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|cmd_out\(19));

-- Location: LCCOMB_X19_Y18_N12
\io4|cmd_out[20]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|cmd_out[20]~18_combout\ = (\io4|cmd_out[36]~38_combout\ & ((\io4|WideOr18~combout\))) # (!\io4|cmd_out[36]~38_combout\ & (\io4|cmd_out\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|cmd_out\(19),
	datab => \io4|WideOr18~combout\,
	datad => \io4|cmd_out[36]~38_combout\,
	combout => \io4|cmd_out[20]~18_combout\);

-- Location: LCCOMB_X18_Y18_N22
\io4|address~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|address~7_combout\ = (\io4|sdhc~q\ & (\fData[4]~input_o\)) # (!\io4|sdhc~q\ & ((\fData[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \io4|sdhc~q\,
	datac => \fData[4]~input_o\,
	datad => \fData[3]~input_o\,
	combout => \io4|address~7_combout\);

-- Location: FF_X18_Y18_N23
\io4|address[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb~0clkctrl_outclk\,
	d => \io4|address~7_combout\,
	ena => \io4|address[10]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|address\(12));

-- Location: FF_X19_Y18_N13
\io4|cmd_out[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|cmd_out[20]~18_combout\,
	asdata => \io4|address\(12),
	sload => \io4|ALT_INV_Selector104~0_combout\,
	ena => \io4|cmd_out[55]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|cmd_out\(20));

-- Location: LCCOMB_X19_Y18_N2
\io4|cmd_out[21]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|cmd_out[21]~17_combout\ = (\io4|cmd_out[36]~38_combout\ & ((\io4|WideOr18~combout\))) # (!\io4|cmd_out[36]~38_combout\ & (\io4|cmd_out\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|cmd_out\(20),
	datab => \io4|WideOr18~combout\,
	datad => \io4|cmd_out[36]~38_combout\,
	combout => \io4|cmd_out[21]~17_combout\);

-- Location: LCCOMB_X18_Y18_N28
\io4|address~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|address~6_combout\ = (\io4|sdhc~q\ & ((\fData[5]~input_o\))) # (!\io4|sdhc~q\ & (\fData[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fData[4]~input_o\,
	datac => \fData[5]~input_o\,
	datad => \io4|sdhc~q\,
	combout => \io4|address~6_combout\);

-- Location: FF_X18_Y18_N29
\io4|address[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb~0clkctrl_outclk\,
	d => \io4|address~6_combout\,
	ena => \io4|address[10]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|address\(13));

-- Location: FF_X19_Y18_N3
\io4|cmd_out[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|cmd_out[21]~17_combout\,
	asdata => \io4|address\(13),
	sload => \io4|ALT_INV_Selector104~0_combout\,
	ena => \io4|cmd_out[55]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|cmd_out\(21));

-- Location: LCCOMB_X19_Y18_N8
\io4|cmd_out[22]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|cmd_out[22]~16_combout\ = (\io4|cmd_out[36]~38_combout\ & (\io4|WideOr18~combout\)) # (!\io4|cmd_out[36]~38_combout\ & ((\io4|cmd_out\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|WideOr18~combout\,
	datab => \io4|cmd_out[36]~38_combout\,
	datad => \io4|cmd_out\(21),
	combout => \io4|cmd_out[22]~16_combout\);

-- Location: LCCOMB_X18_Y18_N18
\io4|address~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|address~5_combout\ = (\io4|sdhc~q\ & (\fData[6]~input_o\)) # (!\io4|sdhc~q\ & ((\fData[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fData[6]~input_o\,
	datac => \fData[5]~input_o\,
	datad => \io4|sdhc~q\,
	combout => \io4|address~5_combout\);

-- Location: FF_X18_Y18_N19
\io4|address[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb~0clkctrl_outclk\,
	d => \io4|address~5_combout\,
	ena => \io4|address[10]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|address\(14));

-- Location: FF_X19_Y18_N9
\io4|cmd_out[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|cmd_out[22]~16_combout\,
	asdata => \io4|address\(14),
	sload => \io4|ALT_INV_Selector104~0_combout\,
	ena => \io4|cmd_out[55]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|cmd_out\(22));

-- Location: LCCOMB_X19_Y17_N2
\io4|cmd_out[23]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|cmd_out[23]~15_combout\ = (\io4|cmd_out[36]~38_combout\ & (\io4|WideOr18~combout\)) # (!\io4|cmd_out[36]~38_combout\ & ((\io4|cmd_out\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|WideOr18~combout\,
	datab => \io4|cmd_out[36]~38_combout\,
	datad => \io4|cmd_out\(22),
	combout => \io4|cmd_out[23]~15_combout\);

-- Location: LCCOMB_X18_Y18_N8
\io4|address~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|address~3_combout\ = (\io4|sdhc~q\ & ((\fData[7]~input_o\))) # (!\io4|sdhc~q\ & (\fData[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fData[6]~input_o\,
	datac => \fData[7]~input_o\,
	datad => \io4|sdhc~q\,
	combout => \io4|address~3_combout\);

-- Location: FF_X18_Y18_N9
\io4|address[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb~0clkctrl_outclk\,
	d => \io4|address~3_combout\,
	ena => \io4|address[10]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|address\(15));

-- Location: FF_X19_Y17_N3
\io4|cmd_out[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|cmd_out[23]~15_combout\,
	asdata => \io4|address\(15),
	sload => \io4|ALT_INV_Selector104~0_combout\,
	ena => \io4|cmd_out[55]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|cmd_out\(23));

-- Location: LCCOMB_X19_Y17_N16
\io4|cmd_out[24]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|cmd_out[24]~14_combout\ = (\io4|cmd_out[36]~38_combout\ & (\io4|WideOr18~combout\)) # (!\io4|cmd_out[36]~38_combout\ & ((\io4|cmd_out\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|WideOr18~combout\,
	datab => \io4|cmd_out[36]~38_combout\,
	datad => \io4|cmd_out\(23),
	combout => \io4|cmd_out[24]~14_combout\);

-- Location: LCCOMB_X24_Y18_N8
\io4|address[16]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|address[16]~11_combout\ = (\fAddress[2]~input_o\ & ((\fData[0]~input_o\))) # (!\fAddress[2]~input_o\ & (\fData[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fData[7]~input_o\,
	datac => \fData[0]~input_o\,
	datad => \fAddress[2]~input_o\,
	combout => \io4|address[16]~11_combout\);

-- Location: LCCOMB_X24_Y18_N10
\io4|address[16]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|address[16]~12_combout\ = (\fAddress[1]~input_o\ & (!\io4|sdhc~q\ & !\fAddress[2]~input_o\)) # (!\fAddress[1]~input_o\ & (\io4|sdhc~q\ & \fAddress[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fAddress[1]~input_o\,
	datac => \io4|sdhc~q\,
	datad => \fAddress[2]~input_o\,
	combout => \io4|address[16]~12_combout\);

-- Location: LCCOMB_X26_Y18_N0
\io4|address[16]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|address[16]~13_combout\ = (\fAddress[0]~input_o\ & (((\io4|address\(16))))) # (!\fAddress[0]~input_o\ & ((\io4|address[16]~12_combout\ & (\io4|address[16]~11_combout\)) # (!\io4|address[16]~12_combout\ & ((\io4|address\(16))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fAddress[0]~input_o\,
	datab => \io4|address[16]~11_combout\,
	datac => \io4|address\(16),
	datad => \io4|address[16]~12_combout\,
	combout => \io4|address[16]~13_combout\);

-- Location: FF_X26_Y18_N1
\io4|address[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb~0clkctrl_outclk\,
	d => \io4|address[16]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|address\(16));

-- Location: FF_X19_Y17_N17
\io4|cmd_out[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|cmd_out[24]~14_combout\,
	asdata => \io4|address\(16),
	sload => \io4|ALT_INV_Selector104~0_combout\,
	ena => \io4|cmd_out[55]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|cmd_out\(24));

-- Location: LCCOMB_X19_Y17_N6
\io4|cmd_out[25]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|cmd_out[25]~13_combout\ = (\io4|cmd_out[36]~38_combout\ & (\io4|WideOr18~combout\)) # (!\io4|cmd_out[36]~38_combout\ & ((\io4|cmd_out\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|WideOr18~combout\,
	datab => \io4|cmd_out[36]~38_combout\,
	datad => \io4|cmd_out\(24),
	combout => \io4|cmd_out[25]~13_combout\);

-- Location: LCCOMB_X19_Y17_N26
\io4|address[17]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|address[17]~feeder_combout\ = \io4|address~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \io4|address~10_combout\,
	combout => \io4|address[17]~feeder_combout\);

-- Location: LCCOMB_X24_Y18_N14
\io4|address[17]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|address[17]~4_combout\ = (\fAddress[2]~input_o\ & (!\fAddress[0]~input_o\ & (\io4|sdhc~q\ & !\fAddress[1]~input_o\))) # (!\fAddress[2]~input_o\ & (\fAddress[0]~input_o\ & (!\io4|sdhc~q\ & \fAddress[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fAddress[2]~input_o\,
	datab => \fAddress[0]~input_o\,
	datac => \io4|sdhc~q\,
	datad => \fAddress[1]~input_o\,
	combout => \io4|address[17]~4_combout\);

-- Location: FF_X19_Y17_N27
\io4|address[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb~0clkctrl_outclk\,
	d => \io4|address[17]~feeder_combout\,
	ena => \io4|address[17]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|address\(17));

-- Location: FF_X19_Y17_N7
\io4|cmd_out[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|cmd_out[25]~13_combout\,
	asdata => \io4|address\(17),
	sload => \io4|ALT_INV_Selector104~0_combout\,
	ena => \io4|cmd_out[55]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|cmd_out\(25));

-- Location: LCCOMB_X19_Y17_N24
\io4|cmd_out[26]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|cmd_out[26]~12_combout\ = (\io4|cmd_out[36]~38_combout\ & (\io4|WideOr18~combout\)) # (!\io4|cmd_out[36]~38_combout\ & ((\io4|cmd_out\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|WideOr18~combout\,
	datab => \io4|cmd_out[36]~38_combout\,
	datad => \io4|cmd_out\(25),
	combout => \io4|cmd_out[26]~12_combout\);

-- Location: LCCOMB_X19_Y17_N4
\io4|address[18]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|address[18]~feeder_combout\ = \io4|address~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \io4|address~9_combout\,
	combout => \io4|address[18]~feeder_combout\);

-- Location: FF_X19_Y17_N5
\io4|address[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb~0clkctrl_outclk\,
	d => \io4|address[18]~feeder_combout\,
	ena => \io4|address[17]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|address\(18));

-- Location: FF_X19_Y17_N25
\io4|cmd_out[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|cmd_out[26]~12_combout\,
	asdata => \io4|address\(18),
	sload => \io4|ALT_INV_Selector104~0_combout\,
	ena => \io4|cmd_out[55]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|cmd_out\(26));

-- Location: LCCOMB_X19_Y17_N20
\io4|cmd_out[27]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|cmd_out[27]~11_combout\ = (\io4|cmd_out[36]~38_combout\ & (\io4|WideOr18~combout\)) # (!\io4|cmd_out[36]~38_combout\ & ((\io4|cmd_out\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|WideOr18~combout\,
	datab => \io4|cmd_out[36]~38_combout\,
	datad => \io4|cmd_out\(26),
	combout => \io4|cmd_out[27]~11_combout\);

-- Location: LCCOMB_X19_Y17_N14
\io4|address[19]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|address[19]~feeder_combout\ = \io4|address~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \io4|address~8_combout\,
	combout => \io4|address[19]~feeder_combout\);

-- Location: FF_X19_Y17_N15
\io4|address[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb~0clkctrl_outclk\,
	d => \io4|address[19]~feeder_combout\,
	ena => \io4|address[17]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|address\(19));

-- Location: FF_X19_Y17_N21
\io4|cmd_out[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|cmd_out[27]~11_combout\,
	asdata => \io4|address\(19),
	sload => \io4|ALT_INV_Selector104~0_combout\,
	ena => \io4|cmd_out[55]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|cmd_out\(27));

-- Location: LCCOMB_X19_Y17_N18
\io4|cmd_out[28]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|cmd_out[28]~10_combout\ = (\io4|cmd_out[36]~38_combout\ & (\io4|WideOr18~combout\)) # (!\io4|cmd_out[36]~38_combout\ & ((\io4|cmd_out\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|WideOr18~combout\,
	datab => \io4|cmd_out[36]~38_combout\,
	datad => \io4|cmd_out\(27),
	combout => \io4|cmd_out[28]~10_combout\);

-- Location: LCCOMB_X19_Y17_N22
\io4|address[20]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|address[20]~feeder_combout\ = \io4|address~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \io4|address~7_combout\,
	combout => \io4|address[20]~feeder_combout\);

-- Location: FF_X19_Y17_N23
\io4|address[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb~0clkctrl_outclk\,
	d => \io4|address[20]~feeder_combout\,
	ena => \io4|address[17]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|address\(20));

-- Location: FF_X19_Y17_N19
\io4|cmd_out[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|cmd_out[28]~10_combout\,
	asdata => \io4|address\(20),
	sload => \io4|ALT_INV_Selector104~0_combout\,
	ena => \io4|cmd_out[55]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|cmd_out\(28));

-- Location: LCCOMB_X19_Y17_N12
\io4|cmd_out[29]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|cmd_out[29]~9_combout\ = (\io4|cmd_out[36]~38_combout\ & (\io4|WideOr18~combout\)) # (!\io4|cmd_out[36]~38_combout\ & ((\io4|cmd_out\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|WideOr18~combout\,
	datab => \io4|cmd_out[36]~38_combout\,
	datad => \io4|cmd_out\(28),
	combout => \io4|cmd_out[29]~9_combout\);

-- Location: LCCOMB_X19_Y17_N30
\io4|address[21]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|address[21]~feeder_combout\ = \io4|address~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \io4|address~6_combout\,
	combout => \io4|address[21]~feeder_combout\);

-- Location: FF_X19_Y17_N31
\io4|address[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb~0clkctrl_outclk\,
	d => \io4|address[21]~feeder_combout\,
	ena => \io4|address[17]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|address\(21));

-- Location: FF_X19_Y17_N13
\io4|cmd_out[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|cmd_out[29]~9_combout\,
	asdata => \io4|address\(21),
	sload => \io4|ALT_INV_Selector104~0_combout\,
	ena => \io4|cmd_out[55]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|cmd_out\(29));

-- Location: LCCOMB_X19_Y17_N0
\io4|cmd_out[30]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|cmd_out[30]~8_combout\ = (\io4|cmd_out[36]~38_combout\ & (\io4|WideOr18~combout\)) # (!\io4|cmd_out[36]~38_combout\ & ((\io4|cmd_out\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|WideOr18~combout\,
	datab => \io4|cmd_out[36]~38_combout\,
	datad => \io4|cmd_out\(29),
	combout => \io4|cmd_out[30]~8_combout\);

-- Location: LCCOMB_X19_Y17_N10
\io4|address[22]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|address[22]~feeder_combout\ = \io4|address~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \io4|address~5_combout\,
	combout => \io4|address[22]~feeder_combout\);

-- Location: FF_X19_Y17_N11
\io4|address[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb~0clkctrl_outclk\,
	d => \io4|address[22]~feeder_combout\,
	ena => \io4|address[17]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|address\(22));

-- Location: FF_X19_Y17_N1
\io4|cmd_out[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|cmd_out[30]~8_combout\,
	asdata => \io4|address\(22),
	sload => \io4|ALT_INV_Selector104~0_combout\,
	ena => \io4|cmd_out[55]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|cmd_out\(30));

-- Location: LCCOMB_X19_Y17_N28
\io4|cmd_out[31]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|cmd_out[31]~7_combout\ = (\io4|cmd_out[36]~38_combout\ & (\io4|WideOr18~combout\)) # (!\io4|cmd_out[36]~38_combout\ & ((\io4|cmd_out\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|WideOr18~combout\,
	datab => \io4|cmd_out[36]~38_combout\,
	datad => \io4|cmd_out\(30),
	combout => \io4|cmd_out[31]~7_combout\);

-- Location: LCCOMB_X19_Y17_N8
\io4|address[23]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|address[23]~feeder_combout\ = \io4|address~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \io4|address~3_combout\,
	combout => \io4|address[23]~feeder_combout\);

-- Location: FF_X19_Y17_N9
\io4|address[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb~0clkctrl_outclk\,
	d => \io4|address[23]~feeder_combout\,
	ena => \io4|address[17]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|address\(23));

-- Location: FF_X19_Y17_N29
\io4|cmd_out[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|cmd_out[31]~7_combout\,
	asdata => \io4|address\(23),
	sload => \io4|ALT_INV_Selector104~0_combout\,
	ena => \io4|cmd_out[55]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|cmd_out\(31));

-- Location: LCCOMB_X25_Y16_N24
\io4|cmd_out[32]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|cmd_out[32]~6_combout\ = (\io4|cmd_out[36]~38_combout\ & ((\io4|WideOr18~combout\))) # (!\io4|cmd_out[36]~38_combout\ & (\io4|cmd_out\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|cmd_out[36]~38_combout\,
	datab => \io4|cmd_out\(31),
	datad => \io4|WideOr18~combout\,
	combout => \io4|cmd_out[32]~6_combout\);

-- Location: LCCOMB_X25_Y17_N16
\io4|address[24]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|address[24]~1_combout\ = (!\io4|sdhc~q\ & (\fAddress[0]~input_o\ & (\fAddress[1]~input_o\ & !\fAddress[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|sdhc~q\,
	datab => \fAddress[0]~input_o\,
	datac => \fAddress[1]~input_o\,
	datad => \fAddress[2]~input_o\,
	combout => \io4|address[24]~1_combout\);

-- Location: LCCOMB_X25_Y17_N30
\io4|address[24]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|address[24]~2_combout\ = (\io4|address[24]~1_combout\ & (\fData[7]~input_o\)) # (!\io4|address[24]~1_combout\ & ((\io4|address\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fData[7]~input_o\,
	datac => \io4|address\(24),
	datad => \io4|address[24]~1_combout\,
	combout => \io4|address[24]~2_combout\);

-- Location: FF_X25_Y17_N31
\io4|address[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb~0clkctrl_outclk\,
	d => \io4|address[24]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|address\(24));

-- Location: FF_X25_Y16_N25
\io4|cmd_out[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|cmd_out[32]~6_combout\,
	asdata => \io4|address\(24),
	sload => \io4|ALT_INV_Selector104~0_combout\,
	ena => \io4|cmd_out[55]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|cmd_out\(32));

-- Location: LCCOMB_X25_Y16_N28
\io4|cmd_out[33]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|cmd_out[33]~5_combout\ = (\io4|cmd_out[36]~38_combout\ & ((\io4|WideOr18~combout\))) # (!\io4|cmd_out[36]~38_combout\ & (\io4|cmd_out\(32)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|cmd_out[36]~38_combout\,
	datab => \io4|cmd_out\(32),
	datad => \io4|WideOr18~combout\,
	combout => \io4|cmd_out[33]~5_combout\);

-- Location: LCCOMB_X25_Y16_N22
\io4|address[25]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|address[25]~feeder_combout\ = \fData[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fData[0]~input_o\,
	combout => \io4|address[25]~feeder_combout\);

-- Location: LCCOMB_X24_Y18_N20
\io4|address[31]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|address[31]~0_combout\ = (\fAddress[2]~input_o\ & (!\fAddress[0]~input_o\ & (!\io4|sdhc~q\ & !\fAddress[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fAddress[2]~input_o\,
	datab => \fAddress[0]~input_o\,
	datac => \io4|sdhc~q\,
	datad => \fAddress[1]~input_o\,
	combout => \io4|address[31]~0_combout\);

-- Location: FF_X25_Y16_N23
\io4|address[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb~0clkctrl_outclk\,
	d => \io4|address[25]~feeder_combout\,
	ena => \io4|address[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|address\(25));

-- Location: FF_X25_Y16_N29
\io4|cmd_out[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|cmd_out[33]~5_combout\,
	asdata => \io4|address\(25),
	sload => \io4|ALT_INV_Selector104~0_combout\,
	ena => \io4|cmd_out[55]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|cmd_out\(33));

-- Location: LCCOMB_X25_Y16_N20
\io4|cmd_out[34]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|cmd_out[34]~4_combout\ = (\io4|cmd_out[36]~38_combout\ & ((\io4|WideOr18~combout\))) # (!\io4|cmd_out[36]~38_combout\ & (\io4|cmd_out\(33)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|cmd_out[36]~38_combout\,
	datab => \io4|cmd_out\(33),
	datad => \io4|WideOr18~combout\,
	combout => \io4|cmd_out[34]~4_combout\);

-- Location: LCCOMB_X25_Y16_N4
\io4|address[26]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|address[26]~feeder_combout\ = \fData[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fData[1]~input_o\,
	combout => \io4|address[26]~feeder_combout\);

-- Location: FF_X25_Y16_N5
\io4|address[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb~0clkctrl_outclk\,
	d => \io4|address[26]~feeder_combout\,
	ena => \io4|address[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|address\(26));

-- Location: FF_X25_Y16_N21
\io4|cmd_out[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|cmd_out[34]~4_combout\,
	asdata => \io4|address\(26),
	sload => \io4|ALT_INV_Selector104~0_combout\,
	ena => \io4|cmd_out[55]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|cmd_out\(34));

-- Location: LCCOMB_X25_Y16_N18
\io4|cmd_out[35]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|cmd_out[35]~3_combout\ = (\io4|cmd_out[36]~38_combout\ & ((\io4|WideOr18~combout\))) # (!\io4|cmd_out[36]~38_combout\ & (\io4|cmd_out\(34)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|cmd_out[36]~38_combout\,
	datab => \io4|cmd_out\(34),
	datad => \io4|WideOr18~combout\,
	combout => \io4|cmd_out[35]~3_combout\);

-- Location: LCCOMB_X25_Y16_N30
\io4|address[27]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|address[27]~feeder_combout\ = \fData[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fData[2]~input_o\,
	combout => \io4|address[27]~feeder_combout\);

-- Location: FF_X25_Y16_N31
\io4|address[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb~0clkctrl_outclk\,
	d => \io4|address[27]~feeder_combout\,
	ena => \io4|address[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|address\(27));

-- Location: FF_X25_Y16_N19
\io4|cmd_out[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|cmd_out[35]~3_combout\,
	asdata => \io4|address\(27),
	sload => \io4|ALT_INV_Selector104~0_combout\,
	ena => \io4|cmd_out[55]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|cmd_out\(35));

-- Location: LCCOMB_X25_Y16_N0
\io4|cmd_out[36]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|cmd_out[36]~2_combout\ = (\io4|cmd_out[36]~38_combout\ & ((\io4|WideOr18~combout\))) # (!\io4|cmd_out[36]~38_combout\ & (\io4|cmd_out\(35)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|cmd_out[36]~38_combout\,
	datab => \io4|cmd_out\(35),
	datad => \io4|WideOr18~combout\,
	combout => \io4|cmd_out[36]~2_combout\);

-- Location: LCCOMB_X25_Y16_N26
\io4|address[28]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|address[28]~feeder_combout\ = \fData[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fData[3]~input_o\,
	combout => \io4|address[28]~feeder_combout\);

-- Location: FF_X25_Y16_N27
\io4|address[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb~0clkctrl_outclk\,
	d => \io4|address[28]~feeder_combout\,
	ena => \io4|address[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|address\(28));

-- Location: FF_X25_Y16_N1
\io4|cmd_out[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|cmd_out[36]~2_combout\,
	asdata => \io4|address\(28),
	sload => \io4|ALT_INV_Selector104~0_combout\,
	ena => \io4|cmd_out[55]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|cmd_out\(36));

-- Location: LCCOMB_X25_Y16_N10
\io4|cmd_out[37]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|cmd_out[37]~1_combout\ = (\io4|cmd_out[36]~38_combout\ & ((\io4|WideOr18~combout\))) # (!\io4|cmd_out[36]~38_combout\ & (\io4|cmd_out\(36)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|cmd_out[36]~38_combout\,
	datab => \io4|cmd_out\(36),
	datad => \io4|WideOr18~combout\,
	combout => \io4|cmd_out[37]~1_combout\);

-- Location: LCCOMB_X25_Y16_N14
\io4|address[29]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|address[29]~feeder_combout\ = \fData[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fData[4]~input_o\,
	combout => \io4|address[29]~feeder_combout\);

-- Location: FF_X25_Y16_N15
\io4|address[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb~0clkctrl_outclk\,
	d => \io4|address[29]~feeder_combout\,
	ena => \io4|address[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|address\(29));

-- Location: FF_X25_Y16_N11
\io4|cmd_out[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|cmd_out[37]~1_combout\,
	asdata => \io4|address\(29),
	sload => \io4|ALT_INV_Selector104~0_combout\,
	ena => \io4|cmd_out[55]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|cmd_out\(37));

-- Location: LCCOMB_X24_Y16_N30
\io4|Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector20~0_combout\ = (!\io4|WideOr29~2_combout\ & ((\io4|data_sig[7]~5_combout\ & ((\io4|cmd_out\(38)))) # (!\io4|data_sig[7]~5_combout\ & (\io4|cmd_out\(37)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|data_sig[7]~5_combout\,
	datab => \io4|WideOr29~2_combout\,
	datac => \io4|cmd_out\(37),
	datad => \io4|cmd_out\(38),
	combout => \io4|Selector20~0_combout\);

-- Location: FF_X24_Y19_N29
\io4|address[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb~0clkctrl_outclk\,
	asdata => \fData[5]~input_o\,
	sload => VCC,
	ena => \io4|address[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|address\(30));

-- Location: LCCOMB_X24_Y19_N28
\io4|Selector20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector20~1_combout\ = (\io4|state.acmd41~q\) # (((\io4|address\(30) & !\io4|Selector104~0_combout\)) # (!\io4|cmd_out[16]~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|state.acmd41~q\,
	datab => \io4|cmd_out[16]~36_combout\,
	datac => \io4|address\(30),
	datad => \io4|Selector104~0_combout\,
	combout => \io4|Selector20~1_combout\);

-- Location: LCCOMB_X24_Y16_N20
\io4|Selector20~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector20~2_combout\ = (\io4|Selector20~0_combout\) # ((\io4|Selector20~1_combout\) # ((\io4|cmd_out\(38) & !\io4|WideOr29~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|Selector20~0_combout\,
	datab => \io4|Selector20~1_combout\,
	datac => \io4|cmd_out\(38),
	datad => \io4|WideOr29~3_combout\,
	combout => \io4|Selector20~2_combout\);

-- Location: FF_X24_Y16_N21
\io4|cmd_out[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|Selector20~2_combout\,
	ena => \fnReset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|cmd_out\(38));

-- Location: LCCOMB_X25_Y16_N12
\io4|cmd_out[39]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|cmd_out[39]~0_combout\ = (\io4|cmd_out[36]~38_combout\ & ((\io4|WideOr18~combout\))) # (!\io4|cmd_out[36]~38_combout\ & (\io4|cmd_out\(38)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|cmd_out[36]~38_combout\,
	datab => \io4|cmd_out\(38),
	datad => \io4|WideOr18~combout\,
	combout => \io4|cmd_out[39]~0_combout\);

-- Location: LCCOMB_X25_Y16_N8
\io4|address[31]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|address[31]~feeder_combout\ = \fData[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fData[6]~input_o\,
	combout => \io4|address[31]~feeder_combout\);

-- Location: FF_X25_Y16_N9
\io4|address[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb~0clkctrl_outclk\,
	d => \io4|address[31]~feeder_combout\,
	ena => \io4|address[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|address\(31));

-- Location: FF_X25_Y16_N13
\io4|cmd_out[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|cmd_out[39]~0_combout\,
	asdata => \io4|address\(31),
	sload => \io4|ALT_INV_Selector104~0_combout\,
	ena => \io4|cmd_out[55]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|cmd_out\(39));

-- Location: LCCOMB_X24_Y16_N26
\io4|Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector18~0_combout\ = (!\io4|WideOr29~2_combout\ & ((\io4|data_sig[7]~5_combout\ & (\io4|cmd_out\(40))) # (!\io4|data_sig[7]~5_combout\ & ((\io4|cmd_out\(39))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|data_sig[7]~5_combout\,
	datab => \io4|cmd_out\(40),
	datac => \io4|WideOr29~2_combout\,
	datad => \io4|cmd_out\(39),
	combout => \io4|Selector18~0_combout\);

-- Location: LCCOMB_X24_Y20_N4
\io4|Selector18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector18~1_combout\ = (\io4|state.acmd41~q\) # ((\io4|state.read_block_cmd~q\) # (!\io4|WideOr28~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|state.acmd41~q\,
	datac => \io4|WideOr28~2_combout\,
	datad => \io4|state.read_block_cmd~q\,
	combout => \io4|Selector18~1_combout\);

-- Location: LCCOMB_X24_Y16_N14
\io4|Selector18~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector18~2_combout\ = (\io4|Selector18~0_combout\) # ((\io4|Selector18~1_combout\) # ((\io4|cmd_out\(40) & !\io4|WideOr29~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|Selector18~0_combout\,
	datab => \io4|Selector18~1_combout\,
	datac => \io4|cmd_out\(40),
	datad => \io4|WideOr29~3_combout\,
	combout => \io4|Selector18~2_combout\);

-- Location: FF_X24_Y16_N15
\io4|cmd_out[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|Selector18~2_combout\,
	ena => \fnReset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|cmd_out\(40));

-- Location: LCCOMB_X24_Y16_N16
\io4|Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector17~0_combout\ = (!\io4|WideOr29~2_combout\ & ((\io4|data_sig[7]~5_combout\ & ((\io4|cmd_out\(41)))) # (!\io4|data_sig[7]~5_combout\ & (\io4|cmd_out\(40)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|data_sig[7]~5_combout\,
	datab => \io4|cmd_out\(40),
	datac => \io4|WideOr29~2_combout\,
	datad => \io4|cmd_out\(41),
	combout => \io4|Selector17~0_combout\);

-- Location: LCCOMB_X24_Y16_N18
\io4|Selector17~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector17~2_combout\ = ((\io4|Selector17~0_combout\) # ((!\io4|WideOr29~3_combout\ & \io4|cmd_out\(41)))) # (!\io4|Selector17~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|WideOr29~3_combout\,
	datab => \io4|Selector17~1_combout\,
	datac => \io4|cmd_out\(41),
	datad => \io4|Selector17~0_combout\,
	combout => \io4|Selector17~2_combout\);

-- Location: FF_X24_Y16_N19
\io4|cmd_out[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|Selector17~2_combout\,
	ena => \fnReset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|cmd_out\(41));

-- Location: LCCOMB_X24_Y16_N28
\io4|Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector16~0_combout\ = (!\io4|WideOr29~2_combout\ & ((\io4|data_sig[7]~5_combout\ & (\io4|cmd_out\(42))) # (!\io4|data_sig[7]~5_combout\ & ((\io4|cmd_out\(41))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|cmd_out\(42),
	datab => \io4|cmd_out\(41),
	datac => \io4|WideOr29~2_combout\,
	datad => \io4|data_sig[7]~5_combout\,
	combout => \io4|Selector16~0_combout\);

-- Location: LCCOMB_X24_Y16_N6
\io4|Selector16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector16~1_combout\ = ((\io4|Selector16~0_combout\) # ((!\io4|WideOr29~3_combout\ & \io4|cmd_out\(42)))) # (!\io4|WideOr28~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|WideOr29~3_combout\,
	datab => \io4|WideOr28~2_combout\,
	datac => \io4|cmd_out\(42),
	datad => \io4|Selector16~0_combout\,
	combout => \io4|Selector16~1_combout\);

-- Location: FF_X24_Y16_N7
\io4|cmd_out[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|Selector16~1_combout\,
	ena => \fnReset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|cmd_out\(42));

-- Location: LCCOMB_X24_Y16_N8
\io4|Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector15~0_combout\ = (!\io4|WideOr29~2_combout\ & ((\io4|data_sig[7]~5_combout\ & ((\io4|cmd_out\(43)))) # (!\io4|data_sig[7]~5_combout\ & (\io4|cmd_out\(42)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|cmd_out\(42),
	datab => \io4|cmd_out\(43),
	datac => \io4|WideOr29~2_combout\,
	datad => \io4|data_sig[7]~5_combout\,
	combout => \io4|Selector15~0_combout\);

-- Location: LCCOMB_X24_Y19_N16
\io4|Selector15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector15~1_combout\ = (\io4|state.acmd41~q\) # ((\io4|state.write_block_cmd~q\) # ((!\io4|cmd_out[16]~36_combout\) # (!\io4|WideOr18~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|state.acmd41~q\,
	datab => \io4|state.write_block_cmd~q\,
	datac => \io4|WideOr18~0_combout\,
	datad => \io4|cmd_out[16]~36_combout\,
	combout => \io4|Selector15~1_combout\);

-- Location: LCCOMB_X24_Y16_N2
\io4|Selector15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector15~2_combout\ = (\io4|Selector15~0_combout\) # ((\io4|Selector15~1_combout\) # ((!\io4|WideOr29~3_combout\ & \io4|cmd_out\(43))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|WideOr29~3_combout\,
	datab => \io4|Selector15~0_combout\,
	datac => \io4|cmd_out\(43),
	datad => \io4|Selector15~1_combout\,
	combout => \io4|Selector15~2_combout\);

-- Location: FF_X24_Y16_N3
\io4|cmd_out[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|Selector15~2_combout\,
	ena => \fnReset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|cmd_out\(43));

-- Location: LCCOMB_X24_Y16_N12
\io4|Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector14~0_combout\ = (!\io4|WideOr29~2_combout\ & ((\io4|data_sig[7]~5_combout\ & ((\io4|cmd_out\(44)))) # (!\io4|data_sig[7]~5_combout\ & (\io4|cmd_out\(43)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|data_sig[7]~5_combout\,
	datab => \io4|cmd_out\(43),
	datac => \io4|WideOr29~2_combout\,
	datad => \io4|cmd_out\(44),
	combout => \io4|Selector14~0_combout\);

-- Location: LCCOMB_X21_Y16_N24
\io4|Selector14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector14~1_combout\ = (((\io4|state.cmd55~q\) # (\io4|state.cmd58~q\)) # (!\io4|Selector104~0_combout\)) # (!\io4|cmd_out[16]~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|cmd_out[16]~36_combout\,
	datab => \io4|Selector104~0_combout\,
	datac => \io4|state.cmd55~q\,
	datad => \io4|state.cmd58~q\,
	combout => \io4|Selector14~1_combout\);

-- Location: LCCOMB_X24_Y16_N24
\io4|Selector14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector14~2_combout\ = (\io4|Selector14~0_combout\) # ((\io4|Selector14~1_combout\) # ((\io4|cmd_out\(44) & !\io4|WideOr29~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|Selector14~0_combout\,
	datab => \io4|Selector14~1_combout\,
	datac => \io4|cmd_out\(44),
	datad => \io4|WideOr29~3_combout\,
	combout => \io4|Selector14~2_combout\);

-- Location: FF_X24_Y16_N25
\io4|cmd_out[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|Selector14~2_combout\,
	ena => \fnReset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|cmd_out\(44));

-- Location: LCCOMB_X24_Y20_N0
\io4|Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector13~0_combout\ = (!\io4|WideOr29~2_combout\ & ((\io4|data_sig[7]~5_combout\ & (\io4|cmd_out\(45))) # (!\io4|data_sig[7]~5_combout\ & ((\io4|cmd_out\(44))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|cmd_out\(45),
	datab => \io4|data_sig[7]~5_combout\,
	datac => \io4|WideOr29~2_combout\,
	datad => \io4|cmd_out\(44),
	combout => \io4|Selector13~0_combout\);

-- Location: LCCOMB_X24_Y20_N2
\io4|Selector13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector13~1_combout\ = (\io4|state.acmd41~q\) # ((\io4|state.cmd58~q\) # (!\io4|WideOr28~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|state.acmd41~q\,
	datac => \io4|WideOr28~2_combout\,
	datad => \io4|state.cmd58~q\,
	combout => \io4|Selector13~1_combout\);

-- Location: LCCOMB_X24_Y20_N30
\io4|Selector13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector13~2_combout\ = (\io4|Selector13~0_combout\) # ((\io4|Selector13~1_combout\) # ((!\io4|WideOr29~3_combout\ & \io4|cmd_out\(45))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|WideOr29~3_combout\,
	datab => \io4|Selector13~0_combout\,
	datac => \io4|cmd_out\(45),
	datad => \io4|Selector13~1_combout\,
	combout => \io4|Selector13~2_combout\);

-- Location: FF_X24_Y20_N31
\io4|cmd_out[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|Selector13~2_combout\,
	ena => \fnReset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|cmd_out\(45));

-- Location: LCCOMB_X24_Y20_N26
\io4|Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector12~0_combout\ = (\io4|cmd_out\(45)) # ((!\io4|WideOr28~2_combout\) # (!\io4|WideOr28~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|cmd_out\(45),
	datab => \io4|WideOr28~3_combout\,
	datac => \io4|WideOr28~2_combout\,
	combout => \io4|Selector12~0_combout\);

-- Location: FF_X24_Y20_N27
\io4|cmd_out[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|Selector12~0_combout\,
	ena => \io4|cmd_out[55]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|cmd_out\(46));

-- Location: LCCOMB_X24_Y20_N28
\io4|Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector11~0_combout\ = (!\io4|WideOr29~2_combout\ & ((\io4|data_sig[7]~5_combout\ & ((\io4|cmd_out\(47)))) # (!\io4|data_sig[7]~5_combout\ & (\io4|cmd_out\(46)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|cmd_out\(46),
	datab => \io4|data_sig[7]~5_combout\,
	datac => \io4|WideOr29~2_combout\,
	datad => \io4|cmd_out\(47),
	combout => \io4|Selector11~0_combout\);

-- Location: LCCOMB_X24_Y20_N16
\io4|Selector11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector11~1_combout\ = ((\io4|Selector11~0_combout\) # ((\io4|cmd_out\(47) & !\io4|WideOr29~3_combout\))) # (!\io4|cmd_out[16]~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|cmd_out[16]~36_combout\,
	datab => \io4|Selector11~0_combout\,
	datac => \io4|cmd_out\(47),
	datad => \io4|WideOr29~3_combout\,
	combout => \io4|Selector11~1_combout\);

-- Location: FF_X24_Y20_N17
\io4|cmd_out[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|Selector11~1_combout\,
	ena => \fnReset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|cmd_out\(47));

-- Location: LCCOMB_X24_Y20_N22
\io4|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector10~0_combout\ = ((\io4|cmd_out\(47)) # (!\io4|WideOr28~2_combout\)) # (!\io4|WideOr28~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \io4|WideOr28~3_combout\,
	datac => \io4|WideOr28~2_combout\,
	datad => \io4|cmd_out\(47),
	combout => \io4|Selector10~0_combout\);

-- Location: FF_X24_Y20_N23
\io4|cmd_out[48]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|Selector10~0_combout\,
	ena => \io4|cmd_out[55]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|cmd_out\(48));

-- Location: LCCOMB_X24_Y20_N20
\io4|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector9~0_combout\ = (\io4|cmd_out\(48)) # ((!\io4|WideOr28~2_combout\) # (!\io4|WideOr28~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|cmd_out\(48),
	datab => \io4|WideOr28~3_combout\,
	datac => \io4|WideOr28~2_combout\,
	combout => \io4|Selector9~0_combout\);

-- Location: FF_X24_Y20_N21
\io4|cmd_out[49]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|Selector9~0_combout\,
	ena => \io4|cmd_out[55]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|cmd_out\(49));

-- Location: LCCOMB_X24_Y20_N18
\io4|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector8~0_combout\ = ((\io4|cmd_out\(49)) # (!\io4|WideOr28~2_combout\)) # (!\io4|WideOr28~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \io4|WideOr28~3_combout\,
	datac => \io4|WideOr28~2_combout\,
	datad => \io4|cmd_out\(49),
	combout => \io4|Selector8~0_combout\);

-- Location: FF_X24_Y20_N19
\io4|cmd_out[50]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|Selector8~0_combout\,
	ena => \io4|cmd_out[55]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|cmd_out\(50));

-- Location: LCCOMB_X24_Y20_N8
\io4|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector7~0_combout\ = ((\io4|cmd_out\(50)) # (!\io4|WideOr28~2_combout\)) # (!\io4|WideOr28~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \io4|WideOr28~3_combout\,
	datac => \io4|WideOr28~2_combout\,
	datad => \io4|cmd_out\(50),
	combout => \io4|Selector7~0_combout\);

-- Location: FF_X24_Y20_N9
\io4|cmd_out[51]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|Selector7~0_combout\,
	ena => \io4|cmd_out[55]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|cmd_out\(51));

-- Location: LCCOMB_X24_Y20_N14
\io4|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector6~0_combout\ = ((\io4|cmd_out\(51)) # (!\io4|WideOr28~3_combout\)) # (!\io4|WideOr28~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \io4|WideOr28~2_combout\,
	datac => \io4|cmd_out\(51),
	datad => \io4|WideOr28~3_combout\,
	combout => \io4|Selector6~0_combout\);

-- Location: FF_X24_Y20_N15
\io4|cmd_out[52]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|Selector6~0_combout\,
	ena => \io4|cmd_out[55]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|cmd_out\(52));

-- Location: LCCOMB_X24_Y20_N12
\io4|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector5~0_combout\ = ((\io4|cmd_out\(52)) # (!\io4|WideOr28~3_combout\)) # (!\io4|WideOr28~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \io4|WideOr28~2_combout\,
	datac => \io4|cmd_out\(52),
	datad => \io4|WideOr28~3_combout\,
	combout => \io4|Selector5~0_combout\);

-- Location: FF_X24_Y20_N13
\io4|cmd_out[53]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|Selector5~0_combout\,
	ena => \io4|cmd_out[55]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|cmd_out\(53));

-- Location: LCCOMB_X24_Y20_N10
\io4|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector4~0_combout\ = ((\io4|cmd_out\(53)) # (!\io4|WideOr28~2_combout\)) # (!\io4|WideOr28~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \io4|WideOr28~3_combout\,
	datac => \io4|WideOr28~2_combout\,
	datad => \io4|cmd_out\(53),
	combout => \io4|Selector4~0_combout\);

-- Location: FF_X24_Y20_N11
\io4|cmd_out[54]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|Selector4~0_combout\,
	ena => \io4|cmd_out[55]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|cmd_out\(54));

-- Location: LCCOMB_X24_Y20_N24
\io4|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Selector3~0_combout\ = ((\io4|cmd_out\(54)) # (!\io4|WideOr28~2_combout\)) # (!\io4|WideOr28~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \io4|WideOr28~3_combout\,
	datac => \io4|WideOr28~2_combout\,
	datad => \io4|cmd_out\(54),
	combout => \io4|Selector3~0_combout\);

-- Location: FF_X24_Y20_N25
\io4|cmd_out[55]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|Selector3~0_combout\,
	ena => \io4|cmd_out[55]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|cmd_out\(55));

-- Location: LCCOMB_X23_Y16_N26
\io4|sdMOSI~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|sdMOSI~0_combout\ = (\io4|cmd_mode~q\ & (\io4|data_sig\(7))) # (!\io4|cmd_mode~q\ & ((\io4|cmd_out\(55))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|data_sig\(7),
	datab => \io4|cmd_mode~q\,
	datad => \io4|cmd_out\(55),
	combout => \io4|sdMOSI~0_combout\);

-- Location: LCCOMB_X16_Y23_N4
\io4|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|LessThan1~1_combout\ = ((\io4|led_on_count\(0)) # ((\io4|led_on_count\(1)) # (\io4|led_on_count\(2)))) # (!\io4|led_on_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|led_on_count\(3),
	datab => \io4|led_on_count\(0),
	datac => \io4|led_on_count\(1),
	datad => \io4|led_on_count\(2),
	combout => \io4|LessThan1~1_combout\);

-- Location: LCCOMB_X16_Y23_N0
\io4|led_on_count[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|led_on_count[0]~0_combout\ = \io4|led_on_count\(0) $ (((\io4|LessThan1~0_combout\) # (\io4|LessThan1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|LessThan1~0_combout\,
	datab => \io4|LessThan1~1_combout\,
	datac => \io4|led_on_count\(0),
	combout => \io4|led_on_count[0]~0_combout\);

-- Location: LCCOMB_X19_Y19_N0
\io4|ctl_led~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|ctl_led~0_combout\ = (\io4|block_busy~q\) # (!\io4|init_busy~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \io4|block_busy~q\,
	datad => \io4|init_busy~q\,
	combout => \io4|ctl_led~0_combout\);

-- Location: FF_X16_Y23_N1
\io4|led_on_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|led_on_count[0]~0_combout\,
	clrn => \io4|ALT_INV_ctl_led~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|led_on_count\(0));

-- Location: LCCOMB_X16_Y23_N14
\io4|Add2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Add2~1_cout\ = CARRY(\io4|led_on_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \io4|led_on_count\(0),
	datad => VCC,
	cout => \io4|Add2~1_cout\);

-- Location: LCCOMB_X16_Y23_N16
\io4|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Add2~2_combout\ = (\io4|led_on_count\(1) & (\io4|Add2~1_cout\ & VCC)) # (!\io4|led_on_count\(1) & (!\io4|Add2~1_cout\))
-- \io4|Add2~3\ = CARRY((!\io4|led_on_count\(1) & !\io4|Add2~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \io4|led_on_count\(1),
	datad => VCC,
	cin => \io4|Add2~1_cout\,
	combout => \io4|Add2~2_combout\,
	cout => \io4|Add2~3\);

-- Location: FF_X16_Y23_N17
\io4|led_on_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|Add2~2_combout\,
	clrn => \io4|ALT_INV_ctl_led~0_combout\,
	ena => \io4|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|led_on_count\(1));

-- Location: LCCOMB_X16_Y23_N18
\io4|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Add2~4_combout\ = (\io4|led_on_count\(2) & ((GND) # (!\io4|Add2~3\))) # (!\io4|led_on_count\(2) & (\io4|Add2~3\ $ (GND)))
-- \io4|Add2~5\ = CARRY((\io4|led_on_count\(2)) # (!\io4|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \io4|led_on_count\(2),
	datad => VCC,
	cin => \io4|Add2~3\,
	combout => \io4|Add2~4_combout\,
	cout => \io4|Add2~5\);

-- Location: FF_X16_Y23_N19
\io4|led_on_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|Add2~4_combout\,
	clrn => \io4|ALT_INV_ctl_led~0_combout\,
	ena => \io4|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|led_on_count\(2));

-- Location: LCCOMB_X16_Y23_N20
\io4|Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Add2~6_combout\ = (\io4|led_on_count\(3) & (!\io4|Add2~5\)) # (!\io4|led_on_count\(3) & (\io4|Add2~5\ & VCC))
-- \io4|Add2~7\ = CARRY((\io4|led_on_count\(3) & !\io4|Add2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \io4|led_on_count\(3),
	datad => VCC,
	cin => \io4|Add2~5\,
	combout => \io4|Add2~6_combout\,
	cout => \io4|Add2~7\);

-- Location: LCCOMB_X16_Y23_N10
\io4|led_on_count[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|led_on_count[3]~3_combout\ = !\io4|Add2~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \io4|Add2~6_combout\,
	combout => \io4|led_on_count[3]~3_combout\);

-- Location: FF_X16_Y23_N11
\io4|led_on_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|led_on_count[3]~3_combout\,
	clrn => \io4|ALT_INV_ctl_led~0_combout\,
	ena => \io4|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|led_on_count\(3));

-- Location: LCCOMB_X16_Y23_N22
\io4|Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Add2~8_combout\ = (\io4|led_on_count\(4) & ((GND) # (!\io4|Add2~7\))) # (!\io4|led_on_count\(4) & (\io4|Add2~7\ $ (GND)))
-- \io4|Add2~9\ = CARRY((\io4|led_on_count\(4)) # (!\io4|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \io4|led_on_count\(4),
	datad => VCC,
	cin => \io4|Add2~7\,
	combout => \io4|Add2~8_combout\,
	cout => \io4|Add2~9\);

-- Location: FF_X16_Y23_N23
\io4|led_on_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|Add2~8_combout\,
	clrn => \io4|ALT_INV_ctl_led~0_combout\,
	ena => \io4|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|led_on_count\(4));

-- Location: LCCOMB_X16_Y23_N24
\io4|Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Add2~10_combout\ = (\io4|led_on_count\(5) & (\io4|Add2~9\ & VCC)) # (!\io4|led_on_count\(5) & (!\io4|Add2~9\))
-- \io4|Add2~11\ = CARRY((!\io4|led_on_count\(5) & !\io4|Add2~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \io4|led_on_count\(5),
	datad => VCC,
	cin => \io4|Add2~9\,
	combout => \io4|Add2~10_combout\,
	cout => \io4|Add2~11\);

-- Location: FF_X16_Y23_N25
\io4|led_on_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|Add2~10_combout\,
	clrn => \io4|ALT_INV_ctl_led~0_combout\,
	ena => \io4|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|led_on_count\(5));

-- Location: LCCOMB_X16_Y23_N26
\io4|Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Add2~12_combout\ = (\io4|led_on_count\(6) & (\io4|Add2~11\ $ (GND))) # (!\io4|led_on_count\(6) & ((GND) # (!\io4|Add2~11\)))
-- \io4|Add2~13\ = CARRY((!\io4|Add2~11\) # (!\io4|led_on_count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \io4|led_on_count\(6),
	datad => VCC,
	cin => \io4|Add2~11\,
	combout => \io4|Add2~12_combout\,
	cout => \io4|Add2~13\);

-- Location: LCCOMB_X16_Y23_N12
\io4|led_on_count[6]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|led_on_count[6]~2_combout\ = !\io4|Add2~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \io4|Add2~12_combout\,
	combout => \io4|led_on_count[6]~2_combout\);

-- Location: FF_X16_Y23_N13
\io4|led_on_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|led_on_count[6]~2_combout\,
	clrn => \io4|ALT_INV_ctl_led~0_combout\,
	ena => \io4|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|led_on_count\(6));

-- Location: LCCOMB_X16_Y23_N28
\io4|Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|Add2~14_combout\ = \io4|Add2~13\ $ (\io4|led_on_count\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \io4|led_on_count\(7),
	cin => \io4|Add2~13\,
	combout => \io4|Add2~14_combout\);

-- Location: LCCOMB_X16_Y23_N2
\io4|led_on_count[7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|led_on_count[7]~1_combout\ = !\io4|Add2~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \io4|Add2~14_combout\,
	combout => \io4|led_on_count[7]~1_combout\);

-- Location: FF_X16_Y23_N3
\io4|led_on_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|led_on_count[7]~1_combout\,
	clrn => \io4|ALT_INV_ctl_led~0_combout\,
	ena => \io4|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|led_on_count\(7));

-- Location: LCCOMB_X16_Y23_N30
\io4|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|LessThan1~0_combout\ = (((\io4|led_on_count\(4)) # (\io4|led_on_count\(5))) # (!\io4|led_on_count\(7))) # (!\io4|led_on_count\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|led_on_count\(6),
	datab => \io4|led_on_count\(7),
	datac => \io4|led_on_count\(4),
	datad => \io4|led_on_count\(5),
	combout => \io4|LessThan1~0_combout\);

-- Location: LCCOMB_X16_Y23_N6
\io4|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|LessThan1~2_combout\ = (\io4|LessThan1~0_combout\) # (\io4|LessThan1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io4|LessThan1~0_combout\,
	datac => \io4|LessThan1~1_combout\,
	combout => \io4|LessThan1~2_combout\);

-- Location: LCCOMB_X16_Y23_N8
\io4|driveLED~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \io4|driveLED~0_combout\ = !\io4|LessThan1~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \io4|LessThan1~2_combout\,
	combout => \io4|driveLED~0_combout\);

-- Location: FF_X16_Y23_N9
\io4|driveLED\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fnClk~input_o\,
	d => \io4|driveLED~0_combout\,
	clrn => \io4|ALT_INV_ctl_led~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io4|driveLED~q\);

-- Location: LCCOMB_X25_Y12_N30
\io2|dataOut[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \io2|dataOut\(0) = ((GLOBAL(\io2|process_0~0clkctrl_outclk\) & (!\fData[0]~input_o\)) # (!GLOBAL(\io2|process_0~0clkctrl_outclk\) & ((\io2|dataOut\(0))))) # (!\fnReset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fData[0]~input_o\,
	datab => \io2|process_0~0clkctrl_outclk\,
	datac => \io2|dataOut\(0),
	datad => \fnReset~input_o\,
	combout => \io2|dataOut\(0));

-- Location: LCCOMB_X25_Y12_N24
\io2|dataOut[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \io2|dataOut\(1) = ((GLOBAL(\io2|process_0~0clkctrl_outclk\) & (!\fData[1]~input_o\)) # (!GLOBAL(\io2|process_0~0clkctrl_outclk\) & ((\io2|dataOut\(1))))) # (!\fnReset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fnReset~input_o\,
	datab => \fData[1]~input_o\,
	datac => \io2|process_0~0clkctrl_outclk\,
	datad => \io2|dataOut\(1),
	combout => \io2|dataOut\(1));

-- Location: LCCOMB_X19_Y15_N0
\io2|dataOut[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \io2|dataOut\(2) = ((GLOBAL(\io2|process_0~0clkctrl_outclk\) & (!\fData[2]~input_o\)) # (!GLOBAL(\io2|process_0~0clkctrl_outclk\) & ((\io2|dataOut\(2))))) # (!\fnReset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fnReset~input_o\,
	datab => \fData[2]~input_o\,
	datac => \io2|process_0~0clkctrl_outclk\,
	datad => \io2|dataOut\(2),
	combout => \io2|dataOut\(2));

-- Location: IOIBUF_X34_Y9_N22
\fAddress[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fAddress(8),
	o => \fAddress[8]~input_o\);

-- Location: IOIBUF_X34_Y7_N8
\fAddress[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fAddress(9),
	o => \fAddress[9]~input_o\);

-- Location: IOIBUF_X0_Y5_N15
\fAddress[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fAddress(10),
	o => \fAddress[10]~input_o\);

-- Location: IOIBUF_X0_Y6_N22
\fAddress[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fAddress(11),
	o => \fAddress[11]~input_o\);

-- Location: IOIBUF_X1_Y0_N22
\fAddress[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fAddress(12),
	o => \fAddress[12]~input_o\);

-- Location: IOIBUF_X1_Y0_N15
\fAddress[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fAddress(13),
	o => \fAddress[13]~input_o\);

-- Location: IOIBUF_X0_Y7_N1
\fAddress[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fAddress(14),
	o => \fAddress[14]~input_o\);

-- Location: IOIBUF_X0_Y6_N15
\fAddress[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fAddress(15),
	o => \fAddress[15]~input_o\);

-- Location: IOIBUF_X0_Y8_N15
\fnRfsh~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fnRfsh,
	o => \fnRfsh~input_o\);

-- Location: IOIBUF_X0_Y9_N8
\fnHalt~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fnHalt,
	o => \fnHalt~input_o\);

-- Location: IOIBUF_X1_Y24_N8
\fnM1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fnM1,
	o => \fnM1~input_o\);

-- Location: IOIBUF_X0_Y23_N1
\fnMemrq~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fnMemrq,
	o => \fnMemrq~input_o\);

-- Location: IOIBUF_X3_Y24_N22
\fnBusack~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fnBusack,
	o => \fnBusack~input_o\);

-- Location: IOIBUF_X7_Y24_N8
\fnWait~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fnWait,
	o => \fnWait~input_o\);

-- Location: IOIBUF_X5_Y24_N8
\fnInt~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fnInt,
	o => \fnInt~input_o\);

-- Location: IOIBUF_X9_Y24_N8
\fnNmi~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fnNmi,
	o => \fnNmi~input_o\);

-- Location: IOIBUF_X7_Y24_N1
\fnBusreq~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fnBusreq,
	o => \fnBusreq~input_o\);

-- Location: IOIBUF_X28_Y24_N8
\fSpare1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fSpare1,
	o => \fSpare1~input_o\);

-- Location: IOIBUF_X28_Y24_N22
\fSpare2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fSpare2,
	o => \fSpare2~input_o\);

-- Location: IOIBUF_X23_Y24_N8
\fSpare3~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fSpare3,
	o => \fSpare3~input_o\);

-- Location: IOIBUF_X18_Y24_N15
\fSpare4~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fSpare4,
	o => \fSpare4~input_o\);

-- Location: IOIBUF_X13_Y24_N15
\fSpare5~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fSpare5,
	o => \fSpare5~input_o\);

-- Location: IOIBUF_X16_Y24_N15
\fSpare6~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fSpare6,
	o => \fSpare6~input_o\);

-- Location: IOIBUF_X16_Y24_N1
\fSpare7~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fSpare7,
	o => \fSpare7~input_o\);

-- Location: IOIBUF_X34_Y17_N1
\fIn1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fIn1,
	o => \fIn1~input_o\);

-- Location: IOIBUF_X34_Y18_N15
\fIn2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fIn2,
	o => \fIn2~input_o\);

-- Location: IOIBUF_X34_Y19_N15
\fIn3~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fIn3,
	o => \fIn3~input_o\);

-- Location: IOIBUF_X30_Y24_N1
\fIn4~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fIn4,
	o => \fIn4~input_o\);

-- Location: IOIBUF_X28_Y24_N1
\fIn5~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fIn5,
	o => \fIn5~input_o\);

-- Location: IOIBUF_X28_Y24_N15
\fIn6~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fIn6,
	o => \fIn6~input_o\);

-- Location: IOIBUF_X23_Y24_N1
\fIn7~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fIn7,
	o => \fIn7~input_o\);

-- Location: IOIBUF_X23_Y24_N15
\fIn8~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fIn8,
	o => \fIn8~input_o\);

-- Location: IOIBUF_X23_Y0_N15
\fAltclk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fAltclk,
	o => \fAltclk~input_o\);

-- Location: IOIBUF_X34_Y9_N8
\fPS2_dat~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fPS2_dat,
	o => \fPS2_dat~input_o\);

ww_fAddr_dir <= \fAddr_dir~output_o\;

ww_fData_dir <= \fData_dir~output_o\;

ww_fCtrlout_dir <= \fCtrlout_dir~output_o\;

ww_fCtrlin_dir <= \fCtrlin_dir~output_o\;

ww_fClkrst_dir <= \fClkrst_dir~output_o\;

ww_fTxd <= \fTxd~output_o\;

ww_fSD_CS <= \fSD_CS~output_o\;

ww_fSD_DI <= \fSD_DI~output_o\;

ww_fSD_CLK <= \fSD_CLK~output_o\;

ww_fPS2_clk <= \fPS2_clk~output_o\;

ww_fMA14_18(0) <= \fMA14_18[0]~output_o\;

ww_fMA14_18(1) <= \fMA14_18[1]~output_o\;

ww_fMA14_18(2) <= \fMA14_18[2]~output_o\;

ww_fMA14_18(3) <= \fMA14_18[3]~output_o\;

ww_fMA14_18(4) <= \fMA14_18[4]~output_o\;

ww_fMem_CE0 <= \fMem_CE0~output_o\;

ww_fMem_CE1 <= \fMem_CE1~output_o\;

ww_LEDs(0) <= \LEDs[0]~output_o\;

ww_LEDs(1) <= \LEDs[1]~output_o\;

ww_LEDs(2) <= \LEDs[2]~output_o\;

ww_LEDs(3) <= \LEDs[3]~output_o\;

fData(0) <= \fData[0]~output_o\;

fData(1) <= \fData[1]~output_o\;

fData(2) <= \fData[2]~output_o\;

fData(3) <= \fData[3]~output_o\;

fData(4) <= \fData[4]~output_o\;

fData(5) <= \fData[5]~output_o\;

fData(6) <= \fData[6]~output_o\;

fData(7) <= \fData[7]~output_o\;
END structure;



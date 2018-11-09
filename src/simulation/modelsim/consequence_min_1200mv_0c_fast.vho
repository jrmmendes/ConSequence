-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.1.0 Build 590 10/25/2017 SJ Lite Edition"

-- DATE "11/07/2018 12:09:48"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ir_driver_test IS
    PORT (
	LEDG : OUT std_logic_vector(7 DOWNTO 0);
	IRDA_RXD : IN std_logic;
	CLOCK_50 : IN std_logic;
	LEDR0 : OUT std_logic;
	LEDR17 : OUT std_logic;
	LEDR16 : OUT std_logic;
	LEDR15 : OUT std_logic;
	LEDR14 : OUT std_logic
	);
END ir_driver_test;

-- Design Ports Information
-- LEDG[7]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[6]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[5]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[4]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[3]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[2]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR0	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR17	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR16	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR15	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR14	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IRDA_RXD	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ir_driver_test IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_LEDG : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_IRDA_RXD : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_LEDR0 : std_logic;
SIGNAL ww_LEDR17 : std_logic;
SIGNAL ww_LEDR16 : std_logic;
SIGNAL ww_LEDR15 : std_logic;
SIGNAL ww_LEDR14 : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LEDG[7]~output_o\ : std_logic;
SIGNAL \LEDG[6]~output_o\ : std_logic;
SIGNAL \LEDG[5]~output_o\ : std_logic;
SIGNAL \LEDG[4]~output_o\ : std_logic;
SIGNAL \LEDG[3]~output_o\ : std_logic;
SIGNAL \LEDG[2]~output_o\ : std_logic;
SIGNAL \LEDG[1]~output_o\ : std_logic;
SIGNAL \LEDG[0]~output_o\ : std_logic;
SIGNAL \LEDR0~output_o\ : std_logic;
SIGNAL \LEDR17~output_o\ : std_logic;
SIGNAL \LEDR16~output_o\ : std_logic;
SIGNAL \LEDR15~output_o\ : std_logic;
SIGNAL \LEDR14~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|number_of_bits[0]~32_combout\ : std_logic;
SIGNAL \inst|number_of_bits[1]~35\ : std_logic;
SIGNAL \inst|number_of_bits[2]~38_combout\ : std_logic;
SIGNAL \inst|Equal0~0_combout\ : std_logic;
SIGNAL \inst|Equal0~1_combout\ : std_logic;
SIGNAL \inst|Equal0~2_combout\ : std_logic;
SIGNAL \inst|Equal0~3_combout\ : std_logic;
SIGNAL \inst|number_of_bits[25]~36_combout\ : std_logic;
SIGNAL \inst|number_of_bits[15]~65\ : std_logic;
SIGNAL \inst|number_of_bits[16]~66_combout\ : std_logic;
SIGNAL \inst|number_of_bits[16]~67\ : std_logic;
SIGNAL \inst|number_of_bits[17]~68_combout\ : std_logic;
SIGNAL \inst|number_of_bits[17]~69\ : std_logic;
SIGNAL \inst|number_of_bits[18]~70_combout\ : std_logic;
SIGNAL \inst|number_of_bits[18]~71\ : std_logic;
SIGNAL \inst|number_of_bits[19]~72_combout\ : std_logic;
SIGNAL \inst|Equal0~5_combout\ : std_logic;
SIGNAL \inst|number_of_bits[19]~73\ : std_logic;
SIGNAL \inst|number_of_bits[20]~74_combout\ : std_logic;
SIGNAL \inst|number_of_bits[20]~75\ : std_logic;
SIGNAL \inst|number_of_bits[21]~76_combout\ : std_logic;
SIGNAL \inst|number_of_bits[21]~77\ : std_logic;
SIGNAL \inst|number_of_bits[22]~78_combout\ : std_logic;
SIGNAL \inst|number_of_bits[22]~79\ : std_logic;
SIGNAL \inst|number_of_bits[23]~80_combout\ : std_logic;
SIGNAL \inst|number_of_bits[23]~81\ : std_logic;
SIGNAL \inst|number_of_bits[24]~82_combout\ : std_logic;
SIGNAL \inst|number_of_bits[24]~83\ : std_logic;
SIGNAL \inst|number_of_bits[25]~84_combout\ : std_logic;
SIGNAL \inst|number_of_bits[25]~85\ : std_logic;
SIGNAL \inst|number_of_bits[26]~86_combout\ : std_logic;
SIGNAL \inst|number_of_bits[26]~87\ : std_logic;
SIGNAL \inst|number_of_bits[27]~88_combout\ : std_logic;
SIGNAL \inst|Equal0~7_combout\ : std_logic;
SIGNAL \inst|Equal0~6_combout\ : std_logic;
SIGNAL \inst|number_of_bits[27]~89\ : std_logic;
SIGNAL \inst|number_of_bits[28]~90_combout\ : std_logic;
SIGNAL \inst|number_of_bits[28]~91\ : std_logic;
SIGNAL \inst|number_of_bits[29]~92_combout\ : std_logic;
SIGNAL \inst|number_of_bits[29]~93\ : std_logic;
SIGNAL \inst|number_of_bits[30]~94_combout\ : std_logic;
SIGNAL \inst|number_of_bits[30]~95\ : std_logic;
SIGNAL \inst|number_of_bits[31]~96_combout\ : std_logic;
SIGNAL \inst|Equal0~8_combout\ : std_logic;
SIGNAL \inst|Equal0~9_combout\ : std_logic;
SIGNAL \inst|number_of_bits[25]~37_combout\ : std_logic;
SIGNAL \inst|number_of_bits[2]~39\ : std_logic;
SIGNAL \inst|number_of_bits[3]~40_combout\ : std_logic;
SIGNAL \inst|number_of_bits[3]~41\ : std_logic;
SIGNAL \inst|number_of_bits[4]~42_combout\ : std_logic;
SIGNAL \inst|number_of_bits[4]~43\ : std_logic;
SIGNAL \inst|number_of_bits[5]~44_combout\ : std_logic;
SIGNAL \inst|number_of_bits[5]~45\ : std_logic;
SIGNAL \inst|number_of_bits[6]~46_combout\ : std_logic;
SIGNAL \inst|number_of_bits[6]~47\ : std_logic;
SIGNAL \inst|number_of_bits[7]~48_combout\ : std_logic;
SIGNAL \inst|number_of_bits[7]~49\ : std_logic;
SIGNAL \inst|number_of_bits[8]~50_combout\ : std_logic;
SIGNAL \inst|number_of_bits[8]~51\ : std_logic;
SIGNAL \inst|number_of_bits[9]~52_combout\ : std_logic;
SIGNAL \inst|number_of_bits[9]~53\ : std_logic;
SIGNAL \inst|number_of_bits[10]~54_combout\ : std_logic;
SIGNAL \inst|number_of_bits[10]~55\ : std_logic;
SIGNAL \inst|number_of_bits[11]~56_combout\ : std_logic;
SIGNAL \inst|number_of_bits[11]~57\ : std_logic;
SIGNAL \inst|number_of_bits[12]~58_combout\ : std_logic;
SIGNAL \inst|number_of_bits[12]~59\ : std_logic;
SIGNAL \inst|number_of_bits[13]~60_combout\ : std_logic;
SIGNAL \inst|number_of_bits[13]~61\ : std_logic;
SIGNAL \inst|number_of_bits[14]~62_combout\ : std_logic;
SIGNAL \inst|number_of_bits[14]~63\ : std_logic;
SIGNAL \inst|number_of_bits[15]~64_combout\ : std_logic;
SIGNAL \inst|Equal0~4_combout\ : std_logic;
SIGNAL \inst|Equal0~10_combout\ : std_logic;
SIGNAL \IRDA_RXD~input_o\ : std_logic;
SIGNAL \inst|counter[0]~32_combout\ : std_logic;
SIGNAL \inst|WideOr3~1_combout\ : std_logic;
SIGNAL \inst|counter[0]~33\ : std_logic;
SIGNAL \inst|counter[1]~34_combout\ : std_logic;
SIGNAL \inst|counter[1]~35\ : std_logic;
SIGNAL \inst|counter[2]~36_combout\ : std_logic;
SIGNAL \inst|counter[2]~37\ : std_logic;
SIGNAL \inst|counter[3]~38_combout\ : std_logic;
SIGNAL \inst|counter[3]~39\ : std_logic;
SIGNAL \inst|counter[4]~40_combout\ : std_logic;
SIGNAL \inst|counter[4]~41\ : std_logic;
SIGNAL \inst|counter[5]~42_combout\ : std_logic;
SIGNAL \inst|counter[5]~43\ : std_logic;
SIGNAL \inst|counter[6]~44_combout\ : std_logic;
SIGNAL \inst|counter[6]~45\ : std_logic;
SIGNAL \inst|counter[7]~46_combout\ : std_logic;
SIGNAL \inst|counter[7]~47\ : std_logic;
SIGNAL \inst|counter[8]~48_combout\ : std_logic;
SIGNAL \inst|counter[8]~49\ : std_logic;
SIGNAL \inst|counter[9]~50_combout\ : std_logic;
SIGNAL \inst|counter[9]~51\ : std_logic;
SIGNAL \inst|counter[10]~52_combout\ : std_logic;
SIGNAL \inst|counter[10]~53\ : std_logic;
SIGNAL \inst|counter[11]~54_combout\ : std_logic;
SIGNAL \inst|counter[11]~55\ : std_logic;
SIGNAL \inst|counter[12]~56_combout\ : std_logic;
SIGNAL \inst|counter[12]~57\ : std_logic;
SIGNAL \inst|counter[13]~58_combout\ : std_logic;
SIGNAL \inst|counter[13]~59\ : std_logic;
SIGNAL \inst|counter[14]~60_combout\ : std_logic;
SIGNAL \inst|counter[14]~61\ : std_logic;
SIGNAL \inst|counter[15]~62_combout\ : std_logic;
SIGNAL \inst|counter[15]~63\ : std_logic;
SIGNAL \inst|counter[16]~64_combout\ : std_logic;
SIGNAL \inst|counter[16]~65\ : std_logic;
SIGNAL \inst|counter[17]~66_combout\ : std_logic;
SIGNAL \inst|LessThan0~8_combout\ : std_logic;
SIGNAL \inst|LessThan0~9_combout\ : std_logic;
SIGNAL \inst|counter[17]~67\ : std_logic;
SIGNAL \inst|counter[18]~68_combout\ : std_logic;
SIGNAL \inst|counter[18]~69\ : std_logic;
SIGNAL \inst|counter[19]~70_combout\ : std_logic;
SIGNAL \inst|counter[19]~71\ : std_logic;
SIGNAL \inst|counter[20]~72_combout\ : std_logic;
SIGNAL \inst|counter[20]~73\ : std_logic;
SIGNAL \inst|counter[21]~74_combout\ : std_logic;
SIGNAL \inst|counter[21]~75\ : std_logic;
SIGNAL \inst|counter[22]~76_combout\ : std_logic;
SIGNAL \inst|counter[22]~77\ : std_logic;
SIGNAL \inst|counter[23]~78_combout\ : std_logic;
SIGNAL \inst|counter[23]~79\ : std_logic;
SIGNAL \inst|counter[24]~80_combout\ : std_logic;
SIGNAL \inst|counter[24]~81\ : std_logic;
SIGNAL \inst|counter[25]~82_combout\ : std_logic;
SIGNAL \inst|counter[25]~83\ : std_logic;
SIGNAL \inst|counter[26]~84_combout\ : std_logic;
SIGNAL \inst|counter[26]~85\ : std_logic;
SIGNAL \inst|counter[27]~86_combout\ : std_logic;
SIGNAL \inst|counter[27]~87\ : std_logic;
SIGNAL \inst|counter[28]~88_combout\ : std_logic;
SIGNAL \inst|counter[28]~89\ : std_logic;
SIGNAL \inst|counter[29]~90_combout\ : std_logic;
SIGNAL \inst|counter[29]~91\ : std_logic;
SIGNAL \inst|counter[30]~92_combout\ : std_logic;
SIGNAL \inst|counter[30]~93\ : std_logic;
SIGNAL \inst|counter[31]~94_combout\ : std_logic;
SIGNAL \inst|LessThan0~6_combout\ : std_logic;
SIGNAL \inst|LessThan0~5_combout\ : std_logic;
SIGNAL \inst|LessThan0~4_combout\ : std_logic;
SIGNAL \inst|LessThan0~7_combout\ : std_logic;
SIGNAL \inst|LessThan0~2_combout\ : std_logic;
SIGNAL \inst|LessThan0~0_combout\ : std_logic;
SIGNAL \inst|LessThan0~1_combout\ : std_logic;
SIGNAL \inst|LessThan0~3_combout\ : std_logic;
SIGNAL \inst|LessThan0~10_combout\ : std_logic;
SIGNAL \inst|Selector3~0_combout\ : std_logic;
SIGNAL \inst|SIGSTATE.REPEAT~q\ : std_logic;
SIGNAL \inst|command[7]~0_combout\ : std_logic;
SIGNAL \inst|Selector0~0_combout\ : std_logic;
SIGNAL \inst|SIGSTATE.IDLE~q\ : std_logic;
SIGNAL \inst|Selector1~0_combout\ : std_logic;
SIGNAL \inst|SIGSTATE.WAIT_HEADER~q\ : std_logic;
SIGNAL \inst|Selector2~0_combout\ : std_logic;
SIGNAL \inst|Selector2~1_combout\ : std_logic;
SIGNAL \inst|SIGSTATE.IDENTIFY_OPERATION~q\ : std_logic;
SIGNAL \inst|Selector4~0_combout\ : std_logic;
SIGNAL \inst|Selector4~1_combout\ : std_logic;
SIGNAL \inst|SIGSTATE.WAIT_BIT~q\ : std_logic;
SIGNAL \inst|Selector5~0_combout\ : std_logic;
SIGNAL \inst|SIGSTATE.IDENTIFY_BIT~q\ : std_logic;
SIGNAL \inst|LessThan1~2_combout\ : std_logic;
SIGNAL \inst|LessThan1~0_combout\ : std_logic;
SIGNAL \inst|LessThan1~1_combout\ : std_logic;
SIGNAL \inst|LessThan1~3_combout\ : std_logic;
SIGNAL \inst|LessThan1~4_combout\ : std_logic;
SIGNAL \inst|LessThan1~5_combout\ : std_logic;
SIGNAL \inst|Selector7~0_combout\ : std_logic;
SIGNAL \inst|SIGSTATE.SAVE_ONE~q\ : std_logic;
SIGNAL \inst|Selector6~0_combout\ : std_logic;
SIGNAL \inst|Selector6~1_combout\ : std_logic;
SIGNAL \inst|SIGSTATE.SAVE_ZERO~q\ : std_logic;
SIGNAL \inst|SIGSTATE~20_combout\ : std_logic;
SIGNAL \inst|SIGSTATE.CHECKOUT~q\ : std_logic;
SIGNAL \inst|number_of_bits[0]~33\ : std_logic;
SIGNAL \inst|number_of_bits[1]~34_combout\ : std_logic;
SIGNAL \inst|Selector42~1_combout\ : std_logic;
SIGNAL \inst|Selector42~0_combout\ : std_logic;
SIGNAL \inst|data_buffer[23]~0_combout\ : std_logic;
SIGNAL \inst|Selector43~0_combout\ : std_logic;
SIGNAL \inst|data_buffer[22]~1_combout\ : std_logic;
SIGNAL \inst|Selector44~0_combout\ : std_logic;
SIGNAL \inst|data_buffer[21]~2_combout\ : std_logic;
SIGNAL \inst|data_buffer[20]~3_combout\ : std_logic;
SIGNAL \inst|Selector47~0_combout\ : std_logic;
SIGNAL \inst|data_buffer[19]~4_combout\ : std_logic;
SIGNAL \inst|command[3]~feeder_combout\ : std_logic;
SIGNAL \inst|data_buffer[18]~5_combout\ : std_logic;
SIGNAL \inst|data_buffer[17]~6_combout\ : std_logic;
SIGNAL \inst|data_buffer[16]~7_combout\ : std_logic;
SIGNAL \inst|command[0]~feeder_combout\ : std_logic;
SIGNAL \inst|Selector9~0_combout\ : std_logic;
SIGNAL \inst|data_ready~q\ : std_logic;
SIGNAL \inst|WideOr0~combout\ : std_logic;
SIGNAL \inst|WideOr1~combout\ : std_logic;
SIGNAL \inst|WideOr2~combout\ : std_logic;
SIGNAL \inst|WideOr3~0_combout\ : std_logic;
SIGNAL \inst|data_buffer\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst|state_flag\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|command\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst|number_of_bits\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_IRDA_RXD~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

LEDG <= ww_LEDG;
ww_IRDA_RXD <= IRDA_RXD;
ww_CLOCK_50 <= CLOCK_50;
LEDR0 <= ww_LEDR0;
LEDR17 <= ww_LEDR17;
LEDR16 <= ww_LEDR16;
LEDR15 <= ww_LEDR15;
LEDR14 <= ww_LEDR14;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
\ALT_INV_IRDA_RXD~input_o\ <= NOT \IRDA_RXD~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X74_Y73_N23
\LEDG[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|command\(7),
	devoe => ww_devoe,
	o => \LEDG[7]~output_o\);

-- Location: IOOBUF_X72_Y73_N23
\LEDG[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|command\(6),
	devoe => ww_devoe,
	o => \LEDG[6]~output_o\);

-- Location: IOOBUF_X74_Y73_N16
\LEDG[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|command\(5),
	devoe => ww_devoe,
	o => \LEDG[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N16
\LEDG[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|command\(4),
	devoe => ww_devoe,
	o => \LEDG[4]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\LEDG[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|command\(3),
	devoe => ww_devoe,
	o => \LEDG[3]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\LEDG[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|command\(2),
	devoe => ww_devoe,
	o => \LEDG[2]~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\LEDG[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|command\(1),
	devoe => ww_devoe,
	o => \LEDG[1]~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\LEDG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|command\(0),
	devoe => ww_devoe,
	o => \LEDG[0]~output_o\);

-- Location: IOOBUF_X60_Y73_N23
\LEDR0~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|data_ready~q\,
	devoe => ww_devoe,
	o => \LEDR0~output_o\);

-- Location: IOOBUF_X60_Y73_N16
\LEDR17~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|state_flag\(3),
	devoe => ww_devoe,
	o => \LEDR17~output_o\);

-- Location: IOOBUF_X58_Y73_N9
\LEDR16~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|state_flag\(2),
	devoe => ww_devoe,
	o => \LEDR16~output_o\);

-- Location: IOOBUF_X58_Y73_N16
\LEDR15~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|state_flag\(1),
	devoe => ww_devoe,
	o => \LEDR15~output_o\);

-- Location: IOOBUF_X58_Y73_N23
\LEDR14~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|state_flag\(0),
	devoe => ww_devoe,
	o => \LEDR14~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G4
\CLOCK_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X62_Y61_N0
\inst|number_of_bits[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|number_of_bits[0]~32_combout\ = \inst|number_of_bits\(0) $ (VCC)
-- \inst|number_of_bits[0]~33\ = CARRY(\inst|number_of_bits\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|number_of_bits\(0),
	datad => VCC,
	combout => \inst|number_of_bits[0]~32_combout\,
	cout => \inst|number_of_bits[0]~33\);

-- Location: LCCOMB_X62_Y61_N2
\inst|number_of_bits[1]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|number_of_bits[1]~34_combout\ = (\inst|number_of_bits\(1) & (!\inst|number_of_bits[0]~33\)) # (!\inst|number_of_bits\(1) & ((\inst|number_of_bits[0]~33\) # (GND)))
-- \inst|number_of_bits[1]~35\ = CARRY((!\inst|number_of_bits[0]~33\) # (!\inst|number_of_bits\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|number_of_bits\(1),
	datad => VCC,
	cin => \inst|number_of_bits[0]~33\,
	combout => \inst|number_of_bits[1]~34_combout\,
	cout => \inst|number_of_bits[1]~35\);

-- Location: LCCOMB_X62_Y61_N4
\inst|number_of_bits[2]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|number_of_bits[2]~38_combout\ = (\inst|number_of_bits\(2) & (\inst|number_of_bits[1]~35\ $ (GND))) # (!\inst|number_of_bits\(2) & (!\inst|number_of_bits[1]~35\ & VCC))
-- \inst|number_of_bits[2]~39\ = CARRY((\inst|number_of_bits\(2) & !\inst|number_of_bits[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|number_of_bits\(2),
	datad => VCC,
	cin => \inst|number_of_bits[1]~35\,
	combout => \inst|number_of_bits[2]~38_combout\,
	cout => \inst|number_of_bits[2]~39\);

-- Location: LCCOMB_X61_Y61_N4
\inst|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~0_combout\ = (!\inst|number_of_bits\(1) & !\inst|number_of_bits\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|number_of_bits\(1),
	datad => \inst|number_of_bits\(2),
	combout => \inst|Equal0~0_combout\);

-- Location: LCCOMB_X61_Y61_N10
\inst|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~1_combout\ = (!\inst|number_of_bits\(6) & (!\inst|number_of_bits\(7) & (\inst|number_of_bits\(5) & !\inst|number_of_bits\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|number_of_bits\(6),
	datab => \inst|number_of_bits\(7),
	datac => \inst|number_of_bits\(5),
	datad => \inst|number_of_bits\(4),
	combout => \inst|Equal0~1_combout\);

-- Location: LCCOMB_X61_Y61_N12
\inst|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~2_combout\ = (!\inst|number_of_bits\(3) & (!\inst|number_of_bits\(0) & (\inst|Equal0~0_combout\ & \inst|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|number_of_bits\(3),
	datab => \inst|number_of_bits\(0),
	datac => \inst|Equal0~0_combout\,
	datad => \inst|Equal0~1_combout\,
	combout => \inst|Equal0~2_combout\);

-- Location: LCCOMB_X61_Y61_N14
\inst|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~3_combout\ = (!\inst|number_of_bits\(10) & (!\inst|number_of_bits\(8) & (!\inst|number_of_bits\(9) & !\inst|number_of_bits\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|number_of_bits\(10),
	datab => \inst|number_of_bits\(8),
	datac => \inst|number_of_bits\(9),
	datad => \inst|number_of_bits\(11),
	combout => \inst|Equal0~3_combout\);

-- Location: LCCOMB_X61_Y61_N8
\inst|number_of_bits[25]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|number_of_bits[25]~36_combout\ = (\inst|SIGSTATE.CHECKOUT~q\ & (((!\inst|Equal0~4_combout\)) # (!\inst|Equal0~3_combout\))) # (!\inst|SIGSTATE.CHECKOUT~q\ & (((!\inst|SIGSTATE~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SIGSTATE.CHECKOUT~q\,
	datab => \inst|Equal0~3_combout\,
	datac => \inst|SIGSTATE~20_combout\,
	datad => \inst|Equal0~4_combout\,
	combout => \inst|number_of_bits[25]~36_combout\);

-- Location: LCCOMB_X62_Y61_N30
\inst|number_of_bits[15]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|number_of_bits[15]~64_combout\ = (\inst|number_of_bits\(15) & (!\inst|number_of_bits[14]~63\)) # (!\inst|number_of_bits\(15) & ((\inst|number_of_bits[14]~63\) # (GND)))
-- \inst|number_of_bits[15]~65\ = CARRY((!\inst|number_of_bits[14]~63\) # (!\inst|number_of_bits\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|number_of_bits\(15),
	datad => VCC,
	cin => \inst|number_of_bits[14]~63\,
	combout => \inst|number_of_bits[15]~64_combout\,
	cout => \inst|number_of_bits[15]~65\);

-- Location: LCCOMB_X62_Y60_N0
\inst|number_of_bits[16]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|number_of_bits[16]~66_combout\ = (\inst|number_of_bits\(16) & (\inst|number_of_bits[15]~65\ $ (GND))) # (!\inst|number_of_bits\(16) & (!\inst|number_of_bits[15]~65\ & VCC))
-- \inst|number_of_bits[16]~67\ = CARRY((\inst|number_of_bits\(16) & !\inst|number_of_bits[15]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|number_of_bits\(16),
	datad => VCC,
	cin => \inst|number_of_bits[15]~65\,
	combout => \inst|number_of_bits[16]~66_combout\,
	cout => \inst|number_of_bits[16]~67\);

-- Location: FF_X61_Y60_N21
\inst|number_of_bits[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst|number_of_bits[16]~66_combout\,
	sclr => \inst|SIGSTATE.CHECKOUT~q\,
	sload => VCC,
	ena => \inst|number_of_bits[25]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|number_of_bits\(16));

-- Location: LCCOMB_X62_Y60_N2
\inst|number_of_bits[17]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|number_of_bits[17]~68_combout\ = (\inst|number_of_bits\(17) & (!\inst|number_of_bits[16]~67\)) # (!\inst|number_of_bits\(17) & ((\inst|number_of_bits[16]~67\) # (GND)))
-- \inst|number_of_bits[17]~69\ = CARRY((!\inst|number_of_bits[16]~67\) # (!\inst|number_of_bits\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|number_of_bits\(17),
	datad => VCC,
	cin => \inst|number_of_bits[16]~67\,
	combout => \inst|number_of_bits[17]~68_combout\,
	cout => \inst|number_of_bits[17]~69\);

-- Location: FF_X61_Y60_N31
\inst|number_of_bits[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst|number_of_bits[17]~68_combout\,
	sclr => \inst|SIGSTATE.CHECKOUT~q\,
	sload => VCC,
	ena => \inst|number_of_bits[25]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|number_of_bits\(17));

-- Location: LCCOMB_X62_Y60_N4
\inst|number_of_bits[18]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|number_of_bits[18]~70_combout\ = (\inst|number_of_bits\(18) & (\inst|number_of_bits[17]~69\ $ (GND))) # (!\inst|number_of_bits\(18) & (!\inst|number_of_bits[17]~69\ & VCC))
-- \inst|number_of_bits[18]~71\ = CARRY((\inst|number_of_bits\(18) & !\inst|number_of_bits[17]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|number_of_bits\(18),
	datad => VCC,
	cin => \inst|number_of_bits[17]~69\,
	combout => \inst|number_of_bits[18]~70_combout\,
	cout => \inst|number_of_bits[18]~71\);

-- Location: FF_X61_Y60_N25
\inst|number_of_bits[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst|number_of_bits[18]~70_combout\,
	sclr => \inst|SIGSTATE.CHECKOUT~q\,
	sload => VCC,
	ena => \inst|number_of_bits[25]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|number_of_bits\(18));

-- Location: LCCOMB_X62_Y60_N6
\inst|number_of_bits[19]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|number_of_bits[19]~72_combout\ = (\inst|number_of_bits\(19) & (!\inst|number_of_bits[18]~71\)) # (!\inst|number_of_bits\(19) & ((\inst|number_of_bits[18]~71\) # (GND)))
-- \inst|number_of_bits[19]~73\ = CARRY((!\inst|number_of_bits[18]~71\) # (!\inst|number_of_bits\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|number_of_bits\(19),
	datad => VCC,
	cin => \inst|number_of_bits[18]~71\,
	combout => \inst|number_of_bits[19]~72_combout\,
	cout => \inst|number_of_bits[19]~73\);

-- Location: FF_X61_Y60_N23
\inst|number_of_bits[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst|number_of_bits[19]~72_combout\,
	sclr => \inst|SIGSTATE.CHECKOUT~q\,
	sload => VCC,
	ena => \inst|number_of_bits[25]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|number_of_bits\(19));

-- Location: LCCOMB_X61_Y60_N26
\inst|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~5_combout\ = (!\inst|number_of_bits\(17) & (!\inst|number_of_bits\(16) & (!\inst|number_of_bits\(19) & !\inst|number_of_bits\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|number_of_bits\(17),
	datab => \inst|number_of_bits\(16),
	datac => \inst|number_of_bits\(19),
	datad => \inst|number_of_bits\(18),
	combout => \inst|Equal0~5_combout\);

-- Location: LCCOMB_X62_Y60_N8
\inst|number_of_bits[20]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|number_of_bits[20]~74_combout\ = (\inst|number_of_bits\(20) & (\inst|number_of_bits[19]~73\ $ (GND))) # (!\inst|number_of_bits\(20) & (!\inst|number_of_bits[19]~73\ & VCC))
-- \inst|number_of_bits[20]~75\ = CARRY((\inst|number_of_bits\(20) & !\inst|number_of_bits[19]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|number_of_bits\(20),
	datad => VCC,
	cin => \inst|number_of_bits[19]~73\,
	combout => \inst|number_of_bits[20]~74_combout\,
	cout => \inst|number_of_bits[20]~75\);

-- Location: FF_X61_Y60_N13
\inst|number_of_bits[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst|number_of_bits[20]~74_combout\,
	sclr => \inst|SIGSTATE.CHECKOUT~q\,
	sload => VCC,
	ena => \inst|number_of_bits[25]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|number_of_bits\(20));

-- Location: LCCOMB_X62_Y60_N10
\inst|number_of_bits[21]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|number_of_bits[21]~76_combout\ = (\inst|number_of_bits\(21) & (!\inst|number_of_bits[20]~75\)) # (!\inst|number_of_bits\(21) & ((\inst|number_of_bits[20]~75\) # (GND)))
-- \inst|number_of_bits[21]~77\ = CARRY((!\inst|number_of_bits[20]~75\) # (!\inst|number_of_bits\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|number_of_bits\(21),
	datad => VCC,
	cin => \inst|number_of_bits[20]~75\,
	combout => \inst|number_of_bits[21]~76_combout\,
	cout => \inst|number_of_bits[21]~77\);

-- Location: FF_X62_Y60_N11
\inst|number_of_bits[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|number_of_bits[21]~76_combout\,
	sclr => \inst|SIGSTATE.CHECKOUT~q\,
	ena => \inst|number_of_bits[25]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|number_of_bits\(21));

-- Location: LCCOMB_X62_Y60_N12
\inst|number_of_bits[22]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|number_of_bits[22]~78_combout\ = (\inst|number_of_bits\(22) & (\inst|number_of_bits[21]~77\ $ (GND))) # (!\inst|number_of_bits\(22) & (!\inst|number_of_bits[21]~77\ & VCC))
-- \inst|number_of_bits[22]~79\ = CARRY((\inst|number_of_bits\(22) & !\inst|number_of_bits[21]~77\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|number_of_bits\(22),
	datad => VCC,
	cin => \inst|number_of_bits[21]~77\,
	combout => \inst|number_of_bits[22]~78_combout\,
	cout => \inst|number_of_bits[22]~79\);

-- Location: FF_X62_Y60_N13
\inst|number_of_bits[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|number_of_bits[22]~78_combout\,
	sclr => \inst|SIGSTATE.CHECKOUT~q\,
	ena => \inst|number_of_bits[25]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|number_of_bits\(22));

-- Location: LCCOMB_X62_Y60_N14
\inst|number_of_bits[23]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|number_of_bits[23]~80_combout\ = (\inst|number_of_bits\(23) & (!\inst|number_of_bits[22]~79\)) # (!\inst|number_of_bits\(23) & ((\inst|number_of_bits[22]~79\) # (GND)))
-- \inst|number_of_bits[23]~81\ = CARRY((!\inst|number_of_bits[22]~79\) # (!\inst|number_of_bits\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|number_of_bits\(23),
	datad => VCC,
	cin => \inst|number_of_bits[22]~79\,
	combout => \inst|number_of_bits[23]~80_combout\,
	cout => \inst|number_of_bits[23]~81\);

-- Location: FF_X62_Y60_N15
\inst|number_of_bits[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|number_of_bits[23]~80_combout\,
	sclr => \inst|SIGSTATE.CHECKOUT~q\,
	ena => \inst|number_of_bits[25]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|number_of_bits\(23));

-- Location: LCCOMB_X62_Y60_N16
\inst|number_of_bits[24]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|number_of_bits[24]~82_combout\ = (\inst|number_of_bits\(24) & (\inst|number_of_bits[23]~81\ $ (GND))) # (!\inst|number_of_bits\(24) & (!\inst|number_of_bits[23]~81\ & VCC))
-- \inst|number_of_bits[24]~83\ = CARRY((\inst|number_of_bits\(24) & !\inst|number_of_bits[23]~81\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|number_of_bits\(24),
	datad => VCC,
	cin => \inst|number_of_bits[23]~81\,
	combout => \inst|number_of_bits[24]~82_combout\,
	cout => \inst|number_of_bits[24]~83\);

-- Location: FF_X62_Y60_N17
\inst|number_of_bits[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|number_of_bits[24]~82_combout\,
	sclr => \inst|SIGSTATE.CHECKOUT~q\,
	ena => \inst|number_of_bits[25]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|number_of_bits\(24));

-- Location: LCCOMB_X62_Y60_N18
\inst|number_of_bits[25]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|number_of_bits[25]~84_combout\ = (\inst|number_of_bits\(25) & (!\inst|number_of_bits[24]~83\)) # (!\inst|number_of_bits\(25) & ((\inst|number_of_bits[24]~83\) # (GND)))
-- \inst|number_of_bits[25]~85\ = CARRY((!\inst|number_of_bits[24]~83\) # (!\inst|number_of_bits\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|number_of_bits\(25),
	datad => VCC,
	cin => \inst|number_of_bits[24]~83\,
	combout => \inst|number_of_bits[25]~84_combout\,
	cout => \inst|number_of_bits[25]~85\);

-- Location: FF_X62_Y60_N19
\inst|number_of_bits[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|number_of_bits[25]~84_combout\,
	sclr => \inst|SIGSTATE.CHECKOUT~q\,
	ena => \inst|number_of_bits[25]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|number_of_bits\(25));

-- Location: LCCOMB_X62_Y60_N20
\inst|number_of_bits[26]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|number_of_bits[26]~86_combout\ = (\inst|number_of_bits\(26) & (\inst|number_of_bits[25]~85\ $ (GND))) # (!\inst|number_of_bits\(26) & (!\inst|number_of_bits[25]~85\ & VCC))
-- \inst|number_of_bits[26]~87\ = CARRY((\inst|number_of_bits\(26) & !\inst|number_of_bits[25]~85\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|number_of_bits\(26),
	datad => VCC,
	cin => \inst|number_of_bits[25]~85\,
	combout => \inst|number_of_bits[26]~86_combout\,
	cout => \inst|number_of_bits[26]~87\);

-- Location: FF_X62_Y60_N21
\inst|number_of_bits[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|number_of_bits[26]~86_combout\,
	sclr => \inst|SIGSTATE.CHECKOUT~q\,
	ena => \inst|number_of_bits[25]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|number_of_bits\(26));

-- Location: LCCOMB_X62_Y60_N22
\inst|number_of_bits[27]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|number_of_bits[27]~88_combout\ = (\inst|number_of_bits\(27) & (!\inst|number_of_bits[26]~87\)) # (!\inst|number_of_bits\(27) & ((\inst|number_of_bits[26]~87\) # (GND)))
-- \inst|number_of_bits[27]~89\ = CARRY((!\inst|number_of_bits[26]~87\) # (!\inst|number_of_bits\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|number_of_bits\(27),
	datad => VCC,
	cin => \inst|number_of_bits[26]~87\,
	combout => \inst|number_of_bits[27]~88_combout\,
	cout => \inst|number_of_bits[27]~89\);

-- Location: FF_X62_Y60_N23
\inst|number_of_bits[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|number_of_bits[27]~88_combout\,
	sclr => \inst|SIGSTATE.CHECKOUT~q\,
	ena => \inst|number_of_bits[25]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|number_of_bits\(27));

-- Location: LCCOMB_X61_Y60_N18
\inst|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~7_combout\ = (!\inst|number_of_bits\(26) & (!\inst|number_of_bits\(25) & (!\inst|number_of_bits\(27) & !\inst|number_of_bits\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|number_of_bits\(26),
	datab => \inst|number_of_bits\(25),
	datac => \inst|number_of_bits\(27),
	datad => \inst|number_of_bits\(24),
	combout => \inst|Equal0~7_combout\);

-- Location: LCCOMB_X61_Y60_N4
\inst|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~6_combout\ = (!\inst|number_of_bits\(20) & (!\inst|number_of_bits\(22) & (!\inst|number_of_bits\(21) & !\inst|number_of_bits\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|number_of_bits\(20),
	datab => \inst|number_of_bits\(22),
	datac => \inst|number_of_bits\(21),
	datad => \inst|number_of_bits\(23),
	combout => \inst|Equal0~6_combout\);

-- Location: LCCOMB_X62_Y60_N24
\inst|number_of_bits[28]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|number_of_bits[28]~90_combout\ = (\inst|number_of_bits\(28) & (\inst|number_of_bits[27]~89\ $ (GND))) # (!\inst|number_of_bits\(28) & (!\inst|number_of_bits[27]~89\ & VCC))
-- \inst|number_of_bits[28]~91\ = CARRY((\inst|number_of_bits\(28) & !\inst|number_of_bits[27]~89\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|number_of_bits\(28),
	datad => VCC,
	cin => \inst|number_of_bits[27]~89\,
	combout => \inst|number_of_bits[28]~90_combout\,
	cout => \inst|number_of_bits[28]~91\);

-- Location: FF_X62_Y60_N25
\inst|number_of_bits[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|number_of_bits[28]~90_combout\,
	sclr => \inst|SIGSTATE.CHECKOUT~q\,
	ena => \inst|number_of_bits[25]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|number_of_bits\(28));

-- Location: LCCOMB_X62_Y60_N26
\inst|number_of_bits[29]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|number_of_bits[29]~92_combout\ = (\inst|number_of_bits\(29) & (!\inst|number_of_bits[28]~91\)) # (!\inst|number_of_bits\(29) & ((\inst|number_of_bits[28]~91\) # (GND)))
-- \inst|number_of_bits[29]~93\ = CARRY((!\inst|number_of_bits[28]~91\) # (!\inst|number_of_bits\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|number_of_bits\(29),
	datad => VCC,
	cin => \inst|number_of_bits[28]~91\,
	combout => \inst|number_of_bits[29]~92_combout\,
	cout => \inst|number_of_bits[29]~93\);

-- Location: FF_X62_Y60_N27
\inst|number_of_bits[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|number_of_bits[29]~92_combout\,
	sclr => \inst|SIGSTATE.CHECKOUT~q\,
	ena => \inst|number_of_bits[25]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|number_of_bits\(29));

-- Location: LCCOMB_X62_Y60_N28
\inst|number_of_bits[30]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|number_of_bits[30]~94_combout\ = (\inst|number_of_bits\(30) & (\inst|number_of_bits[29]~93\ $ (GND))) # (!\inst|number_of_bits\(30) & (!\inst|number_of_bits[29]~93\ & VCC))
-- \inst|number_of_bits[30]~95\ = CARRY((\inst|number_of_bits\(30) & !\inst|number_of_bits[29]~93\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|number_of_bits\(30),
	datad => VCC,
	cin => \inst|number_of_bits[29]~93\,
	combout => \inst|number_of_bits[30]~94_combout\,
	cout => \inst|number_of_bits[30]~95\);

-- Location: FF_X62_Y60_N29
\inst|number_of_bits[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|number_of_bits[30]~94_combout\,
	sclr => \inst|SIGSTATE.CHECKOUT~q\,
	ena => \inst|number_of_bits[25]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|number_of_bits\(30));

-- Location: LCCOMB_X62_Y60_N30
\inst|number_of_bits[31]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|number_of_bits[31]~96_combout\ = \inst|number_of_bits\(31) $ (\inst|number_of_bits[30]~95\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|number_of_bits\(31),
	cin => \inst|number_of_bits[30]~95\,
	combout => \inst|number_of_bits[31]~96_combout\);

-- Location: FF_X62_Y60_N31
\inst|number_of_bits[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|number_of_bits[31]~96_combout\,
	sclr => \inst|SIGSTATE.CHECKOUT~q\,
	ena => \inst|number_of_bits[25]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|number_of_bits\(31));

-- Location: LCCOMB_X61_Y60_N28
\inst|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~8_combout\ = (!\inst|number_of_bits\(29) & (!\inst|number_of_bits\(30) & (!\inst|number_of_bits\(31) & !\inst|number_of_bits\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|number_of_bits\(29),
	datab => \inst|number_of_bits\(30),
	datac => \inst|number_of_bits\(31),
	datad => \inst|number_of_bits\(28),
	combout => \inst|Equal0~8_combout\);

-- Location: LCCOMB_X61_Y60_N10
\inst|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~9_combout\ = (\inst|Equal0~5_combout\ & (\inst|Equal0~7_combout\ & (\inst|Equal0~6_combout\ & \inst|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~5_combout\,
	datab => \inst|Equal0~7_combout\,
	datac => \inst|Equal0~6_combout\,
	datad => \inst|Equal0~8_combout\,
	combout => \inst|Equal0~9_combout\);

-- Location: LCCOMB_X61_Y61_N30
\inst|number_of_bits[25]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|number_of_bits[25]~37_combout\ = (!\inst|number_of_bits[25]~36_combout\ & (((\inst|Equal0~2_combout\ & \inst|Equal0~9_combout\)) # (!\inst|SIGSTATE.CHECKOUT~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~2_combout\,
	datab => \inst|SIGSTATE.CHECKOUT~q\,
	datac => \inst|number_of_bits[25]~36_combout\,
	datad => \inst|Equal0~9_combout\,
	combout => \inst|number_of_bits[25]~37_combout\);

-- Location: FF_X62_Y61_N5
\inst|number_of_bits[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|number_of_bits[2]~38_combout\,
	sclr => \inst|SIGSTATE.CHECKOUT~q\,
	ena => \inst|number_of_bits[25]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|number_of_bits\(2));

-- Location: LCCOMB_X62_Y61_N6
\inst|number_of_bits[3]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|number_of_bits[3]~40_combout\ = (\inst|number_of_bits\(3) & (!\inst|number_of_bits[2]~39\)) # (!\inst|number_of_bits\(3) & ((\inst|number_of_bits[2]~39\) # (GND)))
-- \inst|number_of_bits[3]~41\ = CARRY((!\inst|number_of_bits[2]~39\) # (!\inst|number_of_bits\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|number_of_bits\(3),
	datad => VCC,
	cin => \inst|number_of_bits[2]~39\,
	combout => \inst|number_of_bits[3]~40_combout\,
	cout => \inst|number_of_bits[3]~41\);

-- Location: FF_X62_Y61_N7
\inst|number_of_bits[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|number_of_bits[3]~40_combout\,
	sclr => \inst|SIGSTATE.CHECKOUT~q\,
	ena => \inst|number_of_bits[25]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|number_of_bits\(3));

-- Location: LCCOMB_X62_Y61_N8
\inst|number_of_bits[4]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|number_of_bits[4]~42_combout\ = (\inst|number_of_bits\(4) & (\inst|number_of_bits[3]~41\ $ (GND))) # (!\inst|number_of_bits\(4) & (!\inst|number_of_bits[3]~41\ & VCC))
-- \inst|number_of_bits[4]~43\ = CARRY((\inst|number_of_bits\(4) & !\inst|number_of_bits[3]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|number_of_bits\(4),
	datad => VCC,
	cin => \inst|number_of_bits[3]~41\,
	combout => \inst|number_of_bits[4]~42_combout\,
	cout => \inst|number_of_bits[4]~43\);

-- Location: FF_X62_Y61_N9
\inst|number_of_bits[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|number_of_bits[4]~42_combout\,
	sclr => \inst|SIGSTATE.CHECKOUT~q\,
	ena => \inst|number_of_bits[25]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|number_of_bits\(4));

-- Location: LCCOMB_X62_Y61_N10
\inst|number_of_bits[5]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|number_of_bits[5]~44_combout\ = (\inst|number_of_bits\(5) & (!\inst|number_of_bits[4]~43\)) # (!\inst|number_of_bits\(5) & ((\inst|number_of_bits[4]~43\) # (GND)))
-- \inst|number_of_bits[5]~45\ = CARRY((!\inst|number_of_bits[4]~43\) # (!\inst|number_of_bits\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|number_of_bits\(5),
	datad => VCC,
	cin => \inst|number_of_bits[4]~43\,
	combout => \inst|number_of_bits[5]~44_combout\,
	cout => \inst|number_of_bits[5]~45\);

-- Location: FF_X62_Y61_N11
\inst|number_of_bits[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|number_of_bits[5]~44_combout\,
	sclr => \inst|SIGSTATE.CHECKOUT~q\,
	ena => \inst|number_of_bits[25]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|number_of_bits\(5));

-- Location: LCCOMB_X62_Y61_N12
\inst|number_of_bits[6]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|number_of_bits[6]~46_combout\ = (\inst|number_of_bits\(6) & (\inst|number_of_bits[5]~45\ $ (GND))) # (!\inst|number_of_bits\(6) & (!\inst|number_of_bits[5]~45\ & VCC))
-- \inst|number_of_bits[6]~47\ = CARRY((\inst|number_of_bits\(6) & !\inst|number_of_bits[5]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|number_of_bits\(6),
	datad => VCC,
	cin => \inst|number_of_bits[5]~45\,
	combout => \inst|number_of_bits[6]~46_combout\,
	cout => \inst|number_of_bits[6]~47\);

-- Location: FF_X62_Y61_N13
\inst|number_of_bits[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|number_of_bits[6]~46_combout\,
	sclr => \inst|SIGSTATE.CHECKOUT~q\,
	ena => \inst|number_of_bits[25]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|number_of_bits\(6));

-- Location: LCCOMB_X62_Y61_N14
\inst|number_of_bits[7]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|number_of_bits[7]~48_combout\ = (\inst|number_of_bits\(7) & (!\inst|number_of_bits[6]~47\)) # (!\inst|number_of_bits\(7) & ((\inst|number_of_bits[6]~47\) # (GND)))
-- \inst|number_of_bits[7]~49\ = CARRY((!\inst|number_of_bits[6]~47\) # (!\inst|number_of_bits\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|number_of_bits\(7),
	datad => VCC,
	cin => \inst|number_of_bits[6]~47\,
	combout => \inst|number_of_bits[7]~48_combout\,
	cout => \inst|number_of_bits[7]~49\);

-- Location: FF_X62_Y61_N15
\inst|number_of_bits[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|number_of_bits[7]~48_combout\,
	sclr => \inst|SIGSTATE.CHECKOUT~q\,
	ena => \inst|number_of_bits[25]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|number_of_bits\(7));

-- Location: LCCOMB_X62_Y61_N16
\inst|number_of_bits[8]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|number_of_bits[8]~50_combout\ = (\inst|number_of_bits\(8) & (\inst|number_of_bits[7]~49\ $ (GND))) # (!\inst|number_of_bits\(8) & (!\inst|number_of_bits[7]~49\ & VCC))
-- \inst|number_of_bits[8]~51\ = CARRY((\inst|number_of_bits\(8) & !\inst|number_of_bits[7]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|number_of_bits\(8),
	datad => VCC,
	cin => \inst|number_of_bits[7]~49\,
	combout => \inst|number_of_bits[8]~50_combout\,
	cout => \inst|number_of_bits[8]~51\);

-- Location: FF_X62_Y61_N17
\inst|number_of_bits[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|number_of_bits[8]~50_combout\,
	sclr => \inst|SIGSTATE.CHECKOUT~q\,
	ena => \inst|number_of_bits[25]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|number_of_bits\(8));

-- Location: LCCOMB_X62_Y61_N18
\inst|number_of_bits[9]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|number_of_bits[9]~52_combout\ = (\inst|number_of_bits\(9) & (!\inst|number_of_bits[8]~51\)) # (!\inst|number_of_bits\(9) & ((\inst|number_of_bits[8]~51\) # (GND)))
-- \inst|number_of_bits[9]~53\ = CARRY((!\inst|number_of_bits[8]~51\) # (!\inst|number_of_bits\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|number_of_bits\(9),
	datad => VCC,
	cin => \inst|number_of_bits[8]~51\,
	combout => \inst|number_of_bits[9]~52_combout\,
	cout => \inst|number_of_bits[9]~53\);

-- Location: FF_X62_Y61_N19
\inst|number_of_bits[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|number_of_bits[9]~52_combout\,
	sclr => \inst|SIGSTATE.CHECKOUT~q\,
	ena => \inst|number_of_bits[25]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|number_of_bits\(9));

-- Location: LCCOMB_X62_Y61_N20
\inst|number_of_bits[10]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|number_of_bits[10]~54_combout\ = (\inst|number_of_bits\(10) & (\inst|number_of_bits[9]~53\ $ (GND))) # (!\inst|number_of_bits\(10) & (!\inst|number_of_bits[9]~53\ & VCC))
-- \inst|number_of_bits[10]~55\ = CARRY((\inst|number_of_bits\(10) & !\inst|number_of_bits[9]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|number_of_bits\(10),
	datad => VCC,
	cin => \inst|number_of_bits[9]~53\,
	combout => \inst|number_of_bits[10]~54_combout\,
	cout => \inst|number_of_bits[10]~55\);

-- Location: FF_X62_Y61_N21
\inst|number_of_bits[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|number_of_bits[10]~54_combout\,
	sclr => \inst|SIGSTATE.CHECKOUT~q\,
	ena => \inst|number_of_bits[25]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|number_of_bits\(10));

-- Location: LCCOMB_X62_Y61_N22
\inst|number_of_bits[11]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|number_of_bits[11]~56_combout\ = (\inst|number_of_bits\(11) & (!\inst|number_of_bits[10]~55\)) # (!\inst|number_of_bits\(11) & ((\inst|number_of_bits[10]~55\) # (GND)))
-- \inst|number_of_bits[11]~57\ = CARRY((!\inst|number_of_bits[10]~55\) # (!\inst|number_of_bits\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|number_of_bits\(11),
	datad => VCC,
	cin => \inst|number_of_bits[10]~55\,
	combout => \inst|number_of_bits[11]~56_combout\,
	cout => \inst|number_of_bits[11]~57\);

-- Location: FF_X62_Y61_N23
\inst|number_of_bits[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|number_of_bits[11]~56_combout\,
	sclr => \inst|SIGSTATE.CHECKOUT~q\,
	ena => \inst|number_of_bits[25]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|number_of_bits\(11));

-- Location: LCCOMB_X62_Y61_N24
\inst|number_of_bits[12]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|number_of_bits[12]~58_combout\ = (\inst|number_of_bits\(12) & (\inst|number_of_bits[11]~57\ $ (GND))) # (!\inst|number_of_bits\(12) & (!\inst|number_of_bits[11]~57\ & VCC))
-- \inst|number_of_bits[12]~59\ = CARRY((\inst|number_of_bits\(12) & !\inst|number_of_bits[11]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|number_of_bits\(12),
	datad => VCC,
	cin => \inst|number_of_bits[11]~57\,
	combout => \inst|number_of_bits[12]~58_combout\,
	cout => \inst|number_of_bits[12]~59\);

-- Location: FF_X62_Y61_N25
\inst|number_of_bits[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|number_of_bits[12]~58_combout\,
	sclr => \inst|SIGSTATE.CHECKOUT~q\,
	ena => \inst|number_of_bits[25]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|number_of_bits\(12));

-- Location: LCCOMB_X62_Y61_N26
\inst|number_of_bits[13]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|number_of_bits[13]~60_combout\ = (\inst|number_of_bits\(13) & (!\inst|number_of_bits[12]~59\)) # (!\inst|number_of_bits\(13) & ((\inst|number_of_bits[12]~59\) # (GND)))
-- \inst|number_of_bits[13]~61\ = CARRY((!\inst|number_of_bits[12]~59\) # (!\inst|number_of_bits\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|number_of_bits\(13),
	datad => VCC,
	cin => \inst|number_of_bits[12]~59\,
	combout => \inst|number_of_bits[13]~60_combout\,
	cout => \inst|number_of_bits[13]~61\);

-- Location: FF_X62_Y61_N27
\inst|number_of_bits[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|number_of_bits[13]~60_combout\,
	sclr => \inst|SIGSTATE.CHECKOUT~q\,
	ena => \inst|number_of_bits[25]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|number_of_bits\(13));

-- Location: LCCOMB_X62_Y61_N28
\inst|number_of_bits[14]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|number_of_bits[14]~62_combout\ = (\inst|number_of_bits\(14) & (\inst|number_of_bits[13]~61\ $ (GND))) # (!\inst|number_of_bits\(14) & (!\inst|number_of_bits[13]~61\ & VCC))
-- \inst|number_of_bits[14]~63\ = CARRY((\inst|number_of_bits\(14) & !\inst|number_of_bits[13]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|number_of_bits\(14),
	datad => VCC,
	cin => \inst|number_of_bits[13]~61\,
	combout => \inst|number_of_bits[14]~62_combout\,
	cout => \inst|number_of_bits[14]~63\);

-- Location: FF_X62_Y61_N29
\inst|number_of_bits[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|number_of_bits[14]~62_combout\,
	sclr => \inst|SIGSTATE.CHECKOUT~q\,
	ena => \inst|number_of_bits[25]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|number_of_bits\(14));

-- Location: FF_X62_Y61_N31
\inst|number_of_bits[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|number_of_bits[15]~64_combout\,
	sclr => \inst|SIGSTATE.CHECKOUT~q\,
	ena => \inst|number_of_bits[25]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|number_of_bits\(15));

-- Location: LCCOMB_X61_Y61_N16
\inst|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~4_combout\ = (!\inst|number_of_bits\(15) & (!\inst|number_of_bits\(14) & (!\inst|number_of_bits\(13) & !\inst|number_of_bits\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|number_of_bits\(15),
	datab => \inst|number_of_bits\(14),
	datac => \inst|number_of_bits\(13),
	datad => \inst|number_of_bits\(12),
	combout => \inst|Equal0~4_combout\);

-- Location: LCCOMB_X60_Y61_N16
\inst|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~10_combout\ = (\inst|Equal0~4_combout\ & (\inst|Equal0~2_combout\ & (\inst|Equal0~3_combout\ & \inst|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~4_combout\,
	datab => \inst|Equal0~2_combout\,
	datac => \inst|Equal0~3_combout\,
	datad => \inst|Equal0~9_combout\,
	combout => \inst|Equal0~10_combout\);

-- Location: IOIBUF_X56_Y0_N1
\IRDA_RXD~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IRDA_RXD,
	o => \IRDA_RXD~input_o\);

-- Location: LCCOMB_X60_Y59_N0
\inst|counter[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter[0]~32_combout\ = \inst|counter\(0) $ (VCC)
-- \inst|counter[0]~33\ = CARRY(\inst|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(0),
	datad => VCC,
	combout => \inst|counter[0]~32_combout\,
	cout => \inst|counter[0]~33\);

-- Location: LCCOMB_X59_Y59_N20
\inst|WideOr3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr3~1_combout\ = (\inst|SIGSTATE.IDENTIFY_BIT~q\) # (\inst|SIGSTATE.IDENTIFY_OPERATION~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|SIGSTATE.IDENTIFY_BIT~q\,
	datad => \inst|SIGSTATE.IDENTIFY_OPERATION~q\,
	combout => \inst|WideOr3~1_combout\);

-- Location: FF_X60_Y59_N1
\inst|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|counter[0]~32_combout\,
	sclr => \ALT_INV_IRDA_RXD~input_o\,
	ena => \inst|WideOr3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(0));

-- Location: LCCOMB_X60_Y59_N2
\inst|counter[1]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter[1]~34_combout\ = (\inst|counter\(1) & (!\inst|counter[0]~33\)) # (!\inst|counter\(1) & ((\inst|counter[0]~33\) # (GND)))
-- \inst|counter[1]~35\ = CARRY((!\inst|counter[0]~33\) # (!\inst|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(1),
	datad => VCC,
	cin => \inst|counter[0]~33\,
	combout => \inst|counter[1]~34_combout\,
	cout => \inst|counter[1]~35\);

-- Location: FF_X60_Y59_N3
\inst|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|counter[1]~34_combout\,
	sclr => \ALT_INV_IRDA_RXD~input_o\,
	ena => \inst|WideOr3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(1));

-- Location: LCCOMB_X60_Y59_N4
\inst|counter[2]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter[2]~36_combout\ = (\inst|counter\(2) & (\inst|counter[1]~35\ $ (GND))) # (!\inst|counter\(2) & (!\inst|counter[1]~35\ & VCC))
-- \inst|counter[2]~37\ = CARRY((\inst|counter\(2) & !\inst|counter[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(2),
	datad => VCC,
	cin => \inst|counter[1]~35\,
	combout => \inst|counter[2]~36_combout\,
	cout => \inst|counter[2]~37\);

-- Location: FF_X60_Y59_N5
\inst|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|counter[2]~36_combout\,
	sclr => \ALT_INV_IRDA_RXD~input_o\,
	ena => \inst|WideOr3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(2));

-- Location: LCCOMB_X60_Y59_N6
\inst|counter[3]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter[3]~38_combout\ = (\inst|counter\(3) & (!\inst|counter[2]~37\)) # (!\inst|counter\(3) & ((\inst|counter[2]~37\) # (GND)))
-- \inst|counter[3]~39\ = CARRY((!\inst|counter[2]~37\) # (!\inst|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(3),
	datad => VCC,
	cin => \inst|counter[2]~37\,
	combout => \inst|counter[3]~38_combout\,
	cout => \inst|counter[3]~39\);

-- Location: FF_X60_Y59_N7
\inst|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|counter[3]~38_combout\,
	sclr => \ALT_INV_IRDA_RXD~input_o\,
	ena => \inst|WideOr3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(3));

-- Location: LCCOMB_X60_Y59_N8
\inst|counter[4]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter[4]~40_combout\ = (\inst|counter\(4) & (\inst|counter[3]~39\ $ (GND))) # (!\inst|counter\(4) & (!\inst|counter[3]~39\ & VCC))
-- \inst|counter[4]~41\ = CARRY((\inst|counter\(4) & !\inst|counter[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(4),
	datad => VCC,
	cin => \inst|counter[3]~39\,
	combout => \inst|counter[4]~40_combout\,
	cout => \inst|counter[4]~41\);

-- Location: FF_X60_Y59_N9
\inst|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|counter[4]~40_combout\,
	sclr => \ALT_INV_IRDA_RXD~input_o\,
	ena => \inst|WideOr3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(4));

-- Location: LCCOMB_X60_Y59_N10
\inst|counter[5]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter[5]~42_combout\ = (\inst|counter\(5) & (!\inst|counter[4]~41\)) # (!\inst|counter\(5) & ((\inst|counter[4]~41\) # (GND)))
-- \inst|counter[5]~43\ = CARRY((!\inst|counter[4]~41\) # (!\inst|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(5),
	datad => VCC,
	cin => \inst|counter[4]~41\,
	combout => \inst|counter[5]~42_combout\,
	cout => \inst|counter[5]~43\);

-- Location: FF_X60_Y59_N11
\inst|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|counter[5]~42_combout\,
	sclr => \ALT_INV_IRDA_RXD~input_o\,
	ena => \inst|WideOr3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(5));

-- Location: LCCOMB_X60_Y59_N12
\inst|counter[6]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter[6]~44_combout\ = (\inst|counter\(6) & (\inst|counter[5]~43\ $ (GND))) # (!\inst|counter\(6) & (!\inst|counter[5]~43\ & VCC))
-- \inst|counter[6]~45\ = CARRY((\inst|counter\(6) & !\inst|counter[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(6),
	datad => VCC,
	cin => \inst|counter[5]~43\,
	combout => \inst|counter[6]~44_combout\,
	cout => \inst|counter[6]~45\);

-- Location: FF_X60_Y59_N13
\inst|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|counter[6]~44_combout\,
	sclr => \ALT_INV_IRDA_RXD~input_o\,
	ena => \inst|WideOr3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(6));

-- Location: LCCOMB_X60_Y59_N14
\inst|counter[7]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter[7]~46_combout\ = (\inst|counter\(7) & (!\inst|counter[6]~45\)) # (!\inst|counter\(7) & ((\inst|counter[6]~45\) # (GND)))
-- \inst|counter[7]~47\ = CARRY((!\inst|counter[6]~45\) # (!\inst|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(7),
	datad => VCC,
	cin => \inst|counter[6]~45\,
	combout => \inst|counter[7]~46_combout\,
	cout => \inst|counter[7]~47\);

-- Location: FF_X60_Y59_N15
\inst|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|counter[7]~46_combout\,
	sclr => \ALT_INV_IRDA_RXD~input_o\,
	ena => \inst|WideOr3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(7));

-- Location: LCCOMB_X60_Y59_N16
\inst|counter[8]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter[8]~48_combout\ = (\inst|counter\(8) & (\inst|counter[7]~47\ $ (GND))) # (!\inst|counter\(8) & (!\inst|counter[7]~47\ & VCC))
-- \inst|counter[8]~49\ = CARRY((\inst|counter\(8) & !\inst|counter[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(8),
	datad => VCC,
	cin => \inst|counter[7]~47\,
	combout => \inst|counter[8]~48_combout\,
	cout => \inst|counter[8]~49\);

-- Location: FF_X60_Y59_N17
\inst|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|counter[8]~48_combout\,
	sclr => \ALT_INV_IRDA_RXD~input_o\,
	ena => \inst|WideOr3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(8));

-- Location: LCCOMB_X60_Y59_N18
\inst|counter[9]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter[9]~50_combout\ = (\inst|counter\(9) & (!\inst|counter[8]~49\)) # (!\inst|counter\(9) & ((\inst|counter[8]~49\) # (GND)))
-- \inst|counter[9]~51\ = CARRY((!\inst|counter[8]~49\) # (!\inst|counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(9),
	datad => VCC,
	cin => \inst|counter[8]~49\,
	combout => \inst|counter[9]~50_combout\,
	cout => \inst|counter[9]~51\);

-- Location: FF_X60_Y59_N19
\inst|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|counter[9]~50_combout\,
	sclr => \ALT_INV_IRDA_RXD~input_o\,
	ena => \inst|WideOr3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(9));

-- Location: LCCOMB_X60_Y59_N20
\inst|counter[10]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter[10]~52_combout\ = (\inst|counter\(10) & (\inst|counter[9]~51\ $ (GND))) # (!\inst|counter\(10) & (!\inst|counter[9]~51\ & VCC))
-- \inst|counter[10]~53\ = CARRY((\inst|counter\(10) & !\inst|counter[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(10),
	datad => VCC,
	cin => \inst|counter[9]~51\,
	combout => \inst|counter[10]~52_combout\,
	cout => \inst|counter[10]~53\);

-- Location: FF_X60_Y59_N21
\inst|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|counter[10]~52_combout\,
	sclr => \ALT_INV_IRDA_RXD~input_o\,
	ena => \inst|WideOr3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(10));

-- Location: LCCOMB_X60_Y59_N22
\inst|counter[11]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter[11]~54_combout\ = (\inst|counter\(11) & (!\inst|counter[10]~53\)) # (!\inst|counter\(11) & ((\inst|counter[10]~53\) # (GND)))
-- \inst|counter[11]~55\ = CARRY((!\inst|counter[10]~53\) # (!\inst|counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(11),
	datad => VCC,
	cin => \inst|counter[10]~53\,
	combout => \inst|counter[11]~54_combout\,
	cout => \inst|counter[11]~55\);

-- Location: FF_X60_Y59_N23
\inst|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|counter[11]~54_combout\,
	sclr => \ALT_INV_IRDA_RXD~input_o\,
	ena => \inst|WideOr3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(11));

-- Location: LCCOMB_X60_Y59_N24
\inst|counter[12]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter[12]~56_combout\ = (\inst|counter\(12) & (\inst|counter[11]~55\ $ (GND))) # (!\inst|counter\(12) & (!\inst|counter[11]~55\ & VCC))
-- \inst|counter[12]~57\ = CARRY((\inst|counter\(12) & !\inst|counter[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(12),
	datad => VCC,
	cin => \inst|counter[11]~55\,
	combout => \inst|counter[12]~56_combout\,
	cout => \inst|counter[12]~57\);

-- Location: FF_X60_Y59_N25
\inst|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|counter[12]~56_combout\,
	sclr => \ALT_INV_IRDA_RXD~input_o\,
	ena => \inst|WideOr3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(12));

-- Location: LCCOMB_X60_Y59_N26
\inst|counter[13]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter[13]~58_combout\ = (\inst|counter\(13) & (!\inst|counter[12]~57\)) # (!\inst|counter\(13) & ((\inst|counter[12]~57\) # (GND)))
-- \inst|counter[13]~59\ = CARRY((!\inst|counter[12]~57\) # (!\inst|counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(13),
	datad => VCC,
	cin => \inst|counter[12]~57\,
	combout => \inst|counter[13]~58_combout\,
	cout => \inst|counter[13]~59\);

-- Location: FF_X60_Y59_N27
\inst|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|counter[13]~58_combout\,
	sclr => \ALT_INV_IRDA_RXD~input_o\,
	ena => \inst|WideOr3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(13));

-- Location: LCCOMB_X60_Y59_N28
\inst|counter[14]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter[14]~60_combout\ = (\inst|counter\(14) & (\inst|counter[13]~59\ $ (GND))) # (!\inst|counter\(14) & (!\inst|counter[13]~59\ & VCC))
-- \inst|counter[14]~61\ = CARRY((\inst|counter\(14) & !\inst|counter[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(14),
	datad => VCC,
	cin => \inst|counter[13]~59\,
	combout => \inst|counter[14]~60_combout\,
	cout => \inst|counter[14]~61\);

-- Location: FF_X60_Y59_N29
\inst|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|counter[14]~60_combout\,
	sclr => \ALT_INV_IRDA_RXD~input_o\,
	ena => \inst|WideOr3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(14));

-- Location: LCCOMB_X60_Y59_N30
\inst|counter[15]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter[15]~62_combout\ = (\inst|counter\(15) & (!\inst|counter[14]~61\)) # (!\inst|counter\(15) & ((\inst|counter[14]~61\) # (GND)))
-- \inst|counter[15]~63\ = CARRY((!\inst|counter[14]~61\) # (!\inst|counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(15),
	datad => VCC,
	cin => \inst|counter[14]~61\,
	combout => \inst|counter[15]~62_combout\,
	cout => \inst|counter[15]~63\);

-- Location: FF_X60_Y59_N31
\inst|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|counter[15]~62_combout\,
	sclr => \ALT_INV_IRDA_RXD~input_o\,
	ena => \inst|WideOr3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(15));

-- Location: LCCOMB_X60_Y58_N0
\inst|counter[16]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter[16]~64_combout\ = (\inst|counter\(16) & (\inst|counter[15]~63\ $ (GND))) # (!\inst|counter\(16) & (!\inst|counter[15]~63\ & VCC))
-- \inst|counter[16]~65\ = CARRY((\inst|counter\(16) & !\inst|counter[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(16),
	datad => VCC,
	cin => \inst|counter[15]~63\,
	combout => \inst|counter[16]~64_combout\,
	cout => \inst|counter[16]~65\);

-- Location: FF_X60_Y58_N1
\inst|counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|counter[16]~64_combout\,
	sclr => \ALT_INV_IRDA_RXD~input_o\,
	ena => \inst|WideOr3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(16));

-- Location: LCCOMB_X60_Y58_N2
\inst|counter[17]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter[17]~66_combout\ = (\inst|counter\(17) & (!\inst|counter[16]~65\)) # (!\inst|counter\(17) & ((\inst|counter[16]~65\) # (GND)))
-- \inst|counter[17]~67\ = CARRY((!\inst|counter[16]~65\) # (!\inst|counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(17),
	datad => VCC,
	cin => \inst|counter[16]~65\,
	combout => \inst|counter[17]~66_combout\,
	cout => \inst|counter[17]~67\);

-- Location: FF_X60_Y58_N3
\inst|counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|counter[17]~66_combout\,
	sclr => \ALT_INV_IRDA_RXD~input_o\,
	ena => \inst|WideOr3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(17));

-- Location: LCCOMB_X61_Y59_N0
\inst|LessThan0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~8_combout\ = (\inst|counter\(14) & ((\inst|counter\(13)) # ((\inst|counter\(11)) # (\inst|counter\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(13),
	datab => \inst|counter\(11),
	datac => \inst|counter\(12),
	datad => \inst|counter\(14),
	combout => \inst|LessThan0~8_combout\);

-- Location: LCCOMB_X61_Y59_N10
\inst|LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~9_combout\ = ((!\inst|counter\(15) & (!\inst|counter\(16) & !\inst|LessThan0~8_combout\))) # (!\inst|counter\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(17),
	datab => \inst|counter\(15),
	datac => \inst|counter\(16),
	datad => \inst|LessThan0~8_combout\,
	combout => \inst|LessThan0~9_combout\);

-- Location: LCCOMB_X60_Y58_N4
\inst|counter[18]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter[18]~68_combout\ = (\inst|counter\(18) & (\inst|counter[17]~67\ $ (GND))) # (!\inst|counter\(18) & (!\inst|counter[17]~67\ & VCC))
-- \inst|counter[18]~69\ = CARRY((\inst|counter\(18) & !\inst|counter[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(18),
	datad => VCC,
	cin => \inst|counter[17]~67\,
	combout => \inst|counter[18]~68_combout\,
	cout => \inst|counter[18]~69\);

-- Location: FF_X60_Y58_N5
\inst|counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|counter[18]~68_combout\,
	sclr => \ALT_INV_IRDA_RXD~input_o\,
	ena => \inst|WideOr3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(18));

-- Location: LCCOMB_X60_Y58_N6
\inst|counter[19]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter[19]~70_combout\ = (\inst|counter\(19) & (!\inst|counter[18]~69\)) # (!\inst|counter\(19) & ((\inst|counter[18]~69\) # (GND)))
-- \inst|counter[19]~71\ = CARRY((!\inst|counter[18]~69\) # (!\inst|counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(19),
	datad => VCC,
	cin => \inst|counter[18]~69\,
	combout => \inst|counter[19]~70_combout\,
	cout => \inst|counter[19]~71\);

-- Location: FF_X60_Y58_N7
\inst|counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|counter[19]~70_combout\,
	sclr => \ALT_INV_IRDA_RXD~input_o\,
	ena => \inst|WideOr3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(19));

-- Location: LCCOMB_X60_Y58_N8
\inst|counter[20]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter[20]~72_combout\ = (\inst|counter\(20) & (\inst|counter[19]~71\ $ (GND))) # (!\inst|counter\(20) & (!\inst|counter[19]~71\ & VCC))
-- \inst|counter[20]~73\ = CARRY((\inst|counter\(20) & !\inst|counter[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(20),
	datad => VCC,
	cin => \inst|counter[19]~71\,
	combout => \inst|counter[20]~72_combout\,
	cout => \inst|counter[20]~73\);

-- Location: FF_X60_Y58_N9
\inst|counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|counter[20]~72_combout\,
	sclr => \ALT_INV_IRDA_RXD~input_o\,
	ena => \inst|WideOr3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(20));

-- Location: LCCOMB_X60_Y58_N10
\inst|counter[21]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter[21]~74_combout\ = (\inst|counter\(21) & (!\inst|counter[20]~73\)) # (!\inst|counter\(21) & ((\inst|counter[20]~73\) # (GND)))
-- \inst|counter[21]~75\ = CARRY((!\inst|counter[20]~73\) # (!\inst|counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(21),
	datad => VCC,
	cin => \inst|counter[20]~73\,
	combout => \inst|counter[21]~74_combout\,
	cout => \inst|counter[21]~75\);

-- Location: FF_X60_Y58_N11
\inst|counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|counter[21]~74_combout\,
	sclr => \ALT_INV_IRDA_RXD~input_o\,
	ena => \inst|WideOr3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(21));

-- Location: LCCOMB_X60_Y58_N12
\inst|counter[22]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter[22]~76_combout\ = (\inst|counter\(22) & (\inst|counter[21]~75\ $ (GND))) # (!\inst|counter\(22) & (!\inst|counter[21]~75\ & VCC))
-- \inst|counter[22]~77\ = CARRY((\inst|counter\(22) & !\inst|counter[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(22),
	datad => VCC,
	cin => \inst|counter[21]~75\,
	combout => \inst|counter[22]~76_combout\,
	cout => \inst|counter[22]~77\);

-- Location: FF_X60_Y58_N13
\inst|counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|counter[22]~76_combout\,
	sclr => \ALT_INV_IRDA_RXD~input_o\,
	ena => \inst|WideOr3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(22));

-- Location: LCCOMB_X60_Y58_N14
\inst|counter[23]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter[23]~78_combout\ = (\inst|counter\(23) & (!\inst|counter[22]~77\)) # (!\inst|counter\(23) & ((\inst|counter[22]~77\) # (GND)))
-- \inst|counter[23]~79\ = CARRY((!\inst|counter[22]~77\) # (!\inst|counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(23),
	datad => VCC,
	cin => \inst|counter[22]~77\,
	combout => \inst|counter[23]~78_combout\,
	cout => \inst|counter[23]~79\);

-- Location: FF_X60_Y58_N15
\inst|counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|counter[23]~78_combout\,
	sclr => \ALT_INV_IRDA_RXD~input_o\,
	ena => \inst|WideOr3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(23));

-- Location: LCCOMB_X60_Y58_N16
\inst|counter[24]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter[24]~80_combout\ = (\inst|counter\(24) & (\inst|counter[23]~79\ $ (GND))) # (!\inst|counter\(24) & (!\inst|counter[23]~79\ & VCC))
-- \inst|counter[24]~81\ = CARRY((\inst|counter\(24) & !\inst|counter[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(24),
	datad => VCC,
	cin => \inst|counter[23]~79\,
	combout => \inst|counter[24]~80_combout\,
	cout => \inst|counter[24]~81\);

-- Location: FF_X60_Y58_N17
\inst|counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|counter[24]~80_combout\,
	sclr => \ALT_INV_IRDA_RXD~input_o\,
	ena => \inst|WideOr3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(24));

-- Location: LCCOMB_X60_Y58_N18
\inst|counter[25]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter[25]~82_combout\ = (\inst|counter\(25) & (!\inst|counter[24]~81\)) # (!\inst|counter\(25) & ((\inst|counter[24]~81\) # (GND)))
-- \inst|counter[25]~83\ = CARRY((!\inst|counter[24]~81\) # (!\inst|counter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(25),
	datad => VCC,
	cin => \inst|counter[24]~81\,
	combout => \inst|counter[25]~82_combout\,
	cout => \inst|counter[25]~83\);

-- Location: FF_X60_Y58_N19
\inst|counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|counter[25]~82_combout\,
	sclr => \ALT_INV_IRDA_RXD~input_o\,
	ena => \inst|WideOr3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(25));

-- Location: LCCOMB_X60_Y58_N20
\inst|counter[26]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter[26]~84_combout\ = (\inst|counter\(26) & (\inst|counter[25]~83\ $ (GND))) # (!\inst|counter\(26) & (!\inst|counter[25]~83\ & VCC))
-- \inst|counter[26]~85\ = CARRY((\inst|counter\(26) & !\inst|counter[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(26),
	datad => VCC,
	cin => \inst|counter[25]~83\,
	combout => \inst|counter[26]~84_combout\,
	cout => \inst|counter[26]~85\);

-- Location: FF_X60_Y58_N21
\inst|counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|counter[26]~84_combout\,
	sclr => \ALT_INV_IRDA_RXD~input_o\,
	ena => \inst|WideOr3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(26));

-- Location: LCCOMB_X60_Y58_N22
\inst|counter[27]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter[27]~86_combout\ = (\inst|counter\(27) & (!\inst|counter[26]~85\)) # (!\inst|counter\(27) & ((\inst|counter[26]~85\) # (GND)))
-- \inst|counter[27]~87\ = CARRY((!\inst|counter[26]~85\) # (!\inst|counter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(27),
	datad => VCC,
	cin => \inst|counter[26]~85\,
	combout => \inst|counter[27]~86_combout\,
	cout => \inst|counter[27]~87\);

-- Location: FF_X60_Y58_N23
\inst|counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|counter[27]~86_combout\,
	sclr => \ALT_INV_IRDA_RXD~input_o\,
	ena => \inst|WideOr3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(27));

-- Location: LCCOMB_X60_Y58_N24
\inst|counter[28]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter[28]~88_combout\ = (\inst|counter\(28) & (\inst|counter[27]~87\ $ (GND))) # (!\inst|counter\(28) & (!\inst|counter[27]~87\ & VCC))
-- \inst|counter[28]~89\ = CARRY((\inst|counter\(28) & !\inst|counter[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(28),
	datad => VCC,
	cin => \inst|counter[27]~87\,
	combout => \inst|counter[28]~88_combout\,
	cout => \inst|counter[28]~89\);

-- Location: FF_X60_Y58_N25
\inst|counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|counter[28]~88_combout\,
	sclr => \ALT_INV_IRDA_RXD~input_o\,
	ena => \inst|WideOr3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(28));

-- Location: LCCOMB_X60_Y58_N26
\inst|counter[29]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter[29]~90_combout\ = (\inst|counter\(29) & (!\inst|counter[28]~89\)) # (!\inst|counter\(29) & ((\inst|counter[28]~89\) # (GND)))
-- \inst|counter[29]~91\ = CARRY((!\inst|counter[28]~89\) # (!\inst|counter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(29),
	datad => VCC,
	cin => \inst|counter[28]~89\,
	combout => \inst|counter[29]~90_combout\,
	cout => \inst|counter[29]~91\);

-- Location: FF_X60_Y58_N27
\inst|counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|counter[29]~90_combout\,
	sclr => \ALT_INV_IRDA_RXD~input_o\,
	ena => \inst|WideOr3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(29));

-- Location: LCCOMB_X60_Y58_N28
\inst|counter[30]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter[30]~92_combout\ = (\inst|counter\(30) & (\inst|counter[29]~91\ $ (GND))) # (!\inst|counter\(30) & (!\inst|counter[29]~91\ & VCC))
-- \inst|counter[30]~93\ = CARRY((\inst|counter\(30) & !\inst|counter[29]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(30),
	datad => VCC,
	cin => \inst|counter[29]~91\,
	combout => \inst|counter[30]~92_combout\,
	cout => \inst|counter[30]~93\);

-- Location: FF_X60_Y58_N29
\inst|counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|counter[30]~92_combout\,
	sclr => \ALT_INV_IRDA_RXD~input_o\,
	ena => \inst|WideOr3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(30));

-- Location: LCCOMB_X60_Y58_N30
\inst|counter[31]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter[31]~94_combout\ = \inst|counter\(31) $ (\inst|counter[30]~93\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(31),
	cin => \inst|counter[30]~93\,
	combout => \inst|counter[31]~94_combout\);

-- Location: FF_X60_Y58_N31
\inst|counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|counter[31]~94_combout\,
	sclr => \ALT_INV_IRDA_RXD~input_o\,
	ena => \inst|WideOr3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(31));

-- Location: LCCOMB_X61_Y59_N16
\inst|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~6_combout\ = (((!\inst|counter\(6)) # (!\inst|counter\(4))) # (!\inst|counter\(5))) # (!\inst|counter\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(7),
	datab => \inst|counter\(5),
	datac => \inst|counter\(4),
	datad => \inst|counter\(6),
	combout => \inst|LessThan0~6_combout\);

-- Location: LCCOMB_X61_Y59_N22
\inst|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~5_combout\ = (!\inst|counter\(10) & !\inst|counter\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(10),
	datad => \inst|counter\(9),
	combout => \inst|LessThan0~5_combout\);

-- Location: LCCOMB_X61_Y59_N20
\inst|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~4_combout\ = (!\inst|counter\(13) & (!\inst|counter\(12) & (!\inst|counter\(16) & !\inst|counter\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(13),
	datab => \inst|counter\(12),
	datac => \inst|counter\(16),
	datad => \inst|counter\(15),
	combout => \inst|LessThan0~4_combout\);

-- Location: LCCOMB_X61_Y59_N30
\inst|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~7_combout\ = (\inst|LessThan0~5_combout\ & (\inst|LessThan0~4_combout\ & ((\inst|LessThan0~6_combout\) # (!\inst|counter\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(8),
	datab => \inst|LessThan0~6_combout\,
	datac => \inst|LessThan0~5_combout\,
	datad => \inst|LessThan0~4_combout\,
	combout => \inst|LessThan0~7_combout\);

-- Location: LCCOMB_X61_Y58_N12
\inst|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~2_combout\ = (!\inst|counter\(29) & (!\inst|counter\(28) & (!\inst|counter\(26) & !\inst|counter\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(29),
	datab => \inst|counter\(28),
	datac => \inst|counter\(26),
	datad => \inst|counter\(27),
	combout => \inst|LessThan0~2_combout\);

-- Location: LCCOMB_X61_Y58_N8
\inst|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~0_combout\ = (!\inst|counter\(21) & (!\inst|counter\(19) & (!\inst|counter\(18) & !\inst|counter\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(21),
	datab => \inst|counter\(19),
	datac => \inst|counter\(18),
	datad => \inst|counter\(20),
	combout => \inst|LessThan0~0_combout\);

-- Location: LCCOMB_X61_Y58_N2
\inst|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~1_combout\ = (!\inst|counter\(23) & (!\inst|counter\(25) & (!\inst|counter\(24) & !\inst|counter\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(23),
	datab => \inst|counter\(25),
	datac => \inst|counter\(24),
	datad => \inst|counter\(22),
	combout => \inst|LessThan0~1_combout\);

-- Location: LCCOMB_X61_Y58_N14
\inst|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~3_combout\ = (\inst|LessThan0~2_combout\ & (!\inst|counter\(30) & (\inst|LessThan0~0_combout\ & \inst|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan0~2_combout\,
	datab => \inst|counter\(30),
	datac => \inst|LessThan0~0_combout\,
	datad => \inst|LessThan0~1_combout\,
	combout => \inst|LessThan0~3_combout\);

-- Location: LCCOMB_X61_Y59_N24
\inst|LessThan0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~10_combout\ = (\inst|counter\(31)) # ((\inst|LessThan0~3_combout\ & ((\inst|LessThan0~9_combout\) # (\inst|LessThan0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan0~9_combout\,
	datab => \inst|counter\(31),
	datac => \inst|LessThan0~7_combout\,
	datad => \inst|LessThan0~3_combout\,
	combout => \inst|LessThan0~10_combout\);

-- Location: LCCOMB_X61_Y59_N18
\inst|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector3~0_combout\ = (\inst|SIGSTATE.IDENTIFY_OPERATION~q\ & (!\IRDA_RXD~input_o\ & \inst|LessThan0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SIGSTATE.IDENTIFY_OPERATION~q\,
	datac => \IRDA_RXD~input_o\,
	datad => \inst|LessThan0~10_combout\,
	combout => \inst|Selector3~0_combout\);

-- Location: FF_X61_Y59_N19
\inst|SIGSTATE.REPEAT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SIGSTATE.REPEAT~q\);

-- Location: LCCOMB_X60_Y61_N28
\inst|command[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|command[7]~0_combout\ = (\inst|SIGSTATE.CHECKOUT~q\ & \inst|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|SIGSTATE.CHECKOUT~q\,
	datad => \inst|Equal0~10_combout\,
	combout => \inst|command[7]~0_combout\);

-- Location: LCCOMB_X60_Y61_N6
\inst|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector0~0_combout\ = (!\inst|SIGSTATE.REPEAT~q\ & (!\inst|command[7]~0_combout\ & ((\inst|SIGSTATE.IDLE~q\) # (!\IRDA_RXD~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SIGSTATE.REPEAT~q\,
	datab => \IRDA_RXD~input_o\,
	datac => \inst|SIGSTATE.IDLE~q\,
	datad => \inst|command[7]~0_combout\,
	combout => \inst|Selector0~0_combout\);

-- Location: FF_X60_Y61_N7
\inst|SIGSTATE.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SIGSTATE.IDLE~q\);

-- Location: LCCOMB_X59_Y61_N28
\inst|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector1~0_combout\ = (\inst|SIGSTATE.WAIT_HEADER~q\) # (!\inst|SIGSTATE.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|SIGSTATE.WAIT_HEADER~q\,
	datad => \inst|SIGSTATE.IDLE~q\,
	combout => \inst|Selector1~0_combout\);

-- Location: FF_X59_Y61_N29
\inst|SIGSTATE.WAIT_HEADER\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|Selector1~0_combout\,
	sclr => \IRDA_RXD~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SIGSTATE.WAIT_HEADER~q\);

-- Location: LCCOMB_X60_Y61_N26
\inst|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector2~0_combout\ = (!\inst|SIGSTATE~20_combout\ & (!\inst|SIGSTATE.CHECKOUT~q\ & (\IRDA_RXD~input_o\ & !\inst|SIGSTATE.REPEAT~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SIGSTATE~20_combout\,
	datab => \inst|SIGSTATE.CHECKOUT~q\,
	datac => \IRDA_RXD~input_o\,
	datad => \inst|SIGSTATE.REPEAT~q\,
	combout => \inst|Selector2~0_combout\);

-- Location: LCCOMB_X59_Y61_N4
\inst|Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector2~1_combout\ = (\inst|Selector2~0_combout\ & ((\inst|SIGSTATE.WAIT_HEADER~q\) # ((!\inst|SIGSTATE.WAIT_BIT~q\ & \inst|SIGSTATE.IDENTIFY_OPERATION~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SIGSTATE.WAIT_BIT~q\,
	datab => \inst|SIGSTATE.WAIT_HEADER~q\,
	datac => \inst|SIGSTATE.IDENTIFY_OPERATION~q\,
	datad => \inst|Selector2~0_combout\,
	combout => \inst|Selector2~1_combout\);

-- Location: FF_X59_Y61_N5
\inst|SIGSTATE.IDENTIFY_OPERATION\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|Selector2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SIGSTATE.IDENTIFY_OPERATION~q\);

-- Location: LCCOMB_X60_Y61_N10
\inst|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector4~0_combout\ = (\inst|SIGSTATE.WAIT_BIT~q\) # ((\inst|SIGSTATE.IDENTIFY_OPERATION~q\ & !\inst|LessThan0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SIGSTATE.IDENTIFY_OPERATION~q\,
	datab => \inst|SIGSTATE.WAIT_BIT~q\,
	datad => \inst|LessThan0~10_combout\,
	combout => \inst|Selector4~0_combout\);

-- Location: LCCOMB_X60_Y61_N20
\inst|Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector4~1_combout\ = (\inst|SIGSTATE.CHECKOUT~q\ & (((!\IRDA_RXD~input_o\ & \inst|Selector4~0_combout\)) # (!\inst|Equal0~10_combout\))) # (!\inst|SIGSTATE.CHECKOUT~q\ & (((!\IRDA_RXD~input_o\ & \inst|Selector4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SIGSTATE.CHECKOUT~q\,
	datab => \inst|Equal0~10_combout\,
	datac => \IRDA_RXD~input_o\,
	datad => \inst|Selector4~0_combout\,
	combout => \inst|Selector4~1_combout\);

-- Location: FF_X60_Y61_N21
\inst|SIGSTATE.WAIT_BIT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|Selector4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SIGSTATE.WAIT_BIT~q\);

-- Location: LCCOMB_X59_Y61_N26
\inst|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector5~0_combout\ = (\inst|Selector2~0_combout\ & ((\inst|SIGSTATE.WAIT_BIT~q\) # ((!\inst|SIGSTATE.WAIT_HEADER~q\ & \inst|SIGSTATE.IDENTIFY_BIT~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SIGSTATE.WAIT_BIT~q\,
	datab => \inst|SIGSTATE.WAIT_HEADER~q\,
	datac => \inst|SIGSTATE.IDENTIFY_BIT~q\,
	datad => \inst|Selector2~0_combout\,
	combout => \inst|Selector5~0_combout\);

-- Location: FF_X59_Y61_N27
\inst|SIGSTATE.IDENTIFY_BIT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SIGSTATE.IDENTIFY_BIT~q\);

-- Location: LCCOMB_X61_Y59_N12
\inst|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan1~2_combout\ = (!\inst|counter\(10) & (!\inst|counter\(11) & (!\inst|counter\(13) & !\inst|counter\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(10),
	datab => \inst|counter\(11),
	datac => \inst|counter\(13),
	datad => \inst|counter\(12),
	combout => \inst|LessThan1~2_combout\);

-- Location: LCCOMB_X61_Y59_N4
\inst|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan1~0_combout\ = ((!\inst|counter\(5) & (!\inst|counter\(4) & !\inst|counter\(7)))) # (!\inst|counter\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(5),
	datab => \inst|counter\(4),
	datac => \inst|counter\(8),
	datad => \inst|counter\(7),
	combout => \inst|LessThan1~0_combout\);

-- Location: LCCOMB_X61_Y59_N26
\inst|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan1~1_combout\ = ((\inst|LessThan1~0_combout\) # ((!\inst|counter\(7) & !\inst|counter\(6)))) # (!\inst|counter\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(7),
	datab => \inst|counter\(9),
	datac => \inst|LessThan1~0_combout\,
	datad => \inst|counter\(6),
	combout => \inst|LessThan1~1_combout\);

-- Location: LCCOMB_X61_Y59_N6
\inst|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan1~3_combout\ = (((\inst|LessThan1~2_combout\ & \inst|LessThan1~1_combout\)) # (!\inst|counter\(15))) # (!\inst|counter\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan1~2_combout\,
	datab => \inst|counter\(14),
	datac => \inst|LessThan1~1_combout\,
	datad => \inst|counter\(15),
	combout => \inst|LessThan1~3_combout\);

-- Location: LCCOMB_X61_Y59_N8
\inst|LessThan1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan1~4_combout\ = (!\inst|counter\(16) & !\inst|counter\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(16),
	datad => \inst|counter\(17),
	combout => \inst|LessThan1~4_combout\);

-- Location: LCCOMB_X61_Y59_N2
\inst|LessThan1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan1~5_combout\ = (\inst|counter\(31)) # ((\inst|LessThan1~3_combout\ & (\inst|LessThan1~4_combout\ & \inst|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan1~3_combout\,
	datab => \inst|counter\(31),
	datac => \inst|LessThan1~4_combout\,
	datad => \inst|LessThan0~3_combout\,
	combout => \inst|LessThan1~5_combout\);

-- Location: LCCOMB_X61_Y61_N28
\inst|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector7~0_combout\ = (!\IRDA_RXD~input_o\ & (\inst|SIGSTATE.IDENTIFY_BIT~q\ & (!\inst|LessThan1~5_combout\ & \inst|Selector6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IRDA_RXD~input_o\,
	datab => \inst|SIGSTATE.IDENTIFY_BIT~q\,
	datac => \inst|LessThan1~5_combout\,
	datad => \inst|Selector6~0_combout\,
	combout => \inst|Selector7~0_combout\);

-- Location: FF_X61_Y61_N29
\inst|SIGSTATE.SAVE_ONE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SIGSTATE.SAVE_ONE~q\);

-- Location: LCCOMB_X61_Y61_N2
\inst|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector6~0_combout\ = (!\inst|SIGSTATE.REPEAT~q\ & (!\inst|SIGSTATE.SAVE_ZERO~q\ & (!\inst|SIGSTATE.CHECKOUT~q\ & !\inst|SIGSTATE.SAVE_ONE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SIGSTATE.REPEAT~q\,
	datab => \inst|SIGSTATE.SAVE_ZERO~q\,
	datac => \inst|SIGSTATE.CHECKOUT~q\,
	datad => \inst|SIGSTATE.SAVE_ONE~q\,
	combout => \inst|Selector6~0_combout\);

-- Location: LCCOMB_X61_Y59_N28
\inst|Selector6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector6~1_combout\ = (\inst|SIGSTATE.IDENTIFY_BIT~q\ & (!\IRDA_RXD~input_o\ & (\inst|Selector6~0_combout\ & \inst|LessThan1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SIGSTATE.IDENTIFY_BIT~q\,
	datab => \IRDA_RXD~input_o\,
	datac => \inst|Selector6~0_combout\,
	datad => \inst|LessThan1~5_combout\,
	combout => \inst|Selector6~1_combout\);

-- Location: FF_X61_Y59_N29
\inst|SIGSTATE.SAVE_ZERO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|Selector6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SIGSTATE.SAVE_ZERO~q\);

-- Location: LCCOMB_X61_Y61_N22
\inst|SIGSTATE~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|SIGSTATE~20_combout\ = (\inst|SIGSTATE.SAVE_ZERO~q\) # (\inst|SIGSTATE.SAVE_ONE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|SIGSTATE.SAVE_ZERO~q\,
	datad => \inst|SIGSTATE.SAVE_ONE~q\,
	combout => \inst|SIGSTATE~20_combout\);

-- Location: FF_X61_Y61_N19
\inst|SIGSTATE.CHECKOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst|SIGSTATE~20_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SIGSTATE.CHECKOUT~q\);

-- Location: FF_X62_Y61_N1
\inst|number_of_bits[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|number_of_bits[0]~32_combout\,
	sclr => \inst|SIGSTATE.CHECKOUT~q\,
	ena => \inst|number_of_bits[25]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|number_of_bits\(0));

-- Location: FF_X62_Y61_N3
\inst|number_of_bits[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|number_of_bits[1]~34_combout\,
	sclr => \inst|SIGSTATE.CHECKOUT~q\,
	ena => \inst|number_of_bits[25]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|number_of_bits\(1));

-- Location: LCCOMB_X60_Y61_N14
\inst|Selector42~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector42~1_combout\ = (\inst|number_of_bits\(1) & \inst|number_of_bits\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|number_of_bits\(1),
	datad => \inst|number_of_bits\(2),
	combout => \inst|Selector42~1_combout\);

-- Location: LCCOMB_X61_Y61_N18
\inst|Selector42~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector42~0_combout\ = (\inst|number_of_bits\(4) & (\inst|number_of_bits\(0) & (\inst|SIGSTATE~20_combout\ & !\inst|number_of_bits\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|number_of_bits\(4),
	datab => \inst|number_of_bits\(0),
	datac => \inst|SIGSTATE~20_combout\,
	datad => \inst|number_of_bits\(3),
	combout => \inst|Selector42~0_combout\);

-- Location: LCCOMB_X61_Y61_N0
\inst|data_buffer[23]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|data_buffer[23]~0_combout\ = (\inst|Selector42~1_combout\ & ((\inst|Selector42~0_combout\ & (!\inst|SIGSTATE.SAVE_ZERO~q\)) # (!\inst|Selector42~0_combout\ & ((\inst|data_buffer\(23)))))) # (!\inst|Selector42~1_combout\ & 
-- (((\inst|data_buffer\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector42~1_combout\,
	datab => \inst|SIGSTATE.SAVE_ZERO~q\,
	datac => \inst|data_buffer\(23),
	datad => \inst|Selector42~0_combout\,
	combout => \inst|data_buffer[23]~0_combout\);

-- Location: FF_X61_Y61_N1
\inst|data_buffer[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|data_buffer[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|data_buffer\(23));

-- Location: FF_X60_Y61_N29
\inst|command[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst|data_buffer\(23),
	sload => VCC,
	ena => \inst|command[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|command\(7));

-- Location: LCCOMB_X61_Y61_N24
\inst|Selector43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector43~0_combout\ = (\inst|number_of_bits\(4) & (!\inst|number_of_bits\(0) & (\inst|SIGSTATE~20_combout\ & !\inst|number_of_bits\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|number_of_bits\(4),
	datab => \inst|number_of_bits\(0),
	datac => \inst|SIGSTATE~20_combout\,
	datad => \inst|number_of_bits\(3),
	combout => \inst|Selector43~0_combout\);

-- Location: LCCOMB_X61_Y61_N6
\inst|data_buffer[22]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|data_buffer[22]~1_combout\ = (\inst|Selector42~1_combout\ & ((\inst|Selector43~0_combout\ & (!\inst|SIGSTATE.SAVE_ZERO~q\)) # (!\inst|Selector43~0_combout\ & ((\inst|data_buffer\(22)))))) # (!\inst|Selector42~1_combout\ & 
-- (((\inst|data_buffer\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector42~1_combout\,
	datab => \inst|SIGSTATE.SAVE_ZERO~q\,
	datac => \inst|data_buffer\(22),
	datad => \inst|Selector43~0_combout\,
	combout => \inst|data_buffer[22]~1_combout\);

-- Location: FF_X61_Y61_N7
\inst|data_buffer[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|data_buffer[22]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|data_buffer\(22));

-- Location: FF_X60_Y61_N15
\inst|command[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst|data_buffer\(22),
	sload => VCC,
	ena => \inst|command[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|command\(6));

-- Location: LCCOMB_X60_Y61_N4
\inst|Selector44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector44~0_combout\ = (!\inst|number_of_bits\(1) & \inst|number_of_bits\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|number_of_bits\(1),
	datad => \inst|number_of_bits\(2),
	combout => \inst|Selector44~0_combout\);

-- Location: LCCOMB_X60_Y61_N30
\inst|data_buffer[21]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|data_buffer[21]~2_combout\ = (\inst|Selector44~0_combout\ & ((\inst|Selector42~0_combout\ & (!\inst|SIGSTATE.SAVE_ZERO~q\)) # (!\inst|Selector42~0_combout\ & ((\inst|data_buffer\(21)))))) # (!\inst|Selector44~0_combout\ & 
-- (((\inst|data_buffer\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SIGSTATE.SAVE_ZERO~q\,
	datab => \inst|Selector44~0_combout\,
	datac => \inst|data_buffer\(21),
	datad => \inst|Selector42~0_combout\,
	combout => \inst|data_buffer[21]~2_combout\);

-- Location: FF_X60_Y61_N31
\inst|data_buffer[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|data_buffer[21]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|data_buffer\(21));

-- Location: FF_X60_Y61_N9
\inst|command[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst|data_buffer\(21),
	sload => VCC,
	ena => \inst|command[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|command\(5));

-- Location: LCCOMB_X59_Y61_N16
\inst|data_buffer[20]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|data_buffer[20]~3_combout\ = (\inst|Selector44~0_combout\ & ((\inst|Selector43~0_combout\ & (!\inst|SIGSTATE.SAVE_ZERO~q\)) # (!\inst|Selector43~0_combout\ & ((\inst|data_buffer\(20)))))) # (!\inst|Selector44~0_combout\ & 
-- (((\inst|data_buffer\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector44~0_combout\,
	datab => \inst|SIGSTATE.SAVE_ZERO~q\,
	datac => \inst|data_buffer\(20),
	datad => \inst|Selector43~0_combout\,
	combout => \inst|data_buffer[20]~3_combout\);

-- Location: FF_X59_Y61_N17
\inst|data_buffer[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|data_buffer[20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|data_buffer\(20));

-- Location: FF_X60_Y61_N11
\inst|command[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst|data_buffer\(20),
	sload => VCC,
	ena => \inst|command[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|command\(4));

-- Location: LCCOMB_X60_Y61_N18
\inst|Selector47~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector47~0_combout\ = (\inst|number_of_bits\(1) & !\inst|number_of_bits\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|number_of_bits\(1),
	datad => \inst|number_of_bits\(2),
	combout => \inst|Selector47~0_combout\);

-- Location: LCCOMB_X60_Y61_N0
\inst|data_buffer[19]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|data_buffer[19]~4_combout\ = (\inst|Selector47~0_combout\ & ((\inst|Selector42~0_combout\ & (!\inst|SIGSTATE.SAVE_ZERO~q\)) # (!\inst|Selector42~0_combout\ & ((\inst|data_buffer\(19)))))) # (!\inst|Selector47~0_combout\ & 
-- (((\inst|data_buffer\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SIGSTATE.SAVE_ZERO~q\,
	datab => \inst|Selector47~0_combout\,
	datac => \inst|data_buffer\(19),
	datad => \inst|Selector42~0_combout\,
	combout => \inst|data_buffer[19]~4_combout\);

-- Location: FF_X60_Y61_N1
\inst|data_buffer[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|data_buffer[19]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|data_buffer\(19));

-- Location: LCCOMB_X60_Y61_N24
\inst|command[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|command[3]~feeder_combout\ = \inst|data_buffer\(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|data_buffer\(19),
	combout => \inst|command[3]~feeder_combout\);

-- Location: FF_X60_Y61_N25
\inst|command[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|command[3]~feeder_combout\,
	ena => \inst|command[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|command\(3));

-- Location: LCCOMB_X59_Y61_N6
\inst|data_buffer[18]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|data_buffer[18]~5_combout\ = (\inst|Selector47~0_combout\ & ((\inst|Selector43~0_combout\ & (!\inst|SIGSTATE.SAVE_ZERO~q\)) # (!\inst|Selector43~0_combout\ & ((\inst|data_buffer\(18)))))) # (!\inst|Selector47~0_combout\ & 
-- (((\inst|data_buffer\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector47~0_combout\,
	datab => \inst|SIGSTATE.SAVE_ZERO~q\,
	datac => \inst|data_buffer\(18),
	datad => \inst|Selector43~0_combout\,
	combout => \inst|data_buffer[18]~5_combout\);

-- Location: FF_X59_Y61_N7
\inst|data_buffer[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|data_buffer[18]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|data_buffer\(18));

-- Location: FF_X60_Y61_N19
\inst|command[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst|data_buffer\(18),
	sload => VCC,
	ena => \inst|command[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|command\(2));

-- Location: LCCOMB_X61_Y61_N20
\inst|data_buffer[17]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|data_buffer[17]~6_combout\ = (\inst|Equal0~0_combout\ & ((\inst|Selector42~0_combout\ & (!\inst|SIGSTATE.SAVE_ZERO~q\)) # (!\inst|Selector42~0_combout\ & ((\inst|data_buffer\(17)))))) # (!\inst|Equal0~0_combout\ & (((\inst|data_buffer\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~0_combout\,
	datab => \inst|SIGSTATE.SAVE_ZERO~q\,
	datac => \inst|data_buffer\(17),
	datad => \inst|Selector42~0_combout\,
	combout => \inst|data_buffer[17]~6_combout\);

-- Location: FF_X61_Y61_N21
\inst|data_buffer[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|data_buffer[17]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|data_buffer\(17));

-- Location: FF_X60_Y61_N5
\inst|command[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst|data_buffer\(17),
	sload => VCC,
	ena => \inst|command[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|command\(1));

-- Location: LCCOMB_X61_Y61_N26
\inst|data_buffer[16]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|data_buffer[16]~7_combout\ = (\inst|Equal0~0_combout\ & ((\inst|Selector43~0_combout\ & (!\inst|SIGSTATE.SAVE_ZERO~q\)) # (!\inst|Selector43~0_combout\ & ((\inst|data_buffer\(16)))))) # (!\inst|Equal0~0_combout\ & (((\inst|data_buffer\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~0_combout\,
	datab => \inst|SIGSTATE.SAVE_ZERO~q\,
	datac => \inst|data_buffer\(16),
	datad => \inst|Selector43~0_combout\,
	combout => \inst|data_buffer[16]~7_combout\);

-- Location: FF_X61_Y61_N27
\inst|data_buffer[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|data_buffer[16]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|data_buffer\(16));

-- Location: LCCOMB_X60_Y61_N22
\inst|command[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|command[0]~feeder_combout\ = \inst|data_buffer\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|data_buffer\(16),
	combout => \inst|command[0]~feeder_combout\);

-- Location: FF_X60_Y61_N23
\inst|command[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|command[0]~feeder_combout\,
	ena => \inst|command[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|command\(0));

-- Location: LCCOMB_X60_Y61_N12
\inst|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector9~0_combout\ = (\inst|data_ready~q\ & (((\inst|SIGSTATE.CHECKOUT~q\)) # (!\inst|SIGSTATE.IDENTIFY_OPERATION~q\))) # (!\inst|data_ready~q\ & (((\inst|Equal0~10_combout\ & \inst|SIGSTATE.CHECKOUT~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SIGSTATE.IDENTIFY_OPERATION~q\,
	datab => \inst|Equal0~10_combout\,
	datac => \inst|data_ready~q\,
	datad => \inst|SIGSTATE.CHECKOUT~q\,
	combout => \inst|Selector9~0_combout\);

-- Location: FF_X60_Y61_N13
\inst|data_ready\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|data_ready~q\);

-- Location: LCCOMB_X60_Y61_N2
\inst|WideOr0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr0~combout\ = (\inst|SIGSTATE.CHECKOUT~q\) # ((\inst|SIGSTATE.SAVE_ONE~q\) # ((\inst|SIGSTATE.IDENTIFY_BIT~q\) # (\inst|SIGSTATE.SAVE_ZERO~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SIGSTATE.CHECKOUT~q\,
	datab => \inst|SIGSTATE.SAVE_ONE~q\,
	datac => \inst|SIGSTATE.IDENTIFY_BIT~q\,
	datad => \inst|SIGSTATE.SAVE_ZERO~q\,
	combout => \inst|WideOr0~combout\);

-- Location: FF_X60_Y61_N3
\inst|state_flag[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state_flag\(3));

-- Location: LCCOMB_X59_Y61_N2
\inst|WideOr1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr1~combout\ = (!\inst|SIGSTATE.IDENTIFY_OPERATION~q\ & (!\inst|SIGSTATE.WAIT_HEADER~q\ & (!\inst|SIGSTATE.CHECKOUT~q\ & \inst|SIGSTATE.IDLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SIGSTATE.IDENTIFY_OPERATION~q\,
	datab => \inst|SIGSTATE.WAIT_HEADER~q\,
	datac => \inst|SIGSTATE.CHECKOUT~q\,
	datad => \inst|SIGSTATE.IDLE~q\,
	combout => \inst|WideOr1~combout\);

-- Location: FF_X59_Y61_N3
\inst|state_flag[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|WideOr1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state_flag\(2));

-- Location: LCCOMB_X59_Y61_N0
\inst|WideOr2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr2~combout\ = (\inst|SIGSTATE.IDLE~q\ & (!\inst|SIGSTATE.SAVE_ZERO~q\ & (!\inst|SIGSTATE.CHECKOUT~q\ & !\inst|SIGSTATE.WAIT_HEADER~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SIGSTATE.IDLE~q\,
	datab => \inst|SIGSTATE.SAVE_ZERO~q\,
	datac => \inst|SIGSTATE.CHECKOUT~q\,
	datad => \inst|SIGSTATE.WAIT_HEADER~q\,
	combout => \inst|WideOr2~combout\);

-- Location: FF_X59_Y61_N1
\inst|state_flag[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|WideOr2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state_flag\(1));

-- Location: LCCOMB_X59_Y61_N14
\inst|WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr3~0_combout\ = (\inst|SIGSTATE.IDENTIFY_OPERATION~q\) # ((\inst|SIGSTATE.WAIT_HEADER~q\) # ((\inst|SIGSTATE.WAIT_BIT~q\) # (\inst|SIGSTATE.IDENTIFY_BIT~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SIGSTATE.IDENTIFY_OPERATION~q\,
	datab => \inst|SIGSTATE.WAIT_HEADER~q\,
	datac => \inst|SIGSTATE.WAIT_BIT~q\,
	datad => \inst|SIGSTATE.IDENTIFY_BIT~q\,
	combout => \inst|WideOr3~0_combout\);

-- Location: FF_X59_Y61_N15
\inst|state_flag[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state_flag\(0));

ww_LEDG(7) <= \LEDG[7]~output_o\;

ww_LEDG(6) <= \LEDG[6]~output_o\;

ww_LEDG(5) <= \LEDG[5]~output_o\;

ww_LEDG(4) <= \LEDG[4]~output_o\;

ww_LEDG(3) <= \LEDG[3]~output_o\;

ww_LEDG(2) <= \LEDG[2]~output_o\;

ww_LEDG(1) <= \LEDG[1]~output_o\;

ww_LEDG(0) <= \LEDG[0]~output_o\;

ww_LEDR0 <= \LEDR0~output_o\;

ww_LEDR17 <= \LEDR17~output_o\;

ww_LEDR16 <= \LEDR16~output_o\;

ww_LEDR15 <= \LEDR15~output_o\;

ww_LEDR14 <= \LEDR14~output_o\;
END structure;



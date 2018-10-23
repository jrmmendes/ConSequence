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

-- DATE "10/19/2018 16:14:44"

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

ENTITY 	nec_ir_controller_test IS
    PORT (
	LEDG : OUT std_logic_vector(0 DOWNTO 0);
	IRDA_RXD : IN std_logic;
	LEDR : OUT std_logic_vector(2 DOWNTO 0);
	CLOCK_50 : IN std_logic
	);
END nec_ir_controller_test;

-- Design Ports Information
-- LEDG[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IRDA_RXD	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF nec_ir_controller_test IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_LEDG : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_IRDA_RXD : std_logic;
SIGNAL ww_LEDR : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LEDG[0]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \IRDA_RXD~input_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|time_counter[0]~32_combout\ : std_logic;
SIGNAL \inst|time_counter[8]~96_combout\ : std_logic;
SIGNAL \inst|state.IDLE~0_combout\ : std_logic;
SIGNAL \inst|state.IDLE~q\ : std_logic;
SIGNAL \inst|time_counter[0]~33\ : std_logic;
SIGNAL \inst|time_counter[1]~34_combout\ : std_logic;
SIGNAL \inst|time_counter[1]~35\ : std_logic;
SIGNAL \inst|time_counter[2]~36_combout\ : std_logic;
SIGNAL \inst|time_counter[2]~37\ : std_logic;
SIGNAL \inst|time_counter[3]~38_combout\ : std_logic;
SIGNAL \inst|time_counter[3]~39\ : std_logic;
SIGNAL \inst|time_counter[4]~40_combout\ : std_logic;
SIGNAL \inst|time_counter[4]~41\ : std_logic;
SIGNAL \inst|time_counter[5]~42_combout\ : std_logic;
SIGNAL \inst|time_counter[5]~43\ : std_logic;
SIGNAL \inst|time_counter[6]~44_combout\ : std_logic;
SIGNAL \inst|time_counter[6]~45\ : std_logic;
SIGNAL \inst|time_counter[7]~46_combout\ : std_logic;
SIGNAL \inst|time_counter[7]~47\ : std_logic;
SIGNAL \inst|time_counter[8]~48_combout\ : std_logic;
SIGNAL \inst|time_counter[8]~49\ : std_logic;
SIGNAL \inst|time_counter[9]~50_combout\ : std_logic;
SIGNAL \inst|time_counter[9]~51\ : std_logic;
SIGNAL \inst|time_counter[10]~52_combout\ : std_logic;
SIGNAL \inst|time_counter[10]~53\ : std_logic;
SIGNAL \inst|time_counter[11]~54_combout\ : std_logic;
SIGNAL \inst|time_counter[11]~55\ : std_logic;
SIGNAL \inst|time_counter[12]~56_combout\ : std_logic;
SIGNAL \inst|time_counter[12]~57\ : std_logic;
SIGNAL \inst|time_counter[13]~58_combout\ : std_logic;
SIGNAL \inst|time_counter[13]~59\ : std_logic;
SIGNAL \inst|time_counter[14]~60_combout\ : std_logic;
SIGNAL \inst|time_counter[14]~61\ : std_logic;
SIGNAL \inst|time_counter[15]~62_combout\ : std_logic;
SIGNAL \inst|time_counter[15]~63\ : std_logic;
SIGNAL \inst|time_counter[16]~64_combout\ : std_logic;
SIGNAL \inst|time_counter[16]~65\ : std_logic;
SIGNAL \inst|time_counter[17]~66_combout\ : std_logic;
SIGNAL \inst|time_counter[17]~67\ : std_logic;
SIGNAL \inst|time_counter[18]~68_combout\ : std_logic;
SIGNAL \inst|time_counter[18]~69\ : std_logic;
SIGNAL \inst|time_counter[19]~70_combout\ : std_logic;
SIGNAL \inst|time_counter[19]~71\ : std_logic;
SIGNAL \inst|time_counter[20]~72_combout\ : std_logic;
SIGNAL \inst|time_counter[20]~73\ : std_logic;
SIGNAL \inst|time_counter[21]~74_combout\ : std_logic;
SIGNAL \inst|time_counter[21]~75\ : std_logic;
SIGNAL \inst|time_counter[22]~76_combout\ : std_logic;
SIGNAL \inst|LessThan0~5_combout\ : std_logic;
SIGNAL \inst|time_counter[22]~77\ : std_logic;
SIGNAL \inst|time_counter[23]~78_combout\ : std_logic;
SIGNAL \inst|time_counter[23]~79\ : std_logic;
SIGNAL \inst|time_counter[24]~80_combout\ : std_logic;
SIGNAL \inst|time_counter[24]~81\ : std_logic;
SIGNAL \inst|time_counter[25]~82_combout\ : std_logic;
SIGNAL \inst|time_counter[25]~83\ : std_logic;
SIGNAL \inst|time_counter[26]~84_combout\ : std_logic;
SIGNAL \inst|time_counter[26]~85\ : std_logic;
SIGNAL \inst|time_counter[27]~86_combout\ : std_logic;
SIGNAL \inst|time_counter[27]~87\ : std_logic;
SIGNAL \inst|time_counter[28]~88_combout\ : std_logic;
SIGNAL \inst|time_counter[28]~89\ : std_logic;
SIGNAL \inst|time_counter[29]~90_combout\ : std_logic;
SIGNAL \inst|time_counter[29]~91\ : std_logic;
SIGNAL \inst|time_counter[30]~92_combout\ : std_logic;
SIGNAL \inst|time_counter[30]~93\ : std_logic;
SIGNAL \inst|time_counter[31]~94_combout\ : std_logic;
SIGNAL \inst|LessThan0~6_combout\ : std_logic;
SIGNAL \inst|LessThan0~7_combout\ : std_logic;
SIGNAL \inst|LessThan0~8_combout\ : std_logic;
SIGNAL \inst|LessThan0~0_combout\ : std_logic;
SIGNAL \inst|LessThan0~1_combout\ : std_logic;
SIGNAL \inst|LessThan0~2_combout\ : std_logic;
SIGNAL \inst|LessThan0~3_combout\ : std_logic;
SIGNAL \inst|LessThan0~4_combout\ : std_logic;
SIGNAL \inst|LessThan0~9_combout\ : std_logic;
SIGNAL \inst|state~8_combout\ : std_logic;
SIGNAL \inst|state.WAIT_DIRECTION~q\ : std_logic;
SIGNAL \inst|state_flag[1]~feeder_combout\ : std_logic;
SIGNAL \inst|state_flag[0]~0_combout\ : std_logic;
SIGNAL \inst|state_flag\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst|time_counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_IRDA_RXD~input_o\ : std_logic;
SIGNAL \inst|ALT_INV_state.IDLE~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

LEDG <= ww_LEDG;
ww_IRDA_RXD <= IRDA_RXD;
LEDR <= ww_LEDR;
ww_CLOCK_50 <= CLOCK_50;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
\ALT_INV_IRDA_RXD~input_o\ <= NOT \IRDA_RXD~input_o\;
\inst|ALT_INV_state.IDLE~q\ <= NOT \inst|state.IDLE~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X107_Y73_N9
\LEDG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_IRDA_RXD~input_o\,
	devoe => ww_devoe,
	o => \LEDG[0]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\LEDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|state_flag\(1),
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|state_flag\(0),
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

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

-- Location: LCCOMB_X68_Y62_N0
\inst|time_counter[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|time_counter[0]~32_combout\ = \inst|time_counter\(0) $ (VCC)
-- \inst|time_counter[0]~33\ = CARRY(\inst|time_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|time_counter\(0),
	datad => VCC,
	combout => \inst|time_counter[0]~32_combout\,
	cout => \inst|time_counter[0]~33\);

-- Location: LCCOMB_X69_Y62_N24
\inst|time_counter[8]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|time_counter[8]~96_combout\ = (\IRDA_RXD~input_o\) # (!\inst|LessThan0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IRDA_RXD~input_o\,
	datad => \inst|LessThan0~9_combout\,
	combout => \inst|time_counter[8]~96_combout\);

-- Location: LCCOMB_X69_Y62_N8
\inst|state.IDLE~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|state.IDLE~0_combout\ = (\inst|state.IDLE~q\) # ((!\IRDA_RXD~input_o\ & !\inst|LessThan0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IRDA_RXD~input_o\,
	datac => \inst|state.IDLE~q\,
	datad => \inst|LessThan0~9_combout\,
	combout => \inst|state.IDLE~0_combout\);

-- Location: FF_X69_Y62_N9
\inst|state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|state.IDLE~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.IDLE~q\);

-- Location: FF_X68_Y62_N1
\inst|time_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|time_counter[0]~32_combout\,
	sclr => \inst|time_counter[8]~96_combout\,
	ena => \inst|ALT_INV_state.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|time_counter\(0));

-- Location: LCCOMB_X68_Y62_N2
\inst|time_counter[1]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|time_counter[1]~34_combout\ = (\inst|time_counter\(1) & (!\inst|time_counter[0]~33\)) # (!\inst|time_counter\(1) & ((\inst|time_counter[0]~33\) # (GND)))
-- \inst|time_counter[1]~35\ = CARRY((!\inst|time_counter[0]~33\) # (!\inst|time_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|time_counter\(1),
	datad => VCC,
	cin => \inst|time_counter[0]~33\,
	combout => \inst|time_counter[1]~34_combout\,
	cout => \inst|time_counter[1]~35\);

-- Location: FF_X68_Y62_N3
\inst|time_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|time_counter[1]~34_combout\,
	sclr => \inst|time_counter[8]~96_combout\,
	ena => \inst|ALT_INV_state.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|time_counter\(1));

-- Location: LCCOMB_X68_Y62_N4
\inst|time_counter[2]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|time_counter[2]~36_combout\ = (\inst|time_counter\(2) & (\inst|time_counter[1]~35\ $ (GND))) # (!\inst|time_counter\(2) & (!\inst|time_counter[1]~35\ & VCC))
-- \inst|time_counter[2]~37\ = CARRY((\inst|time_counter\(2) & !\inst|time_counter[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|time_counter\(2),
	datad => VCC,
	cin => \inst|time_counter[1]~35\,
	combout => \inst|time_counter[2]~36_combout\,
	cout => \inst|time_counter[2]~37\);

-- Location: FF_X68_Y62_N5
\inst|time_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|time_counter[2]~36_combout\,
	sclr => \inst|time_counter[8]~96_combout\,
	ena => \inst|ALT_INV_state.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|time_counter\(2));

-- Location: LCCOMB_X68_Y62_N6
\inst|time_counter[3]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|time_counter[3]~38_combout\ = (\inst|time_counter\(3) & (!\inst|time_counter[2]~37\)) # (!\inst|time_counter\(3) & ((\inst|time_counter[2]~37\) # (GND)))
-- \inst|time_counter[3]~39\ = CARRY((!\inst|time_counter[2]~37\) # (!\inst|time_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|time_counter\(3),
	datad => VCC,
	cin => \inst|time_counter[2]~37\,
	combout => \inst|time_counter[3]~38_combout\,
	cout => \inst|time_counter[3]~39\);

-- Location: FF_X68_Y62_N7
\inst|time_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|time_counter[3]~38_combout\,
	sclr => \inst|time_counter[8]~96_combout\,
	ena => \inst|ALT_INV_state.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|time_counter\(3));

-- Location: LCCOMB_X68_Y62_N8
\inst|time_counter[4]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|time_counter[4]~40_combout\ = (\inst|time_counter\(4) & (\inst|time_counter[3]~39\ $ (GND))) # (!\inst|time_counter\(4) & (!\inst|time_counter[3]~39\ & VCC))
-- \inst|time_counter[4]~41\ = CARRY((\inst|time_counter\(4) & !\inst|time_counter[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|time_counter\(4),
	datad => VCC,
	cin => \inst|time_counter[3]~39\,
	combout => \inst|time_counter[4]~40_combout\,
	cout => \inst|time_counter[4]~41\);

-- Location: FF_X68_Y62_N9
\inst|time_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|time_counter[4]~40_combout\,
	sclr => \inst|time_counter[8]~96_combout\,
	ena => \inst|ALT_INV_state.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|time_counter\(4));

-- Location: LCCOMB_X68_Y62_N10
\inst|time_counter[5]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|time_counter[5]~42_combout\ = (\inst|time_counter\(5) & (!\inst|time_counter[4]~41\)) # (!\inst|time_counter\(5) & ((\inst|time_counter[4]~41\) # (GND)))
-- \inst|time_counter[5]~43\ = CARRY((!\inst|time_counter[4]~41\) # (!\inst|time_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|time_counter\(5),
	datad => VCC,
	cin => \inst|time_counter[4]~41\,
	combout => \inst|time_counter[5]~42_combout\,
	cout => \inst|time_counter[5]~43\);

-- Location: FF_X68_Y62_N11
\inst|time_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|time_counter[5]~42_combout\,
	sclr => \inst|time_counter[8]~96_combout\,
	ena => \inst|ALT_INV_state.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|time_counter\(5));

-- Location: LCCOMB_X68_Y62_N12
\inst|time_counter[6]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|time_counter[6]~44_combout\ = (\inst|time_counter\(6) & (\inst|time_counter[5]~43\ $ (GND))) # (!\inst|time_counter\(6) & (!\inst|time_counter[5]~43\ & VCC))
-- \inst|time_counter[6]~45\ = CARRY((\inst|time_counter\(6) & !\inst|time_counter[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|time_counter\(6),
	datad => VCC,
	cin => \inst|time_counter[5]~43\,
	combout => \inst|time_counter[6]~44_combout\,
	cout => \inst|time_counter[6]~45\);

-- Location: FF_X68_Y62_N13
\inst|time_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|time_counter[6]~44_combout\,
	sclr => \inst|time_counter[8]~96_combout\,
	ena => \inst|ALT_INV_state.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|time_counter\(6));

-- Location: LCCOMB_X68_Y62_N14
\inst|time_counter[7]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|time_counter[7]~46_combout\ = (\inst|time_counter\(7) & (!\inst|time_counter[6]~45\)) # (!\inst|time_counter\(7) & ((\inst|time_counter[6]~45\) # (GND)))
-- \inst|time_counter[7]~47\ = CARRY((!\inst|time_counter[6]~45\) # (!\inst|time_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|time_counter\(7),
	datad => VCC,
	cin => \inst|time_counter[6]~45\,
	combout => \inst|time_counter[7]~46_combout\,
	cout => \inst|time_counter[7]~47\);

-- Location: FF_X68_Y62_N15
\inst|time_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|time_counter[7]~46_combout\,
	sclr => \inst|time_counter[8]~96_combout\,
	ena => \inst|ALT_INV_state.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|time_counter\(7));

-- Location: LCCOMB_X68_Y62_N16
\inst|time_counter[8]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|time_counter[8]~48_combout\ = (\inst|time_counter\(8) & (\inst|time_counter[7]~47\ $ (GND))) # (!\inst|time_counter\(8) & (!\inst|time_counter[7]~47\ & VCC))
-- \inst|time_counter[8]~49\ = CARRY((\inst|time_counter\(8) & !\inst|time_counter[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|time_counter\(8),
	datad => VCC,
	cin => \inst|time_counter[7]~47\,
	combout => \inst|time_counter[8]~48_combout\,
	cout => \inst|time_counter[8]~49\);

-- Location: FF_X68_Y62_N17
\inst|time_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|time_counter[8]~48_combout\,
	sclr => \inst|time_counter[8]~96_combout\,
	ena => \inst|ALT_INV_state.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|time_counter\(8));

-- Location: LCCOMB_X68_Y62_N18
\inst|time_counter[9]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|time_counter[9]~50_combout\ = (\inst|time_counter\(9) & (!\inst|time_counter[8]~49\)) # (!\inst|time_counter\(9) & ((\inst|time_counter[8]~49\) # (GND)))
-- \inst|time_counter[9]~51\ = CARRY((!\inst|time_counter[8]~49\) # (!\inst|time_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|time_counter\(9),
	datad => VCC,
	cin => \inst|time_counter[8]~49\,
	combout => \inst|time_counter[9]~50_combout\,
	cout => \inst|time_counter[9]~51\);

-- Location: FF_X68_Y62_N19
\inst|time_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|time_counter[9]~50_combout\,
	sclr => \inst|time_counter[8]~96_combout\,
	ena => \inst|ALT_INV_state.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|time_counter\(9));

-- Location: LCCOMB_X68_Y62_N20
\inst|time_counter[10]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|time_counter[10]~52_combout\ = (\inst|time_counter\(10) & (\inst|time_counter[9]~51\ $ (GND))) # (!\inst|time_counter\(10) & (!\inst|time_counter[9]~51\ & VCC))
-- \inst|time_counter[10]~53\ = CARRY((\inst|time_counter\(10) & !\inst|time_counter[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|time_counter\(10),
	datad => VCC,
	cin => \inst|time_counter[9]~51\,
	combout => \inst|time_counter[10]~52_combout\,
	cout => \inst|time_counter[10]~53\);

-- Location: FF_X68_Y62_N21
\inst|time_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|time_counter[10]~52_combout\,
	sclr => \inst|time_counter[8]~96_combout\,
	ena => \inst|ALT_INV_state.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|time_counter\(10));

-- Location: LCCOMB_X68_Y62_N22
\inst|time_counter[11]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|time_counter[11]~54_combout\ = (\inst|time_counter\(11) & (!\inst|time_counter[10]~53\)) # (!\inst|time_counter\(11) & ((\inst|time_counter[10]~53\) # (GND)))
-- \inst|time_counter[11]~55\ = CARRY((!\inst|time_counter[10]~53\) # (!\inst|time_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|time_counter\(11),
	datad => VCC,
	cin => \inst|time_counter[10]~53\,
	combout => \inst|time_counter[11]~54_combout\,
	cout => \inst|time_counter[11]~55\);

-- Location: FF_X68_Y62_N23
\inst|time_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|time_counter[11]~54_combout\,
	sclr => \inst|time_counter[8]~96_combout\,
	ena => \inst|ALT_INV_state.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|time_counter\(11));

-- Location: LCCOMB_X68_Y62_N24
\inst|time_counter[12]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|time_counter[12]~56_combout\ = (\inst|time_counter\(12) & (\inst|time_counter[11]~55\ $ (GND))) # (!\inst|time_counter\(12) & (!\inst|time_counter[11]~55\ & VCC))
-- \inst|time_counter[12]~57\ = CARRY((\inst|time_counter\(12) & !\inst|time_counter[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|time_counter\(12),
	datad => VCC,
	cin => \inst|time_counter[11]~55\,
	combout => \inst|time_counter[12]~56_combout\,
	cout => \inst|time_counter[12]~57\);

-- Location: FF_X68_Y62_N25
\inst|time_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|time_counter[12]~56_combout\,
	sclr => \inst|time_counter[8]~96_combout\,
	ena => \inst|ALT_INV_state.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|time_counter\(12));

-- Location: LCCOMB_X68_Y62_N26
\inst|time_counter[13]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|time_counter[13]~58_combout\ = (\inst|time_counter\(13) & (!\inst|time_counter[12]~57\)) # (!\inst|time_counter\(13) & ((\inst|time_counter[12]~57\) # (GND)))
-- \inst|time_counter[13]~59\ = CARRY((!\inst|time_counter[12]~57\) # (!\inst|time_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|time_counter\(13),
	datad => VCC,
	cin => \inst|time_counter[12]~57\,
	combout => \inst|time_counter[13]~58_combout\,
	cout => \inst|time_counter[13]~59\);

-- Location: FF_X68_Y62_N27
\inst|time_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|time_counter[13]~58_combout\,
	sclr => \inst|time_counter[8]~96_combout\,
	ena => \inst|ALT_INV_state.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|time_counter\(13));

-- Location: LCCOMB_X68_Y62_N28
\inst|time_counter[14]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|time_counter[14]~60_combout\ = (\inst|time_counter\(14) & (\inst|time_counter[13]~59\ $ (GND))) # (!\inst|time_counter\(14) & (!\inst|time_counter[13]~59\ & VCC))
-- \inst|time_counter[14]~61\ = CARRY((\inst|time_counter\(14) & !\inst|time_counter[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|time_counter\(14),
	datad => VCC,
	cin => \inst|time_counter[13]~59\,
	combout => \inst|time_counter[14]~60_combout\,
	cout => \inst|time_counter[14]~61\);

-- Location: FF_X68_Y62_N29
\inst|time_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|time_counter[14]~60_combout\,
	sclr => \inst|time_counter[8]~96_combout\,
	ena => \inst|ALT_INV_state.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|time_counter\(14));

-- Location: LCCOMB_X68_Y62_N30
\inst|time_counter[15]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|time_counter[15]~62_combout\ = (\inst|time_counter\(15) & (!\inst|time_counter[14]~61\)) # (!\inst|time_counter\(15) & ((\inst|time_counter[14]~61\) # (GND)))
-- \inst|time_counter[15]~63\ = CARRY((!\inst|time_counter[14]~61\) # (!\inst|time_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|time_counter\(15),
	datad => VCC,
	cin => \inst|time_counter[14]~61\,
	combout => \inst|time_counter[15]~62_combout\,
	cout => \inst|time_counter[15]~63\);

-- Location: FF_X68_Y62_N31
\inst|time_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|time_counter[15]~62_combout\,
	sclr => \inst|time_counter[8]~96_combout\,
	ena => \inst|ALT_INV_state.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|time_counter\(15));

-- Location: LCCOMB_X68_Y61_N0
\inst|time_counter[16]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|time_counter[16]~64_combout\ = (\inst|time_counter\(16) & (\inst|time_counter[15]~63\ $ (GND))) # (!\inst|time_counter\(16) & (!\inst|time_counter[15]~63\ & VCC))
-- \inst|time_counter[16]~65\ = CARRY((\inst|time_counter\(16) & !\inst|time_counter[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|time_counter\(16),
	datad => VCC,
	cin => \inst|time_counter[15]~63\,
	combout => \inst|time_counter[16]~64_combout\,
	cout => \inst|time_counter[16]~65\);

-- Location: FF_X69_Y62_N21
\inst|time_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst|time_counter[16]~64_combout\,
	sclr => \inst|time_counter[8]~96_combout\,
	sload => VCC,
	ena => \inst|ALT_INV_state.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|time_counter\(16));

-- Location: LCCOMB_X68_Y61_N2
\inst|time_counter[17]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|time_counter[17]~66_combout\ = (\inst|time_counter\(17) & (!\inst|time_counter[16]~65\)) # (!\inst|time_counter\(17) & ((\inst|time_counter[16]~65\) # (GND)))
-- \inst|time_counter[17]~67\ = CARRY((!\inst|time_counter[16]~65\) # (!\inst|time_counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|time_counter\(17),
	datad => VCC,
	cin => \inst|time_counter[16]~65\,
	combout => \inst|time_counter[17]~66_combout\,
	cout => \inst|time_counter[17]~67\);

-- Location: FF_X69_Y62_N15
\inst|time_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst|time_counter[17]~66_combout\,
	sclr => \inst|time_counter[8]~96_combout\,
	sload => VCC,
	ena => \inst|ALT_INV_state.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|time_counter\(17));

-- Location: LCCOMB_X68_Y61_N4
\inst|time_counter[18]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|time_counter[18]~68_combout\ = (\inst|time_counter\(18) & (\inst|time_counter[17]~67\ $ (GND))) # (!\inst|time_counter\(18) & (!\inst|time_counter[17]~67\ & VCC))
-- \inst|time_counter[18]~69\ = CARRY((\inst|time_counter\(18) & !\inst|time_counter[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|time_counter\(18),
	datad => VCC,
	cin => \inst|time_counter[17]~67\,
	combout => \inst|time_counter[18]~68_combout\,
	cout => \inst|time_counter[18]~69\);

-- Location: FF_X69_Y62_N25
\inst|time_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst|time_counter[18]~68_combout\,
	sclr => \inst|time_counter[8]~96_combout\,
	sload => VCC,
	ena => \inst|ALT_INV_state.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|time_counter\(18));

-- Location: LCCOMB_X68_Y61_N6
\inst|time_counter[19]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|time_counter[19]~70_combout\ = (\inst|time_counter\(19) & (!\inst|time_counter[18]~69\)) # (!\inst|time_counter\(19) & ((\inst|time_counter[18]~69\) # (GND)))
-- \inst|time_counter[19]~71\ = CARRY((!\inst|time_counter[18]~69\) # (!\inst|time_counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|time_counter\(19),
	datad => VCC,
	cin => \inst|time_counter[18]~69\,
	combout => \inst|time_counter[19]~70_combout\,
	cout => \inst|time_counter[19]~71\);

-- Location: FF_X68_Y61_N7
\inst|time_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|time_counter[19]~70_combout\,
	sclr => \inst|time_counter[8]~96_combout\,
	ena => \inst|ALT_INV_state.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|time_counter\(19));

-- Location: LCCOMB_X68_Y61_N8
\inst|time_counter[20]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|time_counter[20]~72_combout\ = (\inst|time_counter\(20) & (\inst|time_counter[19]~71\ $ (GND))) # (!\inst|time_counter\(20) & (!\inst|time_counter[19]~71\ & VCC))
-- \inst|time_counter[20]~73\ = CARRY((\inst|time_counter\(20) & !\inst|time_counter[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|time_counter\(20),
	datad => VCC,
	cin => \inst|time_counter[19]~71\,
	combout => \inst|time_counter[20]~72_combout\,
	cout => \inst|time_counter[20]~73\);

-- Location: FF_X68_Y61_N9
\inst|time_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|time_counter[20]~72_combout\,
	sclr => \inst|time_counter[8]~96_combout\,
	ena => \inst|ALT_INV_state.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|time_counter\(20));

-- Location: LCCOMB_X68_Y61_N10
\inst|time_counter[21]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|time_counter[21]~74_combout\ = (\inst|time_counter\(21) & (!\inst|time_counter[20]~73\)) # (!\inst|time_counter\(21) & ((\inst|time_counter[20]~73\) # (GND)))
-- \inst|time_counter[21]~75\ = CARRY((!\inst|time_counter[20]~73\) # (!\inst|time_counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|time_counter\(21),
	datad => VCC,
	cin => \inst|time_counter[20]~73\,
	combout => \inst|time_counter[21]~74_combout\,
	cout => \inst|time_counter[21]~75\);

-- Location: FF_X68_Y61_N11
\inst|time_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|time_counter[21]~74_combout\,
	sclr => \inst|time_counter[8]~96_combout\,
	ena => \inst|ALT_INV_state.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|time_counter\(21));

-- Location: LCCOMB_X68_Y61_N12
\inst|time_counter[22]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|time_counter[22]~76_combout\ = (\inst|time_counter\(22) & (\inst|time_counter[21]~75\ $ (GND))) # (!\inst|time_counter\(22) & (!\inst|time_counter[21]~75\ & VCC))
-- \inst|time_counter[22]~77\ = CARRY((\inst|time_counter\(22) & !\inst|time_counter[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|time_counter\(22),
	datad => VCC,
	cin => \inst|time_counter[21]~75\,
	combout => \inst|time_counter[22]~76_combout\,
	cout => \inst|time_counter[22]~77\);

-- Location: FF_X68_Y61_N13
\inst|time_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|time_counter[22]~76_combout\,
	sclr => \inst|time_counter[8]~96_combout\,
	ena => \inst|ALT_INV_state.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|time_counter\(22));

-- Location: LCCOMB_X69_Y62_N12
\inst|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~5_combout\ = (!\inst|time_counter\(22) & (!\inst|time_counter\(20) & (!\inst|time_counter\(21) & !\inst|time_counter\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|time_counter\(22),
	datab => \inst|time_counter\(20),
	datac => \inst|time_counter\(21),
	datad => \inst|time_counter\(19),
	combout => \inst|LessThan0~5_combout\);

-- Location: LCCOMB_X68_Y61_N14
\inst|time_counter[23]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|time_counter[23]~78_combout\ = (\inst|time_counter\(23) & (!\inst|time_counter[22]~77\)) # (!\inst|time_counter\(23) & ((\inst|time_counter[22]~77\) # (GND)))
-- \inst|time_counter[23]~79\ = CARRY((!\inst|time_counter[22]~77\) # (!\inst|time_counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|time_counter\(23),
	datad => VCC,
	cin => \inst|time_counter[22]~77\,
	combout => \inst|time_counter[23]~78_combout\,
	cout => \inst|time_counter[23]~79\);

-- Location: FF_X68_Y61_N15
\inst|time_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|time_counter[23]~78_combout\,
	sclr => \inst|time_counter[8]~96_combout\,
	ena => \inst|ALT_INV_state.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|time_counter\(23));

-- Location: LCCOMB_X68_Y61_N16
\inst|time_counter[24]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|time_counter[24]~80_combout\ = (\inst|time_counter\(24) & (\inst|time_counter[23]~79\ $ (GND))) # (!\inst|time_counter\(24) & (!\inst|time_counter[23]~79\ & VCC))
-- \inst|time_counter[24]~81\ = CARRY((\inst|time_counter\(24) & !\inst|time_counter[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|time_counter\(24),
	datad => VCC,
	cin => \inst|time_counter[23]~79\,
	combout => \inst|time_counter[24]~80_combout\,
	cout => \inst|time_counter[24]~81\);

-- Location: FF_X68_Y61_N17
\inst|time_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|time_counter[24]~80_combout\,
	sclr => \inst|time_counter[8]~96_combout\,
	ena => \inst|ALT_INV_state.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|time_counter\(24));

-- Location: LCCOMB_X68_Y61_N18
\inst|time_counter[25]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|time_counter[25]~82_combout\ = (\inst|time_counter\(25) & (!\inst|time_counter[24]~81\)) # (!\inst|time_counter\(25) & ((\inst|time_counter[24]~81\) # (GND)))
-- \inst|time_counter[25]~83\ = CARRY((!\inst|time_counter[24]~81\) # (!\inst|time_counter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|time_counter\(25),
	datad => VCC,
	cin => \inst|time_counter[24]~81\,
	combout => \inst|time_counter[25]~82_combout\,
	cout => \inst|time_counter[25]~83\);

-- Location: FF_X68_Y61_N19
\inst|time_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|time_counter[25]~82_combout\,
	sclr => \inst|time_counter[8]~96_combout\,
	ena => \inst|ALT_INV_state.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|time_counter\(25));

-- Location: LCCOMB_X68_Y61_N20
\inst|time_counter[26]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|time_counter[26]~84_combout\ = (\inst|time_counter\(26) & (\inst|time_counter[25]~83\ $ (GND))) # (!\inst|time_counter\(26) & (!\inst|time_counter[25]~83\ & VCC))
-- \inst|time_counter[26]~85\ = CARRY((\inst|time_counter\(26) & !\inst|time_counter[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|time_counter\(26),
	datad => VCC,
	cin => \inst|time_counter[25]~83\,
	combout => \inst|time_counter[26]~84_combout\,
	cout => \inst|time_counter[26]~85\);

-- Location: FF_X68_Y61_N21
\inst|time_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|time_counter[26]~84_combout\,
	sclr => \inst|time_counter[8]~96_combout\,
	ena => \inst|ALT_INV_state.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|time_counter\(26));

-- Location: LCCOMB_X68_Y61_N22
\inst|time_counter[27]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|time_counter[27]~86_combout\ = (\inst|time_counter\(27) & (!\inst|time_counter[26]~85\)) # (!\inst|time_counter\(27) & ((\inst|time_counter[26]~85\) # (GND)))
-- \inst|time_counter[27]~87\ = CARRY((!\inst|time_counter[26]~85\) # (!\inst|time_counter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|time_counter\(27),
	datad => VCC,
	cin => \inst|time_counter[26]~85\,
	combout => \inst|time_counter[27]~86_combout\,
	cout => \inst|time_counter[27]~87\);

-- Location: FF_X68_Y61_N23
\inst|time_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|time_counter[27]~86_combout\,
	sclr => \inst|time_counter[8]~96_combout\,
	ena => \inst|ALT_INV_state.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|time_counter\(27));

-- Location: LCCOMB_X68_Y61_N24
\inst|time_counter[28]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|time_counter[28]~88_combout\ = (\inst|time_counter\(28) & (\inst|time_counter[27]~87\ $ (GND))) # (!\inst|time_counter\(28) & (!\inst|time_counter[27]~87\ & VCC))
-- \inst|time_counter[28]~89\ = CARRY((\inst|time_counter\(28) & !\inst|time_counter[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|time_counter\(28),
	datad => VCC,
	cin => \inst|time_counter[27]~87\,
	combout => \inst|time_counter[28]~88_combout\,
	cout => \inst|time_counter[28]~89\);

-- Location: FF_X68_Y61_N25
\inst|time_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|time_counter[28]~88_combout\,
	sclr => \inst|time_counter[8]~96_combout\,
	ena => \inst|ALT_INV_state.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|time_counter\(28));

-- Location: LCCOMB_X68_Y61_N26
\inst|time_counter[29]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|time_counter[29]~90_combout\ = (\inst|time_counter\(29) & (!\inst|time_counter[28]~89\)) # (!\inst|time_counter\(29) & ((\inst|time_counter[28]~89\) # (GND)))
-- \inst|time_counter[29]~91\ = CARRY((!\inst|time_counter[28]~89\) # (!\inst|time_counter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|time_counter\(29),
	datad => VCC,
	cin => \inst|time_counter[28]~89\,
	combout => \inst|time_counter[29]~90_combout\,
	cout => \inst|time_counter[29]~91\);

-- Location: FF_X68_Y61_N27
\inst|time_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|time_counter[29]~90_combout\,
	sclr => \inst|time_counter[8]~96_combout\,
	ena => \inst|ALT_INV_state.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|time_counter\(29));

-- Location: LCCOMB_X68_Y61_N28
\inst|time_counter[30]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|time_counter[30]~92_combout\ = (\inst|time_counter\(30) & (\inst|time_counter[29]~91\ $ (GND))) # (!\inst|time_counter\(30) & (!\inst|time_counter[29]~91\ & VCC))
-- \inst|time_counter[30]~93\ = CARRY((\inst|time_counter\(30) & !\inst|time_counter[29]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|time_counter\(30),
	datad => VCC,
	cin => \inst|time_counter[29]~91\,
	combout => \inst|time_counter[30]~92_combout\,
	cout => \inst|time_counter[30]~93\);

-- Location: FF_X68_Y61_N29
\inst|time_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|time_counter[30]~92_combout\,
	sclr => \inst|time_counter[8]~96_combout\,
	ena => \inst|ALT_INV_state.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|time_counter\(30));

-- Location: LCCOMB_X68_Y61_N30
\inst|time_counter[31]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|time_counter[31]~94_combout\ = \inst|time_counter\(31) $ (\inst|time_counter[30]~93\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|time_counter\(31),
	cin => \inst|time_counter[30]~93\,
	combout => \inst|time_counter[31]~94_combout\);

-- Location: FF_X68_Y61_N31
\inst|time_counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|time_counter[31]~94_combout\,
	sclr => \inst|time_counter[8]~96_combout\,
	ena => \inst|ALT_INV_state.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|time_counter\(31));

-- Location: LCCOMB_X69_Y62_N30
\inst|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~6_combout\ = (!\inst|time_counter\(23) & (!\inst|time_counter\(24) & (!\inst|time_counter\(25) & !\inst|time_counter\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|time_counter\(23),
	datab => \inst|time_counter\(24),
	datac => \inst|time_counter\(25),
	datad => \inst|time_counter\(26),
	combout => \inst|LessThan0~6_combout\);

-- Location: LCCOMB_X69_Y62_N28
\inst|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~7_combout\ = (!\inst|time_counter\(28) & (!\inst|time_counter\(27) & (!\inst|time_counter\(29) & !\inst|time_counter\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|time_counter\(28),
	datab => \inst|time_counter\(27),
	datac => \inst|time_counter\(29),
	datad => \inst|time_counter\(30),
	combout => \inst|LessThan0~7_combout\);

-- Location: LCCOMB_X69_Y62_N14
\inst|LessThan0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~8_combout\ = (\inst|LessThan0~6_combout\ & \inst|LessThan0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan0~6_combout\,
	datad => \inst|LessThan0~7_combout\,
	combout => \inst|LessThan0~8_combout\);

-- Location: LCCOMB_X69_Y62_N26
\inst|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~0_combout\ = ((!\inst|time_counter\(16) & ((!\inst|time_counter\(15)) # (!\inst|time_counter\(14))))) # (!\inst|time_counter\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|time_counter\(17),
	datab => \inst|time_counter\(16),
	datac => \inst|time_counter\(14),
	datad => \inst|time_counter\(15),
	combout => \inst|LessThan0~0_combout\);

-- Location: LCCOMB_X69_Y62_N0
\inst|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~1_combout\ = (((!\inst|time_counter\(4) & !\inst|time_counter\(5))) # (!\inst|time_counter\(7))) # (!\inst|time_counter\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|time_counter\(4),
	datab => \inst|time_counter\(5),
	datac => \inst|time_counter\(6),
	datad => \inst|time_counter\(7),
	combout => \inst|LessThan0~1_combout\);

-- Location: LCCOMB_X69_Y62_N18
\inst|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~2_combout\ = (\inst|time_counter\(10) & ((\inst|time_counter\(9)) # ((\inst|time_counter\(8) & !\inst|LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|time_counter\(8),
	datab => \inst|time_counter\(9),
	datac => \inst|time_counter\(10),
	datad => \inst|LessThan0~1_combout\,
	combout => \inst|LessThan0~2_combout\);

-- Location: LCCOMB_X69_Y62_N16
\inst|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~3_combout\ = (\inst|time_counter\(13)) # ((\inst|time_counter\(11) & (\inst|time_counter\(12) & \inst|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|time_counter\(11),
	datab => \inst|time_counter\(12),
	datac => \inst|time_counter\(13),
	datad => \inst|LessThan0~2_combout\,
	combout => \inst|LessThan0~3_combout\);

-- Location: LCCOMB_X69_Y62_N2
\inst|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~4_combout\ = (\inst|LessThan0~0_combout\) # (((!\inst|time_counter\(16) & !\inst|LessThan0~3_combout\)) # (!\inst|time_counter\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan0~0_combout\,
	datab => \inst|time_counter\(16),
	datac => \inst|time_counter\(18),
	datad => \inst|LessThan0~3_combout\,
	combout => \inst|LessThan0~4_combout\);

-- Location: LCCOMB_X69_Y62_N10
\inst|LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~9_combout\ = (\inst|time_counter\(31)) # ((\inst|LessThan0~5_combout\ & (\inst|LessThan0~8_combout\ & \inst|LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan0~5_combout\,
	datab => \inst|time_counter\(31),
	datac => \inst|LessThan0~8_combout\,
	datad => \inst|LessThan0~4_combout\,
	combout => \inst|LessThan0~9_combout\);

-- Location: LCCOMB_X69_Y62_N22
\inst|state~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|state~8_combout\ = \inst|state.WAIT_DIRECTION~q\ $ (((!\inst|LessThan0~9_combout\ & (!\IRDA_RXD~input_o\ & !\inst|state.IDLE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan0~9_combout\,
	datab => \IRDA_RXD~input_o\,
	datac => \inst|state.WAIT_DIRECTION~q\,
	datad => \inst|state.IDLE~q\,
	combout => \inst|state~8_combout\);

-- Location: FF_X69_Y62_N23
\inst|state.WAIT_DIRECTION\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|state~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.WAIT_DIRECTION~q\);

-- Location: LCCOMB_X69_Y62_N6
\inst|state_flag[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|state_flag[1]~feeder_combout\ = \inst|state.WAIT_DIRECTION~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|state.WAIT_DIRECTION~q\,
	combout => \inst|state_flag[1]~feeder_combout\);

-- Location: FF_X69_Y62_N7
\inst|state_flag[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|state_flag[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state_flag\(1));

-- Location: LCCOMB_X69_Y62_N4
\inst|state_flag[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|state_flag[0]~0_combout\ = !\inst|state.IDLE~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|state.IDLE~q\,
	combout => \inst|state_flag[0]~0_combout\);

-- Location: FF_X69_Y62_N5
\inst|state_flag[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|state_flag[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state_flag\(0));

ww_LEDG(0) <= \LEDG[0]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(0) <= \LEDR[0]~output_o\;
END structure;



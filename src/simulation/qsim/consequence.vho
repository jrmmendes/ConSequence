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

-- DATE "10/19/2018 14:24:07"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
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

ENTITY 	xorshift_test IS
    PORT (
	random_number : OUT std_logic_vector(3 DOWNTO 0);
	clock : IN std_logic
	);
END xorshift_test;

ARCHITECTURE structure OF xorshift_test IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_random_number : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_clock : std_logic;
SIGNAL \random_number[3]~output_o\ : std_logic;
SIGNAL \random_number[2]~output_o\ : std_logic;
SIGNAL \random_number[1]~output_o\ : std_logic;
SIGNAL \random_number[0]~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \inst|SEED[0]~0_combout\ : std_logic;
SIGNAL \inst|SEED[1]~24_combout\ : std_logic;
SIGNAL \inst|SEED[3]~23_combout\ : std_logic;
SIGNAL \inst|SEED[4]~22_combout\ : std_logic;
SIGNAL \inst|SEED[5]~21_combout\ : std_logic;
SIGNAL \inst|SEED[6]~20_combout\ : std_logic;
SIGNAL \inst|SEED[7]~19_combout\ : std_logic;
SIGNAL \inst|SEED[8]~18_combout\ : std_logic;
SIGNAL \inst|SEED[9]~17_combout\ : std_logic;
SIGNAL \inst|SEED[12]~16_combout\ : std_logic;
SIGNAL \inst|SEED[13]~15_combout\ : std_logic;
SIGNAL \inst|SEED[14]~14_combout\ : std_logic;
SIGNAL \inst|SEED[15]~13_combout\ : std_logic;
SIGNAL \inst|SEED[16]~12_combout\ : std_logic;
SIGNAL \inst|SEED[17]~11_combout\ : std_logic;
SIGNAL \inst|SEED[19]~10_combout\ : std_logic;
SIGNAL \inst|SEED[20]~9_combout\ : std_logic;
SIGNAL \inst|SEED[21]~8_combout\ : std_logic;
SIGNAL \inst|SEED[22]~7_combout\ : std_logic;
SIGNAL \inst|SEED[24]~6_combout\ : std_logic;
SIGNAL \inst|SEED[26]~5_combout\ : std_logic;
SIGNAL \inst|SEED[27]~4_combout\ : std_logic;
SIGNAL \inst|SEED[28]~3_combout\ : std_logic;
SIGNAL \inst|SEED[29]~2_combout\ : std_logic;
SIGNAL \inst|SEED[31]~1_combout\ : std_logic;
SIGNAL \inst|SEED\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst|ALT_INV_SEED\ : std_logic_vector(31 DOWNTO 28);

BEGIN

random_number <= ww_random_number;
ww_clock <= clock;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\inst|ALT_INV_SEED\(28) <= NOT \inst|SEED\(28);
\inst|ALT_INV_SEED\(31) <= NOT \inst|SEED\(31);

\random_number[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_SEED\(31),
	devoe => ww_devoe,
	o => \random_number[3]~output_o\);

\random_number[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|SEED\(30),
	devoe => ww_devoe,
	o => \random_number[2]~output_o\);

\random_number[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|SEED\(29),
	devoe => ww_devoe,
	o => \random_number[1]~output_o\);

\random_number[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_SEED\(28),
	devoe => ww_devoe,
	o => \random_number[0]~output_o\);

\clock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

\inst|SEED[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|SEED[0]~0_combout\ = \inst|SEED\(31) $ (!\inst|SEED\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|SEED\(31),
	datad => \inst|SEED\(0),
	combout => \inst|SEED[0]~0_combout\);

\inst|SEED[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst|SEED[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SEED\(0));

\inst|SEED[1]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|SEED[1]~24_combout\ = !\inst|SEED\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SEED\(0),
	combout => \inst|SEED[1]~24_combout\);

\inst|SEED[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst|SEED[1]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SEED\(1));

\inst|SEED[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst|SEED\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SEED\(2));

\inst|SEED[3]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|SEED[3]~23_combout\ = !\inst|SEED\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SEED\(2),
	combout => \inst|SEED[3]~23_combout\);

\inst|SEED[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst|SEED[3]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SEED\(3));

\inst|SEED[4]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|SEED[4]~22_combout\ = !\inst|SEED\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SEED\(3),
	combout => \inst|SEED[4]~22_combout\);

\inst|SEED[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst|SEED[4]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SEED\(4));

\inst|SEED[5]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|SEED[5]~21_combout\ = !\inst|SEED\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SEED\(4),
	combout => \inst|SEED[5]~21_combout\);

\inst|SEED[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst|SEED[5]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SEED\(5));

\inst|SEED[6]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|SEED[6]~20_combout\ = !\inst|SEED\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SEED\(5),
	combout => \inst|SEED[6]~20_combout\);

\inst|SEED[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst|SEED[6]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SEED\(6));

\inst|SEED[7]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|SEED[7]~19_combout\ = !\inst|SEED\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SEED\(6),
	combout => \inst|SEED[7]~19_combout\);

\inst|SEED[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst|SEED[7]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SEED\(7));

\inst|SEED[8]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|SEED[8]~18_combout\ = !\inst|SEED\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SEED\(7),
	combout => \inst|SEED[8]~18_combout\);

\inst|SEED[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst|SEED[8]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SEED\(8));

\inst|SEED[9]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|SEED[9]~17_combout\ = !\inst|SEED\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SEED\(8),
	combout => \inst|SEED[9]~17_combout\);

\inst|SEED[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst|SEED[9]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SEED\(9));

\inst|SEED[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst|SEED\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SEED\(10));

\inst|SEED[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst|SEED\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SEED\(11));

\inst|SEED[12]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|SEED[12]~16_combout\ = !\inst|SEED\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SEED\(11),
	combout => \inst|SEED[12]~16_combout\);

\inst|SEED[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst|SEED[12]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SEED\(12));

\inst|SEED[13]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|SEED[13]~15_combout\ = !\inst|SEED\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SEED\(12),
	combout => \inst|SEED[13]~15_combout\);

\inst|SEED[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst|SEED[13]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SEED\(13));

\inst|SEED[14]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|SEED[14]~14_combout\ = !\inst|SEED\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SEED\(13),
	combout => \inst|SEED[14]~14_combout\);

\inst|SEED[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst|SEED[14]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SEED\(14));

\inst|SEED[15]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|SEED[15]~13_combout\ = !\inst|SEED\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SEED\(14),
	combout => \inst|SEED[15]~13_combout\);

\inst|SEED[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst|SEED[15]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SEED\(15));

\inst|SEED[16]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|SEED[16]~12_combout\ = !\inst|SEED\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SEED\(15),
	combout => \inst|SEED[16]~12_combout\);

\inst|SEED[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst|SEED[16]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SEED\(16));

\inst|SEED[17]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|SEED[17]~11_combout\ = !\inst|SEED\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SEED\(16),
	combout => \inst|SEED[17]~11_combout\);

\inst|SEED[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst|SEED[17]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SEED\(17));

\inst|SEED[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst|SEED\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SEED\(18));

\inst|SEED[19]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|SEED[19]~10_combout\ = !\inst|SEED\(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SEED\(18),
	combout => \inst|SEED[19]~10_combout\);

\inst|SEED[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst|SEED[19]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SEED\(19));

\inst|SEED[20]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|SEED[20]~9_combout\ = !\inst|SEED\(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SEED\(19),
	combout => \inst|SEED[20]~9_combout\);

\inst|SEED[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst|SEED[20]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SEED\(20));

\inst|SEED[21]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|SEED[21]~8_combout\ = !\inst|SEED\(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SEED\(20),
	combout => \inst|SEED[21]~8_combout\);

\inst|SEED[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst|SEED[21]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SEED\(21));

\inst|SEED[22]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|SEED[22]~7_combout\ = !\inst|SEED\(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SEED\(21),
	combout => \inst|SEED[22]~7_combout\);

\inst|SEED[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst|SEED[22]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SEED\(22));

\inst|SEED[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst|SEED\(22),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SEED\(23));

\inst|SEED[24]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|SEED[24]~6_combout\ = !\inst|SEED\(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SEED\(23),
	combout => \inst|SEED[24]~6_combout\);

\inst|SEED[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst|SEED[24]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SEED\(24));

\inst|SEED[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst|SEED\(24),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SEED\(25));

\inst|SEED[26]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|SEED[26]~5_combout\ = !\inst|SEED\(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SEED\(25),
	combout => \inst|SEED[26]~5_combout\);

\inst|SEED[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst|SEED[26]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SEED\(26));

\inst|SEED[27]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|SEED[27]~4_combout\ = !\inst|SEED\(26)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SEED\(26),
	combout => \inst|SEED[27]~4_combout\);

\inst|SEED[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst|SEED[27]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SEED\(27));

\inst|SEED[28]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|SEED[28]~3_combout\ = !\inst|SEED\(27)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SEED\(27),
	combout => \inst|SEED[28]~3_combout\);

\inst|SEED[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst|SEED[28]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SEED\(28));

\inst|SEED[29]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|SEED[29]~2_combout\ = !\inst|SEED\(28)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SEED\(28),
	combout => \inst|SEED[29]~2_combout\);

\inst|SEED[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst|SEED[29]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SEED\(29));

\inst|SEED[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst|SEED\(29),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SEED\(30));

\inst|SEED[31]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|SEED[31]~1_combout\ = !\inst|SEED\(30)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SEED\(30),
	combout => \inst|SEED[31]~1_combout\);

\inst|SEED[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst|SEED[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SEED\(31));

ww_random_number(3) <= \random_number[3]~output_o\;

ww_random_number(2) <= \random_number[2]~output_o\;

ww_random_number(1) <= \random_number[1]~output_o\;

ww_random_number(0) <= \random_number[0]~output_o\;
END structure;



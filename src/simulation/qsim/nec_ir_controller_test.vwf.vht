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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "10/19/2018 15:58:07"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          nec_ir_controller_test
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY nec_ir_controller_test_vhd_vec_tst IS
END nec_ir_controller_test_vhd_vec_tst;
ARCHITECTURE nec_ir_controller_test_arch OF nec_ir_controller_test_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLOCK_50 : STD_LOGIC;
SIGNAL IRDA_RXD : STD_LOGIC;
SIGNAL LEDR : STD_LOGIC_VECTOR(2 DOWNTO 0);
COMPONENT nec_ir_controller_test
	PORT (
	CLOCK_50 : IN STD_LOGIC;
	IRDA_RXD : IN STD_LOGIC;
	LEDR : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : nec_ir_controller_test
	PORT MAP (
-- list connections between master ports and signals
	CLOCK_50 => CLOCK_50,
	IRDA_RXD => IRDA_RXD,
	LEDR => LEDR
	);

-- CLOCK_50
t_prcs_CLOCK_50: PROCESS
BEGIN
LOOP
	CLOCK_50 <= '0';
	WAIT FOR 10000 ps;
	CLOCK_50 <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLOCK_50;

-- IRDA_RXD
t_prcs_IRDA_RXD: PROCESS
BEGIN
	IRDA_RXD <= '0';
	WAIT FOR 120000 ps;
	IRDA_RXD <= '1';
	WAIT FOR 530000 ps;
	IRDA_RXD <= '0';
WAIT;
END PROCESS t_prcs_IRDA_RXD;
END nec_ir_controller_test_arch;

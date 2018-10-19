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
-- Generated on "10/19/2018 13:22:13"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          shift_register_test
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY shift_register_test_vhd_vec_tst IS
END shift_register_test_vhd_vec_tst;
ARCHITECTURE shift_register_test_arch OF shift_register_test_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clock : STD_LOGIC;
SIGNAL p_in : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL p_out : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL s_in : STD_LOGIC;
SIGNAL s_out : STD_LOGIC;
COMPONENT shift_register_test
	PORT (
	clock : IN STD_LOGIC;
	p_in : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	p_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	s_in : IN STD_LOGIC;
	s_out : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : shift_register_test
	PORT MAP (
-- list connections between master ports and signals
	clock => clock,
	p_in => p_in,
	p_out => p_out,
	s_in => s_in,
	s_out => s_out
	);

-- clock
t_prcs_clock: PROCESS
BEGIN
LOOP
	clock <= '0';
	WAIT FOR 25000 ps;
	clock <= '1';
	WAIT FOR 25000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clock;

-- s_in
t_prcs_s_in: PROCESS
BEGIN
	s_in <= '0';
	WAIT FOR 350000 ps;
	s_in <= '1';
	WAIT FOR 50000 ps;
	s_in <= '0';
	WAIT FOR 300000 ps;
	s_in <= '1';
	WAIT FOR 50000 ps;
	s_in <= '0';
WAIT;
END PROCESS t_prcs_s_in;
END shift_register_test_arch;

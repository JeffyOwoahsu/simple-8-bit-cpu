-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- PROGRAM		"Quartus Prime"
-- VERSION		"Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"
-- CREATED		"Sun Oct 22 17:39:03 2023"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY full_adder IS 
	PORT
	(
		A :  IN  STD_LOGIC;
		B :  IN  STD_LOGIC;
		C_IN :  IN  STD_LOGIC;
		S :  OUT  STD_LOGIC;
		C_OUT :  OUT  STD_LOGIC
	);
END full_adder;

ARCHITECTURE bdf_type OF full_adder IS 

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;


BEGIN 



SYNTHESIZED_WIRE_0 <= A XOR B;


S <= SYNTHESIZED_WIRE_0 XOR C_IN;


SYNTHESIZED_WIRE_3 <= C_IN AND A;


SYNTHESIZED_WIRE_1 <= C_IN AND B;


SYNTHESIZED_WIRE_2 <= B AND A;


C_OUT <= SYNTHESIZED_WIRE_1 OR SYNTHESIZED_WIRE_2 OR SYNTHESIZED_WIRE_3;


END bdf_type;
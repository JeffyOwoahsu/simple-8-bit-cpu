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
-- CREATED		"Sat Oct 28 01:37:38 2023"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY mux2 IS 
	PORT
	(
		sel :  IN  STD_LOGIC;
		in0 :  IN  STD_LOGIC;
		in1 :  IN  STD_LOGIC;
		result :  OUT  STD_LOGIC
	);
END mux2;

ARCHITECTURE bdf_type OF mux2 IS 

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;


BEGIN 



SYNTHESIZED_WIRE_2 <= in0 AND SYNTHESIZED_WIRE_0;


SYNTHESIZED_WIRE_1 <= in1 AND sel;


result <= SYNTHESIZED_WIRE_1 OR SYNTHESIZED_WIRE_2;


SYNTHESIZED_WIRE_0 <= NOT(sel);



END bdf_type;
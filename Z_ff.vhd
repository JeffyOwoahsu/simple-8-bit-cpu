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
-- CREATED		"Fri Oct 27 11:43:12 2023"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY Z_ff IS 
	PORT
	(
		reset :  IN  STD_LOGIC;
		clock :  IN  STD_LOGIC;
		Z :  IN  STD_LOGIC;
		add :  IN  STD_LOGIC;
		sub :  IN  STD_LOGIC;
		inc :  IN  STD_LOGIC;
		dec :  IN  STD_LOGIC;
		t6 :  IN  STD_LOGIC;
		Z_out :  OUT  STD_LOGIC
	);
END Z_ff;

ARCHITECTURE bdf_type OF Z_ff IS 

COMPONENT mux2
	PORT(in1 : IN STD_LOGIC;
		 in0 : IN STD_LOGIC;
		 sel : IN STD_LOGIC;
		 result : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT d_ff
	PORT(reset : IN STD_LOGIC;
		 clock : IN STD_LOGIC;
		 d : IN STD_LOGIC;
		 q : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;


BEGIN 
Z_out <= SYNTHESIZED_WIRE_0;



SYNTHESIZED_WIRE_2 <= NOT(clock);



b2v_inst11 : mux2
PORT MAP(in1 => Z,
		 in0 => SYNTHESIZED_WIRE_0,
		 sel => SYNTHESIZED_WIRE_1,
		 result => SYNTHESIZED_WIRE_3);


b2v_inst13 : d_ff
PORT MAP(reset => reset,
		 clock => SYNTHESIZED_WIRE_2,
		 d => SYNTHESIZED_WIRE_3,
		 q => SYNTHESIZED_WIRE_0);


SYNTHESIZED_WIRE_4 <= add OR inc OR dec OR sub;


SYNTHESIZED_WIRE_1 <= SYNTHESIZED_WIRE_4 AND t6;


END bdf_type;
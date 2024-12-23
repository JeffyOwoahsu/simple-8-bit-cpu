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
-- CREATED		"Sun Oct 22 17:39:22 2023"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY adder_subtractor IS 
	PORT
	(
		C_IN :  IN  STD_LOGIC;
		sel :  IN  STD_LOGIC;
		A :  IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
		B :  IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
		C_OUT :  OUT  STD_LOGIC;
		S :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END adder_subtractor;

ARCHITECTURE bdf_type OF adder_subtractor IS 

COMPONENT full_adder
	PORT(A : IN STD_LOGIC;
		 B : IN STD_LOGIC;
		 C_IN : IN STD_LOGIC;
		 S : OUT STD_LOGIC;
		 C_OUT : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	S_ALTERA_SYNTHESIZED :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_8 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_9 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_10 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_11 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_12 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_13 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_14 :  STD_LOGIC;


BEGIN 



b2v_fa_0 : full_adder
PORT MAP(A => A(0),
		 B => SYNTHESIZED_WIRE_0,
		 C_IN => C_IN,
		 S => S_ALTERA_SYNTHESIZED(0),
		 C_OUT => SYNTHESIZED_WIRE_2);


b2v_fa_1 : full_adder
PORT MAP(A => A(1),
		 B => SYNTHESIZED_WIRE_1,
		 C_IN => SYNTHESIZED_WIRE_2,
		 S => S_ALTERA_SYNTHESIZED(1),
		 C_OUT => SYNTHESIZED_WIRE_4);


b2v_fa_2 : full_adder
PORT MAP(A => A(2),
		 B => SYNTHESIZED_WIRE_3,
		 C_IN => SYNTHESIZED_WIRE_4,
		 S => S_ALTERA_SYNTHESIZED(2),
		 C_OUT => SYNTHESIZED_WIRE_6);


b2v_fa_3 : full_adder
PORT MAP(A => A(3),
		 B => SYNTHESIZED_WIRE_5,
		 C_IN => SYNTHESIZED_WIRE_6,
		 S => S_ALTERA_SYNTHESIZED(3),
		 C_OUT => SYNTHESIZED_WIRE_8);


b2v_fa_4 : full_adder
PORT MAP(A => A(4),
		 B => SYNTHESIZED_WIRE_7,
		 C_IN => SYNTHESIZED_WIRE_8,
		 S => S_ALTERA_SYNTHESIZED(4),
		 C_OUT => SYNTHESIZED_WIRE_10);


b2v_fa_5 : full_adder
PORT MAP(A => A(5),
		 B => SYNTHESIZED_WIRE_9,
		 C_IN => SYNTHESIZED_WIRE_10,
		 S => S_ALTERA_SYNTHESIZED(5),
		 C_OUT => SYNTHESIZED_WIRE_12);


b2v_fa_6 : full_adder
PORT MAP(A => A(6),
		 B => SYNTHESIZED_WIRE_11,
		 C_IN => SYNTHESIZED_WIRE_12,
		 S => S_ALTERA_SYNTHESIZED(6),
		 C_OUT => SYNTHESIZED_WIRE_14);


b2v_fa_7 : full_adder
PORT MAP(A => A(7),
		 B => SYNTHESIZED_WIRE_13,
		 C_IN => SYNTHESIZED_WIRE_14,
		 S => S_ALTERA_SYNTHESIZED(7),
		 C_OUT => C_OUT);


SYNTHESIZED_WIRE_0 <= B(0) XOR sel;


SYNTHESIZED_WIRE_1 <= B(1) XOR sel;


SYNTHESIZED_WIRE_3 <= B(2) XOR sel;


SYNTHESIZED_WIRE_5 <= B(3) XOR sel;


SYNTHESIZED_WIRE_7 <= B(4) XOR sel;


SYNTHESIZED_WIRE_9 <= B(5) XOR sel;


SYNTHESIZED_WIRE_11 <= B(6) XOR sel;


SYNTHESIZED_WIRE_13 <= B(7) XOR sel;

S <= S_ALTERA_SYNTHESIZED;

END bdf_type;
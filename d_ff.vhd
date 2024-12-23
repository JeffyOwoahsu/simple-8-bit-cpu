LIBRARY ieee;
USE ieee.std_logic_1164.all; 

ENTITY d_ff IS
	PORT (
		reset : IN STD_LOGIC;
		clock : IN STD_LOGIC;
		d : IN STD_LOGIC;
		q : OUT STD_LOGIC
		);
END d_ff;

ARCHITECTURE rtl OF d_ff IS
	
BEGIN
	current_state: process (clock, reset)
	BEGIN
		if(reset = '1') then
			q <= '0';
		elsif rising_edge(clock) then
			q <= d;
		end if;
	END process;
	
END rtl;
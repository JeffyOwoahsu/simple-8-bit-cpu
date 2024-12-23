LIBRARY IEEE ;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY instruction_sequencer is
  PORT (
    opcode : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    reset : IN STD_LOGIC;
    clock : IN STD_LOGIC;
	 t0 : OUT STD_LOGIC;
	 t1 : OUT STD_LOGIC;
	 t2 : OUT STD_LOGIC;
	 t3 : OUT STD_LOGIC;
	 t4 : OUT STD_LOGIC;
	 t5 : OUT STD_LOGIC;
	 t6 : OUT STD_LOGIC;
	 t7 : OUT STD_LOGIC;
	 execute : OUT STD_LOGIC
    );
END instruction_sequencer;

ARCHITECTURE bdf_type OF instruction_sequencer IS

	COMPONENT d_ff
		PORT(reset : IN STD_LOGIC;
				clock : IN STD_LOGIC;
				d : IN STD_LOGIC;
				q : OUT STD_LOGIC
				);
	END COMPONENT;
	
	SIGNAL opcode_n : STD_LOGIC_VECTOR(2 DOWNTO 0); -- inverted input
	SIGNAL t_counter0 : STD_LOGIC;
	SIGNAL t_counter0_n : STD_LOGIC; -- inverted output
	SIGNAL t_counter1 : STD_LOGIC;
	SIGNAL t_counter1_n : STD_LOGIC; -- inverted output
	SIGNAL t_counter2 : STD_LOGIC;
	SIGNAL t_counter2_n : STD_LOGIC; -- inverted output
	SIGNAL t_counter0_next : STD_LOGIC;
	SIGNAL t_counter1_next : STD_LOGIC;
	SIGNAL t_counter2_next : STD_LOGIC;
	

BEGIN

  -- Current state logic
  b2v_t_counter0_ff : d_ff
	PORT MAP(reset => reset, clock => clock, d => t_counter0_next, q => t_counter0);
	
	b2v_t_counter1_ff : d_ff
		PORT MAP(reset => reset, clock => clock, d => t_counter1_next, q => t_counter1);
		
	b2v_t_counter2_ff : d_ff
		PORT MAP(reset => reset, clock => clock, d => t_counter2_next, q => t_counter2);
		
	-- Next-State logic
	opcode_n <= not(opcode);
	t_counter0_n <= not(t_counter0);
	t_counter1_n <= not(t_counter1);
	t_counter2_n <= not(t_counter2);
	
	t_counter0_next <= (opcode_n(1) and t_counter0_n) or (opcode(1) and t_counter2_n and t_counter0_n) or (opcode_n(2) and opcode(1) and t_counter0_n);
	t_counter1_next <= (t_counter2_n and t_counter1_n and t_counter0) or (opcode(1) and t_counter1_n and t_counter0) or (opcode(2) and t_counter1_n and t_counter0) or (t_counter1 and t_counter0_n);
	t_counter2_next <= (t_counter2_n and t_counter1 and t_counter0) or (opcode_n(1) and t_counter2 and t_counter0_n) or (t_counter2 and t_counter1 and t_counter0_n) or (opcode_n(2) and opcode(1) and t_counter2 and t_counter1_n) or (opcode(2) and opcode_n(1) and t_counter2 and t_counter1_n);
	
	-- Output logic
	t0 <= t_counter2_n and t_counter1_n and t_counter0_n;
	t1 <= t_counter2_n and t_counter1_n and t_counter0;
	t2 <= t_counter2_n and t_counter1 and t_counter0_n;
	t3 <= t_counter2_n and t_counter1 and t_counter0;
	t4 <= t_counter2 and t_counter1_n and t_counter0_n;
	t5 <= t_counter2 and t_counter1_n and t_counter0;
	t6 <= t_counter2 and t_counter1 and t_counter0_n;
	t7 <= t_counter2 and t_counter1 and t_counter0;
	execute <= t_counter2;

END bdf_type;
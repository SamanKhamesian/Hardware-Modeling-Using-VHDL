LIBRARY ieee;
USE ieee.STD_LOGIC_1164.all;

ENTITY cipher IS

	PORT(
			nrst	: IN	STD_LOGIC;
			clk		: IN	STD_LOGIC;
			start	: IN	STD_LOGIC;
			pt		: IN	STD_LOGIC_VECTOR(15 DOWNTO 0);
			ct		: OUT	STD_LOGIC_VECTOR(15 DOWNTO 0);
			ready	: OUT	STD_LOGIC
	);
	
END cipher;

ARCHITECTURE structural_cipher OF cipher IS

	TYPE	STATE	IS		(idle,	running);
	
	SIGNAL	cur_st	:		STATE;
	SIGNAL	counter	:		INTEGER	:= 0;
	SIGNAL	prepare	:		STD_LOGIC;
	SIGNAL	K		:		STD_LOGIC_VECTOR(15 DOWNTO 0) := X"F0F0";
	SIGNAL	B		:		STD_LOGIC_VECTOR(15 DOWNTO 0) := X"0001";
	SIGNAL	TEMP	:		STD_LOGIC_VECTOR(15 DOWNTO 0);
	
	SIGNAL	ce		:		STD_LOGIC;
	SIGNAL	num_a	:		STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL	num_b	:		STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL	cin		:		STD_LOGIC;
	SIGNAL	sum		:		STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL	cout	:		STD_LOGIC;
	
	COMPONENT adder IS
	
		Port(
				ce	: IN	STD_LOGIC;
				a	: IN	STD_LOGIC_VECTOR (15 DOWNTO 0);
				b	: IN	STD_LOGIC_VECTOR (15 DOWNTO 0); 
				cin : IN	STD_LOGIC;
				sum : OUT	STD_LOGIC_VECTOR (15 DOWNTO	0);
				cout: OUT	STD_LOGIC
		);
	
	END COMPONENT;
	
BEGIN
	
	full_adder : adder
	
		PORT MAP(
					ce,
					num_a,
					num_b,
					cin,
					sum,
					cout
		);
		
	PROCESS(clk, nrst) BEGIN
		
		IF (nrst = '0') THEN
		
			prepare	<=	'0';
			TEMP	<=	X"0000";
			cur_st	<=	idle;
			
		ELSIF(RISING_EDGE(clk)) THEN
	
			CASE cur_st IS
		
				WHEN idle =>
					
					prepare	<=	'1';
					
					IF	(start = '1') THEN
					
						TEMP	<=	pt;
						cur_st	<= running;
			
					END IF;
					
				WHEN running =>
				
					prepare	<=	'0';
					
					IF (K(counter) = '0') THEN

						TEMP	<= ('0' & TEMP(15 DOWNTO 1));
						
					ELSE

						TEMP	<=	sum;

					END IF;
					
					IF (counter = 15) THEN
				
						counter	<=	0;
						cur_st	<=	idle;
					
					ELSE
					
						counter	<=	counter + 1;
					
					END IF;
				
			END CASE;
			
		END IF;
		
	END PROCESS;
	
	ce		<=	K(counter);
	num_a	<=	TEMP;
	num_b	<=	B;
	cin		<=	'0';
	
	ct		<= 	TEMP;
	ready	<=	prepare;
				
END structural_cipher;
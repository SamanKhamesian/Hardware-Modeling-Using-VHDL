LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_signed.all;

ENTITY adder IS

	Port(
			ce	: IN	STD_LOGIC;
			a	: IN	STD_LOGIC_VECTOR (15 DOWNTO 0);
			b	: IN	STD_LOGIC_VECTOR (15 DOWNTO 0); 
			cin : IN	STD_LOGIC;
			sum : OUT	STD_LOGIC_VECTOR (15 DOWNTO	0);
			cout: OUT	STD_LOGIC
	);
		
END adder;

ARCHITECTURE arch_adder OF adder IS
	
	SIGNAL	temp_a		:	STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL	temp_b		:	STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL	temp_c		:	STD_LOGIC;
	SIGNAL	temp_sum	:	STD_LOGIC_VECTOR(16 DOWNTO 0);
	
BEGIN

	temp_a		<=	(ce & ce & ce & ce & ce & ce & ce & ce & ce & ce & ce & ce & ce & ce & ce & ce) AND a;
	temp_b		<=	(ce & ce & ce & ce & ce & ce & ce & ce & ce & ce & ce & ce & ce & ce & ce & ce) AND b;
	temp_c		<=	ce AND cin;
	temp_sum	<=	('0' & temp_a) + temp_b + temp_c;
	sum			<=	temp_sum(15 DOWNTO 0);
	cout		<=	temp_sum(16);
		
END arch_adder;
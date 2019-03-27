LIBRARY ieee;
USE ieee.STD_LOGIC_1164.all;
USE ieee.NUMERIC_STD.all;
USE ieee.STD_LOGIC_UNSIGNED.all;

ENTITY STACK IS

	PORT (
	
		DATAin:		IN      STD_LOGIC_VECTOR(7 DOWNTO 0);
		DATAout:	OUT 	STD_LOGIC_VECTOR(7 DOWNTO 0);
		SP:			OUT 	STD_LOGIC_VECTOR(2 DOWNTO 0);
		PUSH:		IN      STD_LOGIC;
		POP:		IN      STD_LOGIC;
		EMP:		OUT 	STD_LOGIC;
		FUL:		OUT 	STD_LOGIC;
		EN:			IN      STD_LOGIC;
		RST:		IN      STD_LOGIC;
		CLK: 		IN      STD_LOGIC
	);
	
END STACK;

ARCHITECTURE ARCH_STACK_BEHAVIORAL OF STACK IS

	TYPE	MEM_TYPE 	IS ARRAY(0 TO 3) OF STD_LOGIC_VECTOR(7 DOWNTO 0);
	SIGNAL	STACK_MEM:	MEM_TYPE:= (OTHERS => (OTHERS => '0'));

	SIGNAL	FULL:	STD_LOGIC := '0';
	SIGNAL	EMPTY:	STD_LOGIC := '1';
	SIGNAL	OUTPUT:	STD_LOGIC_VECTOR(7 DOWNTO 0) := "00000000";
	SIGNAL	STACKP:	STD_LOGIC_VECTOR(2 DOWNTO 0) := "000";
	SIGNAL	MEMP:	INTEGER := 0;
	
BEGIN

	OPERATIONS: PROCESS(CLK, RST)
	
	BEGIN
		
		IF (RST = '1') THEN
			
			STACKP		<= "000";
			MEMP		<=  0;
			EMPTY		<= '1';
			FULL		<= '0';
			OUTPUT		<= (OTHERS => '0');
			STACK_MEM	<= (OTHERS => (OTHERS => '0'));
			
		ELSIF (RISING_EDGE(CLK) AND EN = '1') THEN
			
			IF (PUSH = '1' AND FULL = '0') THEN
				
				IF (MEMP = 3) THEN
					FULL <= '1';
				ELSE
					FULL <= '0';
				END IF;
				
				STACK_MEM(MEMP) <= DATAin;
				STACKP <= STACKP + 1;
				MEMP   <= MEMP + 1;
				OUTPUT <= "--------";
				EMPTY  <= '0';
					
			END IF;
					
			IF (POP = '1' AND EMPTY = '0') THEN
				
				IF (MEMP = 1) THEN
					EMPTY <= '1';
				ELSE
					EMPTY <= '0';
				END IF;
					
				IF (MEMP /= 0) THEN
				
					OUTPUT <= STACK_MEM(MEMP - 1);
					MEMP   <= MEMP - 1;
					STACKP <= STACKP - 1;
					FULL   <= '0';
					
				END IF;
					
			END IF;
				
		END IF;
		
	END PROCESS;
	
	SP		<= STACKP;
	DATAout <= OUTPUT;
	FUL		<= FULL;
	EMP		<= EMPTY;
	
END ARCH_STACK_BEHAVIORAL;

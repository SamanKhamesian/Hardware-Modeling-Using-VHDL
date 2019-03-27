LIBRARY ieee;

USE ieee.STD_LOGIC_1164.all;

ENTITY SHIFT_REG IS

	PORT(
		Par_LD:		IN	STD_LOGIC_VECTOR(7 DOWNTO 0);
		Serial_In:	IN 	STD_LOGIC;
		Serial_Out:	OUT	STD_LOGIC;
		RST:		IN	STD_LOGIC;
		LD:			IN	STD_LOGIC;
		EN:			IN	STD_LOGIC;
		CLK:		IN	STD_LOGIC
	);
		
END SHIFT_REG;

ARCHITECTURE ARCH_SHIFT_REG OF SHIFT_REG IS

	SIGNAL REG:	STD_LOGIC_VECTOR(7 DOWNTO 0);

BEGIN

	PROCESS (CLK) BEGIN
	
		IF (RISING_EDGE(CLK)) THEN
		
			IF (RST = '1') THEN
			
				Serial_Out	<= 'Z';
				REG 		<= (OTHERS => '0');
				
			ELSIF (LD = '1') THEN
			
				Serial_Out	<= 'Z';
				REG			<= Par_LD;
			
			ELSIF (EN = '1') THEN
			
				Serial_Out <= REG(0);
				
				FOR Index IN 1 TO 7 LOOP
				
					REG(Index - 1) <= REG(Index);
					
				END LOOP;
				
				REG(7) <= Serial_In;
				
			END IF;
			
		END IF;	
		
	END PROCESS;

END ARCH_SHIFT_REG;

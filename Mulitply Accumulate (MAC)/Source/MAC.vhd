LIBRARY ieee;

USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_signed.all;

ENTITY MAC IS

	PORT(
		A:		IN	SIGNED(7 DOWNTO 0);
		B:		IN	SIGNED(7 DOWNTO 0);
		N:		IN	UNSIGNED(3 DOWNTO 0);
		ROUT:	OUT SIGNED(19 DOWNTO 0);
		RST:	IN	STD_LOGIC;
		CLK:	IN	STD_LOGIC
	);
	
END MAC;

ARCHITECTURE ARCH_MAC_BEHAVIROAL OF MAC IS

SIGNAL	OUTPUT:	SIGNED(19 DOWNTO 0) := (OTHERS => '0');
SIGNAL	MUL:	SIGNED(15 DOWNTO 0) := (OTHERS => '0');
SIGNAL	COUNT: 	UNSIGNED(3 DOWNTO 0) := (OTHERS => '0');

BEGIN

	OPERATIONS: PROCESS(CLK, RST)
	BEGIN
	
		IF (RST = '1') THEN
		
			OUTPUT	<= (OTHERS => '0');
			
		ELSIF(CLK' EVENT AND CLK = '1') THEN
		
			MUL 	<= (A * B);
			
		ELSIF(CLK' EVENT AND CLK = '0') THEN
		
			IF (COUNT /= N + 1) THEN
			
				OUTPUT	<= MUL + OUTPUT;
				COUNT	<= COUNT + 1;
				
			END IF;

		END IF;
	
	END PROCESS;
	
	ROUT <= OUTPUT;

END ARCH_MAC_BEHAVIROAL;

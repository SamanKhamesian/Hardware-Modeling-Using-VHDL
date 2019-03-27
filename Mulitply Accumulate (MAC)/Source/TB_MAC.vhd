LIBRARY ieee;

USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_signed.all;

ENTITY TB_MAC IS
END TB_MAC;

ARCHITECTURE TB_ARCH_MAC_BEHAVIORAL OF TB_MAC IS
	
	COMPONENT MAC
	
		PORT(
			A:		IN	SIGNED(7 DOWNTO 0);
			B:		IN	SIGNED(7 DOWNTO 0);
			N:		IN	UNSIGNED(3 DOWNTO 0);
			ROUT:	OUT SIGNED(19 DOWNTO 0);
			RST:	IN	STD_LOGIC;
			CLK:	IN	STD_LOGIC
		);
	
	END COMPONENT;
	
	SIGNAL	A:		SIGNED(7 DOWNTO 0);
	SIGNAL	B:		SIGNED(7 DOWNTO 0);
	SIGNAL 	N:		UNSIGNED(3 DOWNTO 0);
	SIGNAL	ROUT:	SIGNED(19 DOWNTO 0);
	SIGNAL	RST:	STD_LOGIC;
	SIGNAL	CLK:	STD_LOGIC;
	
BEGIN

	TEST : PROCESS
	BEGIN
				
		A 	<= "00000000";
		B 	<= "00000000";
		N 	<= "0000";
		RST <= '1';
		CLK <= '0';
		
		WAIT FOR 10 NS;
		
		A 	<= "00000010";
		B 	<= "00000011";
		N 	<= "0100";
		RST <= '0';
		CLK <= '1';
		
		WAIT FOR 10 NS;
		
		A 	<= "00000010";
		B 	<= "00000011";
		N 	<= "0100";
		RST <= '0';
		CLK <= '0';
		
		WAIT FOR 10 NS;
		
		A 	<= "00000100";
		B 	<= "00000010";
		N 	<= "0100";
		RST <= '0';
		CLK <= '1';
		
		WAIT FOR 10 NS;
		
		A 	<= "00000100";
		B 	<= "00000010";
		N 	<= "0100";
		RST <= '0';
		CLK <= '0';
		
		WAIT FOR 10 NS;
		
		A 	<= "10000011";
		B 	<= "00000110";
		N 	<= "0100";
		RST <= '0';
		CLK <= '1';
		
		WAIT FOR 10 NS;
		
		A 	<= "10000011";
		B 	<= "00000110";
		N 	<= "0100";
		RST <= '0';
		CLK <= '0';
		
		WAIT FOR 10 NS;
		
		A 	<= "10000001";
		B 	<= "10000000";
		N 	<= "0100";
		RST <= '0';
		CLK <= '1';
		
		WAIT FOR 10 NS;
		
		A 	<= "10000001";
		B 	<= "10000000";
		N 	<= "0100";
		RST <= '0';
		CLK <= '0';

		WAIT FOR 10 NS;
		
		A 	<= "10000001";
		B 	<= "10000000";
		N 	<= "0100";
		RST <= '0';
		CLK <= '1';
		
		WAIT FOR 10 NS;
		
		A 	<= "10000001";
		B 	<= "10000000";
		N 	<= "0100";
		RST <= '0';
		CLK <= '0';
		
	END PROCESS;
	
	DUT : MAC
	
	PORT MAP (
		A		=> A,
		B		=> B,
		N 		=> N,
		ROUT	=> ROUT,
		RST 	=> RST,
		CLK 	=> CLK
	);
	
END TB_ARCH_MAC_BEHAVIORAL;
		
LIBRARY ieee;
USE ieee.STD_LOGIC_1164.all;
USE ieee.std_logic_signed.all;

ENTITY TB_FIFO IS
END TB_FIFO;

ARCHITECTURE ARCH_TB_FIFO OF TB_FIFO IS

	COMPONENT FIFO
	
		PORT(
			In_Data:	IN	STD_LOGIC_VECTOR(15 DOWNTO 0);
			Out_Data:	OUT	STD_LOGIC_VECTOR(15 DOWNTO 0);
			RST:		IN	STD_LOGIC;
			CLK:		IN 	STD_LOGIC;
			EN:			IN 	STD_LOGIC
		);
		
	END COMPONENT;
	
	SIGNAL		In_Data:	STD_LOGIC_VECTOR(15 DOWNTO 0) := "0000000000000000";
	SIGNAL		Out_Data:	STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL		RST:		STD_LOGIC := '0';
	SIGNAL		CLK:		STD_LOGIC := '0';
	SIGNAL		EN:		STD_LOGIC := '1';
	
BEGIN

	TEST : PROCESS
	
	BEGIN
	
		In_Data <= "0000000000000000";
		RST 	<= '1';
		CLK 	<= '0';
		EN		<= '0';
		
		WAIT FOR 10 NS;
		
		In_Data <= "0000000000001111";
		RST 	<= '0';
		CLK 	<= '1';
		EN		<= '1';
		
		WAIT FOR 10 NS;
		
		In_Data <= "0000000000001111";
		RST 	<= '0';
		CLK 	<= '0';
		EN		<= '0';
		
		WAIT FOR 10 NS;
		
		In_Data <= "0000000000000011";
		RST 	<= '0';
		CLK 	<= '1';
		EN		<= '1';
		
		WAIT FOR 10 NS;
		
		In_Data <= "0000000000000011";
		RST 	<= '0';
		CLK 	<= '0';
		EN		<= '0';
		
		WAIT FOR 10 NS;
		
		In_Data <= "0000000001000110";
		RST 	<= '0';
		CLK 	<= '1';
		EN		<= '1';
		
		WAIT FOR 10 NS;
		
		In_Data <= "0000000001000110";
		RST 	<= '0';
		CLK 	<= '0';
		EN		<= '0';
		
		WAIT FOR 10 NS;
		
		In_Data <= "0000000000000001";
		RST 	<= '0';
		CLK 	<= '1';
		EN		<= '1';
		
		WAIT FOR 10 NS;
		
		In_Data <= "0000000000000001";
		RST 	<= '0';
		CLK 	<= '0';
		EN		<= '0';
		
		WAIT FOR 10 NS;
		
		In_Data <= "0000000010000001";
		RST 	<= '0';
		CLK 	<= '1';
		EN		<= '1';
		
		WAIT FOR 10 NS;
		
		In_Data <= "0000000010000001";
		RST 	<= '0';
		CLK 	<= '0';
		EN		<= '0';
		
	END PROCESS;
	
	DUT : FIFO
	
		PORT MAP (
			In_Data		=> In_Data,
			Out_Data	=> Out_Data,
			RST			=> RST,
			CLK			=> CLK,
			EN			=> EN
		);
		
END ARCH_TB_FIFO;
		

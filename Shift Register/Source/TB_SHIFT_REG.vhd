LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY TB_SHIFT_REG IS
END TB_SHIFT_REG;

ARCHITECTURE ARCH_SHIFT_REG OF TB_SHIFT_REG IS

	COMPONENT SHIFT_REG
	
		PORT(	
			Par_LD:		IN	STD_LOGIC_VECTOR(7 DOWNTO 0);
			Serial_In:	IN 	STD_LOGIC;
			Serial_Out:	OUT	STD_LOGIC;
			RST:		IN	STD_LOGIC;
			LD:			IN	STD_LOGIC;
			EN:			IN	STD_LOGIC;
			CLK:		IN	STD_LOGIC
		);
		
	END COMPONENT;
	
	SIGNAL	Par_LD:			STD_LOGIC_VECTOR(7 DOWNTO 0) := "00000000";
	SIGNAL	Serial_In:	 	STD_LOGIC := '0';
	SIGNAL	Serial_Out:		STD_LOGIC := '0';
	SIGNAL	RST:			STD_LOGIC := '0';
	SIGNAL	LD:				STD_LOGIC := '0';
	SIGNAL	EN:				STD_LOGIC := '0';
	SIGNAL	CLK:			STD_LOGIC := '0';
	
BEGIN

	TEST : PROCESS
	
	BEGIN
		
		CLK			<= '1';
		RST			<= '1';
		LD			<= '0';
		EN			<= '0';
		Serial_In	<= '0';
		Par_LD		<= "00000000";
		
		WAIT FOR 10 NS;
		
		CLK			<= '0';
		RST			<= '1';
		LD			<= '0';
		EN			<= '0';
		Serial_In	<= '0';
		Par_LD		<= "00000000";
		
		WAIT FOR 10 NS;
		
		CLK			<= '1';
		RST			<= '0';
		LD			<= '1';
		EN			<= '0';
		Serial_In	<= '0';
		Par_LD		<= "01001011";
		
		WAIT FOR 10 NS;
		
		CLK			<= '0';
		RST			<= '0';
		LD			<= '1';
		EN			<= '0';
		Serial_In	<= '0';
		Par_LD		<= "01001011";
		
		WAIT FOR 10 NS;
		
		CLK			<= '1';
		RST			<= '0';
		LD			<= '0';
		EN			<= '1';
		Serial_In	<= '1';
		Par_LD		<= "01001011";
		
		WAIT FOR 10 NS;
		
		CLK			<= '0';
		RST			<= '0';
		LD			<= '0';
		EN			<= '1';
		Serial_In	<= '1';
		Par_LD		<= "01001011";
		
		WAIT FOR 10 NS;
		
	END PROCESS;
	
	DUT : SHIFT_REG
	
		PORT MAP(	
			Par_LD		=> Par_LD,
			Serial_In	=> Serial_In,
			Serial_Out	=> Serial_Out,
			RST			=> RST,
			LD			=> LD,
			EN			=> EN,
			CLK			=> CLK
		);
		
END ARCH_SHIFT_REG;
LIBRARY ieee;
USE ieee.STD_LOGIC_1164.all;
USE ieee.NUMERIC_STD.all;
USE ieee.STD_LOGIC_UNSIGNED.all;

ENTITY TB_STACK IS
END TB_STACK;

ARCHITECTURE TB_ARCH_STACK_BEHAVIRAL OF TB_STACK IS

	COMPONENT STACK
	
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
		
	END COMPONENT;
	
	SIGNAL	DATAin:		STD_LOGIC_VECTOR(7 DOWNTO 0):="00000000";
	SIGNAL	DATAout:	STD_LOGIC_VECTOR(7 DOWNTO 0):="00000000";
	SIGNAL	SP:			STD_LOGIC_VECTOR(2 DOWNTO 0):="000";
	SIGNAL	PUSH:		STD_LOGIC:='0';
	SIGNAL	POP:		STD_LOGIC:='0';
	SIGNAL	EMP:		STD_LOGIC:='1';
	SIGNAL	FUL:		STD_LOGIC:='0';
	SIGNAL	EN:			STD_LOGIC:='0';
	SIGNAL	RST:		STD_LOGIC:='1';
	SIGNAL	CLK:		STD_LOGIC:='0';
	
BEGIN

	TEST: PROCESS
	
	BEGIN
		
		WAIT FOR 10 NS;
		
		RST <= '1';
		CLK <= '0';
		EN  <= '0';
		PUSH <= '0';
		POP <= '0';
		DATAin <= "00000000";
		
		WAIT FOR 10 NS;
		
		RST <= '0';
		CLK <= '1';
		EN  <= '1';
		PUSH <= '1';
		POP <= '0';
		DATAin <= "00000101";
		
		WAIT FOR 10 NS;
		
		RST <= '0';
		CLK <= '0';
		EN  <= '0';
		PUSH <= '0';
		POP <= '0';
		DATAin <= "00000101";
		
		WAIT FOR 10 NS;
		
		RST <= '0';
		CLK <= '1';
		EN  <= '1';
		PUSH <= '1';
		POP <= '0';
		DATAin <= "00001100";
		
		WAIT FOR 10 NS;
		
		RST <= '0';
		CLK <= '0';
		EN  <= '0';
		PUSH <= '0';
		POP <= '0';
		DATAin <= "00001100";
		
		WAIT FOR 10 NS;
		
		RST <= '0';
		CLK <= '1';
		EN  <= '1';
		PUSH <= '1';
		POP <= '0';
		DATAin <= "00001001";
		
		WAIT FOR 10 NS;
		
		RST <= '0';
		CLK <= '0';
		EN  <= '0';
		PUSH <= '0';
		POP <= '0';
		DATAin <= "00001001";
		
		WAIT FOR 10 NS;
		
		RST <= '0';
		CLK <= '1';
		EN  <= '1';
		PUSH <= '1';
		POP <= '0';
		DATAin <= "00000011";
		
		WAIT FOR 10 NS;
		
		RST <= '0';
		CLK <= '0';
		EN  <= '0';
		PUSH <= '0';
		POP <= '0';
		DATAin <= "00000011";
		
		WAIT FOR 10 NS;
		
		RST <= '0';
		CLK <= '1';
		EN  <= '1';
		PUSH <= '1';
		POP <= '0';
		DATAin <= "00000011";
		
		WAIT FOR 10 NS;
		
		RST <= '0';
		CLK <= '0';
		EN  <= '0';
		PUSH <= '0';
		POP <= '0';
		DATAin <= "00000011";
		
		-- pop
		
		
		WAIT FOR 10 NS;
		
		RST <= '0';
		CLK <= '1';
		EN  <= '1';
		PUSH <= '0';
		POP <= '1';
		DATAin <= "00000011";
		
		WAIT FOR 10 NS;
		
		RST <= '0';
		CLK <= '0';
		EN  <= '0';
		PUSH <= '0';
		POP <= '0';
		DATAin <= "00000011";
		
		WAIT FOR 10 NS;
		
		RST <= '0';
		CLK <= '1';
		EN  <= '1';
		PUSH <= '0';
		POP <= '1';
		DATAin <= "00000011";
		
		WAIT FOR 10 NS;
		
		RST <= '0';
		CLK <= '0';
		EN  <= '0';
		PUSH <= '0';
		POP <= '0';
		DATAin <= "00000011";
		
		WAIT FOR 10 NS;
		
		RST <= '0';
		CLK <= '1';
		EN  <= '1';
		PUSH <= '0';
		POP <= '1';
		DATAin <= "00000011";
		
		WAIT FOR 10 NS;
		
		RST <= '0';
		CLK <= '0';
		EN  <= '0';
		PUSH <= '0';
		POP <= '0';
		DATAin <= "00000011";
		
		WAIT FOR 10 NS;
		
		RST <= '0';
		CLK <= '1';
		EN  <= '1';
		PUSH <= '0';
		POP <= '1';
		DATAin <= "00000011";
		
		WAIT FOR 10 NS;
		
		RST <= '0';
		CLK <= '0';
		EN  <= '0';
		PUSH <= '0';
		POP <= '0';
		DATAin <= "00000011";
		
	END PROCESS;
	
	DUT : STACK

  	PORT MAP (	
			DATAin	=>	DATAin,
			DATAout	=>	DATAout,
			SP		=>	SP,
			PUSH	=>	PUSH,
			POP		=>	POP,
			EMP		=>	EMP,
			FUL		=>	FUL,
			EN		=>	EN,
			RST		=>	RST,
			CLK		=>	CLK
	);

END TB_ARCH_STACK_BEHAVIRAL;
		
		
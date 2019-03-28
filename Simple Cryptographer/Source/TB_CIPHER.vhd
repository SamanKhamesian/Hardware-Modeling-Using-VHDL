LIBRARY ieee;
USE ieee.STD_LOGIC_1164.all;

ENTITY	TB_CIPHER IS
END TB_CIPHER;

ARCHITECTURE ARCH_TB_CIPHER OF TB_CIPHER IS
	
	COMPONENT cipher
	
		PORT(
		
				nrst	: IN	STD_LOGIC;
				clk		: IN	STD_LOGIC;
				start	: IN	STD_LOGIC;
				pt		: IN	STD_LOGIC_VECTOR(15 DOWNTO 0);
				ct		: OUT	STD_LOGIC_VECTOR(15 DOWNTO 0);
				ready	: OUT	STD_LOGIC
		);
		
	END COMPONENT;
	
	SIGNAL	nrst	: 	STD_LOGIC;
	SIGNAL	clk		: 	STD_LOGIC;
	SIGNAL	start	: 	STD_LOGIC;
	SIGNAL	pt		: 	STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL	ct		: 	STD_LOGIC_VECTOR(15 DOWNTO 0);			
	SIGNAL	ready	: 	STD_LOGIC;
	
BEGIN

	TEST : PROCESS
	
	BEGIN
		
		nrst	<=	'0';
		clk		<=	'0';
		start	<=	'0';
		pt		<=	X"0000";
	
		WAIT FOR 10 NS;
		
		nrst	<=	'1';
		clk		<=	'1';
		start	<=	'1';
		pt		<=	X"00CC";
		
		WAIT FOR 10 NS;
		
		nrst	<=	'1';
		clk		<=	'0';
		start	<=	'1';
		pt		<= 	X"00CC";
	
		WAIT FOR 10 NS;
		
		nrst	<=	'1';
		clk		<=	'1';
		start	<=	'1';
		pt		<=	X"00CC";
		
		WAIT FOR 10 NS;
		
		nrst	<=	'1';
		clk		<=	'0';
		start	<=	'1';
		pt		<= 	X"00CC";
		
		WAIT FOR 10 NS;
		
		nrst	<=	'1';
		clk		<=	'1';
		start	<=	'1';
		pt		<=	X"00CC";
		
		WAIT FOR 10 NS;
		
		nrst	<=	'1';
		clk		<=	'0';
		start	<=	'1';
		pt		<= 	X"00CC";
		
		WAIT FOR 10 NS;
		
		nrst	<=	'1';
		clk		<=	'1';
		start	<=	'1';
		pt		<=	X"00CC";
		
		WAIT FOR 10 NS;
		
		nrst	<=	'1';
		clk		<=	'0';
		start	<=	'1';
		pt		<= 	X"00CC";
		
		WAIT FOR 10 NS;
		
		nrst	<=	'1';
		clk		<=	'1';
		start	<=	'1';
		pt		<=	X"00CC";
		
		WAIT FOR 10 NS;
		
		nrst	<=	'1';
		clk		<=	'0';
		start	<=	'1';
		pt		<= 	X"00CC";
		
		WAIT FOR 10 NS;
		
		nrst	<=	'1';
		clk		<=	'1';
		start	<=	'1';
		pt		<=	X"00CC";
		
		WAIT FOR 10 NS;
		
		nrst	<=	'1';
		clk		<=	'0';
		start	<=	'1';
		pt		<= 	X"00CC";
		
		WAIT FOR 10 NS;
		
		nrst	<=	'1';
		clk		<=	'1';
		start	<=	'1';
		pt		<=	X"00CC";
		
		WAIT FOR 10 NS;
		
		nrst	<=	'1';
		clk		<=	'0';
		start	<=	'1';
		pt		<= 	X"00CC";
		
		WAIT FOR 10 NS;
		
		nrst	<=	'1';
		clk		<=	'1';
		start	<=	'1';
		pt		<=	X"00CC";
		
		WAIT FOR 10 NS;
		
		nrst	<=	'1';
		clk		<=	'0';
		start	<=	'1';
		pt		<= 	X"00CC";
		
		WAIT FOR 10 NS;
		
		nrst	<=	'1';
		clk		<=	'1';
		start	<=	'1';
		pt		<=	X"00CC";
		
		WAIT FOR 10 NS;
		
		nrst	<=	'1';
		clk		<=	'0';
		start	<=	'1';
		pt		<= 	X"00CC";
		
		WAIT FOR 10 NS;
		
		nrst	<=	'1';
		clk		<=	'1';
		start	<=	'1';
		pt		<=	X"00CC";
		
		WAIT FOR 10 NS;
		
		nrst	<=	'1';
		clk		<=	'0';
		start	<=	'1';
		pt		<= 	X"00CC";
		
		WAIT FOR 10 NS;
		
		nrst	<=	'1';
		clk		<=	'1';
		start	<=	'1';
		pt		<=	X"00CC";
		
		WAIT FOR 10 NS;
		
		nrst	<=	'1';
		clk		<=	'0';
		start	<=	'1';
		pt		<= 	X"00CC";
		
		WAIT FOR 10 NS;
		
		nrst	<=	'1';
		clk		<=	'1';
		start	<=	'1';
		pt		<=	X"00CC";
		
		WAIT FOR 10 NS;
		
		nrst	<=	'1';
		clk		<=	'0';
		start	<=	'1';
		pt		<= 	X"00CC";
		
		WAIT FOR 10 NS;
		
		nrst	<=	'1';
		clk		<=	'1';
		start	<=	'1';
		pt		<=	X"00CC";
		
		WAIT FOR 10 NS;
		
		nrst	<=	'1';
		clk		<=	'0';
		start	<=	'1';
		pt		<= 	X"00CC";
		
		WAIT FOR 10 NS;
		
		nrst	<=	'1';
		clk		<=	'1';
		start	<=	'1';
		pt		<=	X"00CC";
		
		WAIT FOR 10 NS;
		
		nrst	<=	'1';
		clk		<=	'0';
		start	<=	'1';
		pt		<= 	X"00CC";
		
		WAIT FOR 10 NS;
		
		nrst	<=	'1';
		clk		<=	'1';
		start	<=	'1';
		pt		<=	X"00CC";
		
		WAIT FOR 10 NS;
		
		nrst	<=	'1';
		clk		<=	'0';
		start	<=	'1';
		pt		<= 	X"00CC";
		
			
		WAIT FOR 10 NS;
		
		nrst	<=	'1';
		clk		<=	'1';
		start	<=	'1';
		pt		<=	X"00CC";
		
		WAIT FOR 10 NS;
		
		nrst	<=	'1';
		clk		<=	'0';
		start	<=	'1';
		pt		<= 	X"00CC";
		
		WAIT FOR 10 NS;
		
		nrst	<=	'1';
		clk		<=	'1';
		start	<=	'1';
		pt		<=	X"00CC";
		
		WAIT FOR 10 NS;
		
		nrst	<=	'1';
		clk		<=	'0';
		start	<=	'1';
		pt		<= 	X"00CC";
		
	END PROCESS;
	
	DUT : cipher
	
		PORT MAP(
		
			nrst	=>	nrst,
			clk		=>	clk,
			start	=>	start,
			pt		=>	pt,
			ct		=>	ct,
			ready	=>	ready
		);
	
END ARCH_TB_CIPHER;
		
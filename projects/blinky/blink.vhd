----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:21:31 04/26/2016 
-- Design Name: 
-- Module Name:    blink - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity blink is

	Port (
		LEDS : out STD_LOGIC_VECTOR(2 downto 0) := (others => '0');
		Clk : in STD_LOGIC;
		PORTB10 : out STD_LOGIC;
		PORTB11 : in STD_LOGIC
	);

end blink;

architecture Behavioral of blink is

	signal led : STD_LOGIC_VECTOR(2 downto 0) := (others => '0');
	signal one_second : std_logic_vector(24 downto 0) :=  "1111010000100100000000000";
	signal half_second : std_logic_vector(24 downto 0) := "0111101000010010000000000";
	signal count : std_logic_vector(24 downto 0) := (others => '0');

begin

	process(Clk)
	begin

		if rising_edge(Clk) then
		
			if (unsigned(count) >= unsigned(half_second)) then
				count <= (others => '0');
				led <= std_logic_vector(unsigned(led) + 1);
			else
				count <= std_logic_vector(unsigned(count) + 1);
			end if;
			
		
		end if;		

	end process;
	LEDS <= led;
	PORTB10 <= PORTB11;

end Behavioral;


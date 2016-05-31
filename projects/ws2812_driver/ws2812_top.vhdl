----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:13:01 05/31/2016 
-- Design Name: 
-- Module Name:    ws2812_top - Behavioral 
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
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;


ENTITY ws2812_top IS
    PORT (
		Clk_32 : IN  STD_LOGIC;
		D_out : OUT STD_LOGIC
	);
END ws2812_top;

ARCHITECTURE Behavioral OF ws2812_top IS

BEGIN


END Behavioral;


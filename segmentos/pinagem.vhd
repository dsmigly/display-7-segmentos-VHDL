----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:07:30 08/23/2019 
-- Design Name: 
-- Module Name:    pinagem - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity pinagem is
    Port (  dado : in STD_LOGIC_VECTOR(3 DOWNTO 0);  
	 
	 seg : out STD_LOGIC_VECTOR(0 TO 6));
	 
end pinagem;


architecture Behavioral of pinagem is
begin

	with dado select
			   --abcdefg
		seg <= "0000001" WHEN "0000", --0
             "1001111" WHEN "0001", --1
             "0010010" WHEN "0010", --2
             "0000110" WHEN "0011", --3
             "1001100" WHEN "0100", --4
             "0100100" WHEN "0101", --5
             "0100000" WHEN "0110", --6
             "0001101" WHEN "0111", --7
             "0000000" WHEN "1000", --8
             "0000100" WHEN "1001", --9
             "0001000" WHEN "1010", --A
             "1100000" WHEN "1011", --B
             "0110001" WHEN "1100", --C
             "1000010" WHEN "1101", --D
             "0110000" WHEN "1110", --E
             "0111000" WHEN OTHERS; --F
			  


end Behavioral;
























































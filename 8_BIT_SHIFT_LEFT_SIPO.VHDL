----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06.11.2022 22:42:21
-- Design Name: 
-- Module Name: sipo - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity sipo is
    Port ( clk : in STD_LOGIC;
           input : in STD_LOGIC;
           output : out STD_LOGIC_VECTOR (7 downto 0));
end sipo;

architecture Behavioral of sipo is
signal temp:STD_LOGIC_VECTOR(7 downto 0);
begin
process(clk)
begin
if(clk'event and clk='1') then  -- positive edge triggered
for i in 0 to 6 loop
temp(i+1) <= temp(i);
end loop;
temp(0) <= input;
end if;
end process;
output <= temp;
end Behavioral;

----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/11/2022 11:10:54 AM
-- Design Name: 
-- Module Name: tff - Behavioral
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

entity tff is
    Port ( t : in STD_LOGIC;
           clk : in STD_LOGIC;
           q : out STD_LOGIC;
           qbar : out STD_LOGIC);
end tff;

architecture Behavioral of tff is
begin
process(t,clk)
variable temp:STD_LOGIC := '0';
begin
if(clk'event and clk='1') then
if(t='0') then
temp :=temp;
elsif(t='1') then
temp :=not temp;
end if;
end if;
q<=temp;
qbar<= not temp;
end process;
end Behavioral;

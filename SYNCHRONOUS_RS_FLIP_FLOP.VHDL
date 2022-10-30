----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/11/2022 09:48:53 AM
-- Design Name: 
-- Module Name: rsff - Behavioral
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

entity rsff is
    Port ( s : in STD_LOGIC;
           r : in STD_LOGIC;
           clk : in STD_LOGIC;
           q : out STD_LOGIC;
           qbar : out STD_LOGIC);
end rsff;

architecture Behavioral of rsff is


begin
process(s,r,clk)
variable temp:STD_LOGIC:='0';
begin
if(clk'event and clk='1') then
if(s='0' and r='0') then
temp :=temp;
elsif(s='0' and r='1') then
temp :='0';
elsif(s='1' and r='0') then
temp :='1';
elsif(s='1' and r='1') then
temp :='X';
end if;
end if;
q<=temp;
qbar<= not temp;
end process; 
end Behavioral;

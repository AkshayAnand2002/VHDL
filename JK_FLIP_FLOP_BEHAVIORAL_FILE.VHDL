----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 23.10.2022 11:40:45
-- Design Name: 
-- Module Name: jkff_beha - Behavioral
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

entity jkff_beha is
    Port ( j : in STD_LOGIC;
           k : in STD_LOGIC;
           clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           q : out STD_LOGIC;
           qb : out STD_LOGIC);
end jkff_beha;

architecture Behavioral of jkff_beha is
begin
process(j,k,rst,clk)
begin
if (rst='1') then
q <= '0';
qb <= '0';
elsif(clk='1' and clk'event) then -- positive edge triggered
if(j/=k) then
q <= j;
qb <= not j;
elsif(j='1' and k='1') then
q <= not j;
qb <= j;
end if;
end if;
end process;
end Behavioral;

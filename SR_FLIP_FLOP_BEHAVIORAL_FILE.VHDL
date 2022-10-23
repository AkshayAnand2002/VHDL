----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 23.10.2022 10:59:10
-- Design Name: 
-- Module Name: srff_beha - Behavioral
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

entity srff_beha is
    Port ( s : in STD_LOGIC;
           r : in STD_LOGIC;
           clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           q : out STD_LOGIC;
           qb : out STD_LOGIC);
end srff_beha;

architecture Behavioral of srff_beha is
begin
process(s,r,clk,rst)
begin
if(rst='1') then
q <='0';
qb <='0';
elsif(clk='1' and clk'event) then --positive edge triggered
if(s/=r) then -- s not equal to r.
q <= s;
qb <= r;
elsif(s='1' and r='1') then
q <= 'Z';
qb <= 'Z';
end if;
end if;
end process;
end Behavioral;

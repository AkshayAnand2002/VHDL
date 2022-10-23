----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 23.10.2022 10:28:44
-- Design Name: 
-- Module Name: dff_beha - Behavioral
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

entity dff_beha is
    Port ( D : in STD_LOGIC;
           clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           Qn1 : out STD_LOGIC); --Qn1 denotes Qn+1
end dff_beha;

architecture Behavioral of dff_beha is
begin
process(D,clk,rst)
begin
if(rst='1') then
Qn1 <='0';
elsif(clk='1' and clk'event) then --positive edge triggered i.e. when clock goes from 0 to 1 then output is gen.
-- delayed output because of dff.
Qn1 <= D;
end if;
end process;
end Behavioral;

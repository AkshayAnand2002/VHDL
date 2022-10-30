----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/11/2022 09:39:50 AM
-- Design Name: 
-- Module Name: dlatch - Behavioral
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

entity dlatch is
    Port ( d : in STD_LOGIC;
           en : in STD_LOGIC;
           q : inout STD_LOGIC;
           qbar : inout STD_LOGIC);
end dlatch;

architecture Behavioral of dlatch is
signal m1,m2:STD_LOGIC;
begin
m1<= d nand en;
m2 <= en nand (not d);
q <= m1 nand qbar;
qbar <= m2 nand q;

end Behavioral;

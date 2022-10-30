########### ANSWER TO B HERE
A. Write a VHDL code for 8-bit Shift-Left Register with Negative-Edge Clock, Clock Enable, Serial
In, and Serial Out. In your testbench show at least 25 cycles and starts loading the data
1000111100011100011001100. Confirm with the help of simulation that the same data is output
at Serial Out after 8 cycles.
B. Repeat the problem statement of part A by adding an extra reset input signal. If reset is 1 then the
current state of register becomes 00000000. Load the same serial input data and provide reset = 1
for t = 10 and 19.
--------------------->>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>--------------------->>>>>>>>>>>>>>>>>>>>>>>>>>----------------->>>>>>>>>>>>>>>>>>>>>>>>-------------->>>>>>>>>>>>>>
----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 30.10.2022 17:42:22
-- Design Name: 
-- Module Name: sl_siso_reset_added - Behavioral
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

entity sl_siso_reset_added is
    Port ( d : in STD_LOGIC;
           clk : in STD_LOGIC;
           en : in STD_LOGIC;
           rst : in STD_LOGIC;
           output : out STD_LOGIC);
end sl_siso_reset_added;

architecture Behavioral of sl_siso_reset_added is
begin
process(d,clk,en,rst)
variable temp :STD_LOGIC_VECTOR(7 downto 0);
begin
if (rst='1') then
temp(0) := '0';
for i in 0 to 6 loop
temp(i+1) := temp(i);
end loop;
elsif (clk'event and clk='0' and en='1') then --negative edge triggered
temp(0) := d;
for i in 0 to 6 loop
temp(i+1) := temp(i);
end loop;
output <= temp(7);
end if;
end process;
end Behavioral;
-------------SAME CODE PASTED AGAIN--------------------------------------------------------------------------------------->>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
  ----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/18/2022 10:43:37 AM
-- Design Name: 
-- Module Name: task2 - Behavioral
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

entity task2 is
    Port ( d : in STD_LOGIC;
           clk : in STD_LOGIC;
           en : in STD_LOGIC;
           rst : in STD_LOGIC;
           output : out STD_LOGIC);
end task2;

architecture Behavioral of task2 is
begin
process(d,clk,en,rst)
variable temp: STD_LOGIC_VECTOR(7 downto 0);
begin
if rst='1' then
temp(0) :='0';
for i in 0 to 6 loop
temp(i+1) := temp(i);
end loop;
elsif clk'event and clk='0' and en='1' then
temp(0) := d;
for i in 0 to 6 loop
temp(i+1) := temp(i);
end loop;
output <= temp(7);
end if;
end process;
end Behavioral;

  

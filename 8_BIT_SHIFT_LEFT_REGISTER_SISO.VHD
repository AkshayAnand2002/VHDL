Write a VHDL code for 8-bit Shift-Left Register with Negative-Edge Clock, Clock Enable, Serial
In, and Serial Out. In your testbench show at least 25 cycles and starts loading the data
1000111100011100011001100. Confirm with the help of simulation that the same data is output
at Serial Out after 8 cycles.
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 30.10.2022 16:30:51
-- Design Name: 
-- Module Name: dff - Behavioral
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

entity dff is
    Port ( d : in STD_LOGIC;
           clk : in STD_LOGIC;
           q : out STD_LOGIC;
           en : in STD_LOGIC);
end dff;

architecture Behavioral of dff is
begin
process(d,clk)
begin
if(clk'event and clk='0' and en='1') then  --negative edge triggered
q <= d;
end if;
end process;
end Behavioral;
------------------xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx-------------------------------xxxxxxxxxxxxxxxxxxxxxxxxxxxx-------------------xxxxxxxxxxxxxxxxxxxxx----
----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 30.10.2022 16:29:52
-- Design Name: 
-- Module Name: sl_siso - Behavioral
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

entity sl_siso is
    Port ( d : in STD_LOGIC;
           clk : in STD_LOGIC;
           en : in STD_LOGIC;
           output : out STD_LOGIC);
end sl_siso;

architecture Behavioral of sl_siso is
component dff is
    Port ( d : in STD_LOGIC;
           clk : in STD_LOGIC;
           q : out STD_LOGIC;
           en : in STD_LOGIC);
end component;
signal m:STD_LOGIC_VECTOR(6 downto 0);
begin
lab1 :  dff port map(d,clk,m(0),en);
lab2 :  dff port map(m(0),clk,m(1),en);
lab3 :  dff port map(m(1),clk,m(2),en);
lab4 :  dff port map(m(2),clk,m(3),en);
lab5 :  dff port map(m(3),clk,m(4),en);
lab6 :  dff port map(m(4),clk,m(5),en);
lab7 :  dff port map(m(5),clk,m(6),en);
lab8 :  dff port map(m(6),clk,output,en);
end Behavioral;

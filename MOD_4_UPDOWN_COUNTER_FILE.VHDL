Write a VHDL code of mod 4 up/down counter using state machines. The counter has a
Reset signal to reset the current count to 0, another control signal count to decide the up
or down count. If count =0, then it acts like up counter and as a down counter for count
=1. Output of the counter is current state of the machine. Show at least 20 clock cycles in
your testbench.
----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06.11.2022 20:53:40
-- Design Name: 
-- Module Name: mod4_updown - Behavioral
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

entity mod4_updown is
    Port ( clk : in STD_LOGIC;
           input : in STD_LOGIC;
           reset : in STD_LOGIC;
           output : out STD_LOGIC_VECTOR (1 downto 0));
end mod4_updown;

architecture Behavioral of mod4_updown is
type state_type is (s0,s1,s2,s3);
signal state:state_type;
begin
process(clk,reset,input)
begin
if(reset='1') then
state <= s0;
elsif(rising_edge(clk)) then
case state is
when s0 =>
if input='0' then
state <= s1;
else
state <= s3;
end if;
when s1 =>
if input='0' then
state <= s2;
else
state <= s0;
end if;
when s2 =>
if input='0' then
state <= s3;
else
state <= s1;
end if;
when s3 =>
if input='0' then
state <= s0;
else
state <= s2;
end if;
end case;
end if;
end process;
process(state)
begin
case state is
when s0 =>
output <= "00";
when s1 =>
output <= "01";
when s2 =>
output <= "10";
when s3 =>
output <= "11";
end case;
end process;
end Behavioral;

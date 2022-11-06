Write a VHDL code for a sequential system using state machine which recognizes the
pattern 1101 in a sequence of 0’s and 1’s. The system has a input x and output z. z is 1 if
x(t-3,t) = 1101, else 0. Show at least 4 detections of pattern 1101 in your testbench.
----------------------------------------------------------------------------------
-- Company:
-- Engineer:
-- 
-- Create Date: 11/01/2022 10:49:21 PM
-- Design Name:
-- Module Name: pattern1101 - Behavioral
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

entity sequence is
    Port ( clk : in  STD_LOGIC;
           input : in  STD_LOGIC;
           output : out  STD_LOGIC);
end sequence;
architecture Behavioral of sequence is
type state_type is (s0,s1,s11,s110);
signal present_s,next_s: state_type;
begin
process(clk)
begin
if(rising_edge(clk)) then
present_s <= next_s;
end if;
end process;

process(present_s,input)
begin
case present_s is
when s0 =>        
     if(input ='1') then
      output <= '0';
      next_s <= s1;
 else
 output <= '0';
      next_s <= s0;
end if;
when s1 =>        
    if(input ='1') then
      output <= '0';
      next_s <= s11;
    else
      output <= '0';
      next_s <= s0;
    end if;
when s11 =>      
    if(input ='0') then
      output <= '0';
      next_s <= s110;
    else
      output <= '0';
      next_s <= s11;
    end if;
 when s110 =>        
    if(input ='1') then
      output <= '1';
      next_s <= s1;
    else
      output <= '0';
      next_s <= s0;
    end if;
  end case;
end process;
end Behavioral;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity q4 is
Port ( input : in STD_LOGIC;
clk : in STD_LOGIC;
z : inout STD_LOGIC_VECTOR (15 downto 0));
end q4;
architecture Behavioral of q4 is
signal output:std_logic_vector(15 downto 0);
component q3 is
Port ( c : in STD_LOGIC;
sin : in STD_LOGIC;
po : out STD_LOGIC_VECTOR (7 downto 0));
end component;
begin
chip1:q3 port map(clk,input,output(15 downto 8));
chip2:q3 port map(clk,output(8),output(7 downto 0));
z<=output;
end Behavioral;
---------------------------------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity q3 is
Port ( c : in STD_LOGIC;
sin : in STD_LOGIC;
po : out STD_LOGIC_VECTOR (7 downto 0));
end q3;
architecture Behavioral of q3 is
signal tmp : std_logic_vector ( 7 downto 0);
begin
process(c)
begin
if(c'event and c='1') then
for i in 0 to 6 loop
tmp(i+1)<= tmp(i);
end loop;
tmp(0) <= sin;
end if;
end process;
po<=tmp;
end Behavioral;
--------------------------------------------------------------------------------------------------------------
q3 IS SIPO OF SIZE 8 BITS.
2 q3 ARE USED TO FORM 16 BIT SHIFT LEFT SIPO.

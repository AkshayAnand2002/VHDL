----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/11/2022 10:41:00 AM
-- Design Name: 
-- Module Name: rsff1 - Behavioral
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

entity rsff1 is
    Port ( s : in STD_LOGIC;
           r : in STD_LOGIC;
           clk : in STD_LOGIC;
           q : out STD_LOGIC;
           qbar : out STD_LOGIC);
end rsff1;

architecture Behavioral of rsff1 is
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
----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/11/2022 10:35:03 AM
-- Design Name: 
-- Module Name: jkff - Behavioral
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

entity jkff is
    Port ( j : in STD_LOGIC;
           k : in STD_LOGIC;
           clk2 : in STD_LOGIC;
           q2 : inout STD_LOGIC;
           qbar2 : inout STD_LOGIC);
end jkff;

architecture Behavioral of jkff is
component rsff1 is
    Port ( s : in STD_LOGIC;
           r : in STD_LOGIC;
           clk : in STD_LOGIC;
           q : out STD_LOGIC;
           qbar : out STD_LOGIC);
end component;
signal m1,m2:STD_LOGIC;
begin
m1<= j and qbar2;  -- S=J(QBAR)
m2<= k and q2;     -- R=KQ
lab1 :rsff1 port map(m1,m2,clk2,q2,qbar2);

end Behavioral;

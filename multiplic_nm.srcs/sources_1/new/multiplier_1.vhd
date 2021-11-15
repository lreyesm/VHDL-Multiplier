----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.11.2021 01:32:40
-- Design Name: 
-- Module Name: multiplier_1 - Behavioral
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

ENTITY multiplic_1 IS
    PORT (
        a, b, pin, cin  : IN STD_LOGIC;
        cout, pout      : OUT STD_LOGIC
    );
END multiplic_1;

ARCHITECTURE flujo OF multiplic_1 IS
    SIGNAL w, x, y, z :STD_LOGIC;
BEGIN
    w <= a AND b;
    x <= pin AND w;
    y <= pin XOR w;
    z <= y AND cin;
    cout <= x OR z;
    pout <= y XOR cin;
END flujo;

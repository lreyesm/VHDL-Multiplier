----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 28.11.2021 02:45:23
-- Design Name: 
-- Module Name: top_layer_tb - Behavioral
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


-- *************************** Entity name ********************************* 
ENTITY top_layer_testbench IS 
END top_layer_testbench; 
-- ************************************************************************* 

ARCHITECTURE behavioral OF top_layer_testbench IS  

    
    COMPONENT top_layer IS
        PORT (
            a_top       : IN std_logic_vector(3 DOWNTO 0); 
            b_top       : IN std_logic_vector(3 DOWNTO 0); 
            pout_top    : OUT std_logic_vector(7 DOWNTO 0)
        );
    END COMPONENT;
    
    SIGNAL signal_a_net       : std_logic_vector(3 DOWNTO 0); 
    SIGNAL signal_b_net       : std_logic_vector(3 DOWNTO 0); 
    SIGNAL signal_pout_net    : std_logic_vector(7 DOWNTO 0);

BEGIN 

UUT: top_layer
-- ****************************** MAPPING *******************************
PORT MAP(   
            a_top       => signal_a_net, 
            b_top       => signal_b_net, 
            pout_top    => signal_pout_net
); 

-- ****************************** PROCESS *******************************
Testbench_Desc_Name: PROCESS 
    BEGIN  
        signal_a_net <= "0001";
        signal_b_net <= "0001";
        WAIT FOR 250 NS; 

        signal_a_net <= "1011";
        signal_b_net <= "0010";
        WAIT FOR 250 NS;

        signal_a_net <= "0011";
        signal_b_net <= "0011";
        WAIT FOR 250 NS;
        
        signal_a_net <= "0000";
        signal_b_net <= "1010";
        WAIT FOR 250 NS;

        WAIT;  
    END PROCESS; 
END; 

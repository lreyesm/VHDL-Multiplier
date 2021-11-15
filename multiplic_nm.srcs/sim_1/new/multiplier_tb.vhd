----------------------------------------------------------------------------------
-- Company: UPV / EHU
-- Engineers: Luis Alejandro Reyes Morales 
-- Adrian Nieves de la Cruz
-- 
-- Create Date: 19.10.2021 19:31:26
-- Design Name: 
-- Module Name: ALU_tb - Behavioral
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

-- MASTER SIEAV. Curso 2019-2020 
-- Modelo de fichero de simulaci?n 


-- *************************** Entity name ********************************* 
ENTITY Nombre_Entidad_testbench IS 
END Nombre_Entidad_testbench; 
-- ************************************************************************* 

ARCHITECTURE behavioral OF Nombre_Entidad_testbench IS  
    
    -- COMPONENT ALU is
    --     Port ( 
    --         ai          : IN std_logic;
    --         bi          : IN std_logic;
    --         cin         : IN std_logic;
    --         signo       : IN std_logic;
    --         opera       : IN std_logic_vector(1 downto 0);
    --         cout        : OUT std_logic;
    --         result      : OUT std_logic
    --     );
    -- END COMPONENT;  
    

    COMPONENT multiplic_1 IS
        PORT (
            a       : IN STD_LOGIC; 
            b       : IN STD_LOGIC; 
            pin     : IN STD_LOGIC; 
            cin     : IN STD_LOGIC;
            cout    : OUT STD_LOGIC;
            pout    : OUT STD_LOGIC
        );
    END COMPONENT;
    
    -- SIGNAL signal_ai_net: STD_LOGIC; 
    -- SIGNAL signal_bi_net: STD_LOGIC; 
    -- SIGNAL signal_cin_net: STD_LOGIC; 
    -- SIGNAL signal_signo_net: STD_LOGIC; 
    -- SIGNAL signal_opera_net: std_logic_vector(1 downto 0); 
    -- SIGNAL signal_cout_net: STD_LOGIC; 
    -- SIGNAL signal_result_net: STD_LOGIC; 
    
    SIGNAL signal_a_net     : STD_LOGIC; 
    SIGNAL signal_b_net     : STD_LOGIC; 
    SIGNAL signal_pin_net   : STD_LOGIC; 
    SIGNAL signal_cin_net   : STD_LOGIC; 
    SIGNAL signal_cout_net  : STD_LOGIC; 
    SIGNAL signal_pout_net  : STD_LOGIC; 
    

BEGIN 

-- UUT: ALU  
UUT: multiplic_1
-- ****************************** MAPPING *******************************
-- PORT MAP(   ai => signal_ai_net, 
--             bi => signal_bi_net, 
--             cin => signal_cin_net,
--             signo => signal_signo_net,
--             opera => signal_opera_net,
--             cout => signal_cout_net,
--             result => signal_result_net
--         ); 

PORT MAP(   
            a       => signal_a_net, 
            b       => signal_b_net, 
            pin     => signal_pin_net,
            cin     => signal_cin_net,
            cout    => signal_cout_net,
            pout    => signal_pout_net
        ); 

-- ********************************************************************** 

-- ****************************** PROCESS *******************************
Testbench_Desc_Name: PROCESS 
    BEGIN  
        signal_a_net <= '0';
        signal_b_net <= '0';
        signal_pin_net <= '0';
        signal_cin_net <= '0';
        WAIT FOR 250 NS; 

        signal_a_net <= '1';
        signal_b_net <= '1';
        signal_pin_net <= '1';
        signal_cin_net <= '1';
        WAIT FOR 250 NS; 

        signal_a_net <= '1';
        signal_b_net <= '0';
        signal_pin_net <= '1';
        signal_cin_net <= '0';
        WAIT FOR 250 NS;
        
        signal_a_net <= '0';
        signal_b_net <= '1';
        signal_pin_net <= '0';
        signal_cin_net <= '1';
        WAIT FOR 250 NS;

        WAIT;  
    END PROCESS; 
END; 
-- Testbench_Desc_Name: PROCESS 
--     BEGIN  
--         signal_ai_net <= '1'; 
--         signal_bi_net <= '0'; 
--         signal_cin_net <= '0'; 
--         signal_signo_net <= '0';
--         signal_opera_net <= "01"; 
--         WAIT FOR 250 NS; 

--         signal_ai_net <= '1'; 
--         signal_bi_net <= '1'; 
--         signal_cin_net <= '0';
--         signal_signo_net <= '0';
--         signal_opera_net <= "01";
--         WAIT FOR 250 NS; 

        
--         signal_ai_net <= '0'; 
--         signal_bi_net <= '1'; 
--         signal_cin_net <= '0';
--         signal_signo_net <= '0';
--         signal_opera_net <= "11";
--         WAIT FOR 250 NS; 
        
--         signal_ai_net <= '0'; 
--         signal_bi_net <= '0'; 
--         signal_cin_net <= '0';
--         signal_signo_net <= '0';
--         signal_opera_net <= "00";
--         WAIT FOR 250 NS;

--         WAIT;  
--     END PROCESS; 
-- END; 
-- ******************************************************************
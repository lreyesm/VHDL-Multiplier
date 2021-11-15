----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.11.2021 01:51:49
-- Design Name: 
-- Module Name: multiplier_68 - Behavioral
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
use IEEE.std_logic_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

ENTITY multiplier_68 IS
    Port (
        a       : IN std_logic_vector(5 DOWNTO 0); 
        b       : IN std_logic_vector(7 DOWNTO 0); 
        pout    : OUT std_logic_vector(13 DOWNTO 0)
    );
END multiplier_68;

ARCHITECTURE bloques OF multiplier_68 IS -- Se crea la arquitectura bloques de tipo multiplic_mn
    COMPONENT multiplic_1 -- Se declara el componente multiplicador de 1 bit anteriormente
        PORT (
            a       : IN std_logic; 
            b       : IN std_logic; 
            pin     : IN std_logic; 
            cin     : IN std_logic;
            cout    : OUT std_logic;
            pout    : OUT std_logic
        );
    END COMPONENT;
    TYPE matriz IS ARRAY (0 TO 5, 0 TO 7) OF std_logic; -- Declaración de tipos necesarios
    
    SIGNAL x, y : matriz; -- Matrices que contendrán los resultados de los bloques de 1 bit
    SIGNAL ai : std_logic_vector(7 DOWNTO 0); -- Vector de m bits para contener los pin de la fila superior
    SIGNAL bi : std_logic_vector(7 DOWNTO 0); -- Vector de n bits para contener los cin de la columna derecha
    SIGNAL p : std_logic_vector(13 DOWNTO 0); -- Vector de n bits para contener los cin de la columna derecha
    SIGNAL pin1 : std_logic_vector(7 DOWNTO 0); -- Vector de m bits para contener los pin de la fila superior
    SIGNAL cin1 : std_logic_vector(5 DOWNTO 0); -- Vector de n bits para contener los cin de la columna derecha

BEGIN
    
    aain: FOR i IN 0 TO 7 GENERATE -- Inicialización a 0 de los m pin de la fila superior
        ai(i)<= a(i) when i < 6 else '0';
    END GENERATE;

    bbin: FOR i IN 0 TO 7 GENERATE -- Inicialización a 0 de los m pin de la fila superior
        bi(i)<= b(i);
    END GENERATE;
    
    ppin: FOR i IN 0 TO 7 GENERATE -- Inicialización a 0 de los m pin de la fila superior
        pin1(i)<='0';
    END GENERATE;

    ccin: FOR i IN 0 TO 5 GENERATE -- Inicialización a 0 de los n cin de la columna derecha
        cin1(i)<='0';
    END GENERATE;

    filas: FOR i IN 0 TO 5 GENERATE -- Barrido de las n filas y m columnas para introducir los datos

        columnas: FOR j IN 0 TO 7 GENERATE -- y recoger las salidas de los multiplicaddores de 1 bit

            esquina: IF (i=0) AND (j=0) GENERATE -- Generación del elemento de la esquina superior derecha
                u1:multiplic_1 PORT MAP (ai(j),bi(i),pin1(j),cin1(i),x(i,j),y(i,j));
                p(i)<=y(i,j);
            END GENERATE;

            ladodch: IF (i>0) AND (j=0) GENERATE -- Generación de los elementos de la columna derecha
                u1:multiplic_1 PORT MAP (ai(j),bi(i),y(i-1,1),cin1(i), x(i,j), y(i,j));
                p(i)<=y(i,j);
            END GENERATE;

            ladosup: IF (i=0) AND (j>0) GENERATE -- Generación de los elementos de la columna superior
                u1:multiplic_1 PORT MAP (ai(j),bi(i),pin1(j),x(i,j-1), x(i,j), y(i,j));
            END GENERATE;

            ladoinf: IF (i=5) AND (j>0) AND (j<7) GENERATE -- Generación de los elementos de la fila inferior excepto
                u1:multiplic_1 PORT MAP (ai(j),bi(i),y(i-1,j+1),x(i,j-1), x(i,j), y(i,j)); -- las dos esquinas
                p(i+j)<=y(i,j);
            END GENERATE;

            ladoizq: IF (i>0) AND (j=7) GENERATE -- Generación de los elementos de la fila derecha
                u1:multiplic_1 PORT MAP (ai(j),bi(i),x(i-1,j),x(i,j-1), x(i,j), y(i,j));
            END GENERATE;

            resto: IF (i>0) AND (i<5) AND (j>0) AND (j<7) GENERATE -- Generación de todos los elementos interiores
                u1:multiplic_1 PORT MAP (ai(j),bi(i),y(i-1,j+1),x(i,j-1), x(i,j), y(i,j));
            END GENERATE;

            esqui_inf: IF (i=5) AND (j=7) GENERATE -- Generación de los elementos de la esquina inferior izquierda
                p(i+j)<=y(i,j);
                p(i+j+1)<=x(i,j);
            END GENERATE;

        END GENERATE;

    END GENERATE;
    
    pout <= p;

END bloques; 
library ieee;
use ieee.std_logic_1164.all;

entity Ejercicio2 is
port(Entrada: IN bit_vector(1 downto 0) ; Y0,Y1,Y2,Y3: OUT bit);
END Ejercicio2;

architecture logic of Ejercicio2 is
begin

Y0<= (not Entrada(1) AND not Entrada(0));
Y1<= (not Entrada(1) AND Entrada(0));
Y2<= (Entrada(1) AND not Entrada(0));
Y3<= (Entrada(1) AND Entrada(0));

end logic;

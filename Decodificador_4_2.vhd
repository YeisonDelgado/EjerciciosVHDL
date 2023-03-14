library ieee;
use ieee.std_logic_1164.all;
 
entity Decodificador_4_2 is

port(
Dato: in std_logic_vector(3 downto 0);
f: out std_logic_vector(1 downto 0));
	
end Decodificador_4_2;

architecture logic of Decodificador_4_2 is 
begin

f(1) <= (Dato(2) or Dato(3));
f(0) <= (Dato(1) or Dato(3));
	
end logic;
	
	
	
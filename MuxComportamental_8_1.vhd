library ieee;
use ieee.std_logic_1164.all;

entity MuxComportamental_8_1 is

port(

Dato :in std_logic_vector(7 downto 0 );
selc :in std_logic_vector(2 downto 0);
f: out std_logic);

end entity;
architecture logic of MuxComportamental_8_1 is
begin 
MUX:
process(Dato,selc)
begin

if selc = "000" then 
f <= Dato(0);
elsif selc = "001" then 
f <= Dato(1);
elsif selc = "010" then 
f <= Dato(2);
elsif selc = "011" then 
f <= Dato(3);
elsif selc = "100" then 
f <= Dato(4);
elsif selc = "101" then 
f <= Dato(5);
elsif selc = "110" then 
f <= Dato(6);
else
f <= Dato(7);

end if;
end process;
end logic;


library verilog;
use verilog.vl_types.all;
entity Decodificador_4_2 is
    port(
        Dato            : in     vl_logic_vector(3 downto 0);
        f               : out    vl_logic_vector(1 downto 0)
    );
end Decodificador_4_2;

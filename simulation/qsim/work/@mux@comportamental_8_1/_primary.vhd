library verilog;
use verilog.vl_types.all;
entity MuxComportamental_8_1 is
    port(
        Dato            : in     vl_logic_vector(7 downto 0);
        selc            : in     vl_logic_vector(2 downto 0);
        f               : out    vl_logic
    );
end MuxComportamental_8_1;

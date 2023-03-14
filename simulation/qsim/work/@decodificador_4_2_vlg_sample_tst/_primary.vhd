library verilog;
use verilog.vl_types.all;
entity Decodificador_4_2_vlg_sample_tst is
    port(
        Dato            : in     vl_logic_vector(3 downto 0);
        sampler_tx      : out    vl_logic
    );
end Decodificador_4_2_vlg_sample_tst;

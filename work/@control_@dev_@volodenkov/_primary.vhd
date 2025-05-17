library verilog;
use verilog.vl_types.all;
entity Control_Dev_Volodenkov is
    port(
        X               : in     vl_logic;
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        MI              : out    vl_logic_vector(2 downto 0)
    );
end Control_Dev_Volodenkov;

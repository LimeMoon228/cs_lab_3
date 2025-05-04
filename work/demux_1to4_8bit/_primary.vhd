library verilog;
use verilog.vl_types.all;
entity demux_1to4_8bit is
    port(
        D               : in     vl_logic_vector(7 downto 0);
        A1              : in     vl_logic;
        A0              : in     vl_logic;
        Q0              : out    vl_logic_vector(7 downto 0);
        Q1              : out    vl_logic_vector(7 downto 0);
        Q2              : out    vl_logic_vector(7 downto 0);
        Q3              : out    vl_logic_vector(7 downto 0)
    );
end demux_1to4_8bit;

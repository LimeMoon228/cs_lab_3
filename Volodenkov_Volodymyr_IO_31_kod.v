module demux_1to4_8bit (
    input  wire [7:0] D,
    input  wire A1, A0,
    output wire [7:0] Q0,
    output wire [7:0] Q1,
    output wire [7:0] Q2,
    output wire [7:0] Q3
);

assign Q0 = (~A1 & ~A0) ? D : 8'b00000000;
assign Q1 = (~A1 &  A0) ? D : 8'b00000000;
assign Q2 = ( A1 & ~A0) ? D : 8'b00000000;
assign Q3 = ( A1 &  A0) ? D : 8'b00000000;

endmodule

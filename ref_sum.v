module ref_sum (Ain, Bin, Ci, Sout, Co);
    input [7:0] Ain, Bin;
    input Ci;
    output [7:0] Sout;
    output Co;

    reg [8:0] S;

    always @ (Ain or Bin or Ci)
        S = Ain + Bin + Ci;

    assign Sout = S[7:0];
    assign Co = S[8];
endmodule

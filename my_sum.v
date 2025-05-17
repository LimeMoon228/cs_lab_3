module my_sum (Ain, Bin, Ci, Sout, Co);
    input [7:0] Ain, Bin;
    input Ci;
    output [7:0] Sout;
    output Co;

    wire [7:0] Sout;
    wire [7:0] Ain, Bin;
    wire [7:0] C;  // Carry wires between bits

    bitsum sum0(Ain[0], Bin[0], Sout[0], Ci,   C[0]);
    bitsum sum1(Ain[1], Bin[1], Sout[1], C[0], C[1]);
    bitsum sum2(Ain[2], Bin[2], Sout[2], C[1], C[2]);
    bitsum sum3(Ain[3], Bin[3], Sout[3], C[2], C[3]);
    bitsum sum4(Ain[4], Bin[4], Sout[4], C[3], C[4]);
    bitsum sum5(Ain[5], Bin[5], Sout[5], C[4], C[5]);
    bitsum sum6(Ain[6], Bin[6], Sout[6], C[5], C[6]);
    bitsum sum7(Ain[7], Bin[7], Sout[7], C[6], C[7]);

    assign Co = C[7];
endmodule

module test_sum; // Top Level Testbench
    wire Ci, cm, cr;
    wire [7:0] Ain, Bin;
    reg [7:0] Ain_r, Bin_r;
    reg Ci_r;
    wire [7:0] res_my, res_ref;

    my_sum my_block (Ain, Bin, Ci, res_my, cm);
    ref_sum ref_block (Ain, Bin, Ci, res_ref, cr);

    initial begin
        $display("\tTime\tAin\tBin\tCi\tres_my\tcm\tres_ref\tcr");
        $monitor("%t\t%b\t%b\t%b\t%b\t%b\t%b\t%b", 
            $time, Ain, Bin, Ci, res_my, cm, res_ref, cr);        #400 $finish;
    end

    initial begin
        Ain_r = 8'd1;
        #50 Ain_r = 8'd5;
        #50 Ain_r = 8'd15;
        #50 Ain_r = 8'd85;
        #50 Ain_r = 8'd170;
        #50 Ain_r = 8'd255;
        #50 Ain_r = 8'd0;
        #50 Ain_r = 8'd128;
    end

    initial begin
        Bin_r = 8'd2;
        #100 Bin_r = 8'd10;
        #100 Bin_r = 8'd240;
        #100 Bin_r = 8'd15;
    end

    initial begin
        Ci_r = 1'b0;
        #200 Ci_r = 1'b1;
    end

    assign Ain = Ain_r;
    assign Bin = Bin_r;
    assign Ci = Ci_r;

endmodule

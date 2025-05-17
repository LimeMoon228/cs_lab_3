`timescale 1ns / 1ps

module tb_Control_Dev_Volodenkov;

  reg X;
  reg clk;
  reg reset;
  wire [2:0] MI;

  Control_Dev_Volodenkov uut (
    .X(X),
    .clk(clk),
    .reset(reset),
    .MI(MI)
  );

  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end

  initial begin
    reset = 1;
    X = 0;
    #20 reset = 0;
    #100;
    X = 1;
    #50;
    X = 0;
    #50;
    $stop;
  end

  initial begin
    $monitor("Time=%0t | reset=%b | clk=%b | X=%b | MI=%b", $time, reset, clk, X, MI);
  end

endmodule
module Control_Dev_Volodenkov (
    input  wire X,
    input  wire clk,
    input  wire reset,
    output reg  [2:0] MI    
);

  localparam S1 = 2'b00;
  localparam S2 = 2'b01;
  localparam S3 = 2'b10;

  reg [1:0] state, next_state;

  always @(posedge clk or posedge reset) begin
    if (reset)
      state <= S1;      
    else
      state <= next_state;
  end

  always @(*) begin
    next_state = state;
    MI         = 3'b000;

    case (state)
      S1: begin
        MI = 3'b010;             
        next_state = S2;          
      end

      S2: begin
        MI = 3'b100;              
        next_state = S3;          
      end

      S3: begin
        MI = 3'b011;              
        if (X == 1'b0)
          next_state = S1;         
        else
          next_state = S2;         
      end
    endcase
  end

endmodule

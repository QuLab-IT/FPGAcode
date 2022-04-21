`timescale 1ns / 1ns
module main;
    integer i=0;
    wire [1:0] W;
    reg [1:0] A;
    reg [15:0]din = 16'b1111100110011011;
    
    Demultiplexer_1_to_2_case I0 (W, A);
    initial begin
        while (i < 16)
        begin
            A = din[i];
        #1  A = 2'b11;
        #1  i = i + 1;
        end
        
    end
    initial begin
        $monitor("%t ps| A[0] = %d| W[0] = %d| W[1] = %d", $time, A[0], W[0], W[1]);
    end
endmodule

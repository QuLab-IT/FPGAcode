// Demultiplexing code used here follows closey the tutorial in
// https://technobyte.org/verilog-code-for-demultiplexer-using-behavioral-modeling/

module Demultiplexer_1_to_2_case (Y, A);
output reg [1:0] Y;
input [1:0] A;

always @(Y, A) begin  
case (A)
2'b00 : begin 
		Y[0] = 1; Y[1] = 0;
		end
2'b01 : begin 
		Y[1] = 1; Y[0] = 0; 
		end
default: begin 
         Y[0] = 0; Y[1] = 0;
         end
endcase
end
	
endmodule

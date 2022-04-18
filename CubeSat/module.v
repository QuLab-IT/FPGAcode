module CDL(B0, V0, V1, V2, V3, V4, V5)
	input B0;
	output V0, V1, V2, V3, V4, V5;
	
	integer mynumber;

	reg [3:0] resync;
	reg       inc_cntr;
	always @ (posedge clk)
	begin 
	resync <= {resync{2:0},inc_btn};  // This will clock in the inc_btn signal and remove metastability.
	inc_cntr <= ~resync[3] & resync[2]; // Only high when the resync[3] was low and resent[2] is high.  
	end

    initial begin
	mynumber = {$random} %10 ; // random numbers between 0 and 9.
    end

	wire W_1, W_2, W_3, W_4;
	
	assign W_1 = ~(W_2 || D1);
	assign W_2 = ~(W_1 || D2);
	
	assign W_3 = W_1 && W_2;
	
	assign W_4 = ~(W_3 || Q);
	assign Q = ~(W_4 || Clr);
	
end module


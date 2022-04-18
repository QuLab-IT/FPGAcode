module CDL(D1, D2, Clr, Q)
	input D1;
	input D2;
	input Clr;
	output Q;
	
	wire W_1, W_2, W_3, W_4;
	
	assign W_1 = ~(W_2 || D1);
	assign W_2 = ~(W_1 || D2);
	
	assign W_3 = W_1 && W_2;
	
	assign W_4 = ~(W_3 || Q);
	assign Q = ~(W_4 || Clr);
	
end module
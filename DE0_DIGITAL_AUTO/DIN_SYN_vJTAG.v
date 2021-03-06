//	DE0_DIGITAL_AUTO
// Digital Control Pattern Generation 
// Workhorse
//	On Terasic DE0 Platform
// (C) 2012 TYLEE @ RFVLSI LAB, NCTU
// All Rights Reserved.

module DIN_SYN_vJTAG(
	input clk_in,
	input [619:0]data_reg,	//	Data Register, 451 bits
	input  trig,				// Trigger Signal	
	input  clr_2_one,	
									// 11 -> All zeros
									// 01 -> All ones
	input  clr_mode,	
	output clk,	//	.clk(GPIO_0_D[0]),	// CLOCK
	output din,	// .din(GPIO_0_D[1]),	// Digital Input
	output syn,	//	.syn(GPIO_0_D[2])		// Sync Signal		
	output reg out_en,	//	.syn(GPIO_0_D[2])		// Sync Signal		
	output reg clk_out_en
);

reg din_strobe;
reg clk_strobe;
reg [9:0]counter;
reg din_in;
reg syn_in;
parameter total_bits = 620	; 

bufif1  b1(clk, clk_in, clk_out_en);	// CLOCK output with data only
bufif1  b2(syn, syn_in_mux, out_en);	// SYNC output with data only
bufif1  b3(din, din_in_mux, out_en);	// DIN

wire din_in_mux = clr_mode?(clr_2_one?1'b1:1'b0):din_in;
wire syn_in_mux = clr_mode?1'b0:syn_in;

/* trigger is valid only if output is not enabled (ready mode)
	do not trigger when output is enabled otherwise 
	digital sequence may be sent  multiple times */
wire trig_and_oenb = trig & !out_en;		// din	

/* trigger is valid only if output is not enabled (ready mode)
	do not trigger when output is enabled otherwise 
	digital sequence may be sent  multiple times */
wire trig_and_coenb = trig & !clk_out_en;	// clock 

always @ (posedge trig_and_oenb or posedge din_strobe)
begin 	
	
	if(din_strobe)
		out_en <= 1'b0;
   else if(trig_and_oenb)
		out_en <= 1'b1;	
		
end // End of Always

always @ (posedge trig_and_coenb or posedge clk_strobe)
begin 	
	if(clk_strobe)
		clk_out_en <= 1'b0;
   else if(trig_and_coenb)
		clk_out_en <= 1'b1;	
		
end // End of Always


always @ (negedge clk_in)
begin 	
			syn_in <=  (counter == total_bits)?1'b1:1'b0;			
			
			if(counter < total_bits)
				din_in <=  data_reg[counter];
			else
				din_in <=  1'b0;
			
			
end // End of Always

always @ (negedge clk_in)
begin 	
	if(clk_out_en == 1'b1)
	begin
		if (counter == total_bits)
			clk_strobe <= 1'b1;
		else
			clk_strobe <= 1'b0;
	end
	else
			clk_strobe <= 1'b0;
	

end // End of Always

always @ (negedge clk_in)
begin 	
	if(out_en == 1'b1)
	begin
		if (counter == total_bits+1)
		begin
			counter <= 10'b0000_0000_00;
			din_strobe <= 1'b1;
		end
		else
		begin
			counter <= counter + 1'b1; 
			din_strobe <= 1'b0;
		end
	end
	else
	begin
		din_strobe <= 1'b0;
		counter <= 10'b0000_0000_00;
	end
end // End of Always

endmodule // End of Module counter





module cr_adder(o_sum , o_cout , A , B , cin);
parameter length = 16;

input [length-1:0] A;
input [length-1:0] B;
input cin;

output [length-1:0] o_sum;
output o_cout;


reg [length:0] C;
reg [length-1:0] sum;
reg cout;

integer i;

always @(A or B or cin or C)
begin
	C[0] = cin;
	for ( i = 0 ; i < length ; i = i+1 )
		begin
			C[i+1] = ((A[i] & B[i]) | (B[i] & C[i]) | (A[i] & C[i]));
			sum[i] = (A[i]  ^ B[i] ^ C[i]);
		end
	cout = C[length];
end

assign o_cout = cout;
assign o_sum = sum;

endmodule

module behv_feed_B(clk , sel , B , o_curr_B , o_next_B);
parameter length = 16;

input clk;
input [length-1:0] sel;
input [length-1:0] B;
output o_curr_B;
output o_next_B;

reg curr_B;
reg next_B;

assign o_curr_B = curr_B;
assign o_next_B = next_B;

reg saved_B;

integer i;


always @(posedge clk)
 saved_B = next_B;
 
always @(B[0] or sel[0] or saved_B)
begin
if (sel[0] == 1)
	curr_B = B[0];
else
	curr_B = saved_B;
end

always @(B or sel)
begin
if (sel[length-1] == 1)
	next_B = 0;
for (i = 0 ; i < length-1 ; i = i+1)
	if (sel[i] == 1)
			next_B = B[i+1];
end
	
endmodule

module behv_Ring_Counter(clk,rst,sel);
parameter length = 16;
integer i;
input clk;
input rst;
output [length-1:0] sel;
reg [length-1:0] step_vect;

always @(posedge clk)
begin
	if (rst == 1)
	begin 
		step_vect[0] <= 1;

		for (i = 1; i < length ; i = i+1)
			step_vect[i] <= 0;
	end
	else
	begin
		step_vect[0] <= 0;
		for (i = 1 ; i < length ; i = i+1)
			step_vect[i] <= step_vect[i-1];
	end
end

assign sel = step_vect;
endmodule

module behv_generate_pp(clk , rst , A,i_next_B, curr_B , sel , RES);
parameter length = 16;

input clk;
input rst;
input i_next_B;
input curr_B;
input [length-1:0] sel;
input [length-1:0] A;
output [2*length-1:0] RES;

wire [length:0] adder_out;
wire [length:0] shifted_bypass;
wire adder_cout;
wire [length-1:0] sum;

reg [length:0] curr_p;
reg [length-1:0] bypass;
reg [length-1:0] feeder;
reg [length-1:0] pp_low;
reg next_B;

wire adder_cin = 0;



integer i;

assign RES = {bypass , curr_p};

always @(clk , i_next_B)
	if (clk == 1) next_B <= i_next_B;
	
cr_adder pp_adder(sum , adder_cout , feeder , A , adder_cin);

assign adder_out = { adder_cout , sum };
assign shifted_bypass = { 1'b0 , bypass[length-1:0] };

always @(adder_out,shifted_bypass,curr_B)
begin
	if (curr_B == 1 ) 
		curr_p <= adder_out;
	else
		curr_p <= shifted_bypass;	
end

wire clk_neg = ~ clk ;

wire feeder_clk;
wire bypass_clk;

nand (feeder_clk , clk_neg , next_B);
or (bypass_clk , clk, next_B);


always @(posedge feeder_clk)
begin 
if (rst == 1)
	feeder <= 16'd0;
else
	feeder <= curr_p[length:1];
end

always @(posedge bypass_clk)
begin 
if (rst == 1)
	bypass <= 16'd0;
else
	bypass <= curr_p[length:1];
end

always @(sel or curr_p[0])
begin


for (i = 0 ; i < length ; i = i+1)
	if (sel[i] == 1)
		pp_low[i] <= curr_p[0];
		
end
 
endmodule
 
 module behv_multiplier(clk , rst , A , B , C);
 parameter length = 16;
 
 input clk;
 input rst;
 input [length-1:0] A;
 input [length-1:0] B;
output [2*length-1:0] C;
 
 

 
 wire m_next_B;
 wire m_curr_B;
 wire [length-1:0] sel;
 
behv_feed_B feed_B(clk , sel , B , m_curr_B , m_next_B);

behv_Ring_Counter ring_counter(clk , rst , sel);

behv_generate_pp generate_pp(clk , rst , A , m_next_B , m_curr_B , sel , C);


endmodule



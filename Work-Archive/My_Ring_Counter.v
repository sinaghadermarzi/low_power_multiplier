module TFF()
begin
	
end

always @(posedge clk or clk_gt)
if(clk_gt[i] == 1)
	step_vect[i] <= ~stepvect[i];

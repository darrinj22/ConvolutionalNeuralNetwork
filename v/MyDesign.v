module MyDesign (dut_run,dut_busy,reset_b,clk,dut_sram_write_address,dut_sram_write_data,
					dut_sram_write_enable,dut_sram_read_address,sram_dut_read_data,
					dut_wmem_read_address,wmem_dut_read_data); 
input dut_run;
output dut_busy;
input reset_b; 
input clk; 
output [11:0] dut_sram_write_address; 
output [15:0] dut_sram_write_data; 
output dut_sram_write_enable; 
output [11:0] dut_sram_read_address; 
input [15:0] sram_dut_read_data; 
output [11:0] dut_wmem_read_address; 
input [15:0] wmem_dut_read_data; 
 
 wire [3:0] dtc; 
 wire [3:0] ctd; 
datapath u1(
	.clk(clk),
	.reset(reset_b),
	.input_data(sram_dut_read_data),
	.weight_data(wmem_dut_read_data),
	.input_address(dut_sram_read_address),
	.weight_address(dut_wmem_read_address),
	.write_data(dut_sram_write_data),
	.write_address(dut_sram_write_address),
	.sig_in(ctd),
	.sig_out(dtc)
); 

controller u2(
	.clk(clk),
	.reset(reset_b),
	.go(dut_run), 
	.busy(dut_busy),
	.write_enable(dut_sram_write_enable),
	.ctrl_in(dtc),
	.ctrl_out(ctd)
); 

endmodule 

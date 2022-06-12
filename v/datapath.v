
module datapath( // I/O from top module and SRAM 
				clk, reset, input_data, weight_data, input_address, weight_address, write_address, write_data,
				// I/O from controller<->datapath 
				sig_in, sig_out 
				); 

// signals from SRAM 
input clk; 
input reset; 
input [15:0] input_data; // data from SRAM in matrix form, need all bits
input [15:0] weight_data; // data from SRAM in matrix form, only need 9 LSB 
output reg [15:0] write_data; 
output reg [11:0] input_address;
output reg [11:0] weight_address; 
output reg [11:0] write_address;

input [3:0] sig_in; // [3] = get_address, [2] = get_data, [1] = count_ready, [0] = write_ready  
output reg [3:0] sig_out; // [3] = got_data, [2] = ready_to_receive, [1] = count_done, [0] = written_success 


wire [8:0] overlay1; // result of xnor calculation  
wire [8:0] overlay2; // result of xnor calculation  
wire [8:0] overlay3; // result of xnor calculation  
wire [8:0] overlay4; // result of xnor calculation  
reg [3:0] count1; 
reg [3:0] count2; 
reg [3:0] count3;
reg [3:0] count4;  
integer N; 

always @ (posedge clk) begin 
	 if(sig_in[3]) begin 
		input_address <= 12'b0; 
		weight_address <= 12'b0; 
		sig_out <= 4'b0100; 
		end 
	else if(sig_in[2]) begin 
			sig_out <= 4'b1000; 
			count1 = 3'b0; 
			count2 = 3'b0; 
			count3 = 3'b0; 
			count4 = 3'b0;  
			end 
	else if(sig_in[1]) begin  
			 for(N = 0; N < 9 ; N = N + 1) begin 
 				count1 = count1 + overlay1[N]; 
				count2 = count2 + overlay2[N]; 
				count3 = count3 + overlay3[N]; 
				count4 = count4 + overlay4[N];  
			end  
 			write_data[0] <= (count1 >= 5) ? 1'b1 : 1'b0; 
			write_data[1] <= (count2 >= 5) ? 1'b1 : 1'b0; 
			write_data[2] <= (count3 >= 5) ? 1'b1 : 1'b0; 
			write_data[3] <= (count4 >= 5) ? 1'b1 : 1'b0;  
			sig_out <= 4'b0010; 
			end 
	else if (sig_in[0]) begin 
			sig_out <= 4'b0001;
			write_data <= {11'b0,write_data[3:0]}; 
	end else begin 
			sig_out <= 4'b0000; 
	end 
end 
assign overlay1 = ~({input_data[10:8],input_data[6:4],input_data[2:0]} ^ weight_data[8:0]);
assign overlay2 = ~({input_data[11:9],input_data[7:5],input_data[3:1]} ^ weight_data[8:0]);
assign overlay3 = ~({input_data[14:12],input_data[10:8],input_data[6:4]} ^ weight_data[8:0]);
assign overlay4 = ~({input_data[15:13],input_data[11:9],input_data[7:5]} ^ weight_data[8:0]);
endmodule 


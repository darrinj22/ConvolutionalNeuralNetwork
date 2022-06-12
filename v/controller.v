
module controller( // signals from top module and SRAM 
					clk, reset, go, busy, write_enable, 
					// controller <-> datapath 
					ctrl_in, ctrl_out 
); 
input clk; 
input reset; 
input go; 
output reg busy; 
output reg write_enable; 

input [3:0] ctrl_in; // [3] = got_data, [2] = ready_to_receive, [1] = count_done, [0] = written_success
output reg [3:0] ctrl_out; //  [3] = get_address, [2] = get_data, [1] = count_ready, [0] = write_ready  

reg [2:0] current_state, next_state; 

parameter 
	s0 = 3'b000, //waiting for go to get high 
	s1 = 3'b001, // we are getting the data ready here, including xnor calculation 
	s2 = 3'b010, // counting the # of ones 
	s3 = 3'b011, // writing to output SRAM 
	s4 = 3'b100,
	s5 = 3'b101;
	
always @ (posedge clk)
	begin
	if(!reset) begin 
		current_state <= s0;
		end 
	else begin 
		current_state <= next_state;
		end 
	end 
always @ *
	begin 
	case (current_state)
	s0: begin 
		if(go) begin 
			write_enable <= 1'b0; 
			busy <= 1'b1; 
			ctrl_out <= 4'b1000; 
			next_state <= s1; 
		end 
		else begin 
			write_enable <= 1'b0;
			busy <= 1'b0;
			ctrl_out <= 4'b0000; 
			next_state <= s0; 
		end 
	end 
	s1: begin 
		if(ctrl_in[2]) begin
			write_enable <= 1'b0; 
			busy <= 1'b1; 
			ctrl_out <= 4'b0100; 
			next_state <= s2;
		end
		else begin
			write_enable <= 1'b0;
			busy <= 1'b1; 
			ctrl_out <= 4'b1100; 
			next_state <= s1; 
		end
	end 
	s2: begin 
		if(ctrl_in[3]) begin
			write_enable <= 1'b0;
			busy <= 1'b1;
			ctrl_out <= 4'b0000; 
			next_state <= s3;
		end 
		else begin 
			write_enable <= 1'b0; 
			busy <= 1'b1;
			ctrl_out <= 4'b0100; 
			next_state <= s2; 
		end
	end 
	s3: begin
 
		if( ctrl_in[1]) begin 
			write_enable <= 1'b0;
			busy <= 1'b1; 
			ctrl_out <= 4'b0000; 
			next_state <= s4; 
		end 
		else begin 
			write_enable <= 1'b0;
			busy <= 1'b1; 
			ctrl_out <= 4'b0010; 
			next_state <= s3; 
		end 
	end 
	s4: begin 
		if(ctrl_in[0]) begin 
			write_enable <= 1'b1; 
			busy <= 1'b1;
			ctrl_out <= 4'b0000; 
			next_state <= s5; 
		end 
		else begin 
			write_enable <= 1'b1; 
			busy <= 1'b1; 
			ctrl_out <= 4'b0001; 
			next_state <= s4; 
		end 
		end 
	s5: begin
			write_enable <= 1'b0; 
			busy <= 1'b0; 
			ctrl_out <= 4'b0000; 
			next_state <= s0; 
		end 
	default: begin 
			write_enable <= 1'b0; 
			busy <= 1'b0; 
			ctrl_out <= 4'b0000; 
			next_state <= s0;
		end
endcase 
end
endmodule 
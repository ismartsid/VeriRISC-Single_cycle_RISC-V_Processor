module riscv_regfile (
	input   logic          clk, // Clock
  	input   logic          reset_n, // Reset

	input   logic [4:0]    rs1_addr_i, // RS1 Address
	input   logic [4:0]    rs2_addr_i, // RS2 Address

	input   logic [4:0]    rd_addr_i, // RD Address
  	input   logic          wr_en_i, // Write enable
	input   logic [31:0]   wr_data_i, //Write Data

	output  logic [31:0]   rs1_data_o, //RS1 Data
	output  logic [31:0]   rs2_data_o //RS2 Data
);

	logic [31:0] regfile  [31:0]; //Register File

  	always @(posedge clk or negedge reset_n)
    	begin
		if (!reset_n) // Negative Reset
			begin
        		for(int i = 0; i <= 31; i++)
          			begin
            			regfile[i][31:0] <= 32'b0;
          			end
			end	
        	else
			begin
      			if (wr_en_i)
        			begin 
          			regfile [rd_addr_i] <= wr_data_i;
				regfile[0] <=0; // R0 Should always be zero as per RISC-V Specification
        			end
      			else
        			begin 
          			regfile [rd_addr_i] <= regfile [rd_addr_i];
		    		end
			end
    	end
    
      	assign	rs1_data_o = regfile [rs1_addr_i];
      	assign	rs2_data_o = regfile [rs2_addr_i];
  
endmodule

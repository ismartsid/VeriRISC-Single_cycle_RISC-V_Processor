
module riscv_regfile (
  input   logic          clk,
  input   logic          reset_n,

  // Source registers
  input   logic [4:0]    rs1_addr_i,
  input   logic [4:0]    rs2_addr_i,

  // Destination register
  input   logic [4:0]    rd_addr_i,
  input   logic          wr_en_i,
  input   logic [31:0]   wr_data_i,

  // Register Data
  output  logic [31:0]   rs1_data_o,
  output  logic [31:0]   rs2_data_o
);

  logic [31:0] regfile  [31:0];

  always @(posedge clk or negedge reset_n)
    begin
      if (!reset_n)
        for(int i = 0; i <= 31; i++)
          begin
            regfile[i][31:0] <= 32'b0;
          end
        else
      if (wr_en_i)
        begin 
          regfile [rd_addr_i] <= wr_data_i;
          regfile[0] <=0;
        end
      else
        begin 
          regfile [rd_addr_i] <= regfile [rd_addr_i];
		    end
    end
  
 // assign inp = wr_data_i;
  
  always_comb
    begin
      rs1_data_o = regfile [rs1_addr_i];
      rs2_data_o = regfile [rs2_addr_i];
    end
  
endmodule
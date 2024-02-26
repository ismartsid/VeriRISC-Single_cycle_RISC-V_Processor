module riscv_instr_mem (
  input    logic          clk, //CLock Input
  input    logic          reset_n, //Reset

  input    logic [31:0]   instr_mem_pc_i, //Current Program Counter Value

  output   logic          instr_mem_req_o, //Request for next Instruction
  output   logic [31:0]   instr_mem_addr_o, //Instruction address

  input    logic [31:0]   mem_rd_data_i, //32-bit Instruction

  output   logic [31:0]   instr_mem_instr_o ////32-bit Instruction output to Decode Stage
);

  always_ff @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0) //Requesting new instruction in every clock cycle
        instr_mem_req_o <= 0;
      else 
        instr_mem_req_o <= 1;
    end
  
  assign instr_mem_addr_o = instr_mem_pc_i;
  assign instr_mem_instr_o =  mem_rd_data_i;
endmodule


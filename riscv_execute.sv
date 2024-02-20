module riscv_execute import riscv_pkg::*; (
  // Source operands
  input   logic [31:0] opr_a_i,
  input   logic [31:0] opr_b_i,

  // ALU Operation
  input   logic [3:0]  op_sel_i,

  // ALU output
  output  logic [31:0] alu_res_o
);
  
  always_comb
    begin
  		case(op_sel_i)
      		ADD_op: alu_res_o = opr_a_i + opr_b_i;
			SUB_op: alu_res_o = opr_a_i - opr_b_i;
        	SLL_op: alu_res_o = opr_a_i << opr_b_i[4:0];
        	SRL_op: alu_res_o = opr_a_i >> opr_b_i[4:0];
        	SRA_op: alu_res_o = $signed(opr_a_i) >>> opr_b_i[4:0];
			OR_op: alu_res_o = opr_a_i | opr_b_i;
			AND_op: alu_res_o = opr_a_i & opr_b_i;
			XOR_op: alu_res_o = opr_a_i ^ opr_b_i;
        	LT_op: alu_res_o = opr_a_i < opr_b_i ? {31'b0,1'b1}:32'b0;
        	SLT_op: alu_res_o = ($signed(opr_a_i)) < ($signed(opr_b_i)) ? {31'b0,1'b1}:32'b0;
      		default: alu_res_o = 'b0;
   		 endcase
    end  
endmodule

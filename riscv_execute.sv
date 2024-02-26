module riscv_execute import riscv_pkg::*; (
  
	input   logic [31:0] opr_a_i, //RS1
	input   logic [31:0] opr_b_i, //RS2

	input   logic [3:0]  op_sel_i, //Input from Control unit specifying the type of input

	output  logic [31:0] alu_res_o //ALU Result
);
  
  always_comb
    begin
  		case(op_sel_i)
      			ADD_op: alu_res_o = opr_a_i + opr_b_i; //ADD RS1 + RS2
			SUB_op: alu_res_o = opr_a_i - opr_b_i; //SUB RS1 - RS2
			SLL_op: alu_res_o = opr_a_i << opr_b_i[4:0]; //LOGICAL LEFT SHIFT RS1 by the value specified in RS2
			SRL_op: alu_res_o = opr_a_i >> opr_b_i[4:0]; //LOGICAL RIGHT SHIFT RS1 by the value specified in RS2
			SRA_op: alu_res_o = $signed(opr_a_i) >>> opr_b_i[4:0]; //ARTHEMATIC RIGHT SHIFT RS1 by the value specified in RS2
			OR_op: alu_res_o = opr_a_i | opr_b_i; //OR RS1 | RS2
			AND_op: alu_res_o = opr_a_i & opr_b_i; //AND RS1 & RS2
			XOR_op: alu_res_o = opr_a_i ^ opr_b_i; //XOR RS1 ^ RS2
			LT_op: alu_res_o = opr_a_i < opr_b_i ? {31'b0,1'b1}:32'b0; //LESS THAN RS1 < RS2
			SLT_op: alu_res_o = ($signed(opr_a_i)) < ($signed(opr_b_i)) ? {31'b0,1'b1}:32'b0; //LESS THAN RS1 < RS2 (Signed)
      		default: alu_res_o = 'b0; //Default value is 0
   		 endcase
    end  
endmodule

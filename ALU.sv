module execute import risc_pkg::*; (
  // Source operands
  input   logic [31:0] opr_a_i,
  input   logic [31:0] opr_b_i,

  // ALU Operation
  input   logic [3:0]  op_sel_i,

  // ALU output
  output  logic [31:0] alu_res_o
);

 /*   typedef enum logic [3:0]{Add_op,
								Sub_op,
								SLL_op,
								SRL_op,
								SRA_op,
								OR_op,
								AND_op,
								XOR_op,
								LT_op,
                SLT_op} ALU_op;
  */
  
  always_comb
    begin
  		case(op_sel_i)
      		Add_op: alu_res_o = opr_a_i + opr_b_i;
					Sub_op: alu_res_o = opr_a_i - opr_b_i;
        	SLL_op: alu_res_o = opr_a_i << opr_b_i[4:0];
        	SRL_op: alu_res_o = opr_a_i >> opr_b_i[4:0];
        	SRA_op: alu_res_o = $signed(opr_a_i) >>> opr_b_i[4:0];
					OR_op: alu_res_o = opr_a_i | opr_b_i;
					AND_op: alu_res_o = opr_a_i & opr_b_i;
					XOR_op: alu_res_o = opr_a_i ^ opr_b_i;
        	LT_op: alu_res_o = opr_a_i < opr_b_i ? {31'b0,1'b1}:32'b0;
       		SLT_op: alu_res_o = $signed(opr_a_i) < $signed(opr_b_i) ? {31'b0,1'b1}:32'b0;
      		default: alu_res_o = 'b0;
   		 endcase
    end  
endmodule

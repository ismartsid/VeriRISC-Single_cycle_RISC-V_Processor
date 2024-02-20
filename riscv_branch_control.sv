module riscv_branch_control import riscv_pkg::*; (
  // Source operands
  input  logic [31:0] opr_a_i,
  input  logic [31:0] opr_b_i,

  // Branch Type
  input  logic        is_b_type_ctl_i,
  input  logic [2:0]  instr_func3_ctl_i,

  // Branch outcome
  output logic        branch_taken_o
);

always_comb
  begin
    if(is_b_type_ctl_i)
      begin
    case(instr_func3_ctl_i)
      BEQ: branch_taken_o = (opr_a_i == opr_b_i);
      BNE: branch_taken_o = (opr_a_i != opr_b_i);
      BLT: branch_taken_o = (opr_a_i < opr_b_i);
      BGE: branch_taken_o = (opr_a_i >= opr_b_i);
      BLTU: branch_taken_o = ($signed(opr_a_i) < $signed(opr_b_i));
      BGEU: branch_taken_o = (opr_a_i >= opr_b_i);
      default: branch_taken_o = 1'b0;
    endcase
      end
      else
        begin
        branch_taken_o = 1'b0;
        end
      end
      
endmodule
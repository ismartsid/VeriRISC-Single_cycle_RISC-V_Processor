module riscv_branch_control import riscv_pkg::*; (
  
  input  logic [31:0] opr_a_i, //RS1
  input  logic [31:0] opr_b_i, //RS2

  input  logic        is_b_type_ctl_i,  //Input from decode unit specifying weather it is a B_type instruction or not.
  input  logic [2:0]  instr_func3_ctl_i, //funct3 Field for specifying the type of branch operation
  
  output logic        branch_taken_o //Output for a branch to be taken or not
);

  logic [31:0] twos_comp_a;
  logic [31:0] twos_comp_b;
  
  assign twos_comp_a = opr_a_i[31] ? ~opr_a_i + 32'h1 : opr_a_i; //two's complement of RS1
  assign twos_comp_b = opr_b_i[31] ? ~opr_b_i + 32'h1 : opr_b_i; //two's complement of RS2
  
always_comb
  begin
    if(is_b_type_ctl_i)
      begin
    case(instr_func3_ctl_i)
      BEQ: branch_taken_o = (opr_a_i == opr_b_i); //Branch if RS1 = RS2
      BNE: branch_taken_o = (opr_a_i != opr_b_i); //Branch if RS1 != RS2
      BLT: branch_taken_o = (opr_a_i < opr_b_i); //Branch if RS1 < RS2
      BGE: branch_taken_o = (opr_a_i >= opr_b_i); //Branch if RS1 >= RS2
      BLTU: branch_taken_o = (twos_comp_a <  twos_comp_b); //Branch if RS1 < RS2 (Unsigned)
      BGEU: branch_taken_o = (twos_comp_a >= twos_comp_b); //Branch if RS1 >= RS2 (Unsigned)
      default: branch_taken_o = 1'b0; //Branch not taken
    endcase
      end
      else
        begin
        branch_taken_o = 1'b0;
        end
      end
      
endmodule


module riscv_control import riscv_pkg::*; (
  // Instruction type
  input   logic         is_r_type_i,
  input   logic         is_i_type_i,
  input   logic         is_s_type_i,
  input   logic         is_b_type_i,
  input   logic         is_u_type_i,
  input   logic         is_j_type_i,

  // Instruction opcode/funct fields
  input   logic [2:0]   instr_funct3_i,
  input   logic         instr_funct7_bit5_i,
  input   logic [6:0]   instr_opcode_i,

  // Control signals
  output  logic         pc_sel_o,
  output  logic         op1sel_o,
  output  logic         op2sel_o,
  output  logic [3:0]   alu_func_o,
  output  logic [1:0]   rf_wr_data_o,
  output  logic         data_req_o,
  output  logic [1:0]   data_byte_o,
  output  logic         data_wr_o,
  output  logic         zero_extnd_o,
  output  logic         rf_wr_en_o
);
	
  logic [3:0] 	r_cntr;
  logic [3:0] 	i_cntr;
  control 			control_out;
  control 			control_r;
  control 			control_i;
  control 			control_s;
  control 			control_b;
  control 			control_j;
  control 			control_u;
  
  
  /// R - TYPE
  assign r_cntr = {instr_funct7_bit5_i, instr_funct3_i};
  always_comb
    begin
      control_r = 'b0;
      control_r.rf_wr_en = 1'b1;
      case(r_cntr)
        ADD: control_r.alu_func = ADD_op;
				SUB: control_r.alu_func = SUB_op;
				SLL: control_r.alu_func = SLL_op;
				SLT: control_r.alu_func = LT_op;
 				SLTU:control_r.alu_func = SLT_op;
				XOR: control_r.alu_func = XOR_op;
				SRL: control_r.alu_func = SRL_op;
				SRA: control_r.alu_func = SRA_op;
				OR:  control_r.alu_func = OR_op;
				AND: control_r.alu_func = AND_op;
        default: control_r = 'b0;
      endcase
    end
  
  //I - TYPE
  assign i_cntr = {instr_opcode_i[4], instr_funct3_i};
  always_comb
    begin
      control_i = 'b0;
      control_i.op2sel = 1'b1;
      control_i.rf_wr_en = 1'b1;
      if ((instr_opcode_i == I3)) begin
        control_i.rf_wr_data = PC;
        control_i.pc_sel = 1'b1;
        control_i.alu_func = ADD_op;
      end
      else
        begin
                case(i_cntr)
        					ADDI: control_i.alu_func = ADD_op;
									SLTI: control_i.alu_func = LT_op;
									SLTIU:control_i.alu_func = SLT_op;
									XORI: control_i.alu_func = XOR_op;
 									ORI:	control_i.alu_func = OR_op;
									ANDI: control_i.alu_func = AND_op;
									SLLI: control_i.alu_func = SLL_op;
									SRXI: control_i.alu_func = instr_funct7_bit5_i ? SRA_op:SRL_op;
        
                  LB:	{control_i.rf_wr_data,
             					 control_i.data_req,
                       control_i.data_byte} = {MEM, 1'b1, Byte_Access};
                  LH:	{control_i.rf_wr_data,
            					 control_i.data_req,
                       control_i.data_byte} = {MEM, 1'b1, Halfword_Access};
                  LW:	{control_i.rf_wr_data,
             					 control_i.data_req,
                       control_i.data_byte} = {MEM, 1'b1, Word_Access};
                  LBU: {control_i.rf_wr_data,
             						control_i.data_req,
             						control_i.data_byte,
                        control_i.zero_extnd} = {MEM, 1'b1, Byte_Access, 1'b1};
                  LHU: {control_i.rf_wr_data,
             						control_i.data_req,
             						control_i.data_byte,
                        control_i.zero_extnd} = {MEM, 1'b1,Halfword_Access, 1'b1};

        					default: control_i = 'b0;
      				endcase
        end
    end
  
   // S - TYPE
    always_comb
    begin
      control_s = 'b0;
      control_s.op2sel = 1'b1;
      control_s.data_wr = 1'b1;
      control_s.data_req = 1'b1;
      case(instr_funct3_i)
        SB: control_s.data_byte = Byte_Access;
        SH:	control_s.data_byte = Halfword_Access;
        SW:	control_s.data_byte = Word_Access;
        default:	control_s = 'b0;
      endcase
    end
  
  /// B - TYPE
  always_comb
    begin
      control_b = 'b0;
      control_b.pc_sel = 1'b0;
      control_b.op1sel = 1'b1; 
      control_b.op2sel = 1'b1; 
	//control_b.alu_func = ADD_op;
    end
  
  
    /// J - TYPE
  always_comb
    begin
      control_j = 'b0;
      control_j.pc_sel = 1'b1;
      control_j.op1sel = 1'b1; 
      control_j.op2sel = 1'b1;
      control_j.alu_func = ADD_op;
      control_j.rf_wr_en = 1'b1;
      control_j.rf_wr_data = PC;
    end
  
  /// U - TYPE
  always_comb
    begin
      control_u = 'b0;
      control_u.rf_wr_en = 1'b1;
      case(instr_opcode_i)
        AUIPC: 	{control_u.op1sel,
          			control_u.op2sel} = {1'b1,1'b1};
        LUI:		control_u.rf_wr_data = IMM;
        default:	control_u = 'b0;
      endcase
    end  
  
  assign control_out = 	is_r_type_i ? control_r :
											 	is_i_type_i ? control_i :
											 	is_s_type_i ? control_s :
												is_b_type_i ? control_b :
												is_u_type_i ? control_u :
												is_j_type_i ? control_j : '0;
  
  
  assign pc_sel_o = control_out.pc_sel;
  assign op1sel_o = control_out.op1sel;
  assign op2sel_o = control_out.op2sel;
  assign alu_func_o = control_out.alu_func;
  assign rf_wr_data_o = control_out.rf_wr_data; 
  assign data_req_o = control_out.data_req;
  assign data_byte_o = control_out.data_byte;
  assign data_wr_o = control_out.data_wr;
  assign zero_extnd_o = control_out.zero_extnd;
  assign rf_wr_en_o = control_out.rf_wr_en;
  
endmodule


module riscv_control import riscv_pkg::*; (

  	input   logic         is_r_type_i, // is an R-type instruction
  	input   logic         is_i_type_i, // is an I-type instruction
  	input   logic         is_s_type_i, // is an S-type instruction
  	input   logic         is_b_type_i, // is an B-type instruction
  	input   logic         is_u_type_i, // is an U-type instruction
  	input   logic         is_j_type_i, // is an J-type instruction

	input   logic [2:0]   instr_funct3_i, //Funct-3 form the instruction
  	input   logic         instr_funct7_bit5_i, //Funct-7 bit 5 from the instruction
	input   logic [6:0]   instr_opcode_i, //Instruction Op-code

  	output  logic         pc_sel_o, //select signal for next PC
  	output  logic         op1sel_o, //select signal for RS1
  	output  logic         op2sel_o, //select signal for RS2
	output  logic [3:0]   alu_func_o, //Output to ALU to choose the type of operation
	output  logic [1:0]   rf_wr_data_o, //Select signal for the data to be written back to register file
  	output  logic         data_req_o, //Requesting Data memory 
	output  logic [1:0]   data_byte_o, //Byte enable
  	output  logic         data_wr_o, //Data Memory write enable
	output  logic         zero_extnd_o, //zero extend the data
  	output  logic         rf_wr_en_o //register file write enable
);
	
	logic [3:0] 	r_cntr;//ALU Control signal for R-type Instruction
	logic [3:0] 	i_cntr;//ALU Control signal for I-type Instruction
  	control 	control_out; //Control output
  	control 	control_r; //R-type Instruction Control signals
  	control 	control_i; //I-type Instruction Control signals
  	control 	control_s; //S-type Instruction Control signals
  	control 	control_b; //B-type Instruction Control signals
  	control 	control_j; //J-type Instruction Control signals
  	control 	control_u; //U-type Instruction Control signals
  
  
  // R - TYPE Instruction
	assign r_cntr = {instr_funct7_bit5_i, instr_funct3_i};
  	always_comb
    		begin
      		control_r = 'b0;
      		control_r.rf_wr_en = 1'b1;
      			case(r_cntr)
        			ADD: control_r.alu_func = ADD_op; //ADD Operation
				SUB: control_r.alu_func = SUB_op; //SUB Operation
				SLL: control_r.alu_func = SLL_op; //LOGICAL SHIFT LEFT Operation
				SLT: control_r.alu_func = LT_op; //LESS THAN Operation
				SLTU:control_r.alu_func = SLT_op; //LESS THAN Operation (Signed)
				XOR: control_r.alu_func = XOR_op; //XOR Operation
				SRL: control_r.alu_func = SRL_op; //LOGICAL SHIFT RIGHT Operation
				SRA: control_r.alu_func = SRA_op; //ARTHEMATIC SHIFT RIGHT Operation
				OR:  control_r.alu_func = OR_op; //OR Operation
				AND: control_r.alu_func = AND_op; //AND Operation
        default: control_r = 'b0;
      endcase
    end
  
  // I - TYPE Instruction
  	assign i_cntr = {instr_opcode_i[4], instr_funct3_i};
  	always_comb
    		begin
      		control_i = 'b0;
      		control_i.op2sel = 1'b1;
     		control_i.rf_wr_en = 1'b1;
		if ((instr_opcode_i == I3)) begin //For JALR Instruction
        		control_i.rf_wr_data = PC;
        		control_i.pc_sel = 1'b1;
        		control_i.alu_func = ADD_op;
      		end
      		else begin
                	case(i_cntr)
        			ADDI: control_i.alu_func = ADD_op; //ADD Operation
				SLTI: control_i.alu_func = LT_op; //LESS THAN Operation
				SLTIU:control_i.alu_func = SLT_op; //LESS THAN Operation (Signed)
				XORI: control_i.alu_func = XOR_op; //XOR Operation
 				ORI:  control_i.alu_func = OR_op; //OR Operation
				ANDI: control_i.alu_func = AND_op; //AND Operation
				SLLI: control_i.alu_func = SLL_op; //LOGICAL SHIFT LEFT Operation
				SRXI: control_i.alu_func = instr_funct7_bit5_i ? SRA_op:SRL_op; // SHIFT RIGHT OPERATION (ARTHEMATIC:LOGICAL)
        
				LB:	{control_i.rf_wr_data, //LOAD Byte
					 control_i.data_req,
					 control_i.data_byte} = {MEM, 1'b1, Byte_Access};
				LH:	{control_i.rf_wr_data, //LOAD Halfword
					 control_i.data_req,
					 control_i.data_byte} = {MEM, 1'b1, Halfword_Access};
				LW:	{control_i.rf_wr_data, //LOAD Word
					 control_i.data_req,
					 control_i.data_byte} = {MEM, 1'b1, Word_Access};
				LBU:    {control_i.rf_wr_data, //LOAD Byte Unsigned
					 control_i.data_req,
					 control_i.data_byte,
					 control_i.zero_extnd} = {MEM, 1'b1, Byte_Access, 1'b1};
				LHU:    {control_i.rf_wr_data, //LOAD Halfword Unsigned
					 control_i.data_req,
					 control_i.data_byte,
					 control_i.zero_extnd} = {MEM, 1'b1,Halfword_Access, 1'b1};
        			default: control_i = 'b0;
      			endcase
        	end
    	end
  
   // S - TYPE Instruction
    	always_comb
    		begin
      		control_s = 'b0;
      		control_s.op2sel = 1'b1;
      		control_s.data_wr = 1'b1;
      		control_s.data_req = 1'b1;
      		case(instr_funct3_i)
        		SB: 	control_s.data_byte = Byte_Access; //STORE Byte
        		SH:	control_s.data_byte = Halfword_Access; //STORE Halfword
        		SW:	control_s.data_byte = Word_Access; //STORE word
        		default:	control_s = 'b0;
      		endcase
    	end
  
  // B - TYPE Instruction
  	always_comb
    		begin
      		control_b = 'b0;
      		control_b.pc_sel = 1'b0;
      		control_b.op1sel = 1'b1; 
      		control_b.op2sel = 1'b1; 
    end
  
  
    // J - TYPE Instruction
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
  
  // U - TYPE Instruction
  	always_comb
    		begin
      		control_u = 'b0;
      		control_u.rf_wr_en = 1'b1;
      		case(instr_opcode_i)
        		AUIPC: 	{control_u.op1sel,
				 control_u.op2sel} = {1'b1,1'b1};
        		LUI:	control_u.rf_wr_data = IMM;
       			default:	control_u = 'b0;
     		endcase
    	end  

	//Assigning controls based on the type of instruction
  	assign control_out = 	is_r_type_i ? control_r :
				is_i_type_i ? control_i :
				is_s_type_i ? control_s :
				is_b_type_i ? control_b :
				is_u_type_i ? control_u :
				is_j_type_i ? control_j : '0;
  
  	//Assigning outputs
  	assign pc_sel_o = 	control_out.pc_sel;
  	assign op1sel_o = 	control_out.op1sel;
  	assign op2sel_o = 	control_out.op2sel;
  	assign alu_func_o = 	control_out.alu_func;
  	assign rf_wr_data_o = 	control_out.rf_wr_data; 
  	assign data_req_o = 	control_out.data_req;
  	assign data_byte_o = 	control_out.data_byte;
  	assign data_wr_o = 	control_out.data_wr;
  	assign zero_extnd_o = 	control_out.zero_extnd;
  	assign rf_wr_en_o = 	control_out.rf_wr_en;
  
endmodule


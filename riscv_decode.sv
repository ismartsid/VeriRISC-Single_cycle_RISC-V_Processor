module riscv_decode import riscv_pkg::*; (
  input   logic [31:0]  instr_i, // Input 32-bit Instruction
  output  logic [4:0]   rs1_o, // RS1
  output  logic [4:0]   rs2_o, // RS2
  output  logic [4:0]   rd_o, // RD
  output  logic [6:0]   op_o, // Opcode from instruction
  output  logic [2:0]   funct3_o, // Funct3 from instruction
  output  logic [6:0]   funct7_o, // Funct7 from instruction
  output  logic         r_type_instr_o, // Is R-type instruction
  output  logic         i_type_instr_o, // Is I-type instruction
  output  logic         s_type_instr_o, // Is S-type instruction
  output  logic         b_type_instr_o, // Is B-type instruction
  output  logic         u_type_instr_o, // Is U-type instruction
  output  logic         j_type_instr_o, // Is J-type instruction
  output  logic [31:0]  instr_imm_o // Immediate field from instruction
);

 assign op_o = instr_i [6:0];
 assign rs1_o = instr_i [19:15];
 assign	rs2_o = instr_i [24:20];
 assign rd_o = instr_i [11:7];
 assign funct3_o = instr_i [14:12];
 assign funct7_o = instr_i [31:25];
  
  always_comb
    begin
      case(op_o)
          R: begin
  						r_type_instr_o = 'b1;
  						i_type_instr_o = 'b0;
  						s_type_instr_o = 'b0;
  						b_type_instr_o = 'b0;
  						u_type_instr_o = 'b0;
  						j_type_instr_o = 'b0;
  						instr_imm_o = 'b0;
          end
        	
          I1,I2,I3: begin 
  						r_type_instr_o = 'b0;
  						i_type_instr_o = 'b1;
  						s_type_instr_o = 'b0;
  						b_type_instr_o = 'b0;
  						u_type_instr_o = 'b0;
  						j_type_instr_o = 'b0;
              instr_imm_o = {{21{instr_i [31]}},instr_i [30:20]};
          end
          
          S: begin
  						r_type_instr_o = 'b0;
  						i_type_instr_o = 'b0;
  						s_type_instr_o = 'b1;
  						b_type_instr_o = 'b0;
  						u_type_instr_o = 'b0;
  						j_type_instr_o = 'b0;
              instr_imm_o = {{21{instr_i [31]}},instr_i [30:25],instr_i [11:7]};
          end
          
          B: begin
  						r_type_instr_o = 'b0;
  						i_type_instr_o = 'b0;
  						s_type_instr_o = 'b0;
  						b_type_instr_o = 'b1;
  						u_type_instr_o = 'b0;
  						j_type_instr_o = 'b0;
              instr_imm_o = {{20{instr_i [31]}},instr_i [7],instr_i [30:25],instr_i [11:8],1'b0};
          end
          
          U1,U2: begin
  						r_type_instr_o = 'b0;
  						i_type_instr_o = 'b0;
  						s_type_instr_o = 'b0;
  						b_type_instr_o = 'b0;
  						u_type_instr_o = 'b1;
  						j_type_instr_o = 'b0;
           	  instr_imm_o = {instr_i [31:12],12'b0};
          end
          
          J: begin 
  						r_type_instr_o = 'b0;
  						i_type_instr_o = 'b0;
  						s_type_instr_o = 'b0;
  						b_type_instr_o = 'b0;
  						u_type_instr_o = 'b0;
  						j_type_instr_o = 'b1;
              instr_imm_o = {{12{instr_i [31]}},instr_i [19:12],instr_i [20],instr_i [30:21],1'b0};
          end
          
          default: begin
  						r_type_instr_o = 'b0;
  						i_type_instr_o = 'b0;
  						s_type_instr_o = 'b0;
  						b_type_instr_o = 'b0;
  						u_type_instr_o = 'b0;
  						j_type_instr_o = 'b0;
  						instr_imm_o = {{12{instr_i [31]}},instr_i [19:12],instr_i [20],instr_i [30:21],1'b0};
          end
       endcase
    end
endmodule

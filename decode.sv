module decode import risc_pkg::*; 
  (
  input   logic [31:0]  instr_i,
  output  logic [4:0]   rs1_o,
  output  logic [4:0]   rs2_o,
  output  logic [4:0]   rd_o,
  output  logic [6:0]   op_o,
  output  logic [2:0]   funct3_o,
  output  logic [6:0]   funct7_o,
  output  logic         r_type_instr_o,
  output  logic         i_type_instr_o,
  output  logic         s_type_instr_o,
  output  logic         b_type_instr_o,
  output  logic         u_type_instr_o,
  output  logic         j_type_instr_o,
  output  logic [31:0]  instr_imm_o
);

/*  typedef enum logic[6:0]{ R = 7'b0110011, 
                          I1 = 7'b0000011, 
                          I2 = 7'b0010011,
                          I3 = 7'b1100111 ,
                          S = 7'b0100011 ,
                          B = 7'b1100011,
                          U1 = 7'b0010111,
                          U2 = 7'b0110111,
                          J = 7'b1101111} riscv_op;
                          */
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
					  //rs1_o = instr_i [19:15];
           	//rs2_o = instr_i [24:20];
            //rd_o = instr_i [11:7];
            
            //funct3_o = instr_i [14:12];
            //funct7_o = instr_i [31:25];
  						r_type_instr_o = 'b1;
  						i_type_instr_o = 'b0;
  						s_type_instr_o = 'b0;
  						b_type_instr_o = 'b0;
  						u_type_instr_o = 'b0;
  						j_type_instr_o = 'b0;
  						instr_imm_o = 'b0;
          end
        	
          I1,I2,I3: begin 
              //rs1_o = instr_i [19:15];
  						//rs2_o = 'b0;
  						//rd_o = instr_i [11:7];

  						//funct3_o = instr_i [14:12];
  						//funct7_o = 'b0;
  						r_type_instr_o = 'b0;
  						i_type_instr_o = 'b1;
  						s_type_instr_o = 'b0;
  						b_type_instr_o = 'b0;
  						u_type_instr_o = 'b0;
  						j_type_instr_o = 'b0;
              instr_imm_o = {{21{instr_i [31]}},instr_i [30:20]};
          end
          
          S: begin
          	//rs1_o = instr_i [19:15];
           	//rs2_o = instr_i [24:20];
  					//rd_o = 'b0;

  						//funct3_o = instr_i [14:12];
  						//funct7_o = 'b0;
  						r_type_instr_o = 'b0;
  						i_type_instr_o = 'b0;
  						s_type_instr_o = 'b1;
  						b_type_instr_o = 'b0;
  						u_type_instr_o = 'b0;
  						j_type_instr_o = 'b0;
              instr_imm_o = {{21{instr_i [31]}},instr_i [30:25],instr_i [11:7]};
          end
          
          B: begin
         	  //rs1_o = instr_i [19:15];
           	//rs2_o = instr_i [24:20];
  					//rd_o = 'b0;

  						//funct3_o = instr_i [14:12];
  						//funct7_o = 'b0;
  						r_type_instr_o = 'b0;
  						i_type_instr_o = 'b0;
  						s_type_instr_o = 'b0;
  						b_type_instr_o = 'b1;
  						u_type_instr_o = 'b0;
  						j_type_instr_o = 'b0;
              instr_imm_o = {{20{instr_i [31]}},instr_i [7],instr_i [30:25],instr_i [11:8],1'b0};
          end
          
          U1,U2: begin
          		//rs1_o = 'b0;
  						//rs2_o = 'b0;
  						//rd_o = instr_i [11:7];
  
  						//funct3_o = 'b0;
  						//funct7_o = 'b0;
  						r_type_instr_o = 'b0;
  						i_type_instr_o = 'b0;
  						s_type_instr_o = 'b0;
  						b_type_instr_o = 'b0;
  						u_type_instr_o = 'b1;
  						j_type_instr_o = 'b0;
           	  instr_imm_o = {instr_i [31:12],12'b0};
          end
          
          J: begin 
          		//rs1_o = 'b0;
  						//rs2_o = 'b0;
  						//rd_o = instr_i [11:7];

  						//funct3_o = 'b0;
  						//funct7_o = 'b0;
  						r_type_instr_o = 'b0;
  						i_type_instr_o = 'b0;
  						s_type_instr_o = 'b0;
  						b_type_instr_o = 'b0;
  						u_type_instr_o = 'b0;
  						j_type_instr_o = 'b1;
              instr_imm_o = {{12{instr_i [31]}},instr_i [19:12],instr_i [20],instr_i [30:21],1'b0};
          end
          
          default: begin
              //rs1_o = 'b0;
  						//rs2_o = 'b0;
  						//rd_o = 'b0;

  						//funct3_o = 'b0;
  						//funct7_o = 'b0;
  						r_type_instr_o = 'b0;
  						i_type_instr_o = 'b0;
  						s_type_instr_o = 'b0;
  						b_type_instr_o = 'b0;
  						u_type_instr_o = 'b0;
  						j_type_instr_o = 'b0;
  						instr_imm_o = {{12{instr_i [31]}},instr_i [19:12],instr_i [20],instr_i [30:21],1'b0};
         		  //$error("It's gone wrong");
          end
       endcase
    end
endmodule

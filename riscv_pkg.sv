package riscv_pkg;

	// Defining the type of Instruction
	typedef enum logic[6:0]{
    		R =         7'b0110011, 
    		I1 =        7'b0000011, 
	    	I2 =        7'b0010011,
    		I3 =        7'b1100111,
    		S =         7'b0100011,
    		B =         7'b1100011,
    		U1 =        7'b0010111,
    		U2 =        7'b0110111,
    		J =         7'b1101111
  	} riscv_op;

	// Defining ALU Operations
	typedef enum logic [3:0]{ 
    		ADD_op,
    		SUB_op,
		SLL_op,
		SRL_op,
		SRA_op,
		OR_op,
		AND_op,
		XOR_op,
		LT_op,
    		SLT_op
  	} ALU_op;

	// Defining Write Back Sources
	typedef enum logic[1:0] { 
    		ALU = 2'b00,
    		MEM = 2'b01,
    		IMM = 2'b10,
    		PC  = 2'b11
  	} rf_wr_src;

	// Defining Memory Access Types
	typedef enum logic [1:0]{ 
    		Byte_Access,
    		Halfword_Access,
    		Reserved,
    		Word_Access
  	} mem_encode;
  
  
  	// R - TYPE Instruction
  	//{funct7[5],funct3}
 	typedef enum logic [3:0] { 
    		ADD	= 4'h0,
   		SUB	= 4'h8,
    		SLL	= 4'h1,
    		SLT	= 4'h2,
    		SLTU	= 4'h3,
		XOR	= 4'h4,
    		SRL	= 4'h5,
    		SRA	= 4'hd,
    		OR	= 4'h6,
    		AND	= 4'h7
  	} r_func;
  
  	// I - TYPE Instruction
  	//{opcode[4],funct3}
  	typedef enum logic [3:0] { 
    		ADDI	= 4'h8,
    		SLTI	= 4'hA,
    		SLTIU	= 4'hB,
    		XORI	= 4'hC,
    		ORI	= 4'hE,
    		ANDI	= 4'hF,
    		SLLI	= 4'h9,
    		SRXI	= 4'hD,
    		LB	= 4'h0,
    		LH	= 4'h1,
    		LW	= 4'h2,
    		LBU	= 4'h4,
    		LHU	= 4'h5
  } i_func;
  
  
  	// S - TYPE Instruction
  	typedef enum logic [2:0] { 
    		SB	= 3'h0,
    		SH	= 3'h1,
    		SW	= 3'h2
    	} s_func;
  
  
  	// B - TYPE Instruction
  	typedef enum logic [2:0]{    
    		BEQ  	= 3'h0,
    		BNE  	= 3'h1,
    		BLT  	= 3'h4,
    		BGE  	= 3'h5,						
    		BLTU 	= 3'h6,						
    		BGEU 	= 3'h7
  	} branch;
  
  	// U - TYPE Instruction
  	typedef enum logic [6:0] { 
    		LUI	= 7'h17,
    		AUIPC   = 7'h37
  	} u_func;
  
  	// J - TYPE Instruction and JALR
  	typedef enum logic [6:0] { 
    		JAL	= 7'b1101111, // J - TYPE
    		JALR	= 7'b1100111 //I - TYPE
  	} j_func;

	// Structure for Control Logic
  	typedef struct packed {
     		logic 		pc_sel;
  		logic 	      	op1sel;
  		logic         	op2sel;
    		logic [3:0]   	alu_func;
    		logic [1:0]   	rf_wr_data;
  		logic         	data_req;
   	 	logic [1:0]   	data_byte;
  		logic         	data_wr;
  		logic         	zero_extnd;
  		logic         	rf_wr_en;
  	} control;
  
endpackage

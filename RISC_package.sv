// --------------------------------------------------------
// RISC: Package File
//
// The should contain all of the enums, structs or any other
// common functions used while designing the RISC core
// --------------------------------------------------------
// --------------------------------------------------------
// RISC Package
// --------------------------------------------------------

package yarp_pkg;
  typedef enum logic[6:0]{ R = 7'b0110011, 
                          I1 = 7'b0000011, 
                          I2 = 7'b0010011,
                          I3 = 7'b1100111 ,
                          S = 7'b0100011 ,
                          B = 7'b1100011,
                          U1 = 7'b0010111,
                          U2 = 7'b0110111,
                          J = 7'b1101111} riscv_op;
  
  typedef enum logic [3:0]{Add_op,
								Sub_op,
								SLL_op,
								SRL_op,
								SRA_op,
								OR_op,
								AND_op,
								XOR_op,
								LT_op,
                SLT_op} ALU_op;
  
  typedef enum logic [1:0]{Byte_Access,
                           Halfword_Access,
                           Reserved,
                           Word_Access} mem_encode;

    typedef enum logic [2:0]{    BEQ  = 3'h0,
    			   BNE  = 3'h1,
    			   BLT  = 3'h4,
    			   BGE  = 3'h5,
    			   BLTU = 3'h6,
    			   BGEU = 3'h7} branch;
endpackage

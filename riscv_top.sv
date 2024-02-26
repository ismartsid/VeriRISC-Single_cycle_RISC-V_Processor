module riscv_top import riscv_pkg::*; #(
  	parameter RESET_PC = 32'h1000)
(
  	input   logic          clk, // Clock
  	input   logic          reset_n, // Reset

  // Instruction memory interface
  	output  logic          instr_mem_req_o, // Instruction Request to memory
	output  logic [31:0]   instr_mem_addr_o, // Instruction Address
	input   logic [31:0]   instr_mem_rd_data_i, //32-bit Instruction from memory

  // Data memory interface
  	output  logic          data_mem_req_o, // Data Request to memory
	output  logic [31:0]   data_mem_addr_o, // Data Address
	output  logic [1:0]    data_mem_byte_en_o, // Byte Enable
  	output  logic          data_mem_wr_o, // Write Enable
	output  logic [31:0]   data_mem_wr_data_o, // Write Data to memory
	input   logic [31:0]   data_mem_rd_data_i // Read Data from memory
);

	// Wires used to connect modules
  	wire [31:0] 	instr_mem_instr;
  	wire 		is_r_type, is_i_type, is_s_type, is_b_type, is_u_type, is_j_type;
  	wire 		rf_wr_en, pc_sel, op1sel, op2sel, branch_taken;
  	wire [2:0] 	funct3; 
  	wire [3:0]	alu_func;
  	wire [1:0]	rf_wr_data, data_byte;
  	wire [6:0] 	funct7;
  	wire [6:0] 	op_code;
  	wire [4:0] 	rs1_addr, rs2_addr, rd_addr;
  	wire [31:0]	rs1_data, rs2_data, alu_res, op1, op2;
  	wire [31:0]	instr_imm, data_mem_rd_data, next_pc, pc_count;
  	wire 		data_wr, data_req, zero_extnd;
  	logic [31:0]  wr_data, pc_reg;
  
  	// PC
  	always@ (posedge clk or negedge reset_n)
    		begin
      		if(!reset_n)
        		pc_reg <= RESET_PC;
      		else
        		pc_reg <= pc_count;
    		end
  
  	assign next_pc = pc_reg + 32'h4;
	assign pc_count = {branch_taken | pc_sel} ? {alu_res[31:1], 1'b0} : next_pc; //PC Selection Between PC+4 and ALU result(for jump and branch instruction)
  
  
  	always_comb
    		begin
			case (rf_wr_data) //Selection Between Write Back Data Sources
        			IMM: 	wr_data = instr_imm;
        			ALU: 	wr_data = alu_res;
        			PC: 	wr_data = pc_reg;
        			MEM: 	wr_data = data_mem_rd_data;
        			default:wr_data = alu_res;
      		endcase
    	end
  
  	assign op1 = op1sel ? pc_reg : rs1_data; // ALU input 1 Selection Between RS1 and PC
  	assign op2 = op2sel ? instr_imm : rs2_data; // ALU input 2 Selection Between RS2 and Instruction Immediate Field
	
  	// --------------------------------------------------------
  	// Instruction Memory
  	// --------------------------------------------------------
  	riscv_instr_mem riscv_instr_mem_top (
    		.clk                      (clk),
    		.reset_n                  (reset_n),
    		.instr_mem_pc_i           (pc_reg),
    		.instr_mem_req_o          (instr_mem_req_o),
    		.instr_mem_addr_o         (instr_mem_addr_o),
    		.mem_rd_data_i            (instr_mem_rd_data_i),
    		.instr_mem_instr_o        (instr_mem_instr)
  	);

  	// --------------------------------------------------------
  	// Instruction Decode
  	// --------------------------------------------------------
  	riscv_decode riscv_decode_top (
    		.instr_i                  (instr_mem_instr),
    		.rs1_o                    (rs1_addr),
    		.rs2_o                    (rs2_addr),
    		.rd_o                     (rd_addr),
    		.op_o                     (op_code),
    		.funct3_o                 (funct3),
    		.funct7_o                 (funct7),
    		.r_type_instr_o           (is_r_type),
    		.i_type_instr_o           (is_i_type),
    		.s_type_instr_o           (is_s_type),
    		.b_type_instr_o           (is_b_type),
    		.u_type_instr_o           (is_u_type),
    		.j_type_instr_o           (is_j_type),
    		.instr_imm_o              (instr_imm)
  	);

  	// --------------------------------------------------------
  	// Register File
  	// --------------------------------------------------------
  	riscv_regfile riscv_regfile_top (
    		.clk                      (clk),
    		.reset_n                  (reset_n),
    		.rs1_addr_i               (rs1_addr),
    		.rs2_addr_i               (rs2_addr),
    		.rd_addr_i                (rd_addr),
    		.wr_en_i                  (rf_wr_en),
    		.wr_data_i                (wr_data),
    		.rs1_data_o               (rs1_data),
    		.rs2_data_o               (rs2_data)
  	);

  	// --------------------------------------------------------
  	// Control Unit
  	// --------------------------------------------------------
  	riscv_control riscv_control_top (
    		.instr_funct3_i           (funct3),
    		.instr_funct7_bit5_i      (funct7[5]),
    		.instr_opcode_i           (op_code),
    		.is_r_type_i              (is_r_type),
    		.is_i_type_i              (is_i_type),
    		.is_s_type_i              (is_s_type),
    		.is_b_type_i              (is_b_type),
    		.is_u_type_i              (is_u_type),
    		.is_j_type_i              (is_j_type),
    		.pc_sel_o                 (pc_sel),
    		.op1sel_o                 (op1sel),
    		.op2sel_o                 (op2sel),
    		.data_req_o               (data_req),
    		.data_wr_o                (data_wr),
    		.data_byte_o              (data_byte),
    		.zero_extnd_o             (zero_extnd),
    		.rf_wr_en_o               (rf_wr_en),
    		.rf_wr_data_o             (rf_wr_data),
    		.alu_func_o               (alu_func)
  	);

  	// --------------------------------------------------------
  	// Branch Control
  	// --------------------------------------------------------
  	riscv_branch_control riscv_branch_control_top (
    		.opr_a_i                  (rs1_data),
    		.opr_b_i                  (rs2_data),
    		.is_b_type_ctl_i          (is_b_type),
    		.instr_func3_ctl_i        (funct3),
    		.branch_taken_o           (branch_taken)
  	);

  	// --------------------------------------------------------
  	// Execute Unit
  	// --------------------------------------------------------
  	riscv_execute riscv_execute_top (
    		.opr_a_i                  (op1),
    		.opr_b_i                  (op2),
    		.op_sel_i                 (alu_func),
    		.alu_res_o                (alu_res)
  	);

  	// --------------------------------------------------------
  	// Data Memory
  	// --------------------------------------------------------
  	riscv_data_mem_interface riscv_data_mem_interface_top (
    		.clk                      (clk),
    		.reset_n                  (reset_n),
    		.data_req_i               (data_req),
    		.data_addr_i              (alu_res),
    		.data_byte_en_i           (data_byte),
    		.data_wr_i                (data_wr),
    		.data_wr_data_i           (alu_res),
    		.data_zero_extnd_i        (zero_extnd),
    		.data_mem_req_o           (data_mem_req_o),
    		.data_mem_addr_o          (data_mem_addr_o),
    		.data_mem_byte_en_o       (data_mem_byte_en_o),
    		.data_mem_wr_o            (data_mem_wr_o),
    		.data_mem_wr_data_o       (data_mem_wr_data_o),
    		.mem_rd_data_i            (data_mem_rd_data_i),
    		.data_mem_rd_data_o       (data_mem_rd_data)
  	);

endmodule

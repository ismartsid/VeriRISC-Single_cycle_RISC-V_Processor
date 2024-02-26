module riscv_data_mem_control import riscv_pkg::*; (
    input   logic           clk, // Clock
    input   logic           reset_n, // Reset

    input   logic           data_req_i, // Input Data Request
    input   logic [31:0]    data_addr_i, // Data Address From Instruction
    input   logic [1:0]     data_byte_en_i, // Byte enable
    input   logic           data_wr_i, // Write Enable
    input   logic [31:0]    data_wr_data_i, // Write data from ALU/R

    input   logic           data_zero_extnd_i, // Zero extend

    output  logic           data_mem_req_o, // Output data request to memory
    output  logic  [31:0]   data_mem_addr_o, // Output data address to memory
    output  logic  [1:0]    data_mem_byte_en_o, // Output byte Enable to memory
    output  logic           data_mem_wr_o, // Output write enable to memory
    output  logic  [31:0]	  data_mem_wr_data_o, // Output write data to memory
  
    input   logic [31:0]    mem_rd_data_i, // Read data from memory

    output  logic [31:0]    data_mem_rd_data_o // Data output
);

    assign data_mem_req_o = data_req_i;
    assign data_mem_addr_o = data_addr_i;
    assign data_mem_byte_en_o = data_byte_en_i;
    assign data_mem_wr_o = data_wr_i;
    assign data_mem_wr_data_o = data_wr_data_i;
  
    always_comb
      begin
      case(data_byte_en_i)
        Byte_Access:             data_mem_rd_data_o = data_zero_extnd_i ? {24'b0,mem_rd_data_i[7:0]}:{{25{mem_rd_data_i[7]}},mem_rd_data_i[6:0]};
        Halfword_Access:         data_mem_rd_data_o = data_zero_extnd_i ? {16'b0,mem_rd_data_i[15:0]}:{{17{mem_rd_data_i[15]}},mem_rd_data_i[14:0]};
        Reserved,Word_Access:    data_mem_rd_data_o = mem_rd_data_i;
        default:                 data_mem_rd_data_o = mem_rd_data_i;
      endcase
    end
endmodule


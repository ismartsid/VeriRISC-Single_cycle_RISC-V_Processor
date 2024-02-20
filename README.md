# Single Cycle RISC-V Processor

## Overview
This project is an implementation of a Single Cycle CPU utilizing the RISC-V ISA. The design is based on the RV32I implementation as outlined in the RISC-V Instruction Set Manual. Therefore making this a 32-bit CPU, written all in Verilog. This project was mostly made for a hobby and educational purposes.

1. **riscv_branch_control.sv**
   - Determines whether a branch instruction is taken or not.

2. **riscv_control.sv**
   - Acts as the controller of the processor, defining how the processor should function for each instruction.

3. **riscv_data_mem_control.sv**
   - Serves as a memory controller, facilitating communication between the processor and memory. It retrieves data from memory and writes data back to memory.

4. **riscv_decode.sv**
   - Decodes instructions and classifies them into R-type, I-type, S-type, B-type, J-type, and U-type.

5. **riscv_execute.sv**
   - The ALU (Arithmetic Logic Unit) of the processor. It takes inputs, performs the specified operation, and produces the result.

6. **riscv_instr_mem.sv**
   - The fetch unit of the processor, responsible for fetching instructions from the instruction memory.

7. **riscv_pkg.sv**
   - A package file containing parameters, structures, and enums defined for the processor.

8. **riscv_regfile.sv**
   - The register file of the processor, comprising 32 32-bit registers (R0 to R31).

9. **riscv_top.sv**
   - Integrates all the modules to create the complete processor.
  

## RISC-V reference
I recommend reading the RISC-V Reference Manual, not complete but those sections mentioning the RV32I implementation.



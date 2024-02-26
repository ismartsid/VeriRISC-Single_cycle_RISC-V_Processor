# Single Cycle RISC-V Processor

## Overview
This project is a 32-bit Single Cycle CPU that follows the RISC-V Instruction Set Architecture(ISA). It's written in SystemVerilog and is based on the RV32I implementation outlined in the [RISC-V Instruction Set Manual](https://riscv.org/wp-content/uploads/2017/05/riscv-spec-v2.2.pdf). This project is mainly meant for learning purposes.

## Block Diagram
![Untitled 3 P2](https://github.com/ismartsid/VeriRISC-Single_cycle_RISC-V_Processor/assets/85611307/5edcc6e9-2c85-4b71-bc83-133896fd3747)

## Modules

1. **riscv_branch_control.sv**
   - Decides whether a branch instruction should be taken or not.

2. **riscv_control.sv**
   - Serves as the processor's controller, determining how the processor should operate for each instruction.

3. **riscv_data_mem_interface.sv**
   - Functions as a memory cinterface, managing communication between the processor and memory. It retrieves data from memory and writes data back to memory.

4. **riscv_decode.sv**
   - Decodes instructions and categorizes them into R-type, I-type, S-type, B-type, J-type, and U-type.

5. **riscv_execute.sv**
   - Represents the Arithmetic Logic Unit (ALU) of the processor. It takes inputs, performs the specified operation, and generates the result.

6. **riscv_instr_mem.sv**
   - Acts as the fetch unit of the processor, responsible for retrieving instructions from the instruction memory.

7. **riscv_pkg.sv**
   - A package file containing parameters, structures, and enums defined for the processor.

8. **riscv_regfile.sv**
   - The register file of the processor, comprising 32 32-bit registers (R0 to R31).

9. **riscv_top.sv**
   - Integrates all the modules to create the complete processor.

## RISC-V Reference
For a deeper understanding, it's recommended to read the [RISC-V Reference Manual](https://riscv.org/wp-content/uploads/2017/05/riscv-spec-v2.2.pdf), particularly the sections mentioning the RV32I implementation.

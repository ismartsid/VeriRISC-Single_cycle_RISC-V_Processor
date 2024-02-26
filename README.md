# Single Cycle RISC-V Processor

## Overview
This project is a 32-bit Single Cycle CPU that follows the RISC-V Instruction Set Architecture(ISA). It's written in SystemVerilog and is based on the RV32I implementation outlined in the [RISC-V Instruction Set Manual](https://riscv.org/wp-content/uploads/2017/05/riscv-spec-v2.2.pdf). This project is mainly meant for learning purposes.

## Block Diagram
The block diagram illustrates the key components and their interconnections within the Single Cycle RISC-V Processor.
![Untitled 3 P2](https://github.com/ismartsid/VeriRISC-Single_cycle_RISC-V_Processor/assets/85611307/5edcc6e9-2c85-4b71-bc83-133896fd3747)

## Modules

1. **riscv_branch_control.sv**
   - Decides whether a branch instruction should be taken or not.

2. **riscv_control.sv**
   - Serves as the processor's controller, determining how the processor should operate for each instruction.

3. **riscv_data_mem_interface.sv**
   - Functions as a memory interface, managing communication between the processor and memory. It retrieves data from memory and writes data back to memory.

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
  
P.S - I will include testbenches shortly.

## RISC-V Reference
For a deeper understanding, it's recommended to read the [RISC-V Reference Manual](https://riscv.org/wp-content/uploads/2017/05/riscv-spec-v2.2.pdf), particularly the sections mentioning the RV32I implementation.

## RTL Analysis
RTL analysis has been performed using Xilinx Vivado.
![Screenshot 2023-06-12 231412](https://github.com/ismartsid/VeriRISC-Single_cycle_RISC-V_Processor/assets/85611307/a04f59a9-65b3-4c61-8f3c-5c41c41ddbcb)

## Layout
The project has been implemented up to GDSII, and the layout, generated using Cadence Innovus, is presented below.
![Screenshot 2024-02-20 191214](https://github.com/ismartsid/VeriRISC-Single_cycle_RISC-V_Processor/assets/85611307/a9432691-b5fe-4ebb-a1ad-89bd0a7786ec)



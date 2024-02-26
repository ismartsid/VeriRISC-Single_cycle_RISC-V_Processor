# File saved with Nlview 7.0r6  2020-01-29 bk=1.5227 VDI=41 GEI=36 GUI=JA:10.0 non-TLS-threadsafe
# 
# non-default properties - (restore without -noprops)
property attrcolor #000000
property attrfontsize 8
property autobundle 1
property backgroundcolor #ffffff
property boxcolor0 #000000
property boxcolor1 #000000
property boxcolor2 #000000
property boxinstcolor #000000
property boxpincolor #000000
property buscolor #008000
property closeenough 5
property createnetattrdsp 2048
property decorate 1
property elidetext 40
property fillcolor1 #ffffcc
property fillcolor2 #dfebf8
property fillcolor3 #f0f0f0
property gatecellname 2
property instattrmax 30
property instdrag 15
property instorder 1
property marksize 12
property maxfontsize 15
property maxzoom 6.25
property netcolor #19b400
property objecthighlight0 #ff00ff
property objecthighlight1 #ffff00
property objecthighlight2 #00ff00
property objecthighlight3 #ff6666
property objecthighlight4 #0000ff
property objecthighlight5 #ffc800
property objecthighlight7 #00ffff
property objecthighlight8 #ff00ff
property objecthighlight9 #ccccff
property objecthighlight10 #0ead00
property objecthighlight11 #cefc00
property objecthighlight12 #9e2dbe
property objecthighlight13 #ba6a29
property objecthighlight14 #fc0188
property objecthighlight15 #02f990
property objecthighlight16 #f1b0fb
property objecthighlight17 #fec004
property objecthighlight18 #149bff
property objecthighlight19 #eb591b
property overlapcolor #19b400
property pbuscolor #000000
property pbusnamecolor #000000
property pinattrmax 20
property pinorder 2
property pinpermute 0
property portcolor #000000
property portnamecolor #000000
property ripindexfontsize 8
property rippercolor #000000
property rubberbandcolor #000000
property rubberbandfontsize 15
property selectattr 0
property selectionappearance 2
property selectioncolor #0000ff
property sheetheight 44
property sheetwidth 68
property showmarks 1
property shownetname 0
property showpagenumbers 1
property showripindex 4
property timelimit 1
#
module new riscv_top work:riscv_top:NOFILE -nosplit
load symbol RTL_ADD0 work RTL(+) pinBus I0 input.left [31:0] pinBus I1 input.left [2:0] pinBus O output.right [31:0] fillcolor 1
load symbol RTL_MUX5 work MUX pin S input.bot pinBus I0 input.left [31:0] pinBus I1 input.left [31:0] pinBus O output.right [31:0] fillcolor 1
load symbol RTL_OR0 work OR pin I0 input pin I1 input pin O output fillcolor 1
load symbol riscv_branch_control work:riscv_branch_control:NOFILE HIERBOX pin branch_taken_o output.right pin is_b_type_ctl_i input.left pinBus instr_func3_ctl_i input.left [2:0] pinBus opr_a_i input.left [31:0] pinBus opr_b_i input.left [31:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol riscv_control work:riscv_control:NOFILE HIERBOX pin data_req_o output.right pin data_wr_o output.right pin instr_funct7_bit5_i input.left pin is_b_type_i input.left pin is_i_type_i input.left pin is_j_type_i input.left pin is_r_type_i input.left pin is_s_type_i input.left pin is_u_type_i input.left pin op1sel_o output.right pin op2sel_o output.right pin pc_sel_o output.right pin rf_wr_en_o output.right pin zero_extnd_o output.right pinBus alu_func_o output.right [3:0] pinBus data_byte_o output.right [1:0] pinBus instr_funct3_i input.left [2:0] pinBus instr_opcode_i input.left [6:0] pinBus rf_wr_data_o output.right [1:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol riscv_data_mem_control work:riscv_data_mem_control:NOFILE HIERBOX pin clk input.left pin data_mem_req_o output.right pin data_mem_wr_o output.right pin data_req_i input.left pin data_wr_i input.left pin data_zero_extnd_i input.left pin reset_n input.left pinBus data_addr_i input.left [31:0] pinBus data_byte_en_i input.left [1:0] pinBus data_mem_addr_o output.right [31:0] pinBus data_mem_byte_en_o output.right [1:0] pinBus data_mem_rd_data_o output.right [31:0] pinBus data_mem_wr_data_o output.right [31:0] pinBus data_wr_data_i input.left [31:0] pinBus mem_rd_data_i input.left [31:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol riscv_decode work:riscv_decode:NOFILE HIERBOX pin b_type_instr_o output.right pin i_type_instr_o output.right pin j_type_instr_o output.right pin r_type_instr_o output.right pin s_type_instr_o output.right pin u_type_instr_o output.right pinBus funct3_o output.right [2:0] pinBus funct7_o output.right [6:0] pinBus instr_i input.left [31:0] pinBus instr_imm_o output.right [31:0] pinBus op_o output.right [6:0] pinBus rd_o output.right [4:0] pinBus rs1_o output.right [4:0] pinBus rs2_o output.right [4:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol riscv_execute work:riscv_execute:NOFILE HIERBOX pinBus alu_res_o output.right [31:0] pinBus op_sel_i input.left [3:0] pinBus opr_a_i input.left [31:0] pinBus opr_b_i input.left [31:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol riscv_instr_mem work:riscv_instr_mem:NOFILE HIERBOX pin clk input.left pin instr_mem_req_o output.right pin reset_n input.left pinBus instr_mem_addr_o output.right [31:0] pinBus instr_mem_instr_o output.right [31:0] pinBus instr_mem_pc_i input.left [31:0] pinBus mem_rd_data_i input.left [31:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol riscv_regfile work:riscv_regfile:NOFILE HIERBOX pin clk input.left pin reset_n input.left pin wr_en_i input.left pinBus rd_addr_i input.left [4:0] pinBus rs1_addr_i input.left [4:0] pinBus rs1_data_o output.right [31:0] pinBus rs2_addr_i input.left [4:0] pinBus rs2_data_o output.right [31:0] pinBus wr_data_i input.left [31:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol RTL_MUX122 work MUX pinBus I0 input.left [31:0] pinBus I1 input.left [31:0] pinBus I2 input.left [31:0] pinBus I3 input.left [31:0] pinBus O output.right [31:0] pinBus S input.bot [1:0] fillcolor 1
load symbol RTL_REG_ASYNC__BREG_34 work[31:0]swwww GEN pin C input.clk.left pinBus CLR input.top [31:0] pinBus D input.left [31:0] pinBus PRE input.bot [31:0] pinBus Q output.right [31:0] fillcolor 1 sandwich 3 prop @bundle 32
load port clk input -pg 1 -lvl 0 -x 0 -y 710
load port data_mem_req_o output -pg 1 -lvl 10 -x 3760 -y 830
load port data_mem_wr_o output -pg 1 -lvl 10 -x 3760 -y 890
load port instr_mem_req_o output -pg 1 -lvl 10 -x 3760 -y 1060
load port reset_n input -pg 1 -lvl 0 -x 0 -y 740
load portBus data_mem_addr_o output [31:0] -attr @name data_mem_addr_o[31:0] -pg 1 -lvl 10 -x 3760 -y 770
load portBus data_mem_byte_en_o output [1:0] -attr @name data_mem_byte_en_o[1:0] -pg 1 -lvl 10 -x 3760 -y 800
load portBus data_mem_rd_data_i input [31:0] -attr @name data_mem_rd_data_i[31:0] -pg 1 -lvl 0 -x 0 -y 990
load portBus data_mem_wr_data_o output [31:0] -attr @name data_mem_wr_data_o[31:0] -pg 1 -lvl 10 -x 3760 -y 860
load portBus instr_mem_addr_o output [31:0] -attr @name instr_mem_addr_o[31:0] -pg 1 -lvl 10 -x 3760 -y 1020
load portBus instr_mem_rd_data_i input [31:0] -attr @name instr_mem_rd_data_i[31:0] -pg 1 -lvl 0 -x 0 -y 1060
load inst next_pc_i RTL_ADD0 work -attr @cell(#000000) RTL_ADD -pinBusAttr I0 @name I0[31:0] -pinBusAttr I1 @name I1[2:0] -pinBusAttr I1 @attr V=B\"100\" -pinBusAttr O @name O[31:0] -pg 1 -lvl 6 -x 2020 -y 820
load inst op1_i RTL_MUX5 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[31:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[31:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[31:0] -pg 1 -lvl 1 -x 190 -y 410
load inst op2_i RTL_MUX5 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[31:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[31:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[31:0] -pg 1 -lvl 1 -x 190 -y 530
load inst pc_count1_i RTL_OR0 work -attr @cell(#000000) RTL_OR -pg 1 -lvl 6 -x 2020 -y 920
load inst pc_count_i RTL_MUX5 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[31:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[31:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[31:0] -pg 1 -lvl 7 -x 2350 -y 830
load inst riscv_branch_control_top riscv_branch_control work:riscv_branch_control:NOFILE -autohide -attr @cell(#000000) riscv_branch_control -pinBusAttr instr_func3_ctl_i @name instr_func3_ctl_i[2:0] -pinBusAttr opr_a_i @name opr_a_i[31:0] -pinBusAttr opr_b_i @name opr_b_i[31:0] -pg 1 -lvl 5 -x 1620 -y 540
load inst riscv_control_top riscv_control work:riscv_control:NOFILE -autohide -attr @cell(#000000) riscv_control -pinBusAttr alu_func_o @name alu_func_o[3:0] -pinBusAttr data_byte_o @name data_byte_o[1:0] -pinBusAttr instr_funct3_i @name instr_funct3_i[2:0] -pinBusAttr instr_opcode_i @name instr_opcode_i[6:0] -pinBusAttr rf_wr_data_o @name rf_wr_data_o[1:0] -pg 1 -lvl 8 -x 2960 -y 420
load inst riscv_data_mem_control_top riscv_data_mem_control work:riscv_data_mem_control:NOFILE -autohide -attr @cell(#000000) riscv_data_mem_control -pinBusAttr data_addr_i @name data_addr_i[31:0] -pinBusAttr data_byte_en_i @name data_byte_en_i[1:0] -pinBusAttr data_mem_addr_o @name data_mem_addr_o[31:0] -pinBusAttr data_mem_byte_en_o @name data_mem_byte_en_o[1:0] -pinBusAttr data_mem_rd_data_o @name data_mem_rd_data_o[31:0] -pinBusAttr data_mem_wr_data_o @name data_mem_wr_data_o[31:0] -pinBusAttr data_wr_data_i @name data_wr_data_i[31:0] -pinBusAttr mem_rd_data_i @name mem_rd_data_i[31:0] -pg 1 -lvl 9 -x 3480 -y 750
load inst riscv_decode_top riscv_decode work:riscv_decode:NOFILE -autohide -attr @cell(#000000) riscv_decode -pinBusAttr funct3_o @name funct3_o[2:0] -pinBusAttr funct7_o @name funct7_o[6:0] -pinBusAttr instr_i @name instr_i[31:0] -pinBusAttr instr_imm_o @name instr_imm_o[31:0] -pinBusAttr op_o @name op_o[6:0] -pinBusAttr rd_o @name rd_o[4:0] -pinBusAttr rs1_o @name rs1_o[4:0] -pinBusAttr rs2_o @name rs2_o[4:0] -pg 1 -lvl 7 -x 2350 -y 60
load inst riscv_execute_top riscv_execute work:riscv_execute:NOFILE -autohide -attr @cell(#000000) riscv_execute -pinBusAttr alu_res_o @name alu_res_o[31:0] -pinBusAttr op_sel_i @name op_sel_i[3:0] -pinBusAttr opr_a_i @name opr_a_i[31:0] -pinBusAttr opr_b_i @name opr_b_i[31:0] -pg 1 -lvl 2 -x 490 -y 540
load inst riscv_instr_mem_top riscv_instr_mem work:riscv_instr_mem:NOFILE -autohide -attr @cell(#000000) riscv_instr_mem -pinBusAttr instr_mem_addr_o @name instr_mem_addr_o[31:0] -pinBusAttr instr_mem_instr_o @name instr_mem_instr_o[31:0] -pinBusAttr instr_mem_pc_i @name instr_mem_pc_i[31:0] -pinBusAttr mem_rd_data_i @name mem_rd_data_i[31:0] -pg 1 -lvl 9 -x 3480 -y 1010
load inst riscv_regfile_top riscv_regfile work:riscv_regfile:NOFILE -autohide -attr @cell(#000000) riscv_regfile -pinBusAttr rd_addr_i @name rd_addr_i[4:0] -pinBusAttr rs1_addr_i @name rs1_addr_i[4:0] -pinBusAttr rs1_data_o @name rs1_data_o[31:0] -pinBusAttr rs2_addr_i @name rs2_addr_i[4:0] -pinBusAttr rs2_data_o @name rs2_data_o[31:0] -pinBusAttr wr_data_i @name wr_data_i[31:0] -pg 1 -lvl 4 -x 1200 -y 180
load inst wr_data_i RTL_MUX122 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[31:0] -pinBusAttr I0 @attr S=2'b10 -pinBusAttr I1 @name I1[31:0] -pinBusAttr I1 @attr S=2'b00 -pinBusAttr I2 @name I2[31:0] -pinBusAttr I2 @attr S=2'b11 -pinBusAttr I3 @name I3[31:0] -pinBusAttr I3 @attr S=2'b01 -pinBusAttr O @name O[31:0] -pinBusAttr S @name S[1:0] -pg 1 -lvl 3 -x 860 -y 570
load inst pc_reg_reg[31:0] RTL_REG_ASYNC__BREG_34 work[31:0]swwww -attr @cell(#000000) RTL_REG_ASYNC -pinBusAttr PRE @attr n/c -pg 1 -lvl 8 -x 2960 -y 780
load net <const0> -ground -pin next_pc_i I1[1] -pin next_pc_i I1[0] -pin pc_count_i I0[0]
load net <const1> -power -attr @rip 2 -pin next_pc_i I1[2]
load net alu_func[0] -attr @rip alu_func_o[0] -pin riscv_control_top alu_func_o[0] -pin riscv_execute_top op_sel_i[0]
load net alu_func[1] -attr @rip alu_func_o[1] -pin riscv_control_top alu_func_o[1] -pin riscv_execute_top op_sel_i[1]
load net alu_func[2] -attr @rip alu_func_o[2] -pin riscv_control_top alu_func_o[2] -pin riscv_execute_top op_sel_i[2]
load net alu_func[3] -attr @rip alu_func_o[3] -pin riscv_control_top alu_func_o[3] -pin riscv_execute_top op_sel_i[3]
load net alu_res[0] -attr @rip alu_res_o[0] -pin riscv_data_mem_control_top data_addr_i[0] -pin riscv_data_mem_control_top data_wr_data_i[0] -pin riscv_execute_top alu_res_o[0] -pin wr_data_i I1[0]
load net alu_res[10] -attr @rip alu_res_o[10] -pin pc_count_i I0[10] -pin riscv_data_mem_control_top data_addr_i[10] -pin riscv_data_mem_control_top data_wr_data_i[10] -pin riscv_execute_top alu_res_o[10] -pin wr_data_i I1[10]
load net alu_res[11] -attr @rip alu_res_o[11] -pin pc_count_i I0[11] -pin riscv_data_mem_control_top data_addr_i[11] -pin riscv_data_mem_control_top data_wr_data_i[11] -pin riscv_execute_top alu_res_o[11] -pin wr_data_i I1[11]
load net alu_res[12] -attr @rip alu_res_o[12] -pin pc_count_i I0[12] -pin riscv_data_mem_control_top data_addr_i[12] -pin riscv_data_mem_control_top data_wr_data_i[12] -pin riscv_execute_top alu_res_o[12] -pin wr_data_i I1[12]
load net alu_res[13] -attr @rip alu_res_o[13] -pin pc_count_i I0[13] -pin riscv_data_mem_control_top data_addr_i[13] -pin riscv_data_mem_control_top data_wr_data_i[13] -pin riscv_execute_top alu_res_o[13] -pin wr_data_i I1[13]
load net alu_res[14] -attr @rip alu_res_o[14] -pin pc_count_i I0[14] -pin riscv_data_mem_control_top data_addr_i[14] -pin riscv_data_mem_control_top data_wr_data_i[14] -pin riscv_execute_top alu_res_o[14] -pin wr_data_i I1[14]
load net alu_res[15] -attr @rip alu_res_o[15] -pin pc_count_i I0[15] -pin riscv_data_mem_control_top data_addr_i[15] -pin riscv_data_mem_control_top data_wr_data_i[15] -pin riscv_execute_top alu_res_o[15] -pin wr_data_i I1[15]
load net alu_res[16] -attr @rip alu_res_o[16] -pin pc_count_i I0[16] -pin riscv_data_mem_control_top data_addr_i[16] -pin riscv_data_mem_control_top data_wr_data_i[16] -pin riscv_execute_top alu_res_o[16] -pin wr_data_i I1[16]
load net alu_res[17] -attr @rip alu_res_o[17] -pin pc_count_i I0[17] -pin riscv_data_mem_control_top data_addr_i[17] -pin riscv_data_mem_control_top data_wr_data_i[17] -pin riscv_execute_top alu_res_o[17] -pin wr_data_i I1[17]
load net alu_res[18] -attr @rip alu_res_o[18] -pin pc_count_i I0[18] -pin riscv_data_mem_control_top data_addr_i[18] -pin riscv_data_mem_control_top data_wr_data_i[18] -pin riscv_execute_top alu_res_o[18] -pin wr_data_i I1[18]
load net alu_res[19] -attr @rip alu_res_o[19] -pin pc_count_i I0[19] -pin riscv_data_mem_control_top data_addr_i[19] -pin riscv_data_mem_control_top data_wr_data_i[19] -pin riscv_execute_top alu_res_o[19] -pin wr_data_i I1[19]
load net alu_res[1] -attr @rip alu_res_o[1] -pin pc_count_i I0[1] -pin riscv_data_mem_control_top data_addr_i[1] -pin riscv_data_mem_control_top data_wr_data_i[1] -pin riscv_execute_top alu_res_o[1] -pin wr_data_i I1[1]
load net alu_res[20] -attr @rip alu_res_o[20] -pin pc_count_i I0[20] -pin riscv_data_mem_control_top data_addr_i[20] -pin riscv_data_mem_control_top data_wr_data_i[20] -pin riscv_execute_top alu_res_o[20] -pin wr_data_i I1[20]
load net alu_res[21] -attr @rip alu_res_o[21] -pin pc_count_i I0[21] -pin riscv_data_mem_control_top data_addr_i[21] -pin riscv_data_mem_control_top data_wr_data_i[21] -pin riscv_execute_top alu_res_o[21] -pin wr_data_i I1[21]
load net alu_res[22] -attr @rip alu_res_o[22] -pin pc_count_i I0[22] -pin riscv_data_mem_control_top data_addr_i[22] -pin riscv_data_mem_control_top data_wr_data_i[22] -pin riscv_execute_top alu_res_o[22] -pin wr_data_i I1[22]
load net alu_res[23] -attr @rip alu_res_o[23] -pin pc_count_i I0[23] -pin riscv_data_mem_control_top data_addr_i[23] -pin riscv_data_mem_control_top data_wr_data_i[23] -pin riscv_execute_top alu_res_o[23] -pin wr_data_i I1[23]
load net alu_res[24] -attr @rip alu_res_o[24] -pin pc_count_i I0[24] -pin riscv_data_mem_control_top data_addr_i[24] -pin riscv_data_mem_control_top data_wr_data_i[24] -pin riscv_execute_top alu_res_o[24] -pin wr_data_i I1[24]
load net alu_res[25] -attr @rip alu_res_o[25] -pin pc_count_i I0[25] -pin riscv_data_mem_control_top data_addr_i[25] -pin riscv_data_mem_control_top data_wr_data_i[25] -pin riscv_execute_top alu_res_o[25] -pin wr_data_i I1[25]
load net alu_res[26] -attr @rip alu_res_o[26] -pin pc_count_i I0[26] -pin riscv_data_mem_control_top data_addr_i[26] -pin riscv_data_mem_control_top data_wr_data_i[26] -pin riscv_execute_top alu_res_o[26] -pin wr_data_i I1[26]
load net alu_res[27] -attr @rip alu_res_o[27] -pin pc_count_i I0[27] -pin riscv_data_mem_control_top data_addr_i[27] -pin riscv_data_mem_control_top data_wr_data_i[27] -pin riscv_execute_top alu_res_o[27] -pin wr_data_i I1[27]
load net alu_res[28] -attr @rip alu_res_o[28] -pin pc_count_i I0[28] -pin riscv_data_mem_control_top data_addr_i[28] -pin riscv_data_mem_control_top data_wr_data_i[28] -pin riscv_execute_top alu_res_o[28] -pin wr_data_i I1[28]
load net alu_res[29] -attr @rip alu_res_o[29] -pin pc_count_i I0[29] -pin riscv_data_mem_control_top data_addr_i[29] -pin riscv_data_mem_control_top data_wr_data_i[29] -pin riscv_execute_top alu_res_o[29] -pin wr_data_i I1[29]
load net alu_res[2] -attr @rip alu_res_o[2] -pin pc_count_i I0[2] -pin riscv_data_mem_control_top data_addr_i[2] -pin riscv_data_mem_control_top data_wr_data_i[2] -pin riscv_execute_top alu_res_o[2] -pin wr_data_i I1[2]
load net alu_res[30] -attr @rip alu_res_o[30] -pin pc_count_i I0[30] -pin riscv_data_mem_control_top data_addr_i[30] -pin riscv_data_mem_control_top data_wr_data_i[30] -pin riscv_execute_top alu_res_o[30] -pin wr_data_i I1[30]
load net alu_res[31] -attr @rip alu_res_o[31] -pin pc_count_i I0[31] -pin riscv_data_mem_control_top data_addr_i[31] -pin riscv_data_mem_control_top data_wr_data_i[31] -pin riscv_execute_top alu_res_o[31] -pin wr_data_i I1[31]
load net alu_res[3] -attr @rip alu_res_o[3] -pin pc_count_i I0[3] -pin riscv_data_mem_control_top data_addr_i[3] -pin riscv_data_mem_control_top data_wr_data_i[3] -pin riscv_execute_top alu_res_o[3] -pin wr_data_i I1[3]
load net alu_res[4] -attr @rip alu_res_o[4] -pin pc_count_i I0[4] -pin riscv_data_mem_control_top data_addr_i[4] -pin riscv_data_mem_control_top data_wr_data_i[4] -pin riscv_execute_top alu_res_o[4] -pin wr_data_i I1[4]
load net alu_res[5] -attr @rip alu_res_o[5] -pin pc_count_i I0[5] -pin riscv_data_mem_control_top data_addr_i[5] -pin riscv_data_mem_control_top data_wr_data_i[5] -pin riscv_execute_top alu_res_o[5] -pin wr_data_i I1[5]
load net alu_res[6] -attr @rip alu_res_o[6] -pin pc_count_i I0[6] -pin riscv_data_mem_control_top data_addr_i[6] -pin riscv_data_mem_control_top data_wr_data_i[6] -pin riscv_execute_top alu_res_o[6] -pin wr_data_i I1[6]
load net alu_res[7] -attr @rip alu_res_o[7] -pin pc_count_i I0[7] -pin riscv_data_mem_control_top data_addr_i[7] -pin riscv_data_mem_control_top data_wr_data_i[7] -pin riscv_execute_top alu_res_o[7] -pin wr_data_i I1[7]
load net alu_res[8] -attr @rip alu_res_o[8] -pin pc_count_i I0[8] -pin riscv_data_mem_control_top data_addr_i[8] -pin riscv_data_mem_control_top data_wr_data_i[8] -pin riscv_execute_top alu_res_o[8] -pin wr_data_i I1[8]
load net alu_res[9] -attr @rip alu_res_o[9] -pin pc_count_i I0[9] -pin riscv_data_mem_control_top data_addr_i[9] -pin riscv_data_mem_control_top data_wr_data_i[9] -pin riscv_execute_top alu_res_o[9] -pin wr_data_i I1[9]
load net branch_taken -pin pc_count1_i I0 -pin riscv_branch_control_top branch_taken_o
netloc branch_taken 1 5 1 1860 570n
load net clk -port clk -pin pc_reg_reg[31:0] C -pin riscv_data_mem_control_top clk -pin riscv_instr_mem_top clk -pin riscv_regfile_top clk
netloc clk 1 0 9 NJ 710 NJ 710 NJ 710 1000 750 NJ 750 1840J 730 NJ 730 2660 980 3290
load net data_byte[0] -attr @rip data_byte_o[0] -pin riscv_control_top data_byte_o[0] -pin riscv_data_mem_control_top data_byte_en_i[0]
load net data_byte[1] -attr @rip data_byte_o[1] -pin riscv_control_top data_byte_o[1] -pin riscv_data_mem_control_top data_byte_en_i[1]
load net data_mem_addr_o[0] -attr @rip data_mem_addr_o[0] -port data_mem_addr_o[0] -pin riscv_data_mem_control_top data_mem_addr_o[0]
load net data_mem_addr_o[10] -attr @rip data_mem_addr_o[10] -port data_mem_addr_o[10] -pin riscv_data_mem_control_top data_mem_addr_o[10]
load net data_mem_addr_o[11] -attr @rip data_mem_addr_o[11] -port data_mem_addr_o[11] -pin riscv_data_mem_control_top data_mem_addr_o[11]
load net data_mem_addr_o[12] -attr @rip data_mem_addr_o[12] -port data_mem_addr_o[12] -pin riscv_data_mem_control_top data_mem_addr_o[12]
load net data_mem_addr_o[13] -attr @rip data_mem_addr_o[13] -port data_mem_addr_o[13] -pin riscv_data_mem_control_top data_mem_addr_o[13]
load net data_mem_addr_o[14] -attr @rip data_mem_addr_o[14] -port data_mem_addr_o[14] -pin riscv_data_mem_control_top data_mem_addr_o[14]
load net data_mem_addr_o[15] -attr @rip data_mem_addr_o[15] -port data_mem_addr_o[15] -pin riscv_data_mem_control_top data_mem_addr_o[15]
load net data_mem_addr_o[16] -attr @rip data_mem_addr_o[16] -port data_mem_addr_o[16] -pin riscv_data_mem_control_top data_mem_addr_o[16]
load net data_mem_addr_o[17] -attr @rip data_mem_addr_o[17] -port data_mem_addr_o[17] -pin riscv_data_mem_control_top data_mem_addr_o[17]
load net data_mem_addr_o[18] -attr @rip data_mem_addr_o[18] -port data_mem_addr_o[18] -pin riscv_data_mem_control_top data_mem_addr_o[18]
load net data_mem_addr_o[19] -attr @rip data_mem_addr_o[19] -port data_mem_addr_o[19] -pin riscv_data_mem_control_top data_mem_addr_o[19]
load net data_mem_addr_o[1] -attr @rip data_mem_addr_o[1] -port data_mem_addr_o[1] -pin riscv_data_mem_control_top data_mem_addr_o[1]
load net data_mem_addr_o[20] -attr @rip data_mem_addr_o[20] -port data_mem_addr_o[20] -pin riscv_data_mem_control_top data_mem_addr_o[20]
load net data_mem_addr_o[21] -attr @rip data_mem_addr_o[21] -port data_mem_addr_o[21] -pin riscv_data_mem_control_top data_mem_addr_o[21]
load net data_mem_addr_o[22] -attr @rip data_mem_addr_o[22] -port data_mem_addr_o[22] -pin riscv_data_mem_control_top data_mem_addr_o[22]
load net data_mem_addr_o[23] -attr @rip data_mem_addr_o[23] -port data_mem_addr_o[23] -pin riscv_data_mem_control_top data_mem_addr_o[23]
load net data_mem_addr_o[24] -attr @rip data_mem_addr_o[24] -port data_mem_addr_o[24] -pin riscv_data_mem_control_top data_mem_addr_o[24]
load net data_mem_addr_o[25] -attr @rip data_mem_addr_o[25] -port data_mem_addr_o[25] -pin riscv_data_mem_control_top data_mem_addr_o[25]
load net data_mem_addr_o[26] -attr @rip data_mem_addr_o[26] -port data_mem_addr_o[26] -pin riscv_data_mem_control_top data_mem_addr_o[26]
load net data_mem_addr_o[27] -attr @rip data_mem_addr_o[27] -port data_mem_addr_o[27] -pin riscv_data_mem_control_top data_mem_addr_o[27]
load net data_mem_addr_o[28] -attr @rip data_mem_addr_o[28] -port data_mem_addr_o[28] -pin riscv_data_mem_control_top data_mem_addr_o[28]
load net data_mem_addr_o[29] -attr @rip data_mem_addr_o[29] -port data_mem_addr_o[29] -pin riscv_data_mem_control_top data_mem_addr_o[29]
load net data_mem_addr_o[2] -attr @rip data_mem_addr_o[2] -port data_mem_addr_o[2] -pin riscv_data_mem_control_top data_mem_addr_o[2]
load net data_mem_addr_o[30] -attr @rip data_mem_addr_o[30] -port data_mem_addr_o[30] -pin riscv_data_mem_control_top data_mem_addr_o[30]
load net data_mem_addr_o[31] -attr @rip data_mem_addr_o[31] -port data_mem_addr_o[31] -pin riscv_data_mem_control_top data_mem_addr_o[31]
load net data_mem_addr_o[3] -attr @rip data_mem_addr_o[3] -port data_mem_addr_o[3] -pin riscv_data_mem_control_top data_mem_addr_o[3]
load net data_mem_addr_o[4] -attr @rip data_mem_addr_o[4] -port data_mem_addr_o[4] -pin riscv_data_mem_control_top data_mem_addr_o[4]
load net data_mem_addr_o[5] -attr @rip data_mem_addr_o[5] -port data_mem_addr_o[5] -pin riscv_data_mem_control_top data_mem_addr_o[5]
load net data_mem_addr_o[6] -attr @rip data_mem_addr_o[6] -port data_mem_addr_o[6] -pin riscv_data_mem_control_top data_mem_addr_o[6]
load net data_mem_addr_o[7] -attr @rip data_mem_addr_o[7] -port data_mem_addr_o[7] -pin riscv_data_mem_control_top data_mem_addr_o[7]
load net data_mem_addr_o[8] -attr @rip data_mem_addr_o[8] -port data_mem_addr_o[8] -pin riscv_data_mem_control_top data_mem_addr_o[8]
load net data_mem_addr_o[9] -attr @rip data_mem_addr_o[9] -port data_mem_addr_o[9] -pin riscv_data_mem_control_top data_mem_addr_o[9]
load net data_mem_byte_en_o[0] -attr @rip data_mem_byte_en_o[0] -port data_mem_byte_en_o[0] -pin riscv_data_mem_control_top data_mem_byte_en_o[0]
load net data_mem_byte_en_o[1] -attr @rip data_mem_byte_en_o[1] -port data_mem_byte_en_o[1] -pin riscv_data_mem_control_top data_mem_byte_en_o[1]
load net data_mem_rd_data[0] -attr @rip data_mem_rd_data_o[0] -pin riscv_data_mem_control_top data_mem_rd_data_o[0] -pin wr_data_i I3[0]
load net data_mem_rd_data[10] -attr @rip data_mem_rd_data_o[10] -pin riscv_data_mem_control_top data_mem_rd_data_o[10] -pin wr_data_i I3[10]
load net data_mem_rd_data[11] -attr @rip data_mem_rd_data_o[11] -pin riscv_data_mem_control_top data_mem_rd_data_o[11] -pin wr_data_i I3[11]
load net data_mem_rd_data[12] -attr @rip data_mem_rd_data_o[12] -pin riscv_data_mem_control_top data_mem_rd_data_o[12] -pin wr_data_i I3[12]
load net data_mem_rd_data[13] -attr @rip data_mem_rd_data_o[13] -pin riscv_data_mem_control_top data_mem_rd_data_o[13] -pin wr_data_i I3[13]
load net data_mem_rd_data[14] -attr @rip data_mem_rd_data_o[14] -pin riscv_data_mem_control_top data_mem_rd_data_o[14] -pin wr_data_i I3[14]
load net data_mem_rd_data[15] -attr @rip data_mem_rd_data_o[15] -pin riscv_data_mem_control_top data_mem_rd_data_o[15] -pin wr_data_i I3[15]
load net data_mem_rd_data[16] -attr @rip data_mem_rd_data_o[16] -pin riscv_data_mem_control_top data_mem_rd_data_o[16] -pin wr_data_i I3[16]
load net data_mem_rd_data[17] -attr @rip data_mem_rd_data_o[17] -pin riscv_data_mem_control_top data_mem_rd_data_o[17] -pin wr_data_i I3[17]
load net data_mem_rd_data[18] -attr @rip data_mem_rd_data_o[18] -pin riscv_data_mem_control_top data_mem_rd_data_o[18] -pin wr_data_i I3[18]
load net data_mem_rd_data[19] -attr @rip data_mem_rd_data_o[19] -pin riscv_data_mem_control_top data_mem_rd_data_o[19] -pin wr_data_i I3[19]
load net data_mem_rd_data[1] -attr @rip data_mem_rd_data_o[1] -pin riscv_data_mem_control_top data_mem_rd_data_o[1] -pin wr_data_i I3[1]
load net data_mem_rd_data[20] -attr @rip data_mem_rd_data_o[20] -pin riscv_data_mem_control_top data_mem_rd_data_o[20] -pin wr_data_i I3[20]
load net data_mem_rd_data[21] -attr @rip data_mem_rd_data_o[21] -pin riscv_data_mem_control_top data_mem_rd_data_o[21] -pin wr_data_i I3[21]
load net data_mem_rd_data[22] -attr @rip data_mem_rd_data_o[22] -pin riscv_data_mem_control_top data_mem_rd_data_o[22] -pin wr_data_i I3[22]
load net data_mem_rd_data[23] -attr @rip data_mem_rd_data_o[23] -pin riscv_data_mem_control_top data_mem_rd_data_o[23] -pin wr_data_i I3[23]
load net data_mem_rd_data[24] -attr @rip data_mem_rd_data_o[24] -pin riscv_data_mem_control_top data_mem_rd_data_o[24] -pin wr_data_i I3[24]
load net data_mem_rd_data[25] -attr @rip data_mem_rd_data_o[25] -pin riscv_data_mem_control_top data_mem_rd_data_o[25] -pin wr_data_i I3[25]
load net data_mem_rd_data[26] -attr @rip data_mem_rd_data_o[26] -pin riscv_data_mem_control_top data_mem_rd_data_o[26] -pin wr_data_i I3[26]
load net data_mem_rd_data[27] -attr @rip data_mem_rd_data_o[27] -pin riscv_data_mem_control_top data_mem_rd_data_o[27] -pin wr_data_i I3[27]
load net data_mem_rd_data[28] -attr @rip data_mem_rd_data_o[28] -pin riscv_data_mem_control_top data_mem_rd_data_o[28] -pin wr_data_i I3[28]
load net data_mem_rd_data[29] -attr @rip data_mem_rd_data_o[29] -pin riscv_data_mem_control_top data_mem_rd_data_o[29] -pin wr_data_i I3[29]
load net data_mem_rd_data[2] -attr @rip data_mem_rd_data_o[2] -pin riscv_data_mem_control_top data_mem_rd_data_o[2] -pin wr_data_i I3[2]
load net data_mem_rd_data[30] -attr @rip data_mem_rd_data_o[30] -pin riscv_data_mem_control_top data_mem_rd_data_o[30] -pin wr_data_i I3[30]
load net data_mem_rd_data[31] -attr @rip data_mem_rd_data_o[31] -pin riscv_data_mem_control_top data_mem_rd_data_o[31] -pin wr_data_i I3[31]
load net data_mem_rd_data[3] -attr @rip data_mem_rd_data_o[3] -pin riscv_data_mem_control_top data_mem_rd_data_o[3] -pin wr_data_i I3[3]
load net data_mem_rd_data[4] -attr @rip data_mem_rd_data_o[4] -pin riscv_data_mem_control_top data_mem_rd_data_o[4] -pin wr_data_i I3[4]
load net data_mem_rd_data[5] -attr @rip data_mem_rd_data_o[5] -pin riscv_data_mem_control_top data_mem_rd_data_o[5] -pin wr_data_i I3[5]
load net data_mem_rd_data[6] -attr @rip data_mem_rd_data_o[6] -pin riscv_data_mem_control_top data_mem_rd_data_o[6] -pin wr_data_i I3[6]
load net data_mem_rd_data[7] -attr @rip data_mem_rd_data_o[7] -pin riscv_data_mem_control_top data_mem_rd_data_o[7] -pin wr_data_i I3[7]
load net data_mem_rd_data[8] -attr @rip data_mem_rd_data_o[8] -pin riscv_data_mem_control_top data_mem_rd_data_o[8] -pin wr_data_i I3[8]
load net data_mem_rd_data[9] -attr @rip data_mem_rd_data_o[9] -pin riscv_data_mem_control_top data_mem_rd_data_o[9] -pin wr_data_i I3[9]
load net data_mem_rd_data_i[0] -attr @rip data_mem_rd_data_i[0] -port data_mem_rd_data_i[0] -pin riscv_data_mem_control_top mem_rd_data_i[0]
load net data_mem_rd_data_i[10] -attr @rip data_mem_rd_data_i[10] -port data_mem_rd_data_i[10] -pin riscv_data_mem_control_top mem_rd_data_i[10]
load net data_mem_rd_data_i[11] -attr @rip data_mem_rd_data_i[11] -port data_mem_rd_data_i[11] -pin riscv_data_mem_control_top mem_rd_data_i[11]
load net data_mem_rd_data_i[12] -attr @rip data_mem_rd_data_i[12] -port data_mem_rd_data_i[12] -pin riscv_data_mem_control_top mem_rd_data_i[12]
load net data_mem_rd_data_i[13] -attr @rip data_mem_rd_data_i[13] -port data_mem_rd_data_i[13] -pin riscv_data_mem_control_top mem_rd_data_i[13]
load net data_mem_rd_data_i[14] -attr @rip data_mem_rd_data_i[14] -port data_mem_rd_data_i[14] -pin riscv_data_mem_control_top mem_rd_data_i[14]
load net data_mem_rd_data_i[15] -attr @rip data_mem_rd_data_i[15] -port data_mem_rd_data_i[15] -pin riscv_data_mem_control_top mem_rd_data_i[15]
load net data_mem_rd_data_i[16] -attr @rip data_mem_rd_data_i[16] -port data_mem_rd_data_i[16] -pin riscv_data_mem_control_top mem_rd_data_i[16]
load net data_mem_rd_data_i[17] -attr @rip data_mem_rd_data_i[17] -port data_mem_rd_data_i[17] -pin riscv_data_mem_control_top mem_rd_data_i[17]
load net data_mem_rd_data_i[18] -attr @rip data_mem_rd_data_i[18] -port data_mem_rd_data_i[18] -pin riscv_data_mem_control_top mem_rd_data_i[18]
load net data_mem_rd_data_i[19] -attr @rip data_mem_rd_data_i[19] -port data_mem_rd_data_i[19] -pin riscv_data_mem_control_top mem_rd_data_i[19]
load net data_mem_rd_data_i[1] -attr @rip data_mem_rd_data_i[1] -port data_mem_rd_data_i[1] -pin riscv_data_mem_control_top mem_rd_data_i[1]
load net data_mem_rd_data_i[20] -attr @rip data_mem_rd_data_i[20] -port data_mem_rd_data_i[20] -pin riscv_data_mem_control_top mem_rd_data_i[20]
load net data_mem_rd_data_i[21] -attr @rip data_mem_rd_data_i[21] -port data_mem_rd_data_i[21] -pin riscv_data_mem_control_top mem_rd_data_i[21]
load net data_mem_rd_data_i[22] -attr @rip data_mem_rd_data_i[22] -port data_mem_rd_data_i[22] -pin riscv_data_mem_control_top mem_rd_data_i[22]
load net data_mem_rd_data_i[23] -attr @rip data_mem_rd_data_i[23] -port data_mem_rd_data_i[23] -pin riscv_data_mem_control_top mem_rd_data_i[23]
load net data_mem_rd_data_i[24] -attr @rip data_mem_rd_data_i[24] -port data_mem_rd_data_i[24] -pin riscv_data_mem_control_top mem_rd_data_i[24]
load net data_mem_rd_data_i[25] -attr @rip data_mem_rd_data_i[25] -port data_mem_rd_data_i[25] -pin riscv_data_mem_control_top mem_rd_data_i[25]
load net data_mem_rd_data_i[26] -attr @rip data_mem_rd_data_i[26] -port data_mem_rd_data_i[26] -pin riscv_data_mem_control_top mem_rd_data_i[26]
load net data_mem_rd_data_i[27] -attr @rip data_mem_rd_data_i[27] -port data_mem_rd_data_i[27] -pin riscv_data_mem_control_top mem_rd_data_i[27]
load net data_mem_rd_data_i[28] -attr @rip data_mem_rd_data_i[28] -port data_mem_rd_data_i[28] -pin riscv_data_mem_control_top mem_rd_data_i[28]
load net data_mem_rd_data_i[29] -attr @rip data_mem_rd_data_i[29] -port data_mem_rd_data_i[29] -pin riscv_data_mem_control_top mem_rd_data_i[29]
load net data_mem_rd_data_i[2] -attr @rip data_mem_rd_data_i[2] -port data_mem_rd_data_i[2] -pin riscv_data_mem_control_top mem_rd_data_i[2]
load net data_mem_rd_data_i[30] -attr @rip data_mem_rd_data_i[30] -port data_mem_rd_data_i[30] -pin riscv_data_mem_control_top mem_rd_data_i[30]
load net data_mem_rd_data_i[31] -attr @rip data_mem_rd_data_i[31] -port data_mem_rd_data_i[31] -pin riscv_data_mem_control_top mem_rd_data_i[31]
load net data_mem_rd_data_i[3] -attr @rip data_mem_rd_data_i[3] -port data_mem_rd_data_i[3] -pin riscv_data_mem_control_top mem_rd_data_i[3]
load net data_mem_rd_data_i[4] -attr @rip data_mem_rd_data_i[4] -port data_mem_rd_data_i[4] -pin riscv_data_mem_control_top mem_rd_data_i[4]
load net data_mem_rd_data_i[5] -attr @rip data_mem_rd_data_i[5] -port data_mem_rd_data_i[5] -pin riscv_data_mem_control_top mem_rd_data_i[5]
load net data_mem_rd_data_i[6] -attr @rip data_mem_rd_data_i[6] -port data_mem_rd_data_i[6] -pin riscv_data_mem_control_top mem_rd_data_i[6]
load net data_mem_rd_data_i[7] -attr @rip data_mem_rd_data_i[7] -port data_mem_rd_data_i[7] -pin riscv_data_mem_control_top mem_rd_data_i[7]
load net data_mem_rd_data_i[8] -attr @rip data_mem_rd_data_i[8] -port data_mem_rd_data_i[8] -pin riscv_data_mem_control_top mem_rd_data_i[8]
load net data_mem_rd_data_i[9] -attr @rip data_mem_rd_data_i[9] -port data_mem_rd_data_i[9] -pin riscv_data_mem_control_top mem_rd_data_i[9]
load net data_mem_req_o -port data_mem_req_o -pin riscv_data_mem_control_top data_mem_req_o
netloc data_mem_req_o 1 9 1 3740J 830n
load net data_mem_wr_data_o[0] -attr @rip data_mem_wr_data_o[0] -port data_mem_wr_data_o[0] -pin riscv_data_mem_control_top data_mem_wr_data_o[0]
load net data_mem_wr_data_o[10] -attr @rip data_mem_wr_data_o[10] -port data_mem_wr_data_o[10] -pin riscv_data_mem_control_top data_mem_wr_data_o[10]
load net data_mem_wr_data_o[11] -attr @rip data_mem_wr_data_o[11] -port data_mem_wr_data_o[11] -pin riscv_data_mem_control_top data_mem_wr_data_o[11]
load net data_mem_wr_data_o[12] -attr @rip data_mem_wr_data_o[12] -port data_mem_wr_data_o[12] -pin riscv_data_mem_control_top data_mem_wr_data_o[12]
load net data_mem_wr_data_o[13] -attr @rip data_mem_wr_data_o[13] -port data_mem_wr_data_o[13] -pin riscv_data_mem_control_top data_mem_wr_data_o[13]
load net data_mem_wr_data_o[14] -attr @rip data_mem_wr_data_o[14] -port data_mem_wr_data_o[14] -pin riscv_data_mem_control_top data_mem_wr_data_o[14]
load net data_mem_wr_data_o[15] -attr @rip data_mem_wr_data_o[15] -port data_mem_wr_data_o[15] -pin riscv_data_mem_control_top data_mem_wr_data_o[15]
load net data_mem_wr_data_o[16] -attr @rip data_mem_wr_data_o[16] -port data_mem_wr_data_o[16] -pin riscv_data_mem_control_top data_mem_wr_data_o[16]
load net data_mem_wr_data_o[17] -attr @rip data_mem_wr_data_o[17] -port data_mem_wr_data_o[17] -pin riscv_data_mem_control_top data_mem_wr_data_o[17]
load net data_mem_wr_data_o[18] -attr @rip data_mem_wr_data_o[18] -port data_mem_wr_data_o[18] -pin riscv_data_mem_control_top data_mem_wr_data_o[18]
load net data_mem_wr_data_o[19] -attr @rip data_mem_wr_data_o[19] -port data_mem_wr_data_o[19] -pin riscv_data_mem_control_top data_mem_wr_data_o[19]
load net data_mem_wr_data_o[1] -attr @rip data_mem_wr_data_o[1] -port data_mem_wr_data_o[1] -pin riscv_data_mem_control_top data_mem_wr_data_o[1]
load net data_mem_wr_data_o[20] -attr @rip data_mem_wr_data_o[20] -port data_mem_wr_data_o[20] -pin riscv_data_mem_control_top data_mem_wr_data_o[20]
load net data_mem_wr_data_o[21] -attr @rip data_mem_wr_data_o[21] -port data_mem_wr_data_o[21] -pin riscv_data_mem_control_top data_mem_wr_data_o[21]
load net data_mem_wr_data_o[22] -attr @rip data_mem_wr_data_o[22] -port data_mem_wr_data_o[22] -pin riscv_data_mem_control_top data_mem_wr_data_o[22]
load net data_mem_wr_data_o[23] -attr @rip data_mem_wr_data_o[23] -port data_mem_wr_data_o[23] -pin riscv_data_mem_control_top data_mem_wr_data_o[23]
load net data_mem_wr_data_o[24] -attr @rip data_mem_wr_data_o[24] -port data_mem_wr_data_o[24] -pin riscv_data_mem_control_top data_mem_wr_data_o[24]
load net data_mem_wr_data_o[25] -attr @rip data_mem_wr_data_o[25] -port data_mem_wr_data_o[25] -pin riscv_data_mem_control_top data_mem_wr_data_o[25]
load net data_mem_wr_data_o[26] -attr @rip data_mem_wr_data_o[26] -port data_mem_wr_data_o[26] -pin riscv_data_mem_control_top data_mem_wr_data_o[26]
load net data_mem_wr_data_o[27] -attr @rip data_mem_wr_data_o[27] -port data_mem_wr_data_o[27] -pin riscv_data_mem_control_top data_mem_wr_data_o[27]
load net data_mem_wr_data_o[28] -attr @rip data_mem_wr_data_o[28] -port data_mem_wr_data_o[28] -pin riscv_data_mem_control_top data_mem_wr_data_o[28]
load net data_mem_wr_data_o[29] -attr @rip data_mem_wr_data_o[29] -port data_mem_wr_data_o[29] -pin riscv_data_mem_control_top data_mem_wr_data_o[29]
load net data_mem_wr_data_o[2] -attr @rip data_mem_wr_data_o[2] -port data_mem_wr_data_o[2] -pin riscv_data_mem_control_top data_mem_wr_data_o[2]
load net data_mem_wr_data_o[30] -attr @rip data_mem_wr_data_o[30] -port data_mem_wr_data_o[30] -pin riscv_data_mem_control_top data_mem_wr_data_o[30]
load net data_mem_wr_data_o[31] -attr @rip data_mem_wr_data_o[31] -port data_mem_wr_data_o[31] -pin riscv_data_mem_control_top data_mem_wr_data_o[31]
load net data_mem_wr_data_o[3] -attr @rip data_mem_wr_data_o[3] -port data_mem_wr_data_o[3] -pin riscv_data_mem_control_top data_mem_wr_data_o[3]
load net data_mem_wr_data_o[4] -attr @rip data_mem_wr_data_o[4] -port data_mem_wr_data_o[4] -pin riscv_data_mem_control_top data_mem_wr_data_o[4]
load net data_mem_wr_data_o[5] -attr @rip data_mem_wr_data_o[5] -port data_mem_wr_data_o[5] -pin riscv_data_mem_control_top data_mem_wr_data_o[5]
load net data_mem_wr_data_o[6] -attr @rip data_mem_wr_data_o[6] -port data_mem_wr_data_o[6] -pin riscv_data_mem_control_top data_mem_wr_data_o[6]
load net data_mem_wr_data_o[7] -attr @rip data_mem_wr_data_o[7] -port data_mem_wr_data_o[7] -pin riscv_data_mem_control_top data_mem_wr_data_o[7]
load net data_mem_wr_data_o[8] -attr @rip data_mem_wr_data_o[8] -port data_mem_wr_data_o[8] -pin riscv_data_mem_control_top data_mem_wr_data_o[8]
load net data_mem_wr_data_o[9] -attr @rip data_mem_wr_data_o[9] -port data_mem_wr_data_o[9] -pin riscv_data_mem_control_top data_mem_wr_data_o[9]
load net data_mem_wr_o -port data_mem_wr_o -pin riscv_data_mem_control_top data_mem_wr_o
netloc data_mem_wr_o 1 9 1 3720J 880n
load net data_req -pin riscv_control_top data_req_o -pin riscv_data_mem_control_top data_req_i
netloc data_req 1 8 1 3310 470n
load net data_wr -pin riscv_control_top data_wr_o -pin riscv_data_mem_control_top data_wr_i
netloc data_wr 1 8 1 3270 490n
load net funct3[0] -attr @rip funct3_o[0] -pin riscv_branch_control_top instr_func3_ctl_i[0] -pin riscv_control_top instr_funct3_i[0] -pin riscv_decode_top funct3_o[0]
load net funct3[1] -attr @rip funct3_o[1] -pin riscv_branch_control_top instr_func3_ctl_i[1] -pin riscv_control_top instr_funct3_i[1] -pin riscv_decode_top funct3_o[1]
load net funct3[2] -attr @rip funct3_o[2] -pin riscv_branch_control_top instr_func3_ctl_i[2] -pin riscv_control_top instr_funct3_i[2] -pin riscv_decode_top funct3_o[2]
load net funct7[5] -attr @rip funct7_o[5] -pin riscv_control_top instr_funct7_bit5_i -pin riscv_decode_top funct7_o[5]
netloc funct7[5] 1 7 1 2820 110n
load net instr_imm[0] -attr @rip instr_imm_o[0] -pin op2_i I0[0] -pin riscv_decode_top instr_imm_o[0] -pin wr_data_i I0[0]
load net instr_imm[10] -attr @rip instr_imm_o[10] -pin op2_i I0[10] -pin riscv_decode_top instr_imm_o[10] -pin wr_data_i I0[10]
load net instr_imm[11] -attr @rip instr_imm_o[11] -pin op2_i I0[11] -pin riscv_decode_top instr_imm_o[11] -pin wr_data_i I0[11]
load net instr_imm[12] -attr @rip instr_imm_o[12] -pin op2_i I0[12] -pin riscv_decode_top instr_imm_o[12] -pin wr_data_i I0[12]
load net instr_imm[13] -attr @rip instr_imm_o[13] -pin op2_i I0[13] -pin riscv_decode_top instr_imm_o[13] -pin wr_data_i I0[13]
load net instr_imm[14] -attr @rip instr_imm_o[14] -pin op2_i I0[14] -pin riscv_decode_top instr_imm_o[14] -pin wr_data_i I0[14]
load net instr_imm[15] -attr @rip instr_imm_o[15] -pin op2_i I0[15] -pin riscv_decode_top instr_imm_o[15] -pin wr_data_i I0[15]
load net instr_imm[16] -attr @rip instr_imm_o[16] -pin op2_i I0[16] -pin riscv_decode_top instr_imm_o[16] -pin wr_data_i I0[16]
load net instr_imm[17] -attr @rip instr_imm_o[17] -pin op2_i I0[17] -pin riscv_decode_top instr_imm_o[17] -pin wr_data_i I0[17]
load net instr_imm[18] -attr @rip instr_imm_o[18] -pin op2_i I0[18] -pin riscv_decode_top instr_imm_o[18] -pin wr_data_i I0[18]
load net instr_imm[19] -attr @rip instr_imm_o[19] -pin op2_i I0[19] -pin riscv_decode_top instr_imm_o[19] -pin wr_data_i I0[19]
load net instr_imm[1] -attr @rip instr_imm_o[1] -pin op2_i I0[1] -pin riscv_decode_top instr_imm_o[1] -pin wr_data_i I0[1]
load net instr_imm[20] -attr @rip instr_imm_o[20] -pin op2_i I0[20] -pin riscv_decode_top instr_imm_o[20] -pin wr_data_i I0[20]
load net instr_imm[21] -attr @rip instr_imm_o[21] -pin op2_i I0[21] -pin riscv_decode_top instr_imm_o[21] -pin wr_data_i I0[21]
load net instr_imm[22] -attr @rip instr_imm_o[22] -pin op2_i I0[22] -pin riscv_decode_top instr_imm_o[22] -pin wr_data_i I0[22]
load net instr_imm[23] -attr @rip instr_imm_o[23] -pin op2_i I0[23] -pin riscv_decode_top instr_imm_o[23] -pin wr_data_i I0[23]
load net instr_imm[24] -attr @rip instr_imm_o[24] -pin op2_i I0[24] -pin riscv_decode_top instr_imm_o[24] -pin wr_data_i I0[24]
load net instr_imm[25] -attr @rip instr_imm_o[25] -pin op2_i I0[25] -pin riscv_decode_top instr_imm_o[25] -pin wr_data_i I0[25]
load net instr_imm[26] -attr @rip instr_imm_o[26] -pin op2_i I0[26] -pin riscv_decode_top instr_imm_o[26] -pin wr_data_i I0[26]
load net instr_imm[27] -attr @rip instr_imm_o[27] -pin op2_i I0[27] -pin riscv_decode_top instr_imm_o[27] -pin wr_data_i I0[27]
load net instr_imm[28] -attr @rip instr_imm_o[28] -pin op2_i I0[28] -pin riscv_decode_top instr_imm_o[28] -pin wr_data_i I0[28]
load net instr_imm[29] -attr @rip instr_imm_o[29] -pin op2_i I0[29] -pin riscv_decode_top instr_imm_o[29] -pin wr_data_i I0[29]
load net instr_imm[2] -attr @rip instr_imm_o[2] -pin op2_i I0[2] -pin riscv_decode_top instr_imm_o[2] -pin wr_data_i I0[2]
load net instr_imm[30] -attr @rip instr_imm_o[30] -pin op2_i I0[30] -pin riscv_decode_top instr_imm_o[30] -pin wr_data_i I0[30]
load net instr_imm[31] -attr @rip instr_imm_o[31] -pin op2_i I0[31] -pin riscv_decode_top instr_imm_o[31] -pin wr_data_i I0[31]
load net instr_imm[3] -attr @rip instr_imm_o[3] -pin op2_i I0[3] -pin riscv_decode_top instr_imm_o[3] -pin wr_data_i I0[3]
load net instr_imm[4] -attr @rip instr_imm_o[4] -pin op2_i I0[4] -pin riscv_decode_top instr_imm_o[4] -pin wr_data_i I0[4]
load net instr_imm[5] -attr @rip instr_imm_o[5] -pin op2_i I0[5] -pin riscv_decode_top instr_imm_o[5] -pin wr_data_i I0[5]
load net instr_imm[6] -attr @rip instr_imm_o[6] -pin op2_i I0[6] -pin riscv_decode_top instr_imm_o[6] -pin wr_data_i I0[6]
load net instr_imm[7] -attr @rip instr_imm_o[7] -pin op2_i I0[7] -pin riscv_decode_top instr_imm_o[7] -pin wr_data_i I0[7]
load net instr_imm[8] -attr @rip instr_imm_o[8] -pin op2_i I0[8] -pin riscv_decode_top instr_imm_o[8] -pin wr_data_i I0[8]
load net instr_imm[9] -attr @rip instr_imm_o[9] -pin op2_i I0[9] -pin riscv_decode_top instr_imm_o[9] -pin wr_data_i I0[9]
load net instr_mem_addr_o[0] -attr @rip instr_mem_addr_o[0] -port instr_mem_addr_o[0] -pin riscv_instr_mem_top instr_mem_addr_o[0]
load net instr_mem_addr_o[10] -attr @rip instr_mem_addr_o[10] -port instr_mem_addr_o[10] -pin riscv_instr_mem_top instr_mem_addr_o[10]
load net instr_mem_addr_o[11] -attr @rip instr_mem_addr_o[11] -port instr_mem_addr_o[11] -pin riscv_instr_mem_top instr_mem_addr_o[11]
load net instr_mem_addr_o[12] -attr @rip instr_mem_addr_o[12] -port instr_mem_addr_o[12] -pin riscv_instr_mem_top instr_mem_addr_o[12]
load net instr_mem_addr_o[13] -attr @rip instr_mem_addr_o[13] -port instr_mem_addr_o[13] -pin riscv_instr_mem_top instr_mem_addr_o[13]
load net instr_mem_addr_o[14] -attr @rip instr_mem_addr_o[14] -port instr_mem_addr_o[14] -pin riscv_instr_mem_top instr_mem_addr_o[14]
load net instr_mem_addr_o[15] -attr @rip instr_mem_addr_o[15] -port instr_mem_addr_o[15] -pin riscv_instr_mem_top instr_mem_addr_o[15]
load net instr_mem_addr_o[16] -attr @rip instr_mem_addr_o[16] -port instr_mem_addr_o[16] -pin riscv_instr_mem_top instr_mem_addr_o[16]
load net instr_mem_addr_o[17] -attr @rip instr_mem_addr_o[17] -port instr_mem_addr_o[17] -pin riscv_instr_mem_top instr_mem_addr_o[17]
load net instr_mem_addr_o[18] -attr @rip instr_mem_addr_o[18] -port instr_mem_addr_o[18] -pin riscv_instr_mem_top instr_mem_addr_o[18]
load net instr_mem_addr_o[19] -attr @rip instr_mem_addr_o[19] -port instr_mem_addr_o[19] -pin riscv_instr_mem_top instr_mem_addr_o[19]
load net instr_mem_addr_o[1] -attr @rip instr_mem_addr_o[1] -port instr_mem_addr_o[1] -pin riscv_instr_mem_top instr_mem_addr_o[1]
load net instr_mem_addr_o[20] -attr @rip instr_mem_addr_o[20] -port instr_mem_addr_o[20] -pin riscv_instr_mem_top instr_mem_addr_o[20]
load net instr_mem_addr_o[21] -attr @rip instr_mem_addr_o[21] -port instr_mem_addr_o[21] -pin riscv_instr_mem_top instr_mem_addr_o[21]
load net instr_mem_addr_o[22] -attr @rip instr_mem_addr_o[22] -port instr_mem_addr_o[22] -pin riscv_instr_mem_top instr_mem_addr_o[22]
load net instr_mem_addr_o[23] -attr @rip instr_mem_addr_o[23] -port instr_mem_addr_o[23] -pin riscv_instr_mem_top instr_mem_addr_o[23]
load net instr_mem_addr_o[24] -attr @rip instr_mem_addr_o[24] -port instr_mem_addr_o[24] -pin riscv_instr_mem_top instr_mem_addr_o[24]
load net instr_mem_addr_o[25] -attr @rip instr_mem_addr_o[25] -port instr_mem_addr_o[25] -pin riscv_instr_mem_top instr_mem_addr_o[25]
load net instr_mem_addr_o[26] -attr @rip instr_mem_addr_o[26] -port instr_mem_addr_o[26] -pin riscv_instr_mem_top instr_mem_addr_o[26]
load net instr_mem_addr_o[27] -attr @rip instr_mem_addr_o[27] -port instr_mem_addr_o[27] -pin riscv_instr_mem_top instr_mem_addr_o[27]
load net instr_mem_addr_o[28] -attr @rip instr_mem_addr_o[28] -port instr_mem_addr_o[28] -pin riscv_instr_mem_top instr_mem_addr_o[28]
load net instr_mem_addr_o[29] -attr @rip instr_mem_addr_o[29] -port instr_mem_addr_o[29] -pin riscv_instr_mem_top instr_mem_addr_o[29]
load net instr_mem_addr_o[2] -attr @rip instr_mem_addr_o[2] -port instr_mem_addr_o[2] -pin riscv_instr_mem_top instr_mem_addr_o[2]
load net instr_mem_addr_o[30] -attr @rip instr_mem_addr_o[30] -port instr_mem_addr_o[30] -pin riscv_instr_mem_top instr_mem_addr_o[30]
load net instr_mem_addr_o[31] -attr @rip instr_mem_addr_o[31] -port instr_mem_addr_o[31] -pin riscv_instr_mem_top instr_mem_addr_o[31]
load net instr_mem_addr_o[3] -attr @rip instr_mem_addr_o[3] -port instr_mem_addr_o[3] -pin riscv_instr_mem_top instr_mem_addr_o[3]
load net instr_mem_addr_o[4] -attr @rip instr_mem_addr_o[4] -port instr_mem_addr_o[4] -pin riscv_instr_mem_top instr_mem_addr_o[4]
load net instr_mem_addr_o[5] -attr @rip instr_mem_addr_o[5] -port instr_mem_addr_o[5] -pin riscv_instr_mem_top instr_mem_addr_o[5]
load net instr_mem_addr_o[6] -attr @rip instr_mem_addr_o[6] -port instr_mem_addr_o[6] -pin riscv_instr_mem_top instr_mem_addr_o[6]
load net instr_mem_addr_o[7] -attr @rip instr_mem_addr_o[7] -port instr_mem_addr_o[7] -pin riscv_instr_mem_top instr_mem_addr_o[7]
load net instr_mem_addr_o[8] -attr @rip instr_mem_addr_o[8] -port instr_mem_addr_o[8] -pin riscv_instr_mem_top instr_mem_addr_o[8]
load net instr_mem_addr_o[9] -attr @rip instr_mem_addr_o[9] -port instr_mem_addr_o[9] -pin riscv_instr_mem_top instr_mem_addr_o[9]
load net instr_mem_instr[0] -attr @rip instr_mem_instr_o[0] -pin riscv_decode_top instr_i[0] -pin riscv_instr_mem_top instr_mem_instr_o[0]
load net instr_mem_instr[10] -attr @rip instr_mem_instr_o[10] -pin riscv_decode_top instr_i[10] -pin riscv_instr_mem_top instr_mem_instr_o[10]
load net instr_mem_instr[11] -attr @rip instr_mem_instr_o[11] -pin riscv_decode_top instr_i[11] -pin riscv_instr_mem_top instr_mem_instr_o[11]
load net instr_mem_instr[12] -attr @rip instr_mem_instr_o[12] -pin riscv_decode_top instr_i[12] -pin riscv_instr_mem_top instr_mem_instr_o[12]
load net instr_mem_instr[13] -attr @rip instr_mem_instr_o[13] -pin riscv_decode_top instr_i[13] -pin riscv_instr_mem_top instr_mem_instr_o[13]
load net instr_mem_instr[14] -attr @rip instr_mem_instr_o[14] -pin riscv_decode_top instr_i[14] -pin riscv_instr_mem_top instr_mem_instr_o[14]
load net instr_mem_instr[15] -attr @rip instr_mem_instr_o[15] -pin riscv_decode_top instr_i[15] -pin riscv_instr_mem_top instr_mem_instr_o[15]
load net instr_mem_instr[16] -attr @rip instr_mem_instr_o[16] -pin riscv_decode_top instr_i[16] -pin riscv_instr_mem_top instr_mem_instr_o[16]
load net instr_mem_instr[17] -attr @rip instr_mem_instr_o[17] -pin riscv_decode_top instr_i[17] -pin riscv_instr_mem_top instr_mem_instr_o[17]
load net instr_mem_instr[18] -attr @rip instr_mem_instr_o[18] -pin riscv_decode_top instr_i[18] -pin riscv_instr_mem_top instr_mem_instr_o[18]
load net instr_mem_instr[19] -attr @rip instr_mem_instr_o[19] -pin riscv_decode_top instr_i[19] -pin riscv_instr_mem_top instr_mem_instr_o[19]
load net instr_mem_instr[1] -attr @rip instr_mem_instr_o[1] -pin riscv_decode_top instr_i[1] -pin riscv_instr_mem_top instr_mem_instr_o[1]
load net instr_mem_instr[20] -attr @rip instr_mem_instr_o[20] -pin riscv_decode_top instr_i[20] -pin riscv_instr_mem_top instr_mem_instr_o[20]
load net instr_mem_instr[21] -attr @rip instr_mem_instr_o[21] -pin riscv_decode_top instr_i[21] -pin riscv_instr_mem_top instr_mem_instr_o[21]
load net instr_mem_instr[22] -attr @rip instr_mem_instr_o[22] -pin riscv_decode_top instr_i[22] -pin riscv_instr_mem_top instr_mem_instr_o[22]
load net instr_mem_instr[23] -attr @rip instr_mem_instr_o[23] -pin riscv_decode_top instr_i[23] -pin riscv_instr_mem_top instr_mem_instr_o[23]
load net instr_mem_instr[24] -attr @rip instr_mem_instr_o[24] -pin riscv_decode_top instr_i[24] -pin riscv_instr_mem_top instr_mem_instr_o[24]
load net instr_mem_instr[25] -attr @rip instr_mem_instr_o[25] -pin riscv_decode_top instr_i[25] -pin riscv_instr_mem_top instr_mem_instr_o[25]
load net instr_mem_instr[26] -attr @rip instr_mem_instr_o[26] -pin riscv_decode_top instr_i[26] -pin riscv_instr_mem_top instr_mem_instr_o[26]
load net instr_mem_instr[27] -attr @rip instr_mem_instr_o[27] -pin riscv_decode_top instr_i[27] -pin riscv_instr_mem_top instr_mem_instr_o[27]
load net instr_mem_instr[28] -attr @rip instr_mem_instr_o[28] -pin riscv_decode_top instr_i[28] -pin riscv_instr_mem_top instr_mem_instr_o[28]
load net instr_mem_instr[29] -attr @rip instr_mem_instr_o[29] -pin riscv_decode_top instr_i[29] -pin riscv_instr_mem_top instr_mem_instr_o[29]
load net instr_mem_instr[2] -attr @rip instr_mem_instr_o[2] -pin riscv_decode_top instr_i[2] -pin riscv_instr_mem_top instr_mem_instr_o[2]
load net instr_mem_instr[30] -attr @rip instr_mem_instr_o[30] -pin riscv_decode_top instr_i[30] -pin riscv_instr_mem_top instr_mem_instr_o[30]
load net instr_mem_instr[31] -attr @rip instr_mem_instr_o[31] -pin riscv_decode_top instr_i[31] -pin riscv_instr_mem_top instr_mem_instr_o[31]
load net instr_mem_instr[3] -attr @rip instr_mem_instr_o[3] -pin riscv_decode_top instr_i[3] -pin riscv_instr_mem_top instr_mem_instr_o[3]
load net instr_mem_instr[4] -attr @rip instr_mem_instr_o[4] -pin riscv_decode_top instr_i[4] -pin riscv_instr_mem_top instr_mem_instr_o[4]
load net instr_mem_instr[5] -attr @rip instr_mem_instr_o[5] -pin riscv_decode_top instr_i[5] -pin riscv_instr_mem_top instr_mem_instr_o[5]
load net instr_mem_instr[6] -attr @rip instr_mem_instr_o[6] -pin riscv_decode_top instr_i[6] -pin riscv_instr_mem_top instr_mem_instr_o[6]
load net instr_mem_instr[7] -attr @rip instr_mem_instr_o[7] -pin riscv_decode_top instr_i[7] -pin riscv_instr_mem_top instr_mem_instr_o[7]
load net instr_mem_instr[8] -attr @rip instr_mem_instr_o[8] -pin riscv_decode_top instr_i[8] -pin riscv_instr_mem_top instr_mem_instr_o[8]
load net instr_mem_instr[9] -attr @rip instr_mem_instr_o[9] -pin riscv_decode_top instr_i[9] -pin riscv_instr_mem_top instr_mem_instr_o[9]
load net instr_mem_rd_data_i[0] -attr @rip instr_mem_rd_data_i[0] -port instr_mem_rd_data_i[0] -pin riscv_instr_mem_top mem_rd_data_i[0]
load net instr_mem_rd_data_i[10] -attr @rip instr_mem_rd_data_i[10] -port instr_mem_rd_data_i[10] -pin riscv_instr_mem_top mem_rd_data_i[10]
load net instr_mem_rd_data_i[11] -attr @rip instr_mem_rd_data_i[11] -port instr_mem_rd_data_i[11] -pin riscv_instr_mem_top mem_rd_data_i[11]
load net instr_mem_rd_data_i[12] -attr @rip instr_mem_rd_data_i[12] -port instr_mem_rd_data_i[12] -pin riscv_instr_mem_top mem_rd_data_i[12]
load net instr_mem_rd_data_i[13] -attr @rip instr_mem_rd_data_i[13] -port instr_mem_rd_data_i[13] -pin riscv_instr_mem_top mem_rd_data_i[13]
load net instr_mem_rd_data_i[14] -attr @rip instr_mem_rd_data_i[14] -port instr_mem_rd_data_i[14] -pin riscv_instr_mem_top mem_rd_data_i[14]
load net instr_mem_rd_data_i[15] -attr @rip instr_mem_rd_data_i[15] -port instr_mem_rd_data_i[15] -pin riscv_instr_mem_top mem_rd_data_i[15]
load net instr_mem_rd_data_i[16] -attr @rip instr_mem_rd_data_i[16] -port instr_mem_rd_data_i[16] -pin riscv_instr_mem_top mem_rd_data_i[16]
load net instr_mem_rd_data_i[17] -attr @rip instr_mem_rd_data_i[17] -port instr_mem_rd_data_i[17] -pin riscv_instr_mem_top mem_rd_data_i[17]
load net instr_mem_rd_data_i[18] -attr @rip instr_mem_rd_data_i[18] -port instr_mem_rd_data_i[18] -pin riscv_instr_mem_top mem_rd_data_i[18]
load net instr_mem_rd_data_i[19] -attr @rip instr_mem_rd_data_i[19] -port instr_mem_rd_data_i[19] -pin riscv_instr_mem_top mem_rd_data_i[19]
load net instr_mem_rd_data_i[1] -attr @rip instr_mem_rd_data_i[1] -port instr_mem_rd_data_i[1] -pin riscv_instr_mem_top mem_rd_data_i[1]
load net instr_mem_rd_data_i[20] -attr @rip instr_mem_rd_data_i[20] -port instr_mem_rd_data_i[20] -pin riscv_instr_mem_top mem_rd_data_i[20]
load net instr_mem_rd_data_i[21] -attr @rip instr_mem_rd_data_i[21] -port instr_mem_rd_data_i[21] -pin riscv_instr_mem_top mem_rd_data_i[21]
load net instr_mem_rd_data_i[22] -attr @rip instr_mem_rd_data_i[22] -port instr_mem_rd_data_i[22] -pin riscv_instr_mem_top mem_rd_data_i[22]
load net instr_mem_rd_data_i[23] -attr @rip instr_mem_rd_data_i[23] -port instr_mem_rd_data_i[23] -pin riscv_instr_mem_top mem_rd_data_i[23]
load net instr_mem_rd_data_i[24] -attr @rip instr_mem_rd_data_i[24] -port instr_mem_rd_data_i[24] -pin riscv_instr_mem_top mem_rd_data_i[24]
load net instr_mem_rd_data_i[25] -attr @rip instr_mem_rd_data_i[25] -port instr_mem_rd_data_i[25] -pin riscv_instr_mem_top mem_rd_data_i[25]
load net instr_mem_rd_data_i[26] -attr @rip instr_mem_rd_data_i[26] -port instr_mem_rd_data_i[26] -pin riscv_instr_mem_top mem_rd_data_i[26]
load net instr_mem_rd_data_i[27] -attr @rip instr_mem_rd_data_i[27] -port instr_mem_rd_data_i[27] -pin riscv_instr_mem_top mem_rd_data_i[27]
load net instr_mem_rd_data_i[28] -attr @rip instr_mem_rd_data_i[28] -port instr_mem_rd_data_i[28] -pin riscv_instr_mem_top mem_rd_data_i[28]
load net instr_mem_rd_data_i[29] -attr @rip instr_mem_rd_data_i[29] -port instr_mem_rd_data_i[29] -pin riscv_instr_mem_top mem_rd_data_i[29]
load net instr_mem_rd_data_i[2] -attr @rip instr_mem_rd_data_i[2] -port instr_mem_rd_data_i[2] -pin riscv_instr_mem_top mem_rd_data_i[2]
load net instr_mem_rd_data_i[30] -attr @rip instr_mem_rd_data_i[30] -port instr_mem_rd_data_i[30] -pin riscv_instr_mem_top mem_rd_data_i[30]
load net instr_mem_rd_data_i[31] -attr @rip instr_mem_rd_data_i[31] -port instr_mem_rd_data_i[31] -pin riscv_instr_mem_top mem_rd_data_i[31]
load net instr_mem_rd_data_i[3] -attr @rip instr_mem_rd_data_i[3] -port instr_mem_rd_data_i[3] -pin riscv_instr_mem_top mem_rd_data_i[3]
load net instr_mem_rd_data_i[4] -attr @rip instr_mem_rd_data_i[4] -port instr_mem_rd_data_i[4] -pin riscv_instr_mem_top mem_rd_data_i[4]
load net instr_mem_rd_data_i[5] -attr @rip instr_mem_rd_data_i[5] -port instr_mem_rd_data_i[5] -pin riscv_instr_mem_top mem_rd_data_i[5]
load net instr_mem_rd_data_i[6] -attr @rip instr_mem_rd_data_i[6] -port instr_mem_rd_data_i[6] -pin riscv_instr_mem_top mem_rd_data_i[6]
load net instr_mem_rd_data_i[7] -attr @rip instr_mem_rd_data_i[7] -port instr_mem_rd_data_i[7] -pin riscv_instr_mem_top mem_rd_data_i[7]
load net instr_mem_rd_data_i[8] -attr @rip instr_mem_rd_data_i[8] -port instr_mem_rd_data_i[8] -pin riscv_instr_mem_top mem_rd_data_i[8]
load net instr_mem_rd_data_i[9] -attr @rip instr_mem_rd_data_i[9] -port instr_mem_rd_data_i[9] -pin riscv_instr_mem_top mem_rd_data_i[9]
load net instr_mem_req_o -port instr_mem_req_o -pin riscv_instr_mem_top instr_mem_req_o
netloc instr_mem_req_o 1 9 1 NJ 1060
load net is_b_type -pin riscv_branch_control_top is_b_type_ctl_i -pin riscv_control_top is_b_type_i -pin riscv_decode_top b_type_instr_o
netloc is_b_type 1 4 4 1480 490 NJ 490 NJ 490 2740
load net is_i_type -pin riscv_control_top is_i_type_i -pin riscv_decode_top i_type_instr_o
netloc is_i_type 1 7 1 2800 130n
load net is_j_type -pin riscv_control_top is_j_type_i -pin riscv_decode_top j_type_instr_o
netloc is_j_type 1 7 1 2760 170n
load net is_r_type -pin riscv_control_top is_r_type_i -pin riscv_decode_top r_type_instr_o
netloc is_r_type 1 7 1 2720 210n
load net is_s_type -pin riscv_control_top is_s_type_i -pin riscv_decode_top s_type_instr_o
netloc is_s_type 1 7 1 2680 290n
load net is_u_type -pin riscv_control_top is_u_type_i -pin riscv_decode_top u_type_instr_o
netloc is_u_type 1 7 1 2640 310n
load net next_pc[0] -attr @rip O[0] -pin next_pc_i O[0] -pin pc_count_i I1[0]
load net next_pc[10] -attr @rip O[10] -pin next_pc_i O[10] -pin pc_count_i I1[10]
load net next_pc[11] -attr @rip O[11] -pin next_pc_i O[11] -pin pc_count_i I1[11]
load net next_pc[12] -attr @rip O[12] -pin next_pc_i O[12] -pin pc_count_i I1[12]
load net next_pc[13] -attr @rip O[13] -pin next_pc_i O[13] -pin pc_count_i I1[13]
load net next_pc[14] -attr @rip O[14] -pin next_pc_i O[14] -pin pc_count_i I1[14]
load net next_pc[15] -attr @rip O[15] -pin next_pc_i O[15] -pin pc_count_i I1[15]
load net next_pc[16] -attr @rip O[16] -pin next_pc_i O[16] -pin pc_count_i I1[16]
load net next_pc[17] -attr @rip O[17] -pin next_pc_i O[17] -pin pc_count_i I1[17]
load net next_pc[18] -attr @rip O[18] -pin next_pc_i O[18] -pin pc_count_i I1[18]
load net next_pc[19] -attr @rip O[19] -pin next_pc_i O[19] -pin pc_count_i I1[19]
load net next_pc[1] -attr @rip O[1] -pin next_pc_i O[1] -pin pc_count_i I1[1]
load net next_pc[20] -attr @rip O[20] -pin next_pc_i O[20] -pin pc_count_i I1[20]
load net next_pc[21] -attr @rip O[21] -pin next_pc_i O[21] -pin pc_count_i I1[21]
load net next_pc[22] -attr @rip O[22] -pin next_pc_i O[22] -pin pc_count_i I1[22]
load net next_pc[23] -attr @rip O[23] -pin next_pc_i O[23] -pin pc_count_i I1[23]
load net next_pc[24] -attr @rip O[24] -pin next_pc_i O[24] -pin pc_count_i I1[24]
load net next_pc[25] -attr @rip O[25] -pin next_pc_i O[25] -pin pc_count_i I1[25]
load net next_pc[26] -attr @rip O[26] -pin next_pc_i O[26] -pin pc_count_i I1[26]
load net next_pc[27] -attr @rip O[27] -pin next_pc_i O[27] -pin pc_count_i I1[27]
load net next_pc[28] -attr @rip O[28] -pin next_pc_i O[28] -pin pc_count_i I1[28]
load net next_pc[29] -attr @rip O[29] -pin next_pc_i O[29] -pin pc_count_i I1[29]
load net next_pc[2] -attr @rip O[2] -pin next_pc_i O[2] -pin pc_count_i I1[2]
load net next_pc[30] -attr @rip O[30] -pin next_pc_i O[30] -pin pc_count_i I1[30]
load net next_pc[31] -attr @rip O[31] -pin next_pc_i O[31] -pin pc_count_i I1[31]
load net next_pc[3] -attr @rip O[3] -pin next_pc_i O[3] -pin pc_count_i I1[3]
load net next_pc[4] -attr @rip O[4] -pin next_pc_i O[4] -pin pc_count_i I1[4]
load net next_pc[5] -attr @rip O[5] -pin next_pc_i O[5] -pin pc_count_i I1[5]
load net next_pc[6] -attr @rip O[6] -pin next_pc_i O[6] -pin pc_count_i I1[6]
load net next_pc[7] -attr @rip O[7] -pin next_pc_i O[7] -pin pc_count_i I1[7]
load net next_pc[8] -attr @rip O[8] -pin next_pc_i O[8] -pin pc_count_i I1[8]
load net next_pc[9] -attr @rip O[9] -pin next_pc_i O[9] -pin pc_count_i I1[9]
load net op1[0] -attr @rip O[0] -pin op1_i O[0] -pin riscv_execute_top opr_a_i[0]
load net op1[10] -attr @rip O[10] -pin op1_i O[10] -pin riscv_execute_top opr_a_i[10]
load net op1[11] -attr @rip O[11] -pin op1_i O[11] -pin riscv_execute_top opr_a_i[11]
load net op1[12] -attr @rip O[12] -pin op1_i O[12] -pin riscv_execute_top opr_a_i[12]
load net op1[13] -attr @rip O[13] -pin op1_i O[13] -pin riscv_execute_top opr_a_i[13]
load net op1[14] -attr @rip O[14] -pin op1_i O[14] -pin riscv_execute_top opr_a_i[14]
load net op1[15] -attr @rip O[15] -pin op1_i O[15] -pin riscv_execute_top opr_a_i[15]
load net op1[16] -attr @rip O[16] -pin op1_i O[16] -pin riscv_execute_top opr_a_i[16]
load net op1[17] -attr @rip O[17] -pin op1_i O[17] -pin riscv_execute_top opr_a_i[17]
load net op1[18] -attr @rip O[18] -pin op1_i O[18] -pin riscv_execute_top opr_a_i[18]
load net op1[19] -attr @rip O[19] -pin op1_i O[19] -pin riscv_execute_top opr_a_i[19]
load net op1[1] -attr @rip O[1] -pin op1_i O[1] -pin riscv_execute_top opr_a_i[1]
load net op1[20] -attr @rip O[20] -pin op1_i O[20] -pin riscv_execute_top opr_a_i[20]
load net op1[21] -attr @rip O[21] -pin op1_i O[21] -pin riscv_execute_top opr_a_i[21]
load net op1[22] -attr @rip O[22] -pin op1_i O[22] -pin riscv_execute_top opr_a_i[22]
load net op1[23] -attr @rip O[23] -pin op1_i O[23] -pin riscv_execute_top opr_a_i[23]
load net op1[24] -attr @rip O[24] -pin op1_i O[24] -pin riscv_execute_top opr_a_i[24]
load net op1[25] -attr @rip O[25] -pin op1_i O[25] -pin riscv_execute_top opr_a_i[25]
load net op1[26] -attr @rip O[26] -pin op1_i O[26] -pin riscv_execute_top opr_a_i[26]
load net op1[27] -attr @rip O[27] -pin op1_i O[27] -pin riscv_execute_top opr_a_i[27]
load net op1[28] -attr @rip O[28] -pin op1_i O[28] -pin riscv_execute_top opr_a_i[28]
load net op1[29] -attr @rip O[29] -pin op1_i O[29] -pin riscv_execute_top opr_a_i[29]
load net op1[2] -attr @rip O[2] -pin op1_i O[2] -pin riscv_execute_top opr_a_i[2]
load net op1[30] -attr @rip O[30] -pin op1_i O[30] -pin riscv_execute_top opr_a_i[30]
load net op1[31] -attr @rip O[31] -pin op1_i O[31] -pin riscv_execute_top opr_a_i[31]
load net op1[3] -attr @rip O[3] -pin op1_i O[3] -pin riscv_execute_top opr_a_i[3]
load net op1[4] -attr @rip O[4] -pin op1_i O[4] -pin riscv_execute_top opr_a_i[4]
load net op1[5] -attr @rip O[5] -pin op1_i O[5] -pin riscv_execute_top opr_a_i[5]
load net op1[6] -attr @rip O[6] -pin op1_i O[6] -pin riscv_execute_top opr_a_i[6]
load net op1[7] -attr @rip O[7] -pin op1_i O[7] -pin riscv_execute_top opr_a_i[7]
load net op1[8] -attr @rip O[8] -pin op1_i O[8] -pin riscv_execute_top opr_a_i[8]
load net op1[9] -attr @rip O[9] -pin op1_i O[9] -pin riscv_execute_top opr_a_i[9]
load net op1sel -pin op1_i S -pin riscv_control_top op1sel_o
netloc op1sel 1 1 8 350J 450 NJ 450 NJ 450 1420J 430 NJ 430 NJ 430 2580J 350 3170
load net op2[0] -attr @rip O[0] -pin op2_i O[0] -pin riscv_execute_top opr_b_i[0]
load net op2[10] -attr @rip O[10] -pin op2_i O[10] -pin riscv_execute_top opr_b_i[10]
load net op2[11] -attr @rip O[11] -pin op2_i O[11] -pin riscv_execute_top opr_b_i[11]
load net op2[12] -attr @rip O[12] -pin op2_i O[12] -pin riscv_execute_top opr_b_i[12]
load net op2[13] -attr @rip O[13] -pin op2_i O[13] -pin riscv_execute_top opr_b_i[13]
load net op2[14] -attr @rip O[14] -pin op2_i O[14] -pin riscv_execute_top opr_b_i[14]
load net op2[15] -attr @rip O[15] -pin op2_i O[15] -pin riscv_execute_top opr_b_i[15]
load net op2[16] -attr @rip O[16] -pin op2_i O[16] -pin riscv_execute_top opr_b_i[16]
load net op2[17] -attr @rip O[17] -pin op2_i O[17] -pin riscv_execute_top opr_b_i[17]
load net op2[18] -attr @rip O[18] -pin op2_i O[18] -pin riscv_execute_top opr_b_i[18]
load net op2[19] -attr @rip O[19] -pin op2_i O[19] -pin riscv_execute_top opr_b_i[19]
load net op2[1] -attr @rip O[1] -pin op2_i O[1] -pin riscv_execute_top opr_b_i[1]
load net op2[20] -attr @rip O[20] -pin op2_i O[20] -pin riscv_execute_top opr_b_i[20]
load net op2[21] -attr @rip O[21] -pin op2_i O[21] -pin riscv_execute_top opr_b_i[21]
load net op2[22] -attr @rip O[22] -pin op2_i O[22] -pin riscv_execute_top opr_b_i[22]
load net op2[23] -attr @rip O[23] -pin op2_i O[23] -pin riscv_execute_top opr_b_i[23]
load net op2[24] -attr @rip O[24] -pin op2_i O[24] -pin riscv_execute_top opr_b_i[24]
load net op2[25] -attr @rip O[25] -pin op2_i O[25] -pin riscv_execute_top opr_b_i[25]
load net op2[26] -attr @rip O[26] -pin op2_i O[26] -pin riscv_execute_top opr_b_i[26]
load net op2[27] -attr @rip O[27] -pin op2_i O[27] -pin riscv_execute_top opr_b_i[27]
load net op2[28] -attr @rip O[28] -pin op2_i O[28] -pin riscv_execute_top opr_b_i[28]
load net op2[29] -attr @rip O[29] -pin op2_i O[29] -pin riscv_execute_top opr_b_i[29]
load net op2[2] -attr @rip O[2] -pin op2_i O[2] -pin riscv_execute_top opr_b_i[2]
load net op2[30] -attr @rip O[30] -pin op2_i O[30] -pin riscv_execute_top opr_b_i[30]
load net op2[31] -attr @rip O[31] -pin op2_i O[31] -pin riscv_execute_top opr_b_i[31]
load net op2[3] -attr @rip O[3] -pin op2_i O[3] -pin riscv_execute_top opr_b_i[3]
load net op2[4] -attr @rip O[4] -pin op2_i O[4] -pin riscv_execute_top opr_b_i[4]
load net op2[5] -attr @rip O[5] -pin op2_i O[5] -pin riscv_execute_top opr_b_i[5]
load net op2[6] -attr @rip O[6] -pin op2_i O[6] -pin riscv_execute_top opr_b_i[6]
load net op2[7] -attr @rip O[7] -pin op2_i O[7] -pin riscv_execute_top opr_b_i[7]
load net op2[8] -attr @rip O[8] -pin op2_i O[8] -pin riscv_execute_top opr_b_i[8]
load net op2[9] -attr @rip O[9] -pin op2_i O[9] -pin riscv_execute_top opr_b_i[9]
load net op2sel -pin op2_i S -pin riscv_control_top op2sel_o
netloc op2sel 1 1 8 310J 670 NJ 670 NJ 670 NJ 670 NJ 670 NJ 670 NJ 670 3190
load net op_code[0] -attr @rip op_o[0] -pin riscv_control_top instr_opcode_i[0] -pin riscv_decode_top op_o[0]
load net op_code[1] -attr @rip op_o[1] -pin riscv_control_top instr_opcode_i[1] -pin riscv_decode_top op_o[1]
load net op_code[2] -attr @rip op_o[2] -pin riscv_control_top instr_opcode_i[2] -pin riscv_decode_top op_o[2]
load net op_code[3] -attr @rip op_o[3] -pin riscv_control_top instr_opcode_i[3] -pin riscv_decode_top op_o[3]
load net op_code[4] -attr @rip op_o[4] -pin riscv_control_top instr_opcode_i[4] -pin riscv_decode_top op_o[4]
load net op_code[5] -attr @rip op_o[5] -pin riscv_control_top instr_opcode_i[5] -pin riscv_decode_top op_o[5]
load net op_code[6] -attr @rip op_o[6] -pin riscv_control_top instr_opcode_i[6] -pin riscv_decode_top op_o[6]
load net pc_count1 -pin pc_count1_i O -pin pc_count_i S
netloc pc_count1 1 6 1 2140 890n
load net pc_count[0] -attr @rip O[0] -pin pc_count_i O[0] -pin pc_reg_reg[31:0] D[0]
load net pc_count[10] -attr @rip O[10] -pin pc_count_i O[10] -pin pc_reg_reg[31:0] D[10]
load net pc_count[11] -attr @rip O[11] -pin pc_count_i O[11] -pin pc_reg_reg[31:0] D[11]
load net pc_count[12] -attr @rip O[12] -pin pc_count_i O[12] -pin pc_reg_reg[31:0] D[12]
load net pc_count[13] -attr @rip O[13] -pin pc_count_i O[13] -pin pc_reg_reg[31:0] D[13]
load net pc_count[14] -attr @rip O[14] -pin pc_count_i O[14] -pin pc_reg_reg[31:0] D[14]
load net pc_count[15] -attr @rip O[15] -pin pc_count_i O[15] -pin pc_reg_reg[31:0] D[15]
load net pc_count[16] -attr @rip O[16] -pin pc_count_i O[16] -pin pc_reg_reg[31:0] D[16]
load net pc_count[17] -attr @rip O[17] -pin pc_count_i O[17] -pin pc_reg_reg[31:0] D[17]
load net pc_count[18] -attr @rip O[18] -pin pc_count_i O[18] -pin pc_reg_reg[31:0] D[18]
load net pc_count[19] -attr @rip O[19] -pin pc_count_i O[19] -pin pc_reg_reg[31:0] D[19]
load net pc_count[1] -attr @rip O[1] -pin pc_count_i O[1] -pin pc_reg_reg[31:0] D[1]
load net pc_count[20] -attr @rip O[20] -pin pc_count_i O[20] -pin pc_reg_reg[31:0] D[20]
load net pc_count[21] -attr @rip O[21] -pin pc_count_i O[21] -pin pc_reg_reg[31:0] D[21]
load net pc_count[22] -attr @rip O[22] -pin pc_count_i O[22] -pin pc_reg_reg[31:0] D[22]
load net pc_count[23] -attr @rip O[23] -pin pc_count_i O[23] -pin pc_reg_reg[31:0] D[23]
load net pc_count[24] -attr @rip O[24] -pin pc_count_i O[24] -pin pc_reg_reg[31:0] D[24]
load net pc_count[25] -attr @rip O[25] -pin pc_count_i O[25] -pin pc_reg_reg[31:0] D[25]
load net pc_count[26] -attr @rip O[26] -pin pc_count_i O[26] -pin pc_reg_reg[31:0] D[26]
load net pc_count[27] -attr @rip O[27] -pin pc_count_i O[27] -pin pc_reg_reg[31:0] D[27]
load net pc_count[28] -attr @rip O[28] -pin pc_count_i O[28] -pin pc_reg_reg[31:0] D[28]
load net pc_count[29] -attr @rip O[29] -pin pc_count_i O[29] -pin pc_reg_reg[31:0] D[29]
load net pc_count[2] -attr @rip O[2] -pin pc_count_i O[2] -pin pc_reg_reg[31:0] D[2]
load net pc_count[30] -attr @rip O[30] -pin pc_count_i O[30] -pin pc_reg_reg[31:0] D[30]
load net pc_count[31] -attr @rip O[31] -pin pc_count_i O[31] -pin pc_reg_reg[31:0] D[31]
load net pc_count[3] -attr @rip O[3] -pin pc_count_i O[3] -pin pc_reg_reg[31:0] D[3]
load net pc_count[4] -attr @rip O[4] -pin pc_count_i O[4] -pin pc_reg_reg[31:0] D[4]
load net pc_count[5] -attr @rip O[5] -pin pc_count_i O[5] -pin pc_reg_reg[31:0] D[5]
load net pc_count[6] -attr @rip O[6] -pin pc_count_i O[6] -pin pc_reg_reg[31:0] D[6]
load net pc_count[7] -attr @rip O[7] -pin pc_count_i O[7] -pin pc_reg_reg[31:0] D[7]
load net pc_count[8] -attr @rip O[8] -pin pc_count_i O[8] -pin pc_reg_reg[31:0] D[8]
load net pc_count[9] -attr @rip O[9] -pin pc_count_i O[9] -pin pc_reg_reg[31:0] D[9]
load net pc_reg[0] -attr @rip 0 -pin next_pc_i I0[0] -pin op1_i I0[0] -pin pc_reg_reg[31:0] Q[0] -pin riscv_instr_mem_top instr_mem_pc_i[0] -pin wr_data_i I2[0]
load net pc_reg[10] -attr @rip 10 -pin next_pc_i I0[10] -pin op1_i I0[10] -pin pc_reg_reg[31:0] Q[10] -pin riscv_instr_mem_top instr_mem_pc_i[10] -pin wr_data_i I2[10]
load net pc_reg[11] -attr @rip 11 -pin next_pc_i I0[11] -pin op1_i I0[11] -pin pc_reg_reg[31:0] Q[11] -pin riscv_instr_mem_top instr_mem_pc_i[11] -pin wr_data_i I2[11]
load net pc_reg[12] -attr @rip 12 -pin next_pc_i I0[12] -pin op1_i I0[12] -pin pc_reg_reg[31:0] Q[12] -pin riscv_instr_mem_top instr_mem_pc_i[12] -pin wr_data_i I2[12]
load net pc_reg[13] -attr @rip 13 -pin next_pc_i I0[13] -pin op1_i I0[13] -pin pc_reg_reg[31:0] Q[13] -pin riscv_instr_mem_top instr_mem_pc_i[13] -pin wr_data_i I2[13]
load net pc_reg[14] -attr @rip 14 -pin next_pc_i I0[14] -pin op1_i I0[14] -pin pc_reg_reg[31:0] Q[14] -pin riscv_instr_mem_top instr_mem_pc_i[14] -pin wr_data_i I2[14]
load net pc_reg[15] -attr @rip 15 -pin next_pc_i I0[15] -pin op1_i I0[15] -pin pc_reg_reg[31:0] Q[15] -pin riscv_instr_mem_top instr_mem_pc_i[15] -pin wr_data_i I2[15]
load net pc_reg[16] -attr @rip 16 -pin next_pc_i I0[16] -pin op1_i I0[16] -pin pc_reg_reg[31:0] Q[16] -pin riscv_instr_mem_top instr_mem_pc_i[16] -pin wr_data_i I2[16]
load net pc_reg[17] -attr @rip 17 -pin next_pc_i I0[17] -pin op1_i I0[17] -pin pc_reg_reg[31:0] Q[17] -pin riscv_instr_mem_top instr_mem_pc_i[17] -pin wr_data_i I2[17]
load net pc_reg[18] -attr @rip 18 -pin next_pc_i I0[18] -pin op1_i I0[18] -pin pc_reg_reg[31:0] Q[18] -pin riscv_instr_mem_top instr_mem_pc_i[18] -pin wr_data_i I2[18]
load net pc_reg[19] -attr @rip 19 -pin next_pc_i I0[19] -pin op1_i I0[19] -pin pc_reg_reg[31:0] Q[19] -pin riscv_instr_mem_top instr_mem_pc_i[19] -pin wr_data_i I2[19]
load net pc_reg[1] -attr @rip 1 -pin next_pc_i I0[1] -pin op1_i I0[1] -pin pc_reg_reg[31:0] Q[1] -pin riscv_instr_mem_top instr_mem_pc_i[1] -pin wr_data_i I2[1]
load net pc_reg[20] -attr @rip 20 -pin next_pc_i I0[20] -pin op1_i I0[20] -pin pc_reg_reg[31:0] Q[20] -pin riscv_instr_mem_top instr_mem_pc_i[20] -pin wr_data_i I2[20]
load net pc_reg[21] -attr @rip 21 -pin next_pc_i I0[21] -pin op1_i I0[21] -pin pc_reg_reg[31:0] Q[21] -pin riscv_instr_mem_top instr_mem_pc_i[21] -pin wr_data_i I2[21]
load net pc_reg[22] -attr @rip 22 -pin next_pc_i I0[22] -pin op1_i I0[22] -pin pc_reg_reg[31:0] Q[22] -pin riscv_instr_mem_top instr_mem_pc_i[22] -pin wr_data_i I2[22]
load net pc_reg[23] -attr @rip 23 -pin next_pc_i I0[23] -pin op1_i I0[23] -pin pc_reg_reg[31:0] Q[23] -pin riscv_instr_mem_top instr_mem_pc_i[23] -pin wr_data_i I2[23]
load net pc_reg[24] -attr @rip 24 -pin next_pc_i I0[24] -pin op1_i I0[24] -pin pc_reg_reg[31:0] Q[24] -pin riscv_instr_mem_top instr_mem_pc_i[24] -pin wr_data_i I2[24]
load net pc_reg[25] -attr @rip 25 -pin next_pc_i I0[25] -pin op1_i I0[25] -pin pc_reg_reg[31:0] Q[25] -pin riscv_instr_mem_top instr_mem_pc_i[25] -pin wr_data_i I2[25]
load net pc_reg[26] -attr @rip 26 -pin next_pc_i I0[26] -pin op1_i I0[26] -pin pc_reg_reg[31:0] Q[26] -pin riscv_instr_mem_top instr_mem_pc_i[26] -pin wr_data_i I2[26]
load net pc_reg[27] -attr @rip 27 -pin next_pc_i I0[27] -pin op1_i I0[27] -pin pc_reg_reg[31:0] Q[27] -pin riscv_instr_mem_top instr_mem_pc_i[27] -pin wr_data_i I2[27]
load net pc_reg[28] -attr @rip 28 -pin next_pc_i I0[28] -pin op1_i I0[28] -pin pc_reg_reg[31:0] Q[28] -pin riscv_instr_mem_top instr_mem_pc_i[28] -pin wr_data_i I2[28]
load net pc_reg[29] -attr @rip 29 -pin next_pc_i I0[29] -pin op1_i I0[29] -pin pc_reg_reg[31:0] Q[29] -pin riscv_instr_mem_top instr_mem_pc_i[29] -pin wr_data_i I2[29]
load net pc_reg[2] -attr @rip 2 -pin next_pc_i I0[2] -pin op1_i I0[2] -pin pc_reg_reg[31:0] Q[2] -pin riscv_instr_mem_top instr_mem_pc_i[2] -pin wr_data_i I2[2]
load net pc_reg[30] -attr @rip 30 -pin next_pc_i I0[30] -pin op1_i I0[30] -pin pc_reg_reg[31:0] Q[30] -pin riscv_instr_mem_top instr_mem_pc_i[30] -pin wr_data_i I2[30]
load net pc_reg[31] -attr @rip 31 -pin next_pc_i I0[31] -pin op1_i I0[31] -pin pc_reg_reg[31:0] Q[31] -pin riscv_instr_mem_top instr_mem_pc_i[31] -pin wr_data_i I2[31]
load net pc_reg[3] -attr @rip 3 -pin next_pc_i I0[3] -pin op1_i I0[3] -pin pc_reg_reg[31:0] Q[3] -pin riscv_instr_mem_top instr_mem_pc_i[3] -pin wr_data_i I2[3]
load net pc_reg[4] -attr @rip 4 -pin next_pc_i I0[4] -pin op1_i I0[4] -pin pc_reg_reg[31:0] Q[4] -pin riscv_instr_mem_top instr_mem_pc_i[4] -pin wr_data_i I2[4]
load net pc_reg[5] -attr @rip 5 -pin next_pc_i I0[5] -pin op1_i I0[5] -pin pc_reg_reg[31:0] Q[5] -pin riscv_instr_mem_top instr_mem_pc_i[5] -pin wr_data_i I2[5]
load net pc_reg[6] -attr @rip 6 -pin next_pc_i I0[6] -pin op1_i I0[6] -pin pc_reg_reg[31:0] Q[6] -pin riscv_instr_mem_top instr_mem_pc_i[6] -pin wr_data_i I2[6]
load net pc_reg[7] -attr @rip 7 -pin next_pc_i I0[7] -pin op1_i I0[7] -pin pc_reg_reg[31:0] Q[7] -pin riscv_instr_mem_top instr_mem_pc_i[7] -pin wr_data_i I2[7]
load net pc_reg[8] -attr @rip 8 -pin next_pc_i I0[8] -pin op1_i I0[8] -pin pc_reg_reg[31:0] Q[8] -pin riscv_instr_mem_top instr_mem_pc_i[8] -pin wr_data_i I2[8]
load net pc_reg[9] -attr @rip 9 -pin next_pc_i I0[9] -pin op1_i I0[9] -pin pc_reg_reg[31:0] Q[9] -pin riscv_instr_mem_top instr_mem_pc_i[9] -pin wr_data_i I2[9]
load net pc_sel -pin pc_count1_i I1 -pin riscv_control_top pc_sel_o
netloc pc_sel 1 5 4 1900 970 2160J 920 NJ 920 3170
load net rd_addr[0] -attr @rip rd_o[0] -pin riscv_decode_top rd_o[0] -pin riscv_regfile_top rd_addr_i[0]
load net rd_addr[1] -attr @rip rd_o[1] -pin riscv_decode_top rd_o[1] -pin riscv_regfile_top rd_addr_i[1]
load net rd_addr[2] -attr @rip rd_o[2] -pin riscv_decode_top rd_o[2] -pin riscv_regfile_top rd_addr_i[2]
load net rd_addr[3] -attr @rip rd_o[3] -pin riscv_decode_top rd_o[3] -pin riscv_regfile_top rd_addr_i[3]
load net rd_addr[4] -attr @rip rd_o[4] -pin riscv_decode_top rd_o[4] -pin riscv_regfile_top rd_addr_i[4]
load net reset_n -pin pc_reg_reg[31:0] CLR[31] -pin pc_reg_reg[31:0] CLR[30] -pin pc_reg_reg[31:0] CLR[29] -pin pc_reg_reg[31:0] CLR[28] -pin pc_reg_reg[31:0] CLR[27] -pin pc_reg_reg[31:0] CLR[26] -pin pc_reg_reg[31:0] CLR[25] -pin pc_reg_reg[31:0] CLR[24] -pin pc_reg_reg[31:0] CLR[23] -pin pc_reg_reg[31:0] CLR[22] -pin pc_reg_reg[31:0] CLR[21] -pin pc_reg_reg[31:0] CLR[20] -pin pc_reg_reg[31:0] CLR[19] -pin pc_reg_reg[31:0] CLR[18] -pin pc_reg_reg[31:0] CLR[17] -pin pc_reg_reg[31:0] CLR[16] -pin pc_reg_reg[31:0] CLR[15] -pin pc_reg_reg[31:0] CLR[14] -pin pc_reg_reg[31:0] CLR[13] -pin pc_reg_reg[31:0] CLR[11] -pin pc_reg_reg[31:0] CLR[10] -pin pc_reg_reg[31:0] CLR[9] -pin pc_reg_reg[31:0] CLR[8] -pin pc_reg_reg[31:0] CLR[7] -pin pc_reg_reg[31:0] CLR[6] -pin pc_reg_reg[31:0] CLR[5] -pin pc_reg_reg[31:0] CLR[4] -pin pc_reg_reg[31:0] CLR[3] -pin pc_reg_reg[31:0] CLR[2] -pin pc_reg_reg[31:0] CLR[1] -pin pc_reg_reg[31:0] CLR[0] -pin pc_reg_reg[31:0] PRE[12] -port reset_n -pin riscv_data_mem_control_top reset_n -pin riscv_instr_mem_top reset_n -pin riscv_regfile_top reset_n
netloc reset_n 1 0 9 NJ 740 NJ 740 690J 730 1020 770 NJ 770 1880J 750 NJ 750 2780 720N 3210
load net rf_wr_data[0] -attr @rip rf_wr_data_o[0] -pin riscv_control_top rf_wr_data_o[0] -pin wr_data_i S[0]
load net rf_wr_data[1] -attr @rip rf_wr_data_o[1] -pin riscv_control_top rf_wr_data_o[1] -pin wr_data_i S[1]
load net rf_wr_en -pin riscv_control_top rf_wr_en_o -pin riscv_regfile_top wr_en_i
netloc rf_wr_en 1 3 6 1080 410 NJ 410 NJ 410 NJ 410 2620J 330 3250
load net rs1_addr[0] -attr @rip rs1_o[0] -pin riscv_decode_top rs1_o[0] -pin riscv_regfile_top rs1_addr_i[0]
load net rs1_addr[1] -attr @rip rs1_o[1] -pin riscv_decode_top rs1_o[1] -pin riscv_regfile_top rs1_addr_i[1]
load net rs1_addr[2] -attr @rip rs1_o[2] -pin riscv_decode_top rs1_o[2] -pin riscv_regfile_top rs1_addr_i[2]
load net rs1_addr[3] -attr @rip rs1_o[3] -pin riscv_decode_top rs1_o[3] -pin riscv_regfile_top rs1_addr_i[3]
load net rs1_addr[4] -attr @rip rs1_o[4] -pin riscv_decode_top rs1_o[4] -pin riscv_regfile_top rs1_addr_i[4]
load net rs1_data[0] -attr @rip rs1_data_o[0] -pin op1_i I1[0] -pin riscv_branch_control_top opr_a_i[0] -pin riscv_regfile_top rs1_data_o[0]
load net rs1_data[10] -attr @rip rs1_data_o[10] -pin op1_i I1[10] -pin riscv_branch_control_top opr_a_i[10] -pin riscv_regfile_top rs1_data_o[10]
load net rs1_data[11] -attr @rip rs1_data_o[11] -pin op1_i I1[11] -pin riscv_branch_control_top opr_a_i[11] -pin riscv_regfile_top rs1_data_o[11]
load net rs1_data[12] -attr @rip rs1_data_o[12] -pin op1_i I1[12] -pin riscv_branch_control_top opr_a_i[12] -pin riscv_regfile_top rs1_data_o[12]
load net rs1_data[13] -attr @rip rs1_data_o[13] -pin op1_i I1[13] -pin riscv_branch_control_top opr_a_i[13] -pin riscv_regfile_top rs1_data_o[13]
load net rs1_data[14] -attr @rip rs1_data_o[14] -pin op1_i I1[14] -pin riscv_branch_control_top opr_a_i[14] -pin riscv_regfile_top rs1_data_o[14]
load net rs1_data[15] -attr @rip rs1_data_o[15] -pin op1_i I1[15] -pin riscv_branch_control_top opr_a_i[15] -pin riscv_regfile_top rs1_data_o[15]
load net rs1_data[16] -attr @rip rs1_data_o[16] -pin op1_i I1[16] -pin riscv_branch_control_top opr_a_i[16] -pin riscv_regfile_top rs1_data_o[16]
load net rs1_data[17] -attr @rip rs1_data_o[17] -pin op1_i I1[17] -pin riscv_branch_control_top opr_a_i[17] -pin riscv_regfile_top rs1_data_o[17]
load net rs1_data[18] -attr @rip rs1_data_o[18] -pin op1_i I1[18] -pin riscv_branch_control_top opr_a_i[18] -pin riscv_regfile_top rs1_data_o[18]
load net rs1_data[19] -attr @rip rs1_data_o[19] -pin op1_i I1[19] -pin riscv_branch_control_top opr_a_i[19] -pin riscv_regfile_top rs1_data_o[19]
load net rs1_data[1] -attr @rip rs1_data_o[1] -pin op1_i I1[1] -pin riscv_branch_control_top opr_a_i[1] -pin riscv_regfile_top rs1_data_o[1]
load net rs1_data[20] -attr @rip rs1_data_o[20] -pin op1_i I1[20] -pin riscv_branch_control_top opr_a_i[20] -pin riscv_regfile_top rs1_data_o[20]
load net rs1_data[21] -attr @rip rs1_data_o[21] -pin op1_i I1[21] -pin riscv_branch_control_top opr_a_i[21] -pin riscv_regfile_top rs1_data_o[21]
load net rs1_data[22] -attr @rip rs1_data_o[22] -pin op1_i I1[22] -pin riscv_branch_control_top opr_a_i[22] -pin riscv_regfile_top rs1_data_o[22]
load net rs1_data[23] -attr @rip rs1_data_o[23] -pin op1_i I1[23] -pin riscv_branch_control_top opr_a_i[23] -pin riscv_regfile_top rs1_data_o[23]
load net rs1_data[24] -attr @rip rs1_data_o[24] -pin op1_i I1[24] -pin riscv_branch_control_top opr_a_i[24] -pin riscv_regfile_top rs1_data_o[24]
load net rs1_data[25] -attr @rip rs1_data_o[25] -pin op1_i I1[25] -pin riscv_branch_control_top opr_a_i[25] -pin riscv_regfile_top rs1_data_o[25]
load net rs1_data[26] -attr @rip rs1_data_o[26] -pin op1_i I1[26] -pin riscv_branch_control_top opr_a_i[26] -pin riscv_regfile_top rs1_data_o[26]
load net rs1_data[27] -attr @rip rs1_data_o[27] -pin op1_i I1[27] -pin riscv_branch_control_top opr_a_i[27] -pin riscv_regfile_top rs1_data_o[27]
load net rs1_data[28] -attr @rip rs1_data_o[28] -pin op1_i I1[28] -pin riscv_branch_control_top opr_a_i[28] -pin riscv_regfile_top rs1_data_o[28]
load net rs1_data[29] -attr @rip rs1_data_o[29] -pin op1_i I1[29] -pin riscv_branch_control_top opr_a_i[29] -pin riscv_regfile_top rs1_data_o[29]
load net rs1_data[2] -attr @rip rs1_data_o[2] -pin op1_i I1[2] -pin riscv_branch_control_top opr_a_i[2] -pin riscv_regfile_top rs1_data_o[2]
load net rs1_data[30] -attr @rip rs1_data_o[30] -pin op1_i I1[30] -pin riscv_branch_control_top opr_a_i[30] -pin riscv_regfile_top rs1_data_o[30]
load net rs1_data[31] -attr @rip rs1_data_o[31] -pin op1_i I1[31] -pin riscv_branch_control_top opr_a_i[31] -pin riscv_regfile_top rs1_data_o[31]
load net rs1_data[3] -attr @rip rs1_data_o[3] -pin op1_i I1[3] -pin riscv_branch_control_top opr_a_i[3] -pin riscv_regfile_top rs1_data_o[3]
load net rs1_data[4] -attr @rip rs1_data_o[4] -pin op1_i I1[4] -pin riscv_branch_control_top opr_a_i[4] -pin riscv_regfile_top rs1_data_o[4]
load net rs1_data[5] -attr @rip rs1_data_o[5] -pin op1_i I1[5] -pin riscv_branch_control_top opr_a_i[5] -pin riscv_regfile_top rs1_data_o[5]
load net rs1_data[6] -attr @rip rs1_data_o[6] -pin op1_i I1[6] -pin riscv_branch_control_top opr_a_i[6] -pin riscv_regfile_top rs1_data_o[6]
load net rs1_data[7] -attr @rip rs1_data_o[7] -pin op1_i I1[7] -pin riscv_branch_control_top opr_a_i[7] -pin riscv_regfile_top rs1_data_o[7]
load net rs1_data[8] -attr @rip rs1_data_o[8] -pin op1_i I1[8] -pin riscv_branch_control_top opr_a_i[8] -pin riscv_regfile_top rs1_data_o[8]
load net rs1_data[9] -attr @rip rs1_data_o[9] -pin op1_i I1[9] -pin riscv_branch_control_top opr_a_i[9] -pin riscv_regfile_top rs1_data_o[9]
load net rs2_addr[0] -attr @rip rs2_o[0] -pin riscv_decode_top rs2_o[0] -pin riscv_regfile_top rs2_addr_i[0]
load net rs2_addr[1] -attr @rip rs2_o[1] -pin riscv_decode_top rs2_o[1] -pin riscv_regfile_top rs2_addr_i[1]
load net rs2_addr[2] -attr @rip rs2_o[2] -pin riscv_decode_top rs2_o[2] -pin riscv_regfile_top rs2_addr_i[2]
load net rs2_addr[3] -attr @rip rs2_o[3] -pin riscv_decode_top rs2_o[3] -pin riscv_regfile_top rs2_addr_i[3]
load net rs2_addr[4] -attr @rip rs2_o[4] -pin riscv_decode_top rs2_o[4] -pin riscv_regfile_top rs2_addr_i[4]
load net rs2_data[0] -attr @rip rs2_data_o[0] -pin op2_i I1[0] -pin riscv_branch_control_top opr_b_i[0] -pin riscv_regfile_top rs2_data_o[0]
load net rs2_data[10] -attr @rip rs2_data_o[10] -pin op2_i I1[10] -pin riscv_branch_control_top opr_b_i[10] -pin riscv_regfile_top rs2_data_o[10]
load net rs2_data[11] -attr @rip rs2_data_o[11] -pin op2_i I1[11] -pin riscv_branch_control_top opr_b_i[11] -pin riscv_regfile_top rs2_data_o[11]
load net rs2_data[12] -attr @rip rs2_data_o[12] -pin op2_i I1[12] -pin riscv_branch_control_top opr_b_i[12] -pin riscv_regfile_top rs2_data_o[12]
load net rs2_data[13] -attr @rip rs2_data_o[13] -pin op2_i I1[13] -pin riscv_branch_control_top opr_b_i[13] -pin riscv_regfile_top rs2_data_o[13]
load net rs2_data[14] -attr @rip rs2_data_o[14] -pin op2_i I1[14] -pin riscv_branch_control_top opr_b_i[14] -pin riscv_regfile_top rs2_data_o[14]
load net rs2_data[15] -attr @rip rs2_data_o[15] -pin op2_i I1[15] -pin riscv_branch_control_top opr_b_i[15] -pin riscv_regfile_top rs2_data_o[15]
load net rs2_data[16] -attr @rip rs2_data_o[16] -pin op2_i I1[16] -pin riscv_branch_control_top opr_b_i[16] -pin riscv_regfile_top rs2_data_o[16]
load net rs2_data[17] -attr @rip rs2_data_o[17] -pin op2_i I1[17] -pin riscv_branch_control_top opr_b_i[17] -pin riscv_regfile_top rs2_data_o[17]
load net rs2_data[18] -attr @rip rs2_data_o[18] -pin op2_i I1[18] -pin riscv_branch_control_top opr_b_i[18] -pin riscv_regfile_top rs2_data_o[18]
load net rs2_data[19] -attr @rip rs2_data_o[19] -pin op2_i I1[19] -pin riscv_branch_control_top opr_b_i[19] -pin riscv_regfile_top rs2_data_o[19]
load net rs2_data[1] -attr @rip rs2_data_o[1] -pin op2_i I1[1] -pin riscv_branch_control_top opr_b_i[1] -pin riscv_regfile_top rs2_data_o[1]
load net rs2_data[20] -attr @rip rs2_data_o[20] -pin op2_i I1[20] -pin riscv_branch_control_top opr_b_i[20] -pin riscv_regfile_top rs2_data_o[20]
load net rs2_data[21] -attr @rip rs2_data_o[21] -pin op2_i I1[21] -pin riscv_branch_control_top opr_b_i[21] -pin riscv_regfile_top rs2_data_o[21]
load net rs2_data[22] -attr @rip rs2_data_o[22] -pin op2_i I1[22] -pin riscv_branch_control_top opr_b_i[22] -pin riscv_regfile_top rs2_data_o[22]
load net rs2_data[23] -attr @rip rs2_data_o[23] -pin op2_i I1[23] -pin riscv_branch_control_top opr_b_i[23] -pin riscv_regfile_top rs2_data_o[23]
load net rs2_data[24] -attr @rip rs2_data_o[24] -pin op2_i I1[24] -pin riscv_branch_control_top opr_b_i[24] -pin riscv_regfile_top rs2_data_o[24]
load net rs2_data[25] -attr @rip rs2_data_o[25] -pin op2_i I1[25] -pin riscv_branch_control_top opr_b_i[25] -pin riscv_regfile_top rs2_data_o[25]
load net rs2_data[26] -attr @rip rs2_data_o[26] -pin op2_i I1[26] -pin riscv_branch_control_top opr_b_i[26] -pin riscv_regfile_top rs2_data_o[26]
load net rs2_data[27] -attr @rip rs2_data_o[27] -pin op2_i I1[27] -pin riscv_branch_control_top opr_b_i[27] -pin riscv_regfile_top rs2_data_o[27]
load net rs2_data[28] -attr @rip rs2_data_o[28] -pin op2_i I1[28] -pin riscv_branch_control_top opr_b_i[28] -pin riscv_regfile_top rs2_data_o[28]
load net rs2_data[29] -attr @rip rs2_data_o[29] -pin op2_i I1[29] -pin riscv_branch_control_top opr_b_i[29] -pin riscv_regfile_top rs2_data_o[29]
load net rs2_data[2] -attr @rip rs2_data_o[2] -pin op2_i I1[2] -pin riscv_branch_control_top opr_b_i[2] -pin riscv_regfile_top rs2_data_o[2]
load net rs2_data[30] -attr @rip rs2_data_o[30] -pin op2_i I1[30] -pin riscv_branch_control_top opr_b_i[30] -pin riscv_regfile_top rs2_data_o[30]
load net rs2_data[31] -attr @rip rs2_data_o[31] -pin op2_i I1[31] -pin riscv_branch_control_top opr_b_i[31] -pin riscv_regfile_top rs2_data_o[31]
load net rs2_data[3] -attr @rip rs2_data_o[3] -pin op2_i I1[3] -pin riscv_branch_control_top opr_b_i[3] -pin riscv_regfile_top rs2_data_o[3]
load net rs2_data[4] -attr @rip rs2_data_o[4] -pin op2_i I1[4] -pin riscv_branch_control_top opr_b_i[4] -pin riscv_regfile_top rs2_data_o[4]
load net rs2_data[5] -attr @rip rs2_data_o[5] -pin op2_i I1[5] -pin riscv_branch_control_top opr_b_i[5] -pin riscv_regfile_top rs2_data_o[5]
load net rs2_data[6] -attr @rip rs2_data_o[6] -pin op2_i I1[6] -pin riscv_branch_control_top opr_b_i[6] -pin riscv_regfile_top rs2_data_o[6]
load net rs2_data[7] -attr @rip rs2_data_o[7] -pin op2_i I1[7] -pin riscv_branch_control_top opr_b_i[7] -pin riscv_regfile_top rs2_data_o[7]
load net rs2_data[8] -attr @rip rs2_data_o[8] -pin op2_i I1[8] -pin riscv_branch_control_top opr_b_i[8] -pin riscv_regfile_top rs2_data_o[8]
load net rs2_data[9] -attr @rip rs2_data_o[9] -pin op2_i I1[9] -pin riscv_branch_control_top opr_b_i[9] -pin riscv_regfile_top rs2_data_o[9]
load net wr_data[0] -attr @rip O[0] -pin riscv_regfile_top wr_data_i[0] -pin wr_data_i O[0]
load net wr_data[10] -attr @rip O[10] -pin riscv_regfile_top wr_data_i[10] -pin wr_data_i O[10]
load net wr_data[11] -attr @rip O[11] -pin riscv_regfile_top wr_data_i[11] -pin wr_data_i O[11]
load net wr_data[12] -attr @rip O[12] -pin riscv_regfile_top wr_data_i[12] -pin wr_data_i O[12]
load net wr_data[13] -attr @rip O[13] -pin riscv_regfile_top wr_data_i[13] -pin wr_data_i O[13]
load net wr_data[14] -attr @rip O[14] -pin riscv_regfile_top wr_data_i[14] -pin wr_data_i O[14]
load net wr_data[15] -attr @rip O[15] -pin riscv_regfile_top wr_data_i[15] -pin wr_data_i O[15]
load net wr_data[16] -attr @rip O[16] -pin riscv_regfile_top wr_data_i[16] -pin wr_data_i O[16]
load net wr_data[17] -attr @rip O[17] -pin riscv_regfile_top wr_data_i[17] -pin wr_data_i O[17]
load net wr_data[18] -attr @rip O[18] -pin riscv_regfile_top wr_data_i[18] -pin wr_data_i O[18]
load net wr_data[19] -attr @rip O[19] -pin riscv_regfile_top wr_data_i[19] -pin wr_data_i O[19]
load net wr_data[1] -attr @rip O[1] -pin riscv_regfile_top wr_data_i[1] -pin wr_data_i O[1]
load net wr_data[20] -attr @rip O[20] -pin riscv_regfile_top wr_data_i[20] -pin wr_data_i O[20]
load net wr_data[21] -attr @rip O[21] -pin riscv_regfile_top wr_data_i[21] -pin wr_data_i O[21]
load net wr_data[22] -attr @rip O[22] -pin riscv_regfile_top wr_data_i[22] -pin wr_data_i O[22]
load net wr_data[23] -attr @rip O[23] -pin riscv_regfile_top wr_data_i[23] -pin wr_data_i O[23]
load net wr_data[24] -attr @rip O[24] -pin riscv_regfile_top wr_data_i[24] -pin wr_data_i O[24]
load net wr_data[25] -attr @rip O[25] -pin riscv_regfile_top wr_data_i[25] -pin wr_data_i O[25]
load net wr_data[26] -attr @rip O[26] -pin riscv_regfile_top wr_data_i[26] -pin wr_data_i O[26]
load net wr_data[27] -attr @rip O[27] -pin riscv_regfile_top wr_data_i[27] -pin wr_data_i O[27]
load net wr_data[28] -attr @rip O[28] -pin riscv_regfile_top wr_data_i[28] -pin wr_data_i O[28]
load net wr_data[29] -attr @rip O[29] -pin riscv_regfile_top wr_data_i[29] -pin wr_data_i O[29]
load net wr_data[2] -attr @rip O[2] -pin riscv_regfile_top wr_data_i[2] -pin wr_data_i O[2]
load net wr_data[30] -attr @rip O[30] -pin riscv_regfile_top wr_data_i[30] -pin wr_data_i O[30]
load net wr_data[31] -attr @rip O[31] -pin riscv_regfile_top wr_data_i[31] -pin wr_data_i O[31]
load net wr_data[3] -attr @rip O[3] -pin riscv_regfile_top wr_data_i[3] -pin wr_data_i O[3]
load net wr_data[4] -attr @rip O[4] -pin riscv_regfile_top wr_data_i[4] -pin wr_data_i O[4]
load net wr_data[5] -attr @rip O[5] -pin riscv_regfile_top wr_data_i[5] -pin wr_data_i O[5]
load net wr_data[6] -attr @rip O[6] -pin riscv_regfile_top wr_data_i[6] -pin wr_data_i O[6]
load net wr_data[7] -attr @rip O[7] -pin riscv_regfile_top wr_data_i[7] -pin wr_data_i O[7]
load net wr_data[8] -attr @rip O[8] -pin riscv_regfile_top wr_data_i[8] -pin wr_data_i O[8]
load net wr_data[9] -attr @rip O[9] -pin riscv_regfile_top wr_data_i[9] -pin wr_data_i O[9]
load net zero_extnd -pin riscv_control_top zero_extnd_o -pin riscv_data_mem_control_top data_zero_extnd_i
netloc zero_extnd 1 8 1 3250 610n
load netBundle @data_mem_rd_data_i 32 data_mem_rd_data_i[31] data_mem_rd_data_i[30] data_mem_rd_data_i[29] data_mem_rd_data_i[28] data_mem_rd_data_i[27] data_mem_rd_data_i[26] data_mem_rd_data_i[25] data_mem_rd_data_i[24] data_mem_rd_data_i[23] data_mem_rd_data_i[22] data_mem_rd_data_i[21] data_mem_rd_data_i[20] data_mem_rd_data_i[19] data_mem_rd_data_i[18] data_mem_rd_data_i[17] data_mem_rd_data_i[16] data_mem_rd_data_i[15] data_mem_rd_data_i[14] data_mem_rd_data_i[13] data_mem_rd_data_i[12] data_mem_rd_data_i[11] data_mem_rd_data_i[10] data_mem_rd_data_i[9] data_mem_rd_data_i[8] data_mem_rd_data_i[7] data_mem_rd_data_i[6] data_mem_rd_data_i[5] data_mem_rd_data_i[4] data_mem_rd_data_i[3] data_mem_rd_data_i[2] data_mem_rd_data_i[1] data_mem_rd_data_i[0] -autobundled
netbloc @data_mem_rd_data_i 1 0 9 NJ 990 NJ 990 NJ 990 NJ 990 NJ 990 NJ 990 2180J 940 NJ 940 3270J
load netBundle @instr_mem_rd_data_i 32 instr_mem_rd_data_i[31] instr_mem_rd_data_i[30] instr_mem_rd_data_i[29] instr_mem_rd_data_i[28] instr_mem_rd_data_i[27] instr_mem_rd_data_i[26] instr_mem_rd_data_i[25] instr_mem_rd_data_i[24] instr_mem_rd_data_i[23] instr_mem_rd_data_i[22] instr_mem_rd_data_i[21] instr_mem_rd_data_i[20] instr_mem_rd_data_i[19] instr_mem_rd_data_i[18] instr_mem_rd_data_i[17] instr_mem_rd_data_i[16] instr_mem_rd_data_i[15] instr_mem_rd_data_i[14] instr_mem_rd_data_i[13] instr_mem_rd_data_i[12] instr_mem_rd_data_i[11] instr_mem_rd_data_i[10] instr_mem_rd_data_i[9] instr_mem_rd_data_i[8] instr_mem_rd_data_i[7] instr_mem_rd_data_i[6] instr_mem_rd_data_i[5] instr_mem_rd_data_i[4] instr_mem_rd_data_i[3] instr_mem_rd_data_i[2] instr_mem_rd_data_i[1] instr_mem_rd_data_i[0] -autobundled
netbloc @instr_mem_rd_data_i 1 0 9 NJ 1060 NJ 1060 NJ 1060 NJ 1060 NJ 1060 NJ 1060 NJ 1060 NJ 1060 NJ
load netBundle @data_mem_addr_o 32 data_mem_addr_o[31] data_mem_addr_o[30] data_mem_addr_o[29] data_mem_addr_o[28] data_mem_addr_o[27] data_mem_addr_o[26] data_mem_addr_o[25] data_mem_addr_o[24] data_mem_addr_o[23] data_mem_addr_o[22] data_mem_addr_o[21] data_mem_addr_o[20] data_mem_addr_o[19] data_mem_addr_o[18] data_mem_addr_o[17] data_mem_addr_o[16] data_mem_addr_o[15] data_mem_addr_o[14] data_mem_addr_o[13] data_mem_addr_o[12] data_mem_addr_o[11] data_mem_addr_o[10] data_mem_addr_o[9] data_mem_addr_o[8] data_mem_addr_o[7] data_mem_addr_o[6] data_mem_addr_o[5] data_mem_addr_o[4] data_mem_addr_o[3] data_mem_addr_o[2] data_mem_addr_o[1] data_mem_addr_o[0] -autobundled
netbloc @data_mem_addr_o 1 9 1 3740J 770n
load netBundle @data_mem_byte_en_o 2 data_mem_byte_en_o[1] data_mem_byte_en_o[0] -autobundled
netbloc @data_mem_byte_en_o 1 9 1 NJ 800
load netBundle @data_mem_wr_data_o 32 data_mem_wr_data_o[31] data_mem_wr_data_o[30] data_mem_wr_data_o[29] data_mem_wr_data_o[28] data_mem_wr_data_o[27] data_mem_wr_data_o[26] data_mem_wr_data_o[25] data_mem_wr_data_o[24] data_mem_wr_data_o[23] data_mem_wr_data_o[22] data_mem_wr_data_o[21] data_mem_wr_data_o[20] data_mem_wr_data_o[19] data_mem_wr_data_o[18] data_mem_wr_data_o[17] data_mem_wr_data_o[16] data_mem_wr_data_o[15] data_mem_wr_data_o[14] data_mem_wr_data_o[13] data_mem_wr_data_o[12] data_mem_wr_data_o[11] data_mem_wr_data_o[10] data_mem_wr_data_o[9] data_mem_wr_data_o[8] data_mem_wr_data_o[7] data_mem_wr_data_o[6] data_mem_wr_data_o[5] data_mem_wr_data_o[4] data_mem_wr_data_o[3] data_mem_wr_data_o[2] data_mem_wr_data_o[1] data_mem_wr_data_o[0] -autobundled
netbloc @data_mem_wr_data_o 1 9 1 NJ 860
load netBundle @instr_mem_addr_o 32 instr_mem_addr_o[31] instr_mem_addr_o[30] instr_mem_addr_o[29] instr_mem_addr_o[28] instr_mem_addr_o[27] instr_mem_addr_o[26] instr_mem_addr_o[25] instr_mem_addr_o[24] instr_mem_addr_o[23] instr_mem_addr_o[22] instr_mem_addr_o[21] instr_mem_addr_o[20] instr_mem_addr_o[19] instr_mem_addr_o[18] instr_mem_addr_o[17] instr_mem_addr_o[16] instr_mem_addr_o[15] instr_mem_addr_o[14] instr_mem_addr_o[13] instr_mem_addr_o[12] instr_mem_addr_o[11] instr_mem_addr_o[10] instr_mem_addr_o[9] instr_mem_addr_o[8] instr_mem_addr_o[7] instr_mem_addr_o[6] instr_mem_addr_o[5] instr_mem_addr_o[4] instr_mem_addr_o[3] instr_mem_addr_o[2] instr_mem_addr_o[1] instr_mem_addr_o[0] -autobundled
netbloc @instr_mem_addr_o 1 9 1 NJ 1020
load netBundle @next_pc 32 next_pc[31] next_pc[30] next_pc[29] next_pc[28] next_pc[27] next_pc[26] next_pc[25] next_pc[24] next_pc[23] next_pc[22] next_pc[21] next_pc[20] next_pc[19] next_pc[18] next_pc[17] next_pc[16] next_pc[15] next_pc[14] next_pc[13] next_pc[12] next_pc[11] next_pc[10] next_pc[9] next_pc[8] next_pc[7] next_pc[6] next_pc[5] next_pc[4] next_pc[3] next_pc[2] next_pc[1] next_pc[0] -autobundled
netbloc @next_pc 1 6 1 2140J 820n
load netBundle @op1 32 op1[31] op1[30] op1[29] op1[28] op1[27] op1[26] op1[25] op1[24] op1[23] op1[22] op1[21] op1[20] op1[19] op1[18] op1[17] op1[16] op1[15] op1[14] op1[13] op1[12] op1[11] op1[10] op1[9] op1[8] op1[7] op1[6] op1[5] op1[4] op1[3] op1[2] op1[1] op1[0] -autobundled
netbloc @op1 1 1 1 370 410n
load netBundle @op2 32 op2[31] op2[30] op2[29] op2[28] op2[27] op2[26] op2[25] op2[24] op2[23] op2[22] op2[21] op2[20] op2[19] op2[18] op2[17] op2[16] op2[15] op2[14] op2[13] op2[12] op2[11] op2[10] op2[9] op2[8] op2[7] op2[6] op2[5] op2[4] op2[3] op2[2] op2[1] op2[0] -autobundled
netbloc @op2 1 1 1 330 530n
load netBundle @pc_count 32 pc_count[31] pc_count[30] pc_count[29] pc_count[28] pc_count[27] pc_count[26] pc_count[25] pc_count[24] pc_count[23] pc_count[22] pc_count[21] pc_count[20] pc_count[19] pc_count[18] pc_count[17] pc_count[16] pc_count[15] pc_count[14] pc_count[13] pc_count[12] pc_count[11] pc_count[10] pc_count[9] pc_count[8] pc_count[7] pc_count[6] pc_count[5] pc_count[4] pc_count[3] pc_count[2] pc_count[1] pc_count[0] -autobundled
netbloc @pc_count 1 7 1 2740 790n
load netBundle @alu_func 4 alu_func[3] alu_func[2] alu_func[1] alu_func[0] -autobundled
netbloc @alu_func 1 1 8 390 470 NJ 470 NJ 470 1440J 450 NJ 450 NJ 450 2700J 370 3150
load netBundle @data_byte 2 data_byte[1] data_byte[0] -autobundled
netbloc @data_byte 1 8 1 3330 450n
load netBundle @rf_wr_data 2 rf_wr_data[1] rf_wr_data[0] -autobundled
netbloc @rf_wr_data 1 3 6 NJ 650 NJ 650 NJ 650 NJ 650 NJ 650 3150
load netBundle @data_mem_rd_data 32 data_mem_rd_data[31] data_mem_rd_data[30] data_mem_rd_data[29] data_mem_rd_data[28] data_mem_rd_data[27] data_mem_rd_data[26] data_mem_rd_data[25] data_mem_rd_data[24] data_mem_rd_data[23] data_mem_rd_data[22] data_mem_rd_data[21] data_mem_rd_data[20] data_mem_rd_data[19] data_mem_rd_data[18] data_mem_rd_data[17] data_mem_rd_data[16] data_mem_rd_data[15] data_mem_rd_data[14] data_mem_rd_data[13] data_mem_rd_data[12] data_mem_rd_data[11] data_mem_rd_data[10] data_mem_rd_data[9] data_mem_rd_data[8] data_mem_rd_data[7] data_mem_rd_data[6] data_mem_rd_data[5] data_mem_rd_data[4] data_mem_rd_data[3] data_mem_rd_data[2] data_mem_rd_data[1] data_mem_rd_data[0] -autobundled
netbloc @data_mem_rd_data 1 2 8 730 770 1080J 730 NJ 730 1820J 710 NJ 710 2600J 700 NJ 700 3720
load netBundle @funct3 3 funct3[2] funct3[1] funct3[0] -autobundled
netbloc @funct3 1 4 4 1460 470 NJ 470 NJ 470 2660
load netBundle @instr_imm 32 instr_imm[31] instr_imm[30] instr_imm[29] instr_imm[28] instr_imm[27] instr_imm[26] instr_imm[25] instr_imm[24] instr_imm[23] instr_imm[22] instr_imm[21] instr_imm[20] instr_imm[19] instr_imm[18] instr_imm[17] instr_imm[16] instr_imm[15] instr_imm[14] instr_imm[13] instr_imm[12] instr_imm[11] instr_imm[10] instr_imm[9] instr_imm[8] instr_imm[7] instr_imm[6] instr_imm[5] instr_imm[4] instr_imm[3] instr_imm[2] instr_imm[1] instr_imm[0] -autobundled
netbloc @instr_imm 1 0 8 40 630 NJ 630 670 370 NJ 370 NJ 370 NJ 370 NJ 370 2600
load netBundle @op_code 7 op_code[6] op_code[5] op_code[4] op_code[3] op_code[2] op_code[1] op_code[0] -autobundled
netbloc @op_code 1 7 1 2780 190n
load netBundle @rd_addr 5 rd_addr[4] rd_addr[3] rd_addr[2] rd_addr[1] rd_addr[0] -autobundled
netbloc @rd_addr 1 3 5 1080 10 NJ 10 NJ 10 NJ 10 2540
load netBundle @rs1_addr 5 rs1_addr[4] rs1_addr[3] rs1_addr[2] rs1_addr[1] rs1_addr[0] -autobundled
netbloc @rs1_addr 1 3 5 1040 350 NJ 350 NJ 350 NJ 350 2540
load netBundle @rs2_addr 5 rs2_addr[4] rs2_addr[3] rs2_addr[2] rs2_addr[1] rs2_addr[0] -autobundled
netbloc @rs2_addr 1 3 5 1060 390 NJ 390 NJ 390 NJ 390 2560
load netBundle @alu_res 32 alu_res[31] alu_res[30] alu_res[29] alu_res[28] alu_res[27] alu_res[26] alu_res[25] alu_res[24] alu_res[23] alu_res[22] alu_res[21] alu_res[20] alu_res[19] alu_res[18] alu_res[17] alu_res[16] alu_res[15] alu_res[14] alu_res[13] alu_res[12] alu_res[11] alu_res[10] alu_res[9] alu_res[8] alu_res[7] alu_res[6] alu_res[5] alu_res[4] alu_res[3] alu_res[2] alu_res[1] alu_res[0] -autobundled
netbloc @alu_res 1 2 7 690 690 NJ 690 NJ 690 NJ 690 2160 770 2560J 880 3230
load netBundle @instr_mem_instr 32 instr_mem_instr[31] instr_mem_instr[30] instr_mem_instr[29] instr_mem_instr[28] instr_mem_instr[27] instr_mem_instr[26] instr_mem_instr[25] instr_mem_instr[24] instr_mem_instr[23] instr_mem_instr[22] instr_mem_instr[21] instr_mem_instr[20] instr_mem_instr[19] instr_mem_instr[18] instr_mem_instr[17] instr_mem_instr[16] instr_mem_instr[15] instr_mem_instr[14] instr_mem_instr[13] instr_mem_instr[12] instr_mem_instr[11] instr_mem_instr[10] instr_mem_instr[9] instr_mem_instr[8] instr_mem_instr[7] instr_mem_instr[6] instr_mem_instr[5] instr_mem_instr[4] instr_mem_instr[3] instr_mem_instr[2] instr_mem_instr[1] instr_mem_instr[0] -autobundled
netbloc @instr_mem_instr 1 6 4 2200 960 NJ 960 NJ 960 3740
load netBundle @rs1_data 32 rs1_data[31] rs1_data[30] rs1_data[29] rs1_data[28] rs1_data[27] rs1_data[26] rs1_data[25] rs1_data[24] rs1_data[23] rs1_data[22] rs1_data[21] rs1_data[20] rs1_data[19] rs1_data[18] rs1_data[17] rs1_data[16] rs1_data[15] rs1_data[14] rs1_data[13] rs1_data[12] rs1_data[11] rs1_data[10] rs1_data[9] rs1_data[8] rs1_data[7] rs1_data[6] rs1_data[5] rs1_data[4] rs1_data[3] rs1_data[2] rs1_data[1] rs1_data[0] -autobundled
netbloc @rs1_data 1 0 5 60 350 NJ 350 730J 430 NJ 430 1400
load netBundle @rs2_data 32 rs2_data[31] rs2_data[30] rs2_data[29] rs2_data[28] rs2_data[27] rs2_data[26] rs2_data[25] rs2_data[24] rs2_data[23] rs2_data[22] rs2_data[21] rs2_data[20] rs2_data[19] rs2_data[18] rs2_data[17] rs2_data[16] rs2_data[15] rs2_data[14] rs2_data[13] rs2_data[12] rs2_data[11] rs2_data[10] rs2_data[9] rs2_data[8] rs2_data[7] rs2_data[6] rs2_data[5] rs2_data[4] rs2_data[3] rs2_data[2] rs2_data[1] rs2_data[0] -autobundled
netbloc @rs2_data 1 0 5 60 610 350J 490 NJ 490 NJ 490 1380
load netBundle @wr_data 32 wr_data[31] wr_data[30] wr_data[29] wr_data[28] wr_data[27] wr_data[26] wr_data[25] wr_data[24] wr_data[23] wr_data[22] wr_data[21] wr_data[20] wr_data[19] wr_data[18] wr_data[17] wr_data[16] wr_data[15] wr_data[14] wr_data[13] wr_data[12] wr_data[11] wr_data[10] wr_data[9] wr_data[8] wr_data[7] wr_data[6] wr_data[5] wr_data[4] wr_data[3] wr_data[2] wr_data[1] wr_data[0] -autobundled
netbloc @wr_data 1 3 1 980 290n
load netBundle @pc_reg 32 pc_reg[31] pc_reg[30] pc_reg[29] pc_reg[28] pc_reg[27] pc_reg[26] pc_reg[25] pc_reg[24] pc_reg[23] pc_reg[22] pc_reg[21] pc_reg[20] pc_reg[19] pc_reg[18] pc_reg[17] pc_reg[16] pc_reg[15] pc_reg[14] pc_reg[13] pc_reg[12] pc_reg[11] pc_reg[10] pc_reg[9] pc_reg[8] pc_reg[7] pc_reg[6] pc_reg[5] pc_reg[4] pc_reg[3] pc_reg[2] pc_reg[1] pc_reg[0] -autobundled
netbloc @pc_reg 1 0 9 20 650 NJ 650 710 750 1060J 710 NJ 710 1800 1010 NJ 1010 NJ 1010 3190
levelinfo -pg 1 0 190 490 860 1200 1620 2020 2350 2960 3480 3760
pagesize -pg 1 -db -bbox -sgen -220 0 3980 1120
show
zoom 0.25161
scrollpos -54 -95
#
# initialize ictrl to current module riscv_top work:riscv_top:NOFILE
ictrl init topinfo |

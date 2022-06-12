/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : P-2019.03-SP1
// Date      : Wed Nov 17 16:03:19 2021
/////////////////////////////////////////////////////////////


module MyDesign ( dut_run, dut_busy, reset_b, clk, dut_sram_write_address, 
        dut_sram_write_data, dut_sram_write_enable, dut_sram_read_address, 
        sram_dut_read_data, dut_wmem_read_address, wmem_dut_read_data );
  output [11:0] dut_sram_write_address;
  output [15:0] dut_sram_write_data;
  output [11:0] dut_sram_read_address;
  input [15:0] sram_dut_read_data;
  output [11:0] dut_wmem_read_address;
  input [15:0] wmem_dut_read_data;
  input dut_run, reset_b, clk;
  output dut_busy, dut_sram_write_enable;
  wire   u1_N157, u1_N155, u2_N12, u2_N10, n51, n52, n53, n54, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n109,
         n110, n111, n112, n113, n114, n115, n116, n213, n214, n215, n216,
         n217, n218, n219, n220, n221, n222, n223, n224, n225, n226, n227,
         n228, n229, n230, n231, n232, n233, n234, n235, n236, n237, n238,
         n239, n240, n241, n242, n243, n244, n245, n246, n247, n248, n249,
         n250, n251, n252, n253, n254, n255, n256, n257, n258, n259, n260,
         n261, n262, n263, n264, n265, n266, n267, n268, n269, n270, n271,
         n272, n273, n274, n275, n276, n277, n278, n279, n280, n281, n282,
         n283, n284, n285, n286, n287, n288, n289, n290, n291, n292, n293,
         n294, n295, n296, n297, n298, n299, n300, n301, n302, n303, n304,
         n305, n306, n307, n308, n309, n310, n311, n312, n313, n314, n315,
         n316, n317, n318, n319, n320, n321, n322, n323, n324, n325, n326,
         n327, n328, n330, n331, n332, n333, n334, n335, n336, n337, n338,
         n340, n341, n342, n343, n344, n345, n346, n347, n348, n349, n350,
         n352, n353, n354, n355, n356, n357, n358, n359, n360, n361, n362,
         n363, n364, n365, n366, n367, n368, n369, n370, n371, n372, n373,
         n374, n375, n376, n377, n378, n379, n380, n381, n382, n383, n384,
         n385, n386, n387, n388, n389, n390, n391, n392, n393, n394, n395,
         n396, n397, n398, n399, n400, n401, n402, n403, n404, n405, n406,
         n407, n408, n409, n410, n411, n412, n413, n414, n415, n416, n417,
         n418, n419, n420, n421, n422, n423, n424, n425, n426, n427, n428,
         n429, n430, n431, n432, n433, n434, n435, n436, n437, n438, n439,
         n440, n441, n442, n443, n444, n445, n446, n447, n448, n449, n450,
         n451, n452, n453, n454, n455, n456, n457, n458, n459, n460, n461,
         n462, n463, n464, n465, n466, n467, n468, n469, n470, n471, n472,
         n473, n474, n475, n476, n477, n478, n479, n480, n481, n482, n483,
         n484, n485, n486, n487, n488, n489, n490, n491, n492, n493, n494,
         n495, n496, n497, n498, n499, n500, n501, n502, n503, n504, n505,
         n506, n507, n509, n510, n511, n512, n513, n514, n515, n516, n517,
         n518, n519, n520, n521, n522, n523, n524, n525, n526, n527, n528,
         n529, n530, n531, n532, n533, n534, n535, n536, n537, n538, n539,
         n540, n541, n542, n544;
  wire   [3:0] dtc;
  wire   [3:0] u1_count4;
  wire   [3:0] u1_count3;
  wire   [3:0] u1_count2;
  wire   [3:0] u1_count1;
  wire   [2:0] u2_current_state;

  DFF_X1 u2_current_state_reg_2_ ( .D(u2_N12), .CK(clk), .Q(
        u2_current_state[2]), .QN(n534) );
  DFF_X1 u1_sig_out_reg_1_ ( .D(n542), .CK(clk), .Q(dtc[1]), .QN(n536) );
  DFF_X1 u2_current_state_reg_1_ ( .D(n541), .CK(clk), .Q(u2_current_state[1]), 
        .QN(n533) );
  DFF_X1 u1_sig_out_reg_0_ ( .D(u1_N155), .CK(clk), .Q(dtc[0]) );
  DFF_X1 u2_current_state_reg_0_ ( .D(u2_N10), .CK(clk), .Q(
        u2_current_state[0]), .QN(n535) );
  DFF_X1 u1_sig_out_reg_3_ ( .D(u1_N157), .CK(clk), .Q(dtc[3]), .QN(n537) );
  DFF_X1 u1_sig_out_reg_2_ ( .D(n544), .CK(clk), .Q(dtc[2]) );
  DFF_X1 u1_count4_reg_0_ ( .D(n71), .CK(clk), .Q(u1_count4[0]), .QN(n216) );
  DFF_X1 u1_count4_reg_1_ ( .D(n70), .CK(clk), .Q(u1_count4[1]) );
  DFF_X1 u1_count4_reg_2_ ( .D(n69), .CK(clk), .Q(u1_count4[2]) );
  DFF_X1 u1_count4_reg_3_ ( .D(n68), .CK(clk), .Q(u1_count4[3]) );
  DFF_X1 u1_count3_reg_0_ ( .D(n67), .CK(clk), .Q(u1_count3[0]) );
  DFF_X1 u1_count3_reg_1_ ( .D(n66), .CK(clk), .Q(u1_count3[1]), .QN(n217) );
  DFF_X1 u1_count3_reg_2_ ( .D(n65), .CK(clk), .Q(u1_count3[2]) );
  DFF_X1 u1_count3_reg_3_ ( .D(n64), .CK(clk), .Q(u1_count3[3]) );
  DFF_X1 u1_count2_reg_0_ ( .D(n63), .CK(clk), .Q(u1_count2[0]) );
  DFF_X1 u1_count2_reg_1_ ( .D(n62), .CK(clk), .Q(u1_count2[1]) );
  DFF_X1 u1_count2_reg_2_ ( .D(n61), .CK(clk), .Q(u1_count2[2]) );
  DFF_X1 u1_count2_reg_3_ ( .D(n60), .CK(clk), .Q(u1_count2[3]) );
  DFF_X1 u1_count1_reg_0_ ( .D(n59), .CK(clk), .Q(u1_count1[0]), .QN(n219) );
  DFF_X1 u1_count1_reg_1_ ( .D(n58), .CK(clk), .Q(u1_count1[1]), .QN(n218) );
  DFF_X1 u1_count1_reg_2_ ( .D(n57), .CK(clk), .Q(u1_count1[2]) );
  DFF_X1 u1_count1_reg_3_ ( .D(n56), .CK(clk), .Q(u1_count1[3]) );
  DFF_X2 u1_write_data_reg_0_ ( .D(n51), .CK(clk), .Q(dut_sram_write_data[0]), 
        .QN(n538) );
  DFF_X2 u1_write_data_reg_2_ ( .D(n52), .CK(clk), .Q(dut_sram_write_data[2]), 
        .QN(n539) );
  DFF_X2 u1_write_data_reg_1_ ( .D(n53), .CK(clk), .Q(dut_sram_write_data[1]), 
        .QN(n540) );
  DFF_X2 u1_write_data_reg_3_ ( .D(n54), .CK(clk), .Q(dut_sram_write_data[3])
         );
  INV_X4 U119 ( .A(1'b1), .ZN(dut_wmem_read_address[0]) );
  INV_X4 U120 ( .A(1'b1), .ZN(dut_wmem_read_address[1]) );
  INV_X4 U121 ( .A(1'b1), .ZN(dut_wmem_read_address[2]) );
  INV_X1 U122 ( .A(n507), .ZN(n114) );
  AOI21_X1 U123 ( .B1(n479), .B2(n472), .A(n478), .ZN(n485) );
  NOR2_X1 U124 ( .A1(u1_N157), .A2(n542), .ZN(n528) );
  XNOR2_X1 U125 ( .A(n109), .B(n350), .ZN(n355) );
  XNOR2_X1 U126 ( .A(n380), .B(n384), .ZN(n109) );
  NAND2_X1 U127 ( .A1(n111), .A2(n110), .ZN(n56) );
  NAND2_X1 U128 ( .A1(n528), .A2(u1_count1[3]), .ZN(n110) );
  NAND2_X1 U129 ( .A1(n507), .A2(n542), .ZN(n111) );
  INV_X2 U130 ( .A(n521), .ZN(n376) );
  XNOR2_X1 U131 ( .A(n370), .B(n377), .ZN(n521) );
  NAND2_X1 U132 ( .A1(n112), .A2(n542), .ZN(n341) );
  NAND2_X1 U133 ( .A1(n114), .A2(n113), .ZN(n112) );
  OAI21_X1 U134 ( .B1(n511), .B2(n500), .A(n509), .ZN(n113) );
  NAND2_X2 U135 ( .A1(n426), .A2(n425), .ZN(n53) );
  NAND2_X2 U136 ( .A1(n424), .A2(n542), .ZN(n426) );
  NAND2_X2 U137 ( .A1(n341), .A2(n340), .ZN(n51) );
  NAND2_X2 U138 ( .A1(n463), .A2(n462), .ZN(n479) );
  OAI21_X2 U139 ( .B1(n410), .B2(n409), .A(n411), .ZN(n420) );
  INV_X1 U140 ( .A(wmem_dut_read_data[0]), .ZN(n115) );
  INV_X4 U141 ( .A(n115), .ZN(n116) );
  NAND2_X2 U142 ( .A1(n379), .A2(n378), .ZN(n398) );
  XNOR2_X2 U143 ( .A(n116), .B(sram_dut_read_data[0]), .ZN(n285) );
  OR2_X1 U144 ( .A1(n420), .A2(n419), .ZN(n418) );
  OR2_X1 U145 ( .A1(n355), .A2(n354), .ZN(n215) );
  OAI21_X1 U146 ( .B1(n515), .B2(n496), .A(n513), .ZN(n422) );
  INV_X1 U147 ( .A(n395), .ZN(n405) );
  AND2_X1 U148 ( .A1(n476), .A2(n525), .ZN(n486) );
  INV_X1 U149 ( .A(n408), .ZN(n423) );
  OR2_X1 U150 ( .A1(n332), .A2(n326), .ZN(n328) );
  INV_X1 U151 ( .A(n527), .ZN(n460) );
  NAND2_X1 U152 ( .A1(n213), .A2(n411), .ZN(n412) );
  OR2_X1 U153 ( .A1(n262), .A2(n261), .ZN(n260) );
  OR2_X1 U154 ( .A1(n390), .A2(n389), .ZN(n388) );
  OR2_X1 U155 ( .A1(n474), .A2(n473), .ZN(n472) );
  OR2_X1 U156 ( .A1(n325), .A2(n324), .ZN(n323) );
  INV_X1 U157 ( .A(n410), .ZN(n213) );
  NOR2_X1 U158 ( .A1(n214), .A2(n251), .ZN(n410) );
  NAND2_X1 U159 ( .A1(n214), .A2(n251), .ZN(n411) );
  OR2_X2 U160 ( .A1(n440), .A2(n439), .ZN(n438) );
  AOI21_X2 U161 ( .B1(n416), .B2(n414), .A(n250), .ZN(n409) );
  XNOR2_X1 U162 ( .A(n234), .B(n233), .ZN(n214) );
  OR2_X1 U163 ( .A1(n542), .A2(n540), .ZN(n425) );
  OR2_X1 U164 ( .A1(n542), .A2(n539), .ZN(n406) );
  XNOR2_X1 U165 ( .A(n315), .B(n319), .ZN(n295) );
  OR2_X2 U166 ( .A1(n531), .A2(n220), .ZN(n491) );
  AND2_X2 U167 ( .A1(n433), .A2(u1_count4[0]), .ZN(n431) );
  OR2_X2 U168 ( .A1(n284), .A2(n285), .ZN(n283) );
  CLKBUF_X3 U169 ( .A(wmem_dut_read_data[3]), .Z(n224) );
  BUF_X2 U170 ( .A(wmem_dut_read_data[1]), .Z(n427) );
  BUF_X2 U171 ( .A(wmem_dut_read_data[2]), .Z(n428) );
  BUF_X2 U172 ( .A(wmem_dut_read_data[6]), .Z(n344) );
  CLKBUF_X3 U173 ( .A(wmem_dut_read_data[7]), .Z(n276) );
  INV_X2 U174 ( .A(1'b1), .ZN(dut_sram_write_address[11]) );
  INV_X2 U175 ( .A(1'b1), .ZN(dut_sram_write_address[10]) );
  INV_X2 U176 ( .A(1'b1), .ZN(dut_sram_write_address[9]) );
  INV_X2 U177 ( .A(1'b1), .ZN(dut_sram_write_address[8]) );
  INV_X2 U178 ( .A(1'b1), .ZN(dut_sram_write_address[7]) );
  INV_X2 U179 ( .A(1'b1), .ZN(dut_sram_write_address[6]) );
  INV_X2 U180 ( .A(1'b1), .ZN(dut_sram_write_address[5]) );
  INV_X2 U181 ( .A(1'b1), .ZN(dut_sram_write_address[4]) );
  INV_X2 U182 ( .A(1'b1), .ZN(dut_sram_write_address[3]) );
  INV_X2 U183 ( .A(1'b1), .ZN(dut_sram_write_address[2]) );
  INV_X2 U184 ( .A(1'b1), .ZN(dut_sram_write_address[1]) );
  INV_X2 U185 ( .A(1'b1), .ZN(dut_sram_write_address[0]) );
  INV_X2 U186 ( .A(1'b1), .ZN(dut_sram_write_data[15]) );
  INV_X2 U187 ( .A(1'b1), .ZN(dut_sram_write_data[14]) );
  INV_X2 U188 ( .A(1'b1), .ZN(dut_sram_write_data[13]) );
  INV_X2 U189 ( .A(1'b1), .ZN(dut_sram_write_data[12]) );
  INV_X2 U190 ( .A(1'b1), .ZN(dut_sram_write_data[11]) );
  INV_X2 U191 ( .A(1'b1), .ZN(dut_sram_write_data[10]) );
  INV_X2 U192 ( .A(1'b1), .ZN(dut_sram_write_data[9]) );
  INV_X2 U193 ( .A(1'b1), .ZN(dut_sram_write_data[8]) );
  INV_X2 U194 ( .A(1'b1), .ZN(dut_sram_write_data[7]) );
  INV_X2 U195 ( .A(1'b1), .ZN(dut_sram_write_data[6]) );
  INV_X2 U196 ( .A(1'b1), .ZN(dut_sram_write_data[5]) );
  INV_X2 U197 ( .A(1'b1), .ZN(dut_sram_write_data[4]) );
  INV_X2 U198 ( .A(1'b1), .ZN(dut_sram_read_address[11]) );
  INV_X2 U199 ( .A(1'b1), .ZN(dut_sram_read_address[10]) );
  INV_X2 U200 ( .A(1'b1), .ZN(dut_sram_read_address[9]) );
  INV_X2 U201 ( .A(1'b1), .ZN(dut_sram_read_address[8]) );
  INV_X2 U202 ( .A(1'b1), .ZN(dut_sram_read_address[7]) );
  INV_X2 U203 ( .A(1'b1), .ZN(dut_sram_read_address[6]) );
  INV_X2 U204 ( .A(1'b1), .ZN(dut_sram_read_address[5]) );
  INV_X2 U205 ( .A(1'b1), .ZN(dut_sram_read_address[4]) );
  INV_X2 U206 ( .A(1'b1), .ZN(dut_sram_read_address[3]) );
  INV_X2 U207 ( .A(1'b1), .ZN(dut_sram_read_address[2]) );
  INV_X2 U208 ( .A(1'b1), .ZN(dut_sram_read_address[1]) );
  INV_X2 U209 ( .A(1'b1), .ZN(dut_sram_read_address[0]) );
  INV_X2 U210 ( .A(1'b1), .ZN(dut_wmem_read_address[11]) );
  INV_X2 U211 ( .A(1'b1), .ZN(dut_wmem_read_address[10]) );
  INV_X2 U212 ( .A(1'b1), .ZN(dut_wmem_read_address[9]) );
  INV_X2 U213 ( .A(1'b1), .ZN(dut_wmem_read_address[8]) );
  INV_X2 U214 ( .A(1'b1), .ZN(dut_wmem_read_address[7]) );
  INV_X2 U215 ( .A(1'b1), .ZN(dut_wmem_read_address[6]) );
  INV_X2 U216 ( .A(1'b1), .ZN(dut_wmem_read_address[5]) );
  INV_X2 U217 ( .A(1'b1), .ZN(dut_wmem_read_address[4]) );
  INV_X2 U218 ( .A(1'b1), .ZN(dut_wmem_read_address[3]) );
  INV_X1 U267 ( .A(n413), .ZN(n250) );
  NAND2_X1 U268 ( .A1(n438), .A2(n461), .ZN(n463) );
  INV_X1 U269 ( .A(n531), .ZN(n504) );
  INV_X1 U270 ( .A(wmem_dut_read_data[4]), .ZN(n347) );
  INV_X1 U271 ( .A(n256), .ZN(n252) );
  INV_X1 U272 ( .A(n384), .ZN(n382) );
  INV_X1 U273 ( .A(n469), .ZN(n464) );
  OR2_X1 U274 ( .A1(n265), .A2(u1_count2[3]), .ZN(n267) );
  AND2_X1 U275 ( .A1(n336), .A2(n335), .ZN(n337) );
  AND2_X1 U276 ( .A1(n402), .A2(n401), .ZN(n403) );
  AND2_X1 U277 ( .A1(n483), .A2(n482), .ZN(n484) );
  OR2_X1 U278 ( .A1(n481), .A2(u1_count4[3]), .ZN(n483) );
  INV_X1 U279 ( .A(n493), .ZN(u2_N10) );
  INV_X1 U280 ( .A(n319), .ZN(n317) );
  INV_X1 U281 ( .A(n300), .ZN(n296) );
  INV_X1 U282 ( .A(n301), .ZN(n297) );
  INV_X1 U283 ( .A(sram_dut_read_data[5]), .ZN(n272) );
  INV_X1 U284 ( .A(n255), .ZN(n253) );
  NAND2_X1 U285 ( .A1(n229), .A2(n228), .ZN(n256) );
  INV_X1 U286 ( .A(n380), .ZN(n381) );
  NAND2_X1 U287 ( .A1(n343), .A2(n342), .ZN(n384) );
  NAND2_X1 U288 ( .A1(n349), .A2(n348), .ZN(n352) );
  INV_X1 U289 ( .A(n468), .ZN(n465) );
  NAND2_X1 U290 ( .A1(n430), .A2(n429), .ZN(n469) );
  OR2_X1 U291 ( .A1(n334), .A2(u1_count1[3]), .ZN(n336) );
  OR2_X1 U292 ( .A1(n280), .A2(n279), .ZN(n309) );
  NAND2_X1 U293 ( .A1(n249), .A2(n248), .ZN(n413) );
  OR2_X1 U294 ( .A1(n249), .A2(n248), .ZN(n414) );
  OR2_X1 U295 ( .A1(n400), .A2(u1_count3[3]), .ZN(n402) );
  OR2_X1 U296 ( .A1(n368), .A2(n367), .ZN(n372) );
  OR2_X1 U297 ( .A1(n452), .A2(n451), .ZN(n456) );
  AND2_X1 U298 ( .A1(n267), .A2(n266), .ZN(n268) );
  OR2_X1 U299 ( .A1(n398), .A2(n391), .ZN(n393) );
  OR2_X1 U300 ( .A1(n542), .A2(n538), .ZN(n340) );
  INV_X1 U301 ( .A(n510), .ZN(n57) );
  INV_X1 U302 ( .A(n512), .ZN(n58) );
  INV_X1 U303 ( .A(n501), .ZN(n59) );
  INV_X1 U304 ( .A(n514), .ZN(n61) );
  INV_X1 U305 ( .A(n516), .ZN(n62) );
  INV_X1 U306 ( .A(n497), .ZN(n63) );
  INV_X1 U307 ( .A(n518), .ZN(n64) );
  INV_X1 U308 ( .A(n522), .ZN(n66) );
  INV_X1 U309 ( .A(n495), .ZN(n67) );
  INV_X1 U310 ( .A(n524), .ZN(n68) );
  INV_X1 U311 ( .A(n526), .ZN(n69) );
  INV_X1 U312 ( .A(n529), .ZN(n70) );
  INV_X1 U313 ( .A(n499), .ZN(n71) );
  AND4_X1 U314 ( .A1(reset_b), .A2(n503), .A3(n502), .A4(n534), .ZN(n541) );
  INV_X1 U315 ( .A(reset_b), .ZN(n505) );
  INV_X1 U316 ( .A(sram_dut_read_data[6]), .ZN(n230) );
  NAND2_X1 U317 ( .A1(n287), .A2(n286), .ZN(n315) );
  INV_X1 U318 ( .A(sram_dut_read_data[9]), .ZN(n227) );
  NAND3_X2 U319 ( .A1(n532), .A2(n531), .A3(n530), .ZN(dut_busy) );
  INV_X1 U320 ( .A(n315), .ZN(n316) );
  INV_X1 U321 ( .A(n494), .ZN(n375) );
  INV_X1 U322 ( .A(n498), .ZN(n459) );
  INV_X1 U323 ( .A(n236), .ZN(n237) );
  INV_X1 U324 ( .A(n520), .ZN(n65) );
  NAND2_X1 U325 ( .A1(n534), .A2(u2_current_state[1]), .ZN(n531) );
  NAND2_X1 U326 ( .A1(n536), .A2(u2_current_state[0]), .ZN(n220) );
  INV_X4 U327 ( .A(n491), .ZN(n542) );
  OAI21_X1 U328 ( .B1(dut_run), .B2(u2_current_state[0]), .A(n534), .ZN(n532)
         );
  NAND2_X1 U329 ( .A1(u2_current_state[0]), .A2(dtc[2]), .ZN(n221) );
  NAND2_X1 U330 ( .A1(n221), .A2(n533), .ZN(n503) );
  NOR2_X1 U331 ( .A1(n532), .A2(n503), .ZN(n544) );
  NAND2_X1 U332 ( .A1(n534), .A2(n533), .ZN(n223) );
  AOI21_X1 U333 ( .B1(n504), .B2(n537), .A(u2_current_state[0]), .ZN(n222) );
  AOI211_X1 U334 ( .C1(u2_current_state[0]), .C2(n223), .A(n222), .B(n544), 
        .ZN(u1_N157) );
  XNOR2_X1 U335 ( .A(n427), .B(sram_dut_read_data[2]), .ZN(n246) );
  XNOR2_X1 U336 ( .A(n224), .B(sram_dut_read_data[5]), .ZN(n245) );
  XNOR2_X1 U337 ( .A(n428), .B(sram_dut_read_data[3]), .ZN(n244) );
  OAI21_X1 U338 ( .B1(n246), .B2(n245), .A(n244), .ZN(n226) );
  NAND2_X1 U339 ( .A1(n246), .A2(n245), .ZN(n225) );
  NAND2_X1 U340 ( .A1(n226), .A2(n225), .ZN(n255) );
  XNOR2_X1 U341 ( .A(n344), .B(sram_dut_read_data[9]), .ZN(n242) );
  XNOR2_X1 U342 ( .A(n276), .B(sram_dut_read_data[10]), .ZN(n241) );
  XNOR2_X1 U343 ( .A(sram_dut_read_data[1]), .B(n116), .ZN(n240) );
  OAI21_X1 U344 ( .B1(n242), .B2(n241), .A(n240), .ZN(n229) );
  NAND2_X1 U345 ( .A1(n242), .A2(n241), .ZN(n228) );
  XNOR2_X1 U346 ( .A(n255), .B(n256), .ZN(n234) );
  NAND2_X1 U347 ( .A1(n230), .A2(n347), .ZN(n232) );
  NAND2_X1 U348 ( .A1(sram_dut_read_data[6]), .A2(wmem_dut_read_data[4]), .ZN(
        n231) );
  NAND2_X1 U349 ( .A1(n232), .A2(n231), .ZN(n235) );
  AND2_X1 U350 ( .A1(n235), .A2(u1_count2[0]), .ZN(n259) );
  XNOR2_X1 U351 ( .A(sram_dut_read_data[11]), .B(wmem_dut_read_data[8]), .ZN(
        n239) );
  XNOR2_X1 U352 ( .A(sram_dut_read_data[7]), .B(wmem_dut_read_data[5]), .ZN(
        n238) );
  XNOR2_X1 U353 ( .A(n235), .B(u1_count2[0]), .ZN(n236) );
  FA_X1 U354 ( .A(n239), .B(n238), .CI(n237), .CO(n251), .S(n416) );
  XNOR2_X1 U355 ( .A(n241), .B(n240), .ZN(n243) );
  XNOR2_X1 U356 ( .A(n243), .B(n242), .ZN(n249) );
  XNOR2_X1 U357 ( .A(n245), .B(n244), .ZN(n247) );
  XNOR2_X1 U358 ( .A(n247), .B(n246), .ZN(n248) );
  NAND2_X1 U359 ( .A1(n253), .A2(n252), .ZN(n254) );
  NAND2_X1 U360 ( .A1(n233), .A2(n254), .ZN(n258) );
  NAND2_X1 U361 ( .A1(n256), .A2(n255), .ZN(n257) );
  NAND2_X1 U362 ( .A1(n258), .A2(n257), .ZN(n262) );
  HA_X1 U363 ( .A(u1_count2[1]), .B(n259), .CO(n264), .S(n233) );
  NAND2_X1 U364 ( .A1(n262), .A2(n261), .ZN(n417) );
  INV_X1 U365 ( .A(n417), .ZN(n263) );
  AOI21_X1 U366 ( .B1(n420), .B2(n260), .A(n263), .ZN(n269) );
  HA_X1 U367 ( .A(u1_count2[2]), .B(n264), .CO(n265), .S(n261) );
  NAND2_X1 U368 ( .A1(n265), .A2(u1_count2[3]), .ZN(n266) );
  XNOR2_X1 U369 ( .A(n269), .B(n268), .ZN(n408) );
  NAND2_X1 U370 ( .A1(n408), .A2(n542), .ZN(n271) );
  NAND2_X1 U371 ( .A1(n528), .A2(u1_count2[3]), .ZN(n270) );
  NAND2_X1 U372 ( .A1(n271), .A2(n270), .ZN(n60) );
  XNOR2_X1 U373 ( .A(wmem_dut_read_data[5]), .B(sram_dut_read_data[6]), .ZN(
        n301) );
  XNOR2_X1 U374 ( .A(wmem_dut_read_data[8]), .B(sram_dut_read_data[10]), .ZN(
        n300) );
  XNOR2_X1 U375 ( .A(n301), .B(n300), .ZN(n275) );
  NAND2_X1 U376 ( .A1(sram_dut_read_data[5]), .A2(wmem_dut_read_data[4]), .ZN(
        n274) );
  NAND2_X1 U377 ( .A1(n272), .A2(n347), .ZN(n273) );
  NAND2_X1 U378 ( .A1(n274), .A2(n273), .ZN(n293) );
  XNOR2_X1 U379 ( .A(n293), .B(n219), .ZN(n299) );
  XNOR2_X1 U380 ( .A(n275), .B(n299), .ZN(n311) );
  XNOR2_X1 U381 ( .A(sram_dut_read_data[8]), .B(wmem_dut_read_data[6]), .ZN(
        n284) );
  XNOR2_X1 U382 ( .A(n285), .B(n284), .ZN(n277) );
  XNOR2_X1 U383 ( .A(n276), .B(sram_dut_read_data[9]), .ZN(n282) );
  XNOR2_X1 U384 ( .A(n277), .B(n282), .ZN(n280) );
  XNOR2_X1 U385 ( .A(sram_dut_read_data[4]), .B(wmem_dut_read_data[3]), .ZN(
        n288) );
  XNOR2_X1 U386 ( .A(sram_dut_read_data[2]), .B(wmem_dut_read_data[2]), .ZN(
        n289) );
  XNOR2_X1 U387 ( .A(n288), .B(n289), .ZN(n278) );
  XNOR2_X1 U388 ( .A(sram_dut_read_data[1]), .B(wmem_dut_read_data[1]), .ZN(
        n290) );
  XNOR2_X1 U389 ( .A(n278), .B(n290), .ZN(n279) );
  NAND2_X1 U390 ( .A1(n280), .A2(n279), .ZN(n308) );
  INV_X1 U391 ( .A(n308), .ZN(n281) );
  AOI21_X1 U392 ( .B1(n311), .B2(n309), .A(n281), .ZN(n313) );
  NAND2_X1 U393 ( .A1(n283), .A2(n282), .ZN(n287) );
  NAND2_X1 U394 ( .A1(n285), .A2(n284), .ZN(n286) );
  OAI21_X1 U395 ( .B1(n290), .B2(n289), .A(n288), .ZN(n292) );
  NAND2_X1 U396 ( .A1(n290), .A2(n289), .ZN(n291) );
  NAND2_X1 U397 ( .A1(n292), .A2(n291), .ZN(n319) );
  AND2_X1 U398 ( .A1(n293), .A2(u1_count1[0]), .ZN(n322) );
  XNOR2_X1 U399 ( .A(n322), .B(n218), .ZN(n294) );
  XNOR2_X1 U400 ( .A(n295), .B(n294), .ZN(n305) );
  NAND2_X1 U401 ( .A1(n297), .A2(n296), .ZN(n298) );
  NAND2_X1 U402 ( .A1(n299), .A2(n298), .ZN(n303) );
  NAND2_X1 U403 ( .A1(n301), .A2(n300), .ZN(n302) );
  NAND2_X1 U404 ( .A1(n303), .A2(n302), .ZN(n304) );
  NOR2_X1 U405 ( .A1(n305), .A2(n304), .ZN(n314) );
  INV_X1 U406 ( .A(n314), .ZN(n306) );
  NAND2_X1 U407 ( .A1(n305), .A2(n304), .ZN(n312) );
  NAND2_X1 U408 ( .A1(n306), .A2(n312), .ZN(n307) );
  XOR2_X1 U409 ( .A(n313), .B(n307), .Z(n511) );
  NAND2_X1 U410 ( .A1(n309), .A2(n308), .ZN(n310) );
  XNOR2_X1 U411 ( .A(n311), .B(n310), .ZN(n500) );
  OAI21_X1 U412 ( .B1(n314), .B2(n313), .A(n312), .ZN(n332) );
  NAND2_X1 U413 ( .A1(n317), .A2(n316), .ZN(n318) );
  NAND2_X1 U414 ( .A1(n294), .A2(n318), .ZN(n321) );
  NAND2_X1 U415 ( .A1(n315), .A2(n319), .ZN(n320) );
  NAND2_X1 U416 ( .A1(n321), .A2(n320), .ZN(n325) );
  AND2_X1 U417 ( .A1(n322), .A2(u1_count1[1]), .ZN(n333) );
  NAND2_X1 U418 ( .A1(n325), .A2(n324), .ZN(n330) );
  NAND2_X1 U419 ( .A1(n323), .A2(n330), .ZN(n326) );
  NAND2_X1 U420 ( .A1(n326), .A2(n332), .ZN(n327) );
  NAND2_X1 U421 ( .A1(n328), .A2(n327), .ZN(n509) );
  INV_X1 U422 ( .A(n330), .ZN(n331) );
  AOI21_X1 U423 ( .B1(n332), .B2(n323), .A(n331), .ZN(n338) );
  HA_X1 U424 ( .A(u1_count1[2]), .B(n333), .CO(n334), .S(n324) );
  NAND2_X1 U425 ( .A1(n334), .A2(u1_count1[3]), .ZN(n335) );
  XNOR2_X1 U426 ( .A(n338), .B(n337), .ZN(n507) );
  XNOR2_X1 U427 ( .A(sram_dut_read_data[5]), .B(n427), .ZN(n361) );
  XNOR2_X1 U428 ( .A(sram_dut_read_data[8]), .B(n224), .ZN(n360) );
  XNOR2_X1 U429 ( .A(n428), .B(sram_dut_read_data[6]), .ZN(n362) );
  OAI21_X1 U430 ( .B1(n361), .B2(n360), .A(n362), .ZN(n343) );
  NAND2_X1 U431 ( .A1(n361), .A2(n360), .ZN(n342) );
  XNOR2_X1 U432 ( .A(n344), .B(sram_dut_read_data[12]), .ZN(n358) );
  XNOR2_X1 U433 ( .A(sram_dut_read_data[4]), .B(n116), .ZN(n356) );
  XNOR2_X1 U434 ( .A(sram_dut_read_data[13]), .B(n276), .ZN(n357) );
  OAI21_X1 U435 ( .B1(n358), .B2(n356), .A(n357), .ZN(n346) );
  NAND2_X1 U436 ( .A1(n358), .A2(n356), .ZN(n345) );
  NAND2_X1 U437 ( .A1(n346), .A2(n345), .ZN(n380) );
  NAND2_X1 U438 ( .A1(n227), .A2(n347), .ZN(n349) );
  NAND2_X1 U439 ( .A1(sram_dut_read_data[9]), .A2(wmem_dut_read_data[4]), .ZN(
        n348) );
  AND2_X1 U440 ( .A1(n352), .A2(u1_count3[0]), .ZN(n387) );
  XNOR2_X1 U441 ( .A(n387), .B(n217), .ZN(n350) );
  XNOR2_X1 U442 ( .A(sram_dut_read_data[14]), .B(wmem_dut_read_data[8]), .ZN(
        n366) );
  XNOR2_X1 U443 ( .A(wmem_dut_read_data[5]), .B(sram_dut_read_data[10]), .ZN(
        n365) );
  XNOR2_X1 U444 ( .A(n352), .B(u1_count3[0]), .ZN(n353) );
  INV_X2 U445 ( .A(n353), .ZN(n364) );
  NAND2_X1 U446 ( .A1(n355), .A2(n354), .ZN(n378) );
  NAND2_X1 U447 ( .A1(n215), .A2(n378), .ZN(n370) );
  XNOR2_X1 U448 ( .A(n357), .B(n356), .ZN(n359) );
  XNOR2_X1 U449 ( .A(n358), .B(n359), .ZN(n368) );
  XNOR2_X1 U450 ( .A(n361), .B(n360), .ZN(n363) );
  XNOR2_X1 U451 ( .A(n363), .B(n362), .ZN(n367) );
  FA_X1 U452 ( .A(n366), .B(n365), .CI(n364), .CO(n354), .S(n374) );
  NAND2_X1 U453 ( .A1(n372), .A2(n374), .ZN(n369) );
  NAND2_X1 U454 ( .A1(n368), .A2(n367), .ZN(n371) );
  NAND2_X1 U455 ( .A1(n369), .A2(n371), .ZN(n377) );
  NAND2_X1 U456 ( .A1(n372), .A2(n371), .ZN(n373) );
  XNOR2_X1 U457 ( .A(n374), .B(n373), .ZN(n494) );
  NAND2_X1 U458 ( .A1(n376), .A2(n375), .ZN(n394) );
  NAND2_X1 U459 ( .A1(n215), .A2(n377), .ZN(n379) );
  NAND2_X1 U460 ( .A1(n382), .A2(n381), .ZN(n383) );
  NAND2_X1 U461 ( .A1(n350), .A2(n383), .ZN(n386) );
  NAND2_X1 U462 ( .A1(n380), .A2(n384), .ZN(n385) );
  NAND2_X1 U463 ( .A1(n386), .A2(n385), .ZN(n390) );
  AND2_X1 U464 ( .A1(n387), .A2(u1_count3[1]), .ZN(n399) );
  NAND2_X1 U465 ( .A1(n390), .A2(n389), .ZN(n396) );
  NAND2_X1 U466 ( .A1(n388), .A2(n396), .ZN(n391) );
  NAND2_X1 U467 ( .A1(n398), .A2(n391), .ZN(n392) );
  NAND2_X1 U468 ( .A1(n393), .A2(n392), .ZN(n519) );
  NAND2_X1 U469 ( .A1(n394), .A2(n519), .ZN(n395) );
  INV_X1 U470 ( .A(n396), .ZN(n397) );
  AOI21_X1 U471 ( .B1(n398), .B2(n388), .A(n397), .ZN(n404) );
  HA_X1 U472 ( .A(u1_count3[2]), .B(n399), .CO(n400), .S(n389) );
  NAND2_X1 U473 ( .A1(n400), .A2(u1_count3[3]), .ZN(n401) );
  XNOR2_X1 U474 ( .A(n404), .B(n403), .ZN(n517) );
  OAI21_X1 U475 ( .B1(n405), .B2(n517), .A(n542), .ZN(n407) );
  NAND2_X1 U476 ( .A1(n407), .A2(n406), .ZN(n52) );
  XOR2_X1 U477 ( .A(n409), .B(n412), .Z(n515) );
  NAND2_X1 U478 ( .A1(n414), .A2(n413), .ZN(n415) );
  XNOR2_X1 U479 ( .A(n416), .B(n415), .ZN(n496) );
  NAND2_X1 U480 ( .A1(n260), .A2(n417), .ZN(n419) );
  NAND2_X1 U481 ( .A1(n420), .A2(n419), .ZN(n421) );
  NAND2_X1 U482 ( .A1(n418), .A2(n421), .ZN(n513) );
  NAND2_X1 U483 ( .A1(n423), .A2(n422), .ZN(n424) );
  XNOR2_X1 U484 ( .A(sram_dut_read_data[13]), .B(wmem_dut_read_data[6]), .ZN(
        n443) );
  XNOR2_X1 U485 ( .A(sram_dut_read_data[14]), .B(wmem_dut_read_data[7]), .ZN(
        n442) );
  XNOR2_X1 U486 ( .A(n116), .B(sram_dut_read_data[5]), .ZN(n441) );
  XNOR2_X1 U487 ( .A(n427), .B(sram_dut_read_data[6]), .ZN(n444) );
  XNOR2_X1 U488 ( .A(n224), .B(sram_dut_read_data[9]), .ZN(n446) );
  XNOR2_X1 U489 ( .A(sram_dut_read_data[7]), .B(n428), .ZN(n445) );
  OAI21_X1 U490 ( .B1(n444), .B2(n446), .A(n445), .ZN(n430) );
  NAND2_X1 U491 ( .A1(n446), .A2(n444), .ZN(n429) );
  XNOR2_X1 U492 ( .A(n468), .B(n469), .ZN(n432) );
  XNOR2_X1 U493 ( .A(wmem_dut_read_data[4]), .B(sram_dut_read_data[10]), .ZN(
        n433) );
  XNOR2_X1 U494 ( .A(n432), .B(n467), .ZN(n440) );
  XNOR2_X1 U495 ( .A(n433), .B(n216), .ZN(n434) );
  XNOR2_X1 U496 ( .A(sram_dut_read_data[11]), .B(wmem_dut_read_data[5]), .ZN(
        n449) );
  XNOR2_X1 U497 ( .A(wmem_dut_read_data[8]), .B(sram_dut_read_data[15]), .ZN(
        n448) );
  OR2_X1 U498 ( .A1(n449), .A2(n448), .ZN(n435) );
  NAND2_X1 U499 ( .A1(n434), .A2(n435), .ZN(n437) );
  NAND2_X1 U500 ( .A1(n449), .A2(n448), .ZN(n436) );
  NAND2_X1 U501 ( .A1(n437), .A2(n436), .ZN(n439) );
  NAND2_X1 U502 ( .A1(n440), .A2(n439), .ZN(n462) );
  NAND2_X1 U503 ( .A1(n438), .A2(n462), .ZN(n454) );
  FA_X1 U504 ( .A(n443), .B(n442), .CI(n441), .CO(n468), .S(n452) );
  XNOR2_X1 U505 ( .A(n445), .B(n444), .ZN(n447) );
  XNOR2_X1 U506 ( .A(n447), .B(n446), .ZN(n451) );
  XNOR2_X1 U507 ( .A(n449), .B(n448), .ZN(n450) );
  XNOR2_X1 U508 ( .A(n434), .B(n450), .ZN(n458) );
  NAND2_X1 U509 ( .A1(n456), .A2(n458), .ZN(n453) );
  NAND2_X1 U510 ( .A1(n452), .A2(n451), .ZN(n455) );
  NAND2_X1 U511 ( .A1(n453), .A2(n455), .ZN(n461) );
  XNOR2_X1 U512 ( .A(n454), .B(n461), .ZN(n527) );
  NAND2_X1 U513 ( .A1(n456), .A2(n455), .ZN(n457) );
  XNOR2_X1 U514 ( .A(n458), .B(n457), .ZN(n498) );
  NAND2_X1 U515 ( .A1(n460), .A2(n459), .ZN(n476) );
  NAND2_X1 U516 ( .A1(n465), .A2(n464), .ZN(n466) );
  NAND2_X1 U517 ( .A1(n467), .A2(n466), .ZN(n471) );
  NAND2_X1 U518 ( .A1(n469), .A2(n468), .ZN(n470) );
  NAND2_X1 U519 ( .A1(n471), .A2(n470), .ZN(n474) );
  HA_X1 U520 ( .A(u1_count4[1]), .B(n431), .CO(n480), .S(n467) );
  NAND2_X1 U521 ( .A1(n474), .A2(n473), .ZN(n477) );
  NAND2_X1 U522 ( .A1(n472), .A2(n477), .ZN(n475) );
  XNOR2_X1 U523 ( .A(n479), .B(n475), .ZN(n525) );
  INV_X1 U524 ( .A(n477), .ZN(n478) );
  HA_X1 U525 ( .A(u1_count4[2]), .B(n480), .CO(n481), .S(n473) );
  NAND2_X1 U526 ( .A1(n481), .A2(u1_count4[3]), .ZN(n482) );
  XNOR2_X1 U527 ( .A(n485), .B(n484), .ZN(n523) );
  OAI21_X1 U528 ( .B1(n486), .B2(n523), .A(n542), .ZN(n488) );
  NAND2_X1 U529 ( .A1(n491), .A2(dut_sram_write_data[3]), .ZN(n487) );
  NAND2_X1 U530 ( .A1(n488), .A2(n487), .ZN(n54) );
  NAND3_X1 U531 ( .A1(n533), .A2(n535), .A3(u2_current_state[2]), .ZN(n530) );
  INV_X4 U532 ( .A(n530), .ZN(dut_sram_write_enable) );
  NAND2_X1 U533 ( .A1(dut_sram_write_enable), .A2(dtc[0]), .ZN(n490) );
  NAND3_X1 U534 ( .A1(n504), .A2(dtc[3]), .A3(n535), .ZN(n489) );
  NAND3_X1 U535 ( .A1(n491), .A2(n490), .A3(n489), .ZN(n492) );
  OAI21_X1 U536 ( .B1(n544), .B2(n492), .A(reset_b), .ZN(n493) );
  AOI22_X1 U537 ( .A1(n494), .A2(n542), .B1(n528), .B2(u1_count3[0]), .ZN(n495) );
  AOI22_X1 U538 ( .A1(n496), .A2(n542), .B1(n528), .B2(u1_count2[0]), .ZN(n497) );
  AOI22_X1 U539 ( .A1(n498), .A2(n542), .B1(n528), .B2(u1_count4[0]), .ZN(n499) );
  AOI22_X1 U540 ( .A1(n500), .A2(n542), .B1(n528), .B2(u1_count1[0]), .ZN(n501) );
  NAND3_X1 U541 ( .A1(u2_current_state[1]), .A2(u2_current_state[0]), .A3(
        dtc[1]), .ZN(n502) );
  NOR2_X1 U542 ( .A1(n530), .A2(dtc[0]), .ZN(u1_N155) );
  NAND3_X1 U543 ( .A1(n504), .A2(u2_current_state[0]), .A3(dtc[1]), .ZN(n506)
         );
  AOI21_X1 U544 ( .B1(n530), .B2(n506), .A(n505), .ZN(u2_N12) );
  AOI22_X1 U545 ( .A1(n509), .A2(n542), .B1(n528), .B2(u1_count1[2]), .ZN(n510) );
  AOI22_X1 U546 ( .A1(n511), .A2(n542), .B1(n528), .B2(u1_count1[1]), .ZN(n512) );
  AOI22_X1 U547 ( .A1(n513), .A2(n542), .B1(n528), .B2(u1_count2[2]), .ZN(n514) );
  AOI22_X1 U548 ( .A1(n515), .A2(n542), .B1(n528), .B2(u1_count2[1]), .ZN(n516) );
  AOI22_X1 U549 ( .A1(n517), .A2(n542), .B1(n528), .B2(u1_count3[3]), .ZN(n518) );
  AOI22_X1 U550 ( .A1(n519), .A2(n542), .B1(n528), .B2(u1_count3[2]), .ZN(n520) );
  AOI22_X1 U551 ( .A1(n521), .A2(n542), .B1(n528), .B2(u1_count3[1]), .ZN(n522) );
  AOI22_X1 U552 ( .A1(n523), .A2(n542), .B1(n528), .B2(u1_count4[3]), .ZN(n524) );
  AOI22_X1 U553 ( .A1(n525), .A2(n542), .B1(n528), .B2(u1_count4[2]), .ZN(n526) );
  AOI22_X1 U554 ( .A1(n527), .A2(n542), .B1(n528), .B2(u1_count4[1]), .ZN(n529) );
endmodule


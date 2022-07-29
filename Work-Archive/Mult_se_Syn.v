
module behv_multiplier ( clk, rst, A, B, C );
  input [15:0] A;
  input [15:0] B;
  output [31:0] C;
  input clk, rst;
  wire   m_curr_B, m_next_B, \feed_B/n22 , \feed_B/n21 , \feed_B/n20 ,
         \feed_B/n19 , \feed_B/n18 , \feed_B/n17 , \feed_B/n16 , \feed_B/n15 ,
         \feed_B/n14 , \feed_B/n13 , \feed_B/n12 , \feed_B/n11 , \feed_B/n10 ,
         \feed_B/n9 , \feed_B/n8 , \feed_B/n7 , \feed_B/n6 , \feed_B/n5 ,
         \feed_B/n4 , \feed_B/N59 , \feed_B/N58 , \ring_counter/n16 ,
         \generate_pp/n37 , \generate_pp/n1 , \generate_pp/n38 ,
         \generate_pp/n36 , \generate_pp/N20 , \generate_pp/N19 ,
         \generate_pp/N18 , \generate_pp/N17 , \generate_pp/N16 ,
         \generate_pp/N15 , \generate_pp/N14 , \generate_pp/N13 ,
         \generate_pp/N12 , \generate_pp/N11 , \generate_pp/N10 ,
         \generate_pp/N9 , \generate_pp/N8 , \generate_pp/N7 ,
         \generate_pp/N6 , \generate_pp/curr_p[0] ,
         \generate_pp/adder_out[16] , \generate_pp/next_B ,
         \generate_pp/pp_adder/n47 , \generate_pp/pp_adder/n46 ,
         \generate_pp/pp_adder/n45 , \generate_pp/pp_adder/n44 ,
         \generate_pp/pp_adder/n43 , \generate_pp/pp_adder/n42 ,
         \generate_pp/pp_adder/n41 , \generate_pp/pp_adder/n40 ,
         \generate_pp/pp_adder/n39 , \generate_pp/pp_adder/n38 ,
         \generate_pp/pp_adder/n37 , \generate_pp/pp_adder/n36 ,
         \generate_pp/pp_adder/n35 , \generate_pp/pp_adder/n34 ,
         \generate_pp/pp_adder/n33 , \generate_pp/pp_adder/n32 ,
         \generate_pp/pp_adder/n31 , \generate_pp/pp_adder/n30 ,
         \generate_pp/pp_adder/n29 , \generate_pp/pp_adder/n28 ,
         \generate_pp/pp_adder/n27 , \generate_pp/pp_adder/n26 ,
         \generate_pp/pp_adder/n25 , \generate_pp/pp_adder/n24 ,
         \generate_pp/pp_adder/n23 , \generate_pp/pp_adder/n22 ,
         \generate_pp/pp_adder/n21 , \generate_pp/pp_adder/n20 ,
         \generate_pp/pp_adder/n19 , \generate_pp/pp_adder/n18 ,
         \generate_pp/pp_adder/n17 , \generate_pp/pp_adder/n16 ,
         \generate_pp/pp_adder/n15 , \generate_pp/pp_adder/n14 ,
         \generate_pp/pp_adder/n13 , \generate_pp/pp_adder/n12 ,
         \generate_pp/pp_adder/n11 , \generate_pp/pp_adder/n10 ,
         \generate_pp/pp_adder/n9 , \generate_pp/pp_adder/n8 ,
         \generate_pp/pp_adder/n7 , \generate_pp/pp_adder/n6 ,
         \generate_pp/pp_adder/n5 , \generate_pp/pp_adder/n4 ,
         \generate_pp/pp_adder/n3 , \generate_pp/pp_adder/n2 ,
         \generate_pp/pp_adder/n1 ;
  wire   [15:0] sel;
  wire   [15:0] \generate_pp/adder_in1 ;
  wire   [15:0] \generate_pp/sum ;

  AOI2BB2X1 \feed_B/U23  ( .B0(sel[7]), .B1(B[8]), .A0N(\feed_B/n13 ), .A1N(
        sel[7]), .Y(\feed_B/n12 ) );
  AOI2BB2X1 \feed_B/U22  ( .B0(sel[8]), .B1(B[9]), .A0N(sel[8]), .A1N(
        \feed_B/n12 ), .Y(\feed_B/n11 ) );
  AOI2BB2X1 \feed_B/U21  ( .B0(sel[9]), .B1(B[10]), .A0N(\feed_B/n11 ), .A1N(
        sel[9]), .Y(\feed_B/n10 ) );
  AOI2BB2X1 \feed_B/U20  ( .B0(sel[10]), .B1(B[11]), .A0N(sel[10]), .A1N(
        \feed_B/n10 ), .Y(\feed_B/n9 ) );
  AOI2BB2X1 \feed_B/U19  ( .B0(sel[3]), .B1(B[4]), .A0N(\feed_B/n17 ), .A1N(
        sel[3]), .Y(\feed_B/n16 ) );
  AOI2BB2X1 \feed_B/U18  ( .B0(sel[4]), .B1(B[5]), .A0N(sel[4]), .A1N(
        \feed_B/n16 ), .Y(\feed_B/n15 ) );
  AOI2BB2X1 \feed_B/U17  ( .B0(sel[5]), .B1(B[6]), .A0N(\feed_B/n15 ), .A1N(
        sel[5]), .Y(\feed_B/n14 ) );
  AOI2BB2X1 \feed_B/U16  ( .B0(sel[6]), .B1(B[7]), .A0N(sel[6]), .A1N(
        \feed_B/n14 ), .Y(\feed_B/n13 ) );
  CLKINVX1 \feed_B/U15  ( .A(sel[1]), .Y(\feed_B/n5 ) );
  AOI32X1 \feed_B/U14  ( .A0(sel[0]), .A1(\feed_B/n5 ), .A2(B[1]), .B0(sel[1]), 
        .B1(B[2]), .Y(\feed_B/n18 ) );
  AOI2BB2X1 \feed_B/U13  ( .B0(sel[2]), .B1(B[3]), .A0N(sel[2]), .A1N(
        \feed_B/n18 ), .Y(\feed_B/n17 ) );
  NOR4X1 \feed_B/U12  ( .A(sel[5]), .B(sel[4]), .C(sel[3]), .D(sel[2]), .Y(
        \feed_B/n21 ) );
  NOR4X1 \feed_B/U11  ( .A(sel[1]), .B(sel[15]), .C(sel[14]), .D(sel[13]), .Y(
        \feed_B/n20 ) );
  NOR4X1 \feed_B/U10  ( .A(sel[12]), .B(sel[11]), .C(sel[10]), .D(sel[0]), .Y(
        \feed_B/n19 ) );
  NAND4X1 \feed_B/U9  ( .A(\feed_B/n19 ), .B(\feed_B/n20 ), .C(\feed_B/n21 ), 
        .D(\feed_B/n22 ), .Y(\feed_B/N58 ) );
  AOI2BB2X1 \feed_B/U8  ( .B0(sel[11]), .B1(B[12]), .A0N(\feed_B/n9 ), .A1N(
        sel[11]), .Y(\feed_B/n8 ) );
  AOI2BB2X1 \feed_B/U7  ( .B0(sel[12]), .B1(B[13]), .A0N(sel[12]), .A1N(
        \feed_B/n8 ), .Y(\feed_B/n7 ) );
  AOI2BB2X1 \feed_B/U6  ( .B0(sel[13]), .B1(B[14]), .A0N(\feed_B/n7 ), .A1N(
        sel[13]), .Y(\feed_B/n6 ) );
  OAI2BB2XL \feed_B/U5  ( .B0(sel[14]), .B1(\feed_B/n6 ), .A0N(sel[14]), .A1N(
        B[15]), .Y(\feed_B/N59 ) );
  NOR4X1 \feed_B/U4  ( .A(sel[9]), .B(sel[8]), .C(sel[7]), .D(sel[6]), .Y(
        \feed_B/n22 ) );
  OAI2BB2XL \feed_B/U3  ( .B0(\feed_B/n4 ), .B1(sel[0]), .A0N(sel[0]), .A1N(
        B[0]), .Y(m_curr_B) );
  TLATX1 \feed_B/next_B_reg  ( .G(\feed_B/N58 ), .D(\feed_B/N59 ), .Q(m_next_B) );
  DFFX1 \feed_B/saved_B_reg  ( .D(m_next_B), .CK(clk), .QN(\feed_B/n4 ) );
  CLKINVX1 \ring_counter/U3  ( .A(rst), .Y(\ring_counter/n16 ) );
  DFFQX1 \ring_counter/step_vect_reg[0]  ( .D(rst), .CK(clk), .Q(sel[0]) );
  DFFTRX1 \ring_counter/step_vect_reg[14]  ( .D(sel[13]), .RN(
        \ring_counter/n16 ), .CK(clk), .Q(sel[14]) );
  DFFTRX1 \ring_counter/step_vect_reg[13]  ( .D(sel[12]), .RN(
        \ring_counter/n16 ), .CK(clk), .Q(sel[13]) );
  DFFTRX1 \ring_counter/step_vect_reg[7]  ( .D(sel[6]), .RN(\ring_counter/n16 ), .CK(clk), .Q(sel[7]) );
  DFFTRX1 \ring_counter/step_vect_reg[3]  ( .D(sel[2]), .RN(\ring_counter/n16 ), .CK(clk), .Q(sel[3]) );
  DFFTRX1 \ring_counter/step_vect_reg[6]  ( .D(sel[5]), .RN(\ring_counter/n16 ), .CK(clk), .Q(sel[6]) );
  DFFTRX1 \ring_counter/step_vect_reg[2]  ( .D(sel[1]), .RN(\ring_counter/n16 ), .CK(clk), .Q(sel[2]) );
  DFFTRX1 \ring_counter/step_vect_reg[9]  ( .D(sel[8]), .RN(\ring_counter/n16 ), .CK(clk), .Q(sel[9]) );
  DFFTRX1 \ring_counter/step_vect_reg[5]  ( .D(sel[4]), .RN(\ring_counter/n16 ), .CK(clk), .Q(sel[5]) );
  DFFTRX1 \ring_counter/step_vect_reg[10]  ( .D(sel[9]), .RN(
        \ring_counter/n16 ), .CK(clk), .Q(sel[10]) );
  DFFTRX1 \ring_counter/step_vect_reg[11]  ( .D(sel[10]), .RN(
        \ring_counter/n16 ), .CK(clk), .Q(sel[11]) );
  DFFTRX1 \ring_counter/step_vect_reg[12]  ( .D(sel[11]), .RN(
        \ring_counter/n16 ), .CK(clk), .Q(sel[12]) );
  DFFTRX1 \ring_counter/step_vect_reg[8]  ( .D(sel[7]), .RN(\ring_counter/n16 ), .CK(clk), .Q(sel[8]) );
  DFFTRX1 \ring_counter/step_vect_reg[4]  ( .D(sel[3]), .RN(\ring_counter/n16 ), .CK(clk), .Q(sel[4]) );
  DFFTRX1 \ring_counter/step_vect_reg[1]  ( .D(sel[0]), .RN(\ring_counter/n16 ), .CK(clk), .Q(sel[1]) );
  DFFTRX1 \ring_counter/step_vect_reg[15]  ( .D(sel[14]), .RN(
        \ring_counter/n16 ), .CK(clk), .Q(sel[15]) );
  AO22X1 \generate_pp/U22  ( .A0(\generate_pp/sum [0]), .A1(m_curr_B), .B0(
        C[16]), .B1(\generate_pp/n36 ), .Y(\generate_pp/curr_p[0] ) );
  CLKBUFX3 \generate_pp/U21  ( .A(\generate_pp/curr_p[0] ), .Y(
        \generate_pp/n37 ) );
  AO22X1 \generate_pp/U20  ( .A0(\generate_pp/sum [1]), .A1(\generate_pp/n1 ), 
        .B0(C[17]), .B1(\generate_pp/n38 ), .Y(\generate_pp/N6 ) );
  AO22X1 \generate_pp/U19  ( .A0(\generate_pp/sum [3]), .A1(\generate_pp/n1 ), 
        .B0(C[19]), .B1(\generate_pp/n38 ), .Y(\generate_pp/N8 ) );
  AO22X1 \generate_pp/U18  ( .A0(\generate_pp/sum [2]), .A1(\generate_pp/n1 ), 
        .B0(C[18]), .B1(\generate_pp/n38 ), .Y(\generate_pp/N7 ) );
  AO22X1 \generate_pp/U17  ( .A0(\generate_pp/sum [8]), .A1(\generate_pp/n1 ), 
        .B0(C[24]), .B1(\generate_pp/n38 ), .Y(\generate_pp/N13 ) );
  AO22X1 \generate_pp/U16  ( .A0(\generate_pp/sum [7]), .A1(\generate_pp/n1 ), 
        .B0(C[23]), .B1(\generate_pp/n38 ), .Y(\generate_pp/N12 ) );
  AO22X1 \generate_pp/U15  ( .A0(\generate_pp/sum [6]), .A1(\generate_pp/n1 ), 
        .B0(C[22]), .B1(\generate_pp/n38 ), .Y(\generate_pp/N11 ) );
  AO22X1 \generate_pp/U14  ( .A0(\generate_pp/sum [5]), .A1(\generate_pp/n1 ), 
        .B0(C[21]), .B1(\generate_pp/n38 ), .Y(\generate_pp/N10 ) );
  AO22X1 \generate_pp/U13  ( .A0(\generate_pp/sum [4]), .A1(\generate_pp/n1 ), 
        .B0(C[20]), .B1(\generate_pp/n38 ), .Y(\generate_pp/N9 ) );
  AO22X1 \generate_pp/U12  ( .A0(\generate_pp/sum [14]), .A1(\generate_pp/n1 ), 
        .B0(C[30]), .B1(\generate_pp/n38 ), .Y(\generate_pp/N19 ) );
  AO22X1 \generate_pp/U11  ( .A0(\generate_pp/sum [13]), .A1(\generate_pp/n1 ), 
        .B0(C[29]), .B1(\generate_pp/n38 ), .Y(\generate_pp/N18 ) );
  AO22X1 \generate_pp/U10  ( .A0(\generate_pp/sum [12]), .A1(\generate_pp/n1 ), 
        .B0(C[28]), .B1(\generate_pp/n38 ), .Y(\generate_pp/N17 ) );
  AO22X1 \generate_pp/U9  ( .A0(\generate_pp/sum [11]), .A1(\generate_pp/n1 ), 
        .B0(C[27]), .B1(\generate_pp/n38 ), .Y(\generate_pp/N16 ) );
  AO22X1 \generate_pp/U8  ( .A0(\generate_pp/sum [10]), .A1(\generate_pp/n1 ), 
        .B0(C[26]), .B1(\generate_pp/n38 ), .Y(\generate_pp/N15 ) );
  AO22X1 \generate_pp/U7  ( .A0(\generate_pp/sum [9]), .A1(\generate_pp/n1 ), 
        .B0(C[25]), .B1(\generate_pp/n38 ), .Y(\generate_pp/N14 ) );
  AO22X1 \generate_pp/U6  ( .A0(\generate_pp/sum [15]), .A1(\generate_pp/n1 ), 
        .B0(C[31]), .B1(\generate_pp/n38 ), .Y(\generate_pp/N20 ) );
  CLKINVX1 \generate_pp/U5  ( .A(m_curr_B), .Y(\generate_pp/n36 ) );
  NOR2X1 \generate_pp/U4  ( .A(m_curr_B), .B(rst), .Y(\generate_pp/n38 ) );
  NOR2X2 \generate_pp/U3  ( .A(\generate_pp/n36 ), .B(rst), .Y(
        \generate_pp/n1 ) );
  TLATNX1 \generate_pp/next_B_reg  ( .D(m_next_B), .GN(clk), .Q(
        \generate_pp/next_B ) );
  TLATX1 \generate_pp/pp_low_reg[0]  ( .G(sel[0]), .D(\generate_pp/n37 ), .Q(
        C[0]) );
  TLATX1 \generate_pp/pp_low_reg[1]  ( .G(sel[1]), .D(\generate_pp/n37 ), .Q(
        C[1]) );
  TLATX1 \generate_pp/pp_low_reg[2]  ( .G(sel[2]), .D(\generate_pp/n37 ), .Q(
        C[2]) );
  TLATX1 \generate_pp/pp_low_reg[3]  ( .G(sel[3]), .D(\generate_pp/n37 ), .Q(
        C[3]) );
  TLATX1 \generate_pp/pp_low_reg[4]  ( .G(sel[4]), .D(\generate_pp/n37 ), .Q(
        C[4]) );
  TLATX1 \generate_pp/pp_low_reg[5]  ( .G(sel[5]), .D(\generate_pp/n37 ), .Q(
        C[5]) );
  TLATX1 \generate_pp/pp_low_reg[6]  ( .G(sel[6]), .D(\generate_pp/n37 ), .Q(
        C[6]) );
  TLATX1 \generate_pp/pp_low_reg[7]  ( .G(sel[7]), .D(\generate_pp/n37 ), .Q(
        C[7]) );
  TLATX1 \generate_pp/pp_low_reg[8]  ( .G(sel[8]), .D(\generate_pp/n37 ), .Q(
        C[8]) );
  TLATX1 \generate_pp/pp_low_reg[9]  ( .G(sel[9]), .D(\generate_pp/n37 ), .Q(
        C[9]) );
  TLATX1 \generate_pp/pp_low_reg[10]  ( .G(sel[10]), .D(\generate_pp/n37 ), 
        .Q(C[10]) );
  TLATX1 \generate_pp/pp_low_reg[11]  ( .G(sel[11]), .D(\generate_pp/n37 ), 
        .Q(C[11]) );
  TLATX1 \generate_pp/pp_low_reg[12]  ( .G(sel[12]), .D(\generate_pp/n37 ), 
        .Q(C[12]) );
  TLATX1 \generate_pp/pp_low_reg[13]  ( .G(sel[13]), .D(\generate_pp/n37 ), 
        .Q(C[13]) );
  TLATX1 \generate_pp/pp_low_reg[14]  ( .G(sel[14]), .D(\generate_pp/n37 ), 
        .Q(C[14]) );
  TLATX1 \generate_pp/pp_low_reg[15]  ( .G(sel[15]), .D(\generate_pp/n37 ), 
        .Q(C[15]) );
  DFFTRX1 \generate_pp/pp_reg_reg[15]  ( .D(\generate_pp/adder_out[16] ), .RN(
        \generate_pp/n1 ), .CK(clk), .Q(C[31]) );
  DFFQX1 \generate_pp/pp_reg_reg[1]  ( .D(\generate_pp/N7 ), .CK(clk), .Q(
        C[17]) );
  DFFQX1 \generate_pp/pp_reg_reg[2]  ( .D(\generate_pp/N8 ), .CK(clk), .Q(
        C[18]) );
  DFFQX1 \generate_pp/pp_reg_reg[3]  ( .D(\generate_pp/N9 ), .CK(clk), .Q(
        C[19]) );
  DFFQX1 \generate_pp/pp_reg_reg[4]  ( .D(\generate_pp/N10 ), .CK(clk), .Q(
        C[20]) );
  DFFQX1 \generate_pp/pp_reg_reg[5]  ( .D(\generate_pp/N11 ), .CK(clk), .Q(
        C[21]) );
  DFFQX1 \generate_pp/pp_reg_reg[6]  ( .D(\generate_pp/N12 ), .CK(clk), .Q(
        C[22]) );
  DFFQX1 \generate_pp/pp_reg_reg[7]  ( .D(\generate_pp/N13 ), .CK(clk), .Q(
        C[23]) );
  DFFQX1 \generate_pp/pp_reg_reg[8]  ( .D(\generate_pp/N14 ), .CK(clk), .Q(
        C[24]) );
  DFFQX1 \generate_pp/pp_reg_reg[9]  ( .D(\generate_pp/N15 ), .CK(clk), .Q(
        C[25]) );
  DFFQX1 \generate_pp/pp_reg_reg[10]  ( .D(\generate_pp/N16 ), .CK(clk), .Q(
        C[26]) );
  DFFQX1 \generate_pp/pp_reg_reg[11]  ( .D(\generate_pp/N17 ), .CK(clk), .Q(
        C[27]) );
  DFFQX1 \generate_pp/pp_reg_reg[12]  ( .D(\generate_pp/N18 ), .CK(clk), .Q(
        C[28]) );
  DFFQX1 \generate_pp/pp_reg_reg[13]  ( .D(\generate_pp/N19 ), .CK(clk), .Q(
        C[29]) );
  DFFQX1 \generate_pp/pp_reg_reg[14]  ( .D(\generate_pp/N20 ), .CK(clk), .Q(
        C[30]) );
  TLATX1 \generate_pp/adder_in1_reg[0]  ( .G(\generate_pp/next_B ), .D(C[16]), 
        .Q(\generate_pp/adder_in1 [0]) );
  TLATX1 \generate_pp/adder_in1_reg[1]  ( .G(\generate_pp/next_B ), .D(C[17]), 
        .Q(\generate_pp/adder_in1 [1]) );
  TLATX1 \generate_pp/adder_in1_reg[3]  ( .G(\generate_pp/next_B ), .D(C[19]), 
        .Q(\generate_pp/adder_in1 [3]) );
  TLATX1 \generate_pp/adder_in1_reg[4]  ( .G(\generate_pp/next_B ), .D(C[20]), 
        .Q(\generate_pp/adder_in1 [4]) );
  TLATX1 \generate_pp/adder_in1_reg[6]  ( .G(\generate_pp/next_B ), .D(C[22]), 
        .Q(\generate_pp/adder_in1 [6]) );
  TLATX1 \generate_pp/adder_in1_reg[7]  ( .G(\generate_pp/next_B ), .D(C[23]), 
        .Q(\generate_pp/adder_in1 [7]) );
  TLATX1 \generate_pp/adder_in1_reg[9]  ( .G(\generate_pp/next_B ), .D(C[25]), 
        .Q(\generate_pp/adder_in1 [9]) );
  TLATX1 \generate_pp/adder_in1_reg[10]  ( .G(\generate_pp/next_B ), .D(C[26]), 
        .Q(\generate_pp/adder_in1 [10]) );
  TLATX1 \generate_pp/adder_in1_reg[12]  ( .G(\generate_pp/next_B ), .D(C[28]), 
        .Q(\generate_pp/adder_in1 [12]) );
  TLATX1 \generate_pp/adder_in1_reg[13]  ( .G(\generate_pp/next_B ), .D(C[29]), 
        .Q(\generate_pp/adder_in1 [13]) );
  TLATX1 \generate_pp/adder_in1_reg[15]  ( .G(\generate_pp/next_B ), .D(C[31]), 
        .Q(\generate_pp/adder_in1 [15]) );
  TLATX1 \generate_pp/adder_in1_reg[2]  ( .G(\generate_pp/next_B ), .D(C[18]), 
        .Q(\generate_pp/adder_in1 [2]) );
  TLATX1 \generate_pp/adder_in1_reg[5]  ( .G(\generate_pp/next_B ), .D(C[21]), 
        .Q(\generate_pp/adder_in1 [5]) );
  TLATX1 \generate_pp/adder_in1_reg[11]  ( .G(\generate_pp/next_B ), .D(C[27]), 
        .Q(\generate_pp/adder_in1 [11]) );
  TLATX1 \generate_pp/adder_in1_reg[8]  ( .G(\generate_pp/next_B ), .D(C[24]), 
        .Q(\generate_pp/adder_in1 [8]) );
  TLATX1 \generate_pp/adder_in1_reg[14]  ( .G(\generate_pp/next_B ), .D(C[30]), 
        .Q(\generate_pp/adder_in1 [14]) );
  DFFQX1 \generate_pp/pp_reg_reg[0]  ( .D(\generate_pp/N6 ), .CK(clk), .Q(
        C[16]) );
  XOR2X1 \generate_pp/pp_adder/U64  ( .A(1'b0), .B(A[0]), .Y(
        \generate_pp/pp_adder/n31 ) );
  XOR2X1 \generate_pp/pp_adder/U63  ( .A(\generate_pp/adder_in1 [0]), .B(
        \generate_pp/pp_adder/n31 ), .Y(\generate_pp/sum [0]) );
  XNOR2X1 \generate_pp/pp_adder/U62  ( .A(\generate_pp/adder_in1 [1]), .B(A[1]), .Y(\generate_pp/pp_adder/n17 ) );
  XNOR2X1 \generate_pp/pp_adder/U61  ( .A(\generate_pp/pp_adder/n17 ), .B(
        \generate_pp/pp_adder/n18 ), .Y(\generate_pp/sum [1]) );
  XNOR2X1 \generate_pp/pp_adder/U60  ( .A(\generate_pp/adder_in1 [3]), .B(A[3]), .Y(\generate_pp/pp_adder/n13 ) );
  XNOR2X1 \generate_pp/pp_adder/U59  ( .A(\generate_pp/pp_adder/n13 ), .B(
        \generate_pp/pp_adder/n14 ), .Y(\generate_pp/sum [3]) );
  XNOR2X1 \generate_pp/pp_adder/U58  ( .A(\generate_pp/adder_in1 [2]), .B(A[2]), .Y(\generate_pp/pp_adder/n15 ) );
  XNOR2X1 \generate_pp/pp_adder/U57  ( .A(\generate_pp/pp_adder/n15 ), .B(
        \generate_pp/pp_adder/n16 ), .Y(\generate_pp/sum [2]) );
  XNOR2X1 \generate_pp/pp_adder/U56  ( .A(\generate_pp/adder_in1 [8]), .B(A[8]), .Y(\generate_pp/pp_adder/n3 ) );
  XNOR2X1 \generate_pp/pp_adder/U55  ( .A(\generate_pp/pp_adder/n3 ), .B(
        \generate_pp/pp_adder/n4 ), .Y(\generate_pp/sum [8]) );
  XNOR2X1 \generate_pp/pp_adder/U54  ( .A(\generate_pp/adder_in1 [7]), .B(A[7]), .Y(\generate_pp/pp_adder/n5 ) );
  XNOR2X1 \generate_pp/pp_adder/U53  ( .A(\generate_pp/pp_adder/n5 ), .B(
        \generate_pp/pp_adder/n6 ), .Y(\generate_pp/sum [7]) );
  XNOR2X1 \generate_pp/pp_adder/U52  ( .A(\generate_pp/adder_in1 [6]), .B(A[6]), .Y(\generate_pp/pp_adder/n7 ) );
  XNOR2X1 \generate_pp/pp_adder/U51  ( .A(\generate_pp/pp_adder/n7 ), .B(
        \generate_pp/pp_adder/n8 ), .Y(\generate_pp/sum [6]) );
  XNOR2X1 \generate_pp/pp_adder/U50  ( .A(\generate_pp/adder_in1 [5]), .B(A[5]), .Y(\generate_pp/pp_adder/n9 ) );
  XNOR2X1 \generate_pp/pp_adder/U49  ( .A(\generate_pp/pp_adder/n9 ), .B(
        \generate_pp/pp_adder/n10 ), .Y(\generate_pp/sum [5]) );
  XNOR2X1 \generate_pp/pp_adder/U48  ( .A(\generate_pp/adder_in1 [4]), .B(A[4]), .Y(\generate_pp/pp_adder/n11 ) );
  XNOR2X1 \generate_pp/pp_adder/U47  ( .A(\generate_pp/pp_adder/n11 ), .B(
        \generate_pp/pp_adder/n12 ), .Y(\generate_pp/sum [4]) );
  XNOR2X1 \generate_pp/pp_adder/U46  ( .A(\generate_pp/adder_in1 [14]), .B(
        A[14]), .Y(\generate_pp/pp_adder/n21 ) );
  XNOR2X1 \generate_pp/pp_adder/U45  ( .A(\generate_pp/pp_adder/n21 ), .B(
        \generate_pp/pp_adder/n22 ), .Y(\generate_pp/sum [14]) );
  XNOR2X1 \generate_pp/pp_adder/U44  ( .A(\generate_pp/adder_in1 [13]), .B(
        A[13]), .Y(\generate_pp/pp_adder/n23 ) );
  XNOR2X1 \generate_pp/pp_adder/U43  ( .A(\generate_pp/pp_adder/n23 ), .B(
        \generate_pp/pp_adder/n24 ), .Y(\generate_pp/sum [13]) );
  XNOR2X1 \generate_pp/pp_adder/U42  ( .A(\generate_pp/adder_in1 [12]), .B(
        A[12]), .Y(\generate_pp/pp_adder/n25 ) );
  XNOR2X1 \generate_pp/pp_adder/U41  ( .A(\generate_pp/pp_adder/n25 ), .B(
        \generate_pp/pp_adder/n26 ), .Y(\generate_pp/sum [12]) );
  XNOR2X1 \generate_pp/pp_adder/U40  ( .A(\generate_pp/adder_in1 [11]), .B(
        A[11]), .Y(\generate_pp/pp_adder/n27 ) );
  XNOR2X1 \generate_pp/pp_adder/U39  ( .A(\generate_pp/pp_adder/n27 ), .B(
        \generate_pp/pp_adder/n28 ), .Y(\generate_pp/sum [11]) );
  XNOR2X1 \generate_pp/pp_adder/U38  ( .A(\generate_pp/adder_in1 [10]), .B(
        A[10]), .Y(\generate_pp/pp_adder/n29 ) );
  XNOR2X1 \generate_pp/pp_adder/U37  ( .A(\generate_pp/pp_adder/n29 ), .B(
        \generate_pp/pp_adder/n30 ), .Y(\generate_pp/sum [10]) );
  XNOR2X1 \generate_pp/pp_adder/U36  ( .A(\generate_pp/adder_in1 [9]), .B(A[9]), .Y(\generate_pp/pp_adder/n1 ) );
  XNOR2X1 \generate_pp/pp_adder/U35  ( .A(\generate_pp/pp_adder/n1 ), .B(
        \generate_pp/pp_adder/n2 ), .Y(\generate_pp/sum [9]) );
  XNOR2X1 \generate_pp/pp_adder/U34  ( .A(\generate_pp/adder_in1 [15]), .B(
        A[15]), .Y(\generate_pp/pp_adder/n19 ) );
  XNOR2X1 \generate_pp/pp_adder/U33  ( .A(\generate_pp/pp_adder/n19 ), .B(
        \generate_pp/pp_adder/n20 ), .Y(\generate_pp/sum [15]) );
  OAI21XL \generate_pp/pp_adder/U32  ( .A0(\generate_pp/adder_in1 [13]), .A1(
        \generate_pp/pp_adder/n24 ), .B0(A[13]), .Y(\generate_pp/pp_adder/n34 ) );
  OAI2BB1X1 \generate_pp/pp_adder/U31  ( .A0N(\generate_pp/pp_adder/n24 ), 
        .A1N(\generate_pp/adder_in1 [13]), .B0(\generate_pp/pp_adder/n34 ), 
        .Y(\generate_pp/pp_adder/n22 ) );
  OAI21XL \generate_pp/pp_adder/U30  ( .A0(\generate_pp/adder_in1 [10]), .A1(
        \generate_pp/pp_adder/n30 ), .B0(A[10]), .Y(\generate_pp/pp_adder/n37 ) );
  OAI2BB1X1 \generate_pp/pp_adder/U29  ( .A0N(\generate_pp/pp_adder/n30 ), 
        .A1N(\generate_pp/adder_in1 [10]), .B0(\generate_pp/pp_adder/n37 ), 
        .Y(\generate_pp/pp_adder/n28 ) );
  OAI21XL \generate_pp/pp_adder/U28  ( .A0(\generate_pp/adder_in1 [1]), .A1(
        \generate_pp/pp_adder/n18 ), .B0(A[1]), .Y(\generate_pp/pp_adder/n46 )
         );
  OAI2BB1X1 \generate_pp/pp_adder/U27  ( .A0N(\generate_pp/pp_adder/n18 ), 
        .A1N(\generate_pp/adder_in1 [1]), .B0(\generate_pp/pp_adder/n46 ), .Y(
        \generate_pp/pp_adder/n16 ) );
  OAI21XL \generate_pp/pp_adder/U26  ( .A0(\generate_pp/adder_in1 [15]), .A1(
        \generate_pp/pp_adder/n20 ), .B0(A[15]), .Y(\generate_pp/pp_adder/n32 ) );
  OAI2BB1X1 \generate_pp/pp_adder/U25  ( .A0N(\generate_pp/pp_adder/n20 ), 
        .A1N(\generate_pp/adder_in1 [15]), .B0(\generate_pp/pp_adder/n32 ), 
        .Y(\generate_pp/adder_out[16] ) );
  OAI21XL \generate_pp/pp_adder/U24  ( .A0(\generate_pp/adder_in1 [9]), .A1(
        \generate_pp/pp_adder/n2 ), .B0(A[9]), .Y(\generate_pp/pp_adder/n38 )
         );
  OAI2BB1X1 \generate_pp/pp_adder/U23  ( .A0N(\generate_pp/pp_adder/n2 ), 
        .A1N(\generate_pp/adder_in1 [9]), .B0(\generate_pp/pp_adder/n38 ), .Y(
        \generate_pp/pp_adder/n30 ) );
  OAI21XL \generate_pp/pp_adder/U22  ( .A0(\generate_pp/adder_in1 [7]), .A1(
        \generate_pp/pp_adder/n6 ), .B0(A[7]), .Y(\generate_pp/pp_adder/n40 )
         );
  OAI2BB1X1 \generate_pp/pp_adder/U21  ( .A0N(\generate_pp/pp_adder/n6 ), 
        .A1N(\generate_pp/adder_in1 [7]), .B0(\generate_pp/pp_adder/n40 ), .Y(
        \generate_pp/pp_adder/n4 ) );
  OAI21XL \generate_pp/pp_adder/U20  ( .A0(\generate_pp/adder_in1 [4]), .A1(
        \generate_pp/pp_adder/n12 ), .B0(A[4]), .Y(\generate_pp/pp_adder/n43 )
         );
  OAI2BB1X1 \generate_pp/pp_adder/U19  ( .A0N(\generate_pp/pp_adder/n12 ), 
        .A1N(\generate_pp/adder_in1 [4]), .B0(\generate_pp/pp_adder/n43 ), .Y(
        \generate_pp/pp_adder/n10 ) );
  OAI21XL \generate_pp/pp_adder/U18  ( .A0(\generate_pp/adder_in1 [3]), .A1(
        \generate_pp/pp_adder/n14 ), .B0(A[3]), .Y(\generate_pp/pp_adder/n44 )
         );
  OAI2BB1X1 \generate_pp/pp_adder/U17  ( .A0N(\generate_pp/pp_adder/n14 ), 
        .A1N(\generate_pp/adder_in1 [3]), .B0(\generate_pp/pp_adder/n44 ), .Y(
        \generate_pp/pp_adder/n12 ) );
  OR2X1 \generate_pp/pp_adder/U16  ( .A(\generate_pp/adder_in1 [11]), .B(
        \generate_pp/pp_adder/n28 ), .Y(\generate_pp/pp_adder/n36 ) );
  AO22X1 \generate_pp/pp_adder/U15  ( .A0(\generate_pp/pp_adder/n28 ), .A1(
        \generate_pp/adder_in1 [11]), .B0(\generate_pp/pp_adder/n36 ), .B1(
        A[11]), .Y(\generate_pp/pp_adder/n26 ) );
  OR2X1 \generate_pp/pp_adder/U14  ( .A(\generate_pp/adder_in1 [5]), .B(
        \generate_pp/pp_adder/n10 ), .Y(\generate_pp/pp_adder/n42 ) );
  AO22X1 \generate_pp/pp_adder/U13  ( .A0(\generate_pp/pp_adder/n10 ), .A1(
        \generate_pp/adder_in1 [5]), .B0(\generate_pp/pp_adder/n42 ), .B1(A[5]), .Y(\generate_pp/pp_adder/n8 ) );
  OR2X1 \generate_pp/pp_adder/U12  ( .A(\generate_pp/adder_in1 [2]), .B(
        \generate_pp/pp_adder/n16 ), .Y(\generate_pp/pp_adder/n45 ) );
  AO22X1 \generate_pp/pp_adder/U11  ( .A0(\generate_pp/pp_adder/n16 ), .A1(
        \generate_pp/adder_in1 [2]), .B0(\generate_pp/pp_adder/n45 ), .B1(A[2]), .Y(\generate_pp/pp_adder/n14 ) );
  OR2X1 \generate_pp/pp_adder/U10  ( .A(\generate_pp/adder_in1 [14]), .B(
        \generate_pp/pp_adder/n22 ), .Y(\generate_pp/pp_adder/n33 ) );
  AO22X1 \generate_pp/pp_adder/U9  ( .A0(\generate_pp/pp_adder/n33 ), .A1(
        A[14]), .B0(\generate_pp/pp_adder/n22 ), .B1(
        \generate_pp/adder_in1 [14]), .Y(\generate_pp/pp_adder/n20 ) );
  OR2X1 \generate_pp/pp_adder/U8  ( .A(\generate_pp/adder_in1 [8]), .B(
        \generate_pp/pp_adder/n4 ), .Y(\generate_pp/pp_adder/n39 ) );
  AO22X1 \generate_pp/pp_adder/U7  ( .A0(\generate_pp/pp_adder/n39 ), .A1(A[8]), .B0(\generate_pp/pp_adder/n4 ), .B1(\generate_pp/adder_in1 [8]), .Y(
        \generate_pp/pp_adder/n2 ) );
  OAI21XL \generate_pp/pp_adder/U6  ( .A0(\generate_pp/adder_in1 [0]), .A1(
        A[0]), .B0(1'b0), .Y(\generate_pp/pp_adder/n47 ) );
  OAI2BB1X1 \generate_pp/pp_adder/U5  ( .A0N(\generate_pp/adder_in1 [0]), 
        .A1N(A[0]), .B0(\generate_pp/pp_adder/n47 ), .Y(
        \generate_pp/pp_adder/n18 ) );
  OAI21XL \generate_pp/pp_adder/U4  ( .A0(\generate_pp/adder_in1 [12]), .A1(
        \generate_pp/pp_adder/n26 ), .B0(A[12]), .Y(\generate_pp/pp_adder/n35 ) );
  OAI2BB1X1 \generate_pp/pp_adder/U3  ( .A0N(\generate_pp/pp_adder/n26 ), 
        .A1N(\generate_pp/adder_in1 [12]), .B0(\generate_pp/pp_adder/n35 ), 
        .Y(\generate_pp/pp_adder/n24 ) );
  OAI21XL \generate_pp/pp_adder/U2  ( .A0(\generate_pp/adder_in1 [6]), .A1(
        \generate_pp/pp_adder/n8 ), .B0(A[6]), .Y(\generate_pp/pp_adder/n41 )
         );
  OAI2BB1X1 \generate_pp/pp_adder/U1  ( .A0N(\generate_pp/pp_adder/n8 ), .A1N(
        \generate_pp/adder_in1 [6]), .B0(\generate_pp/pp_adder/n41 ), .Y(
        \generate_pp/pp_adder/n6 ) );
endmodule


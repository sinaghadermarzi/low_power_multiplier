
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
         \generate_pp/n56 , \generate_pp/n55 , \generate_pp/n54 ,
         \generate_pp/n53 , \generate_pp/n6 , \generate_pp/n4 ,
         \generate_pp/n1 , \generate_pp/n136 , \generate_pp/n135 ,
         \generate_pp/n134 , \generate_pp/n133 , \generate_pp/n132 ,
         \generate_pp/n131 , \generate_pp/n130 , \generate_pp/n129 ,
         \generate_pp/n128 , \generate_pp/n127 , \generate_pp/n126 ,
         \generate_pp/n125 , \generate_pp/n124 , \generate_pp/n123 ,
         \generate_pp/n122 , \generate_pp/n121 , \generate_pp/n120 ,
         \generate_pp/n119 , \generate_pp/n118 , \generate_pp/n117 ,
         \generate_pp/n116 , \generate_pp/n115 , \generate_pp/n114 ,
         \generate_pp/n113 , \generate_pp/n112 , \generate_pp/n111 ,
         \generate_pp/n110 , \generate_pp/n109 , \generate_pp/n108 ,
         \generate_pp/n107 , \generate_pp/n106 , \generate_pp/n105 ,
         \generate_pp/n104 , \generate_pp/n103 , \generate_pp/n102 ,
         \generate_pp/n101 , \generate_pp/n100 , \generate_pp/n99 ,
         \generate_pp/n98 , \generate_pp/n97 , \generate_pp/n96 ,
         \generate_pp/n95 , \generate_pp/n94 , \generate_pp/n93 ,
         \generate_pp/n92 , \generate_pp/n91 , \generate_pp/n90 ,
         \generate_pp/n89 , \generate_pp/n88 , \generate_pp/n87 ,
         \generate_pp/n84 , \generate_pp/n83 , \generate_pp/n82 ,
         \generate_pp/n81 , \generate_pp/n80 , \generate_pp/n79 ,
         \generate_pp/n78 , \generate_pp/n77 , \generate_pp/n76 ,
         \generate_pp/n75 , \generate_pp/n74 , \generate_pp/n73 ,
         \generate_pp/n72 , \generate_pp/n71 , \generate_pp/n70 ,
         \generate_pp/n69 , \generate_pp/n68 , \generate_pp/adder_out[16] ,
         \generate_pp/feeder[0] , \generate_pp/feeder[1] ,
         \generate_pp/feeder[2] , \generate_pp/feeder[3] ,
         \generate_pp/feeder[4] , \generate_pp/feeder[5] ,
         \generate_pp/feeder[6] , \generate_pp/feeder[7] ,
         \generate_pp/feeder[8] , \generate_pp/feeder[9] ,
         \generate_pp/feeder[10] , \generate_pp/feeder[11] ,
         \generate_pp/feeder[12] , \generate_pp/feeder[13] ,
         \generate_pp/feeder[14] , \generate_pp/feeder[15] ,
         \generate_pp/next_B , \generate_pp/pp_adder/n47 ,
         \generate_pp/pp_adder/n46 , \generate_pp/pp_adder/n45 ,
         \generate_pp/pp_adder/n44 , \generate_pp/pp_adder/n43 ,
         \generate_pp/pp_adder/n42 , \generate_pp/pp_adder/n41 ,
         \generate_pp/pp_adder/n40 , \generate_pp/pp_adder/n39 ,
         \generate_pp/pp_adder/n38 , \generate_pp/pp_adder/n37 ,
         \generate_pp/pp_adder/n36 , \generate_pp/pp_adder/n35 ,
         \generate_pp/pp_adder/n34 , \generate_pp/pp_adder/n33 ,
         \generate_pp/pp_adder/n32 , \generate_pp/pp_adder/n31 ,
         \generate_pp/pp_adder/n30 , \generate_pp/pp_adder/n29 ,
         \generate_pp/pp_adder/n28 , \generate_pp/pp_adder/n27 ,
         \generate_pp/pp_adder/n26 , \generate_pp/pp_adder/n25 ,
         \generate_pp/pp_adder/n24 , \generate_pp/pp_adder/n23 ,
         \generate_pp/pp_adder/n22 , \generate_pp/pp_adder/n21 ,
         \generate_pp/pp_adder/n20 , \generate_pp/pp_adder/n19 ,
         \generate_pp/pp_adder/n18 , \generate_pp/pp_adder/n17 ,
         \generate_pp/pp_adder/n16 , \generate_pp/pp_adder/n15 ,
         \generate_pp/pp_adder/n14 , \generate_pp/pp_adder/n13 ,
         \generate_pp/pp_adder/n12 , \generate_pp/pp_adder/n11 ,
         \generate_pp/pp_adder/n10 , \generate_pp/pp_adder/n9 ,
         \generate_pp/pp_adder/n8 , \generate_pp/pp_adder/n7 ,
         \generate_pp/pp_adder/n6 , \generate_pp/pp_adder/n5 ,
         \generate_pp/pp_adder/n4 , \generate_pp/pp_adder/n3 ,
         \generate_pp/pp_adder/n2 , \generate_pp/pp_adder/n1 ;
  wire   [15:0] sel;
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
  OAI2BB2XL \generate_pp/U107  ( .B0(\generate_pp/n55 ), .B1(\generate_pp/n83 ), .A0N(\generate_pp/sum [0]), .A1N(\generate_pp/n56 ), .Y(C[0]) );
  CLKINVX1 \generate_pp/U106  ( .A(rst), .Y(\generate_pp/n84 ) );
  OAI2BB2XL \generate_pp/U105  ( .B0(\generate_pp/n87 ), .B1(\generate_pp/n54 ), .A0N(\generate_pp/feeder[15] ), .A1N(\generate_pp/n103 ), .Y(
        \generate_pp/n120 ) );
  OAI2BB2XL \generate_pp/U104  ( .B0(\generate_pp/n101 ), .B1(
        \generate_pp/n53 ), .A0N(\generate_pp/feeder[1] ), .A1N(
        \generate_pp/n103 ), .Y(\generate_pp/n134 ) );
  OAI2BB2XL \generate_pp/U103  ( .B0(\generate_pp/n98 ), .B1(\generate_pp/n53 ), .A0N(\generate_pp/feeder[4] ), .A1N(\generate_pp/n103 ), .Y(
        \generate_pp/n131 ) );
  OAI2BB2XL \generate_pp/U102  ( .B0(\generate_pp/n95 ), .B1(\generate_pp/n53 ), .A0N(\generate_pp/feeder[7] ), .A1N(\generate_pp/n103 ), .Y(
        \generate_pp/n128 ) );
  OAI2BB2XL \generate_pp/U101  ( .B0(\generate_pp/n92 ), .B1(\generate_pp/n54 ), .A0N(\generate_pp/feeder[10] ), .A1N(\generate_pp/n103 ), .Y(
        \generate_pp/n125 ) );
  OAI2BB2XL \generate_pp/U100  ( .B0(\generate_pp/n89 ), .B1(\generate_pp/n54 ), .A0N(\generate_pp/feeder[13] ), .A1N(\generate_pp/n103 ), .Y(
        \generate_pp/n122 ) );
  OAI2BB2XL \generate_pp/U99  ( .B0(\generate_pp/n100 ), .B1(\generate_pp/n53 ), .A0N(\generate_pp/feeder[2] ), .A1N(\generate_pp/n103 ), .Y(
        \generate_pp/n133 ) );
  OAI2BB2XL \generate_pp/U98  ( .B0(\generate_pp/n97 ), .B1(\generate_pp/n53 ), 
        .A0N(\generate_pp/feeder[5] ), .A1N(\generate_pp/n103 ), .Y(
        \generate_pp/n130 ) );
  OAI2BB2XL \generate_pp/U97  ( .B0(\generate_pp/n104 ), .B1(\generate_pp/n53 ), .A0N(\generate_pp/feeder[0] ), .A1N(\generate_pp/n103 ), .Y(
        \generate_pp/n135 ) );
  OAI2BB2XL \generate_pp/U96  ( .B0(\generate_pp/n99 ), .B1(\generate_pp/n53 ), 
        .A0N(\generate_pp/feeder[3] ), .A1N(\generate_pp/n103 ), .Y(
        \generate_pp/n132 ) );
  OAI2BB2XL \generate_pp/U95  ( .B0(\generate_pp/n96 ), .B1(\generate_pp/n53 ), 
        .A0N(\generate_pp/feeder[6] ), .A1N(\generate_pp/n103 ), .Y(
        \generate_pp/n129 ) );
  OAI2BB2XL \generate_pp/U94  ( .B0(\generate_pp/n94 ), .B1(\generate_pp/n54 ), 
        .A0N(\generate_pp/feeder[8] ), .A1N(\generate_pp/n103 ), .Y(
        \generate_pp/n127 ) );
  OAI2BB2XL \generate_pp/U93  ( .B0(\generate_pp/n91 ), .B1(\generate_pp/n54 ), 
        .A0N(\generate_pp/feeder[11] ), .A1N(\generate_pp/n103 ), .Y(
        \generate_pp/n124 ) );
  OAI2BB2XL \generate_pp/U92  ( .B0(\generate_pp/n93 ), .B1(\generate_pp/n54 ), 
        .A0N(\generate_pp/feeder[9] ), .A1N(\generate_pp/n103 ), .Y(
        \generate_pp/n126 ) );
  OAI2BB2XL \generate_pp/U91  ( .B0(\generate_pp/n90 ), .B1(\generate_pp/n54 ), 
        .A0N(\generate_pp/feeder[12] ), .A1N(\generate_pp/n103 ), .Y(
        \generate_pp/n123 ) );
  OAI2BB2XL \generate_pp/U90  ( .B0(\generate_pp/n88 ), .B1(\generate_pp/n54 ), 
        .A0N(\generate_pp/feeder[14] ), .A1N(\generate_pp/n103 ), .Y(
        \generate_pp/n121 ) );
  NAND2X1 \generate_pp/U89  ( .A(\generate_pp/next_B ), .B(\generate_pp/n84 ), 
        .Y(\generate_pp/n102 ) );
  NAND2X1 \generate_pp/U88  ( .A(\generate_pp/n56 ), .B(
        \generate_pp/adder_out[16] ), .Y(\generate_pp/n87 ) );
  OAI22XL \generate_pp/U87  ( .A0(\generate_pp/n4 ), .A1(\generate_pp/n68 ), 
        .B0(\generate_pp/n1 ), .B1(\generate_pp/n87 ), .Y(\generate_pp/n105 )
         );
  OAI22XL \generate_pp/U86  ( .A0(\generate_pp/n4 ), .A1(\generate_pp/n82 ), 
        .B0(\generate_pp/n101 ), .B1(\generate_pp/n1 ), .Y(\generate_pp/n119 )
         );
  OAI22XL \generate_pp/U85  ( .A0(\generate_pp/n4 ), .A1(\generate_pp/n69 ), 
        .B0(\generate_pp/n88 ), .B1(\generate_pp/n1 ), .Y(\generate_pp/n106 )
         );
  OAI22XL \generate_pp/U84  ( .A0(\generate_pp/n4 ), .A1(\generate_pp/n70 ), 
        .B0(\generate_pp/n89 ), .B1(\generate_pp/n1 ), .Y(\generate_pp/n107 )
         );
  OAI22XL \generate_pp/U83  ( .A0(\generate_pp/n4 ), .A1(\generate_pp/n71 ), 
        .B0(\generate_pp/n90 ), .B1(\generate_pp/n1 ), .Y(\generate_pp/n108 )
         );
  OAI22XL \generate_pp/U82  ( .A0(\generate_pp/n4 ), .A1(\generate_pp/n72 ), 
        .B0(\generate_pp/n91 ), .B1(\generate_pp/n1 ), .Y(\generate_pp/n109 )
         );
  OAI22XL \generate_pp/U81  ( .A0(\generate_pp/n4 ), .A1(\generate_pp/n73 ), 
        .B0(\generate_pp/n92 ), .B1(\generate_pp/n1 ), .Y(\generate_pp/n110 )
         );
  OAI22XL \generate_pp/U80  ( .A0(\generate_pp/n4 ), .A1(\generate_pp/n74 ), 
        .B0(\generate_pp/n93 ), .B1(\generate_pp/n1 ), .Y(\generate_pp/n111 )
         );
  OAI22XL \generate_pp/U79  ( .A0(\generate_pp/n4 ), .A1(\generate_pp/n75 ), 
        .B0(\generate_pp/n94 ), .B1(\generate_pp/n1 ), .Y(\generate_pp/n112 )
         );
  OAI22XL \generate_pp/U78  ( .A0(\generate_pp/n4 ), .A1(\generate_pp/n76 ), 
        .B0(\generate_pp/n95 ), .B1(\generate_pp/n1 ), .Y(\generate_pp/n113 )
         );
  OAI22XL \generate_pp/U77  ( .A0(\generate_pp/n4 ), .A1(\generate_pp/n77 ), 
        .B0(\generate_pp/n96 ), .B1(\generate_pp/n1 ), .Y(\generate_pp/n114 )
         );
  OAI22XL \generate_pp/U76  ( .A0(\generate_pp/n4 ), .A1(\generate_pp/n78 ), 
        .B0(\generate_pp/n97 ), .B1(\generate_pp/n1 ), .Y(\generate_pp/n115 )
         );
  OAI22XL \generate_pp/U75  ( .A0(\generate_pp/n4 ), .A1(\generate_pp/n79 ), 
        .B0(\generate_pp/n98 ), .B1(\generate_pp/n1 ), .Y(\generate_pp/n116 )
         );
  OAI22XL \generate_pp/U74  ( .A0(\generate_pp/n4 ), .A1(\generate_pp/n80 ), 
        .B0(\generate_pp/n99 ), .B1(\generate_pp/n1 ), .Y(\generate_pp/n117 )
         );
  OAI22XL \generate_pp/U73  ( .A0(\generate_pp/n4 ), .A1(\generate_pp/n81 ), 
        .B0(\generate_pp/n100 ), .B1(\generate_pp/n1 ), .Y(\generate_pp/n118 )
         );
  OAI22XL \generate_pp/U72  ( .A0(\generate_pp/n4 ), .A1(\generate_pp/n83 ), 
        .B0(\generate_pp/n104 ), .B1(\generate_pp/n1 ), .Y(\generate_pp/n136 )
         );
  AOI2BB2X1 \generate_pp/U71  ( .B0(\generate_pp/sum [2]), .B1(
        \generate_pp/n55 ), .A0N(\generate_pp/n56 ), .A1N(\generate_pp/n81 ), 
        .Y(\generate_pp/n101 ) );
  AOI2BB2X1 \generate_pp/U70  ( .B0(\generate_pp/sum [1]), .B1(
        \generate_pp/n55 ), .A0N(\generate_pp/n56 ), .A1N(\generate_pp/n82 ), 
        .Y(\generate_pp/n104 ) );
  AOI2BB2X1 \generate_pp/U69  ( .B0(\generate_pp/sum [15]), .B1(
        \generate_pp/n55 ), .A0N(\generate_pp/n56 ), .A1N(\generate_pp/n68 ), 
        .Y(\generate_pp/n88 ) );
  AOI2BB2X1 \generate_pp/U68  ( .B0(\generate_pp/sum [14]), .B1(
        \generate_pp/n55 ), .A0N(\generate_pp/n56 ), .A1N(\generate_pp/n69 ), 
        .Y(\generate_pp/n89 ) );
  AOI2BB2X1 \generate_pp/U67  ( .B0(\generate_pp/sum [13]), .B1(
        \generate_pp/n55 ), .A0N(\generate_pp/n56 ), .A1N(\generate_pp/n70 ), 
        .Y(\generate_pp/n90 ) );
  AOI2BB2X1 \generate_pp/U66  ( .B0(\generate_pp/sum [12]), .B1(
        \generate_pp/n56 ), .A0N(\generate_pp/n56 ), .A1N(\generate_pp/n71 ), 
        .Y(\generate_pp/n91 ) );
  AOI2BB2X1 \generate_pp/U65  ( .B0(\generate_pp/sum [11]), .B1(
        \generate_pp/n56 ), .A0N(\generate_pp/n56 ), .A1N(\generate_pp/n72 ), 
        .Y(\generate_pp/n92 ) );
  AOI2BB2X1 \generate_pp/U64  ( .B0(\generate_pp/sum [10]), .B1(
        \generate_pp/n56 ), .A0N(\generate_pp/n56 ), .A1N(\generate_pp/n73 ), 
        .Y(\generate_pp/n93 ) );
  AOI2BB2X1 \generate_pp/U63  ( .B0(\generate_pp/sum [9]), .B1(
        \generate_pp/n55 ), .A0N(\generate_pp/n56 ), .A1N(\generate_pp/n74 ), 
        .Y(\generate_pp/n94 ) );
  AOI2BB2X1 \generate_pp/U62  ( .B0(\generate_pp/sum [8]), .B1(
        \generate_pp/n55 ), .A0N(\generate_pp/n56 ), .A1N(\generate_pp/n75 ), 
        .Y(\generate_pp/n95 ) );
  AOI2BB2X1 \generate_pp/U61  ( .B0(\generate_pp/sum [7]), .B1(
        \generate_pp/n55 ), .A0N(\generate_pp/n56 ), .A1N(\generate_pp/n76 ), 
        .Y(\generate_pp/n96 ) );
  AOI2BB2X1 \generate_pp/U60  ( .B0(\generate_pp/sum [6]), .B1(
        \generate_pp/n55 ), .A0N(\generate_pp/n56 ), .A1N(\generate_pp/n77 ), 
        .Y(\generate_pp/n97 ) );
  AOI2BB2X1 \generate_pp/U59  ( .B0(\generate_pp/sum [5]), .B1(
        \generate_pp/n55 ), .A0N(\generate_pp/n56 ), .A1N(\generate_pp/n78 ), 
        .Y(\generate_pp/n98 ) );
  AOI2BB2X1 \generate_pp/U58  ( .B0(\generate_pp/sum [4]), .B1(
        \generate_pp/n55 ), .A0N(\generate_pp/n56 ), .A1N(\generate_pp/n79 ), 
        .Y(\generate_pp/n99 ) );
  AOI2BB2X1 \generate_pp/U57  ( .B0(\generate_pp/sum [3]), .B1(
        \generate_pp/n55 ), .A0N(\generate_pp/n56 ), .A1N(\generate_pp/n80 ), 
        .Y(\generate_pp/n100 ) );
  CLKINVX1 \generate_pp/U56  ( .A(\generate_pp/n87 ), .Y(C[16]) );
  CLKINVX1 \generate_pp/U55  ( .A(\generate_pp/n88 ), .Y(C[15]) );
  CLKINVX1 \generate_pp/U54  ( .A(\generate_pp/n89 ), .Y(C[14]) );
  CLKINVX1 \generate_pp/U53  ( .A(\generate_pp/n90 ), .Y(C[13]) );
  CLKINVX1 \generate_pp/U52  ( .A(\generate_pp/n91 ), .Y(C[12]) );
  CLKINVX1 \generate_pp/U51  ( .A(\generate_pp/n92 ), .Y(C[11]) );
  CLKINVX1 \generate_pp/U50  ( .A(\generate_pp/n93 ), .Y(C[10]) );
  CLKINVX1 \generate_pp/U49  ( .A(\generate_pp/n94 ), .Y(C[9]) );
  CLKINVX1 \generate_pp/U48  ( .A(\generate_pp/n95 ), .Y(C[8]) );
  CLKINVX1 \generate_pp/U47  ( .A(\generate_pp/n96 ), .Y(C[7]) );
  CLKINVX1 \generate_pp/U46  ( .A(\generate_pp/n97 ), .Y(C[6]) );
  CLKINVX1 \generate_pp/U45  ( .A(\generate_pp/n98 ), .Y(C[5]) );
  CLKINVX1 \generate_pp/U44  ( .A(\generate_pp/n99 ), .Y(C[4]) );
  CLKINVX1 \generate_pp/U43  ( .A(\generate_pp/n100 ), .Y(C[3]) );
  CLKINVX1 \generate_pp/U42  ( .A(\generate_pp/n101 ), .Y(C[2]) );
  CLKINVX1 \generate_pp/U41  ( .A(\generate_pp/n104 ), .Y(C[1]) );
  CLKBUFX3 \generate_pp/U40  ( .A(\generate_pp/n102 ), .Y(\generate_pp/n53 )
         );
  CLKBUFX3 \generate_pp/U39  ( .A(\generate_pp/n102 ), .Y(\generate_pp/n54 )
         );
  CLKBUFX3 \generate_pp/U38  ( .A(m_curr_B), .Y(\generate_pp/n56 ) );
  CLKBUFX3 \generate_pp/U37  ( .A(m_curr_B), .Y(\generate_pp/n55 ) );
  AND2X2 \generate_pp/U36  ( .A(\generate_pp/n54 ), .B(\generate_pp/n84 ), .Y(
        \generate_pp/n103 ) );
  NAND2X1 \generate_pp/U35  ( .A(\generate_pp/n84 ), .B(\generate_pp/n1 ), .Y(
        \generate_pp/n4 ) );
  NAND2X1 \generate_pp/U34  ( .A(\generate_pp/n6 ), .B(\generate_pp/n84 ), .Y(
        \generate_pp/n1 ) );
  TLATX1 \generate_pp/next_B_reg  ( .G(clk), .D(m_next_B), .Q(
        \generate_pp/next_B ), .QN(\generate_pp/n6 ) );
  DFFNSRX1 \generate_pp/feeder_reg[0]  ( .D(\generate_pp/n135 ), .CKN(clk), 
        .SN(1'b1), .RN(1'b1), .Q(\generate_pp/feeder[0] ) );
  DFFNSRX1 \generate_pp/feeder_reg[1]  ( .D(\generate_pp/n134 ), .CKN(clk), 
        .SN(1'b1), .RN(1'b1), .Q(\generate_pp/feeder[1] ) );
  DFFNSRX1 \generate_pp/feeder_reg[2]  ( .D(\generate_pp/n133 ), .CKN(clk), 
        .SN(1'b1), .RN(1'b1), .Q(\generate_pp/feeder[2] ) );
  DFFNSRX1 \generate_pp/feeder_reg[7]  ( .D(\generate_pp/n128 ), .CKN(clk), 
        .SN(1'b1), .RN(1'b1), .Q(\generate_pp/feeder[7] ) );
  DFFNSRX1 \generate_pp/feeder_reg[6]  ( .D(\generate_pp/n129 ), .CKN(clk), 
        .SN(1'b1), .RN(1'b1), .Q(\generate_pp/feeder[6] ) );
  DFFNSRX1 \generate_pp/feeder_reg[4]  ( .D(\generate_pp/n131 ), .CKN(clk), 
        .SN(1'b1), .RN(1'b1), .Q(\generate_pp/feeder[4] ) );
  DFFNSRX1 \generate_pp/feeder_reg[3]  ( .D(\generate_pp/n132 ), .CKN(clk), 
        .SN(1'b1), .RN(1'b1), .Q(\generate_pp/feeder[3] ) );
  DFFNSRX1 \generate_pp/feeder_reg[5]  ( .D(\generate_pp/n130 ), .CKN(clk), 
        .SN(1'b1), .RN(1'b1), .Q(\generate_pp/feeder[5] ) );
  DFFNSRX1 \generate_pp/feeder_reg[8]  ( .D(\generate_pp/n127 ), .CKN(clk), 
        .SN(1'b1), .RN(1'b1), .Q(\generate_pp/feeder[8] ) );
  DFFNSRX1 \generate_pp/feeder_reg[13]  ( .D(\generate_pp/n122 ), .CKN(clk), 
        .SN(1'b1), .RN(1'b1), .Q(\generate_pp/feeder[13] ) );
  DFFNSRX1 \generate_pp/feeder_reg[12]  ( .D(\generate_pp/n123 ), .CKN(clk), 
        .SN(1'b1), .RN(1'b1), .Q(\generate_pp/feeder[12] ) );
  DFFNSRX1 \generate_pp/feeder_reg[10]  ( .D(\generate_pp/n125 ), .CKN(clk), 
        .SN(1'b1), .RN(1'b1), .Q(\generate_pp/feeder[10] ) );
  DFFNSRX1 \generate_pp/feeder_reg[9]  ( .D(\generate_pp/n126 ), .CKN(clk), 
        .SN(1'b1), .RN(1'b1), .Q(\generate_pp/feeder[9] ) );
  DFFNSRX1 \generate_pp/feeder_reg[11]  ( .D(\generate_pp/n124 ), .CKN(clk), 
        .SN(1'b1), .RN(1'b1), .Q(\generate_pp/feeder[11] ) );
  DFFNSRX1 \generate_pp/feeder_reg[15]  ( .D(\generate_pp/n120 ), .CKN(clk), 
        .SN(1'b1), .RN(1'b1), .Q(\generate_pp/feeder[15] ) );
  DFFNSRX1 \generate_pp/feeder_reg[14]  ( .D(\generate_pp/n121 ), .CKN(clk), 
        .SN(1'b1), .RN(1'b1), .Q(\generate_pp/feeder[14] ) );
  DFFNSRX1 \generate_pp/bypass_reg[0]  ( .D(\generate_pp/n136 ), .CKN(clk), 
        .SN(1'b1), .RN(1'b1), .Q(C[17]), .QN(\generate_pp/n83 ) );
  DFFNSRX1 \generate_pp/bypass_reg[2]  ( .D(\generate_pp/n118 ), .CKN(clk), 
        .SN(1'b1), .RN(1'b1), .Q(C[19]), .QN(\generate_pp/n81 ) );
  DFFNSRX1 \generate_pp/bypass_reg[3]  ( .D(\generate_pp/n117 ), .CKN(clk), 
        .SN(1'b1), .RN(1'b1), .Q(C[20]), .QN(\generate_pp/n80 ) );
  DFFNSRX1 \generate_pp/bypass_reg[4]  ( .D(\generate_pp/n116 ), .CKN(clk), 
        .SN(1'b1), .RN(1'b1), .Q(C[21]), .QN(\generate_pp/n79 ) );
  DFFNSRX1 \generate_pp/bypass_reg[5]  ( .D(\generate_pp/n115 ), .CKN(clk), 
        .SN(1'b1), .RN(1'b1), .Q(C[22]), .QN(\generate_pp/n78 ) );
  DFFNSRX1 \generate_pp/bypass_reg[6]  ( .D(\generate_pp/n114 ), .CKN(clk), 
        .SN(1'b1), .RN(1'b1), .Q(C[23]), .QN(\generate_pp/n77 ) );
  DFFNSRX1 \generate_pp/bypass_reg[7]  ( .D(\generate_pp/n113 ), .CKN(clk), 
        .SN(1'b1), .RN(1'b1), .Q(C[24]), .QN(\generate_pp/n76 ) );
  DFFNSRX1 \generate_pp/bypass_reg[8]  ( .D(\generate_pp/n112 ), .CKN(clk), 
        .SN(1'b1), .RN(1'b1), .Q(C[25]), .QN(\generate_pp/n75 ) );
  DFFNSRX1 \generate_pp/bypass_reg[9]  ( .D(\generate_pp/n111 ), .CKN(clk), 
        .SN(1'b1), .RN(1'b1), .Q(C[26]), .QN(\generate_pp/n74 ) );
  DFFNSRX1 \generate_pp/bypass_reg[10]  ( .D(\generate_pp/n110 ), .CKN(clk), 
        .SN(1'b1), .RN(1'b1), .Q(C[27]), .QN(\generate_pp/n73 ) );
  DFFNSRX1 \generate_pp/bypass_reg[11]  ( .D(\generate_pp/n109 ), .CKN(clk), 
        .SN(1'b1), .RN(1'b1), .Q(C[28]), .QN(\generate_pp/n72 ) );
  DFFNSRX1 \generate_pp/bypass_reg[12]  ( .D(\generate_pp/n108 ), .CKN(clk), 
        .SN(1'b1), .RN(1'b1), .Q(C[29]), .QN(\generate_pp/n71 ) );
  DFFNSRX1 \generate_pp/bypass_reg[13]  ( .D(\generate_pp/n107 ), .CKN(clk), 
        .SN(1'b1), .RN(1'b1), .Q(C[30]), .QN(\generate_pp/n70 ) );
  DFFNSRX1 \generate_pp/bypass_reg[14]  ( .D(\generate_pp/n106 ), .CKN(clk), 
        .SN(1'b1), .RN(1'b1), .Q(C[31]), .QN(\generate_pp/n69 ) );
  DFFNSRX1 \generate_pp/bypass_reg[15]  ( .D(\generate_pp/n105 ), .CKN(clk), 
        .SN(1'b1), .RN(1'b1), .QN(\generate_pp/n68 ) );
  DFFNSRX1 \generate_pp/bypass_reg[1]  ( .D(\generate_pp/n119 ), .CKN(clk), 
        .SN(1'b1), .RN(1'b1), .Q(C[18]), .QN(\generate_pp/n82 ) );
  XOR2X1 \generate_pp/pp_adder/U64  ( .A(1'b0), .B(A[0]), .Y(
        \generate_pp/pp_adder/n31 ) );
  XOR2X1 \generate_pp/pp_adder/U63  ( .A(\generate_pp/feeder[0] ), .B(
        \generate_pp/pp_adder/n31 ), .Y(\generate_pp/sum [0]) );
  OAI21XL \generate_pp/pp_adder/U62  ( .A0(\generate_pp/feeder[13] ), .A1(
        \generate_pp/pp_adder/n24 ), .B0(A[13]), .Y(\generate_pp/pp_adder/n34 ) );
  OAI2BB1X1 \generate_pp/pp_adder/U61  ( .A0N(\generate_pp/pp_adder/n24 ), 
        .A1N(\generate_pp/feeder[13] ), .B0(\generate_pp/pp_adder/n34 ), .Y(
        \generate_pp/pp_adder/n22 ) );
  OAI21XL \generate_pp/pp_adder/U60  ( .A0(\generate_pp/feeder[7] ), .A1(
        \generate_pp/pp_adder/n6 ), .B0(A[7]), .Y(\generate_pp/pp_adder/n40 )
         );
  OAI2BB1X1 \generate_pp/pp_adder/U59  ( .A0N(\generate_pp/pp_adder/n6 ), 
        .A1N(\generate_pp/feeder[7] ), .B0(\generate_pp/pp_adder/n40 ), .Y(
        \generate_pp/pp_adder/n4 ) );
  OAI21XL \generate_pp/pp_adder/U58  ( .A0(\generate_pp/feeder[10] ), .A1(
        \generate_pp/pp_adder/n30 ), .B0(A[10]), .Y(\generate_pp/pp_adder/n37 ) );
  OAI2BB1X1 \generate_pp/pp_adder/U57  ( .A0N(\generate_pp/pp_adder/n30 ), 
        .A1N(\generate_pp/feeder[10] ), .B0(\generate_pp/pp_adder/n37 ), .Y(
        \generate_pp/pp_adder/n28 ) );
  OAI21XL \generate_pp/pp_adder/U56  ( .A0(\generate_pp/feeder[4] ), .A1(
        \generate_pp/pp_adder/n12 ), .B0(A[4]), .Y(\generate_pp/pp_adder/n43 )
         );
  OAI2BB1X1 \generate_pp/pp_adder/U55  ( .A0N(\generate_pp/pp_adder/n12 ), 
        .A1N(\generate_pp/feeder[4] ), .B0(\generate_pp/pp_adder/n43 ), .Y(
        \generate_pp/pp_adder/n10 ) );
  OAI21XL \generate_pp/pp_adder/U54  ( .A0(\generate_pp/feeder[1] ), .A1(
        \generate_pp/pp_adder/n18 ), .B0(A[1]), .Y(\generate_pp/pp_adder/n46 )
         );
  OAI2BB1X1 \generate_pp/pp_adder/U53  ( .A0N(\generate_pp/pp_adder/n18 ), 
        .A1N(\generate_pp/feeder[1] ), .B0(\generate_pp/pp_adder/n46 ), .Y(
        \generate_pp/pp_adder/n16 ) );
  OR2X1 \generate_pp/pp_adder/U52  ( .A(\generate_pp/feeder[11] ), .B(
        \generate_pp/pp_adder/n28 ), .Y(\generate_pp/pp_adder/n36 ) );
  AO22X1 \generate_pp/pp_adder/U51  ( .A0(\generate_pp/pp_adder/n28 ), .A1(
        \generate_pp/feeder[11] ), .B0(\generate_pp/pp_adder/n36 ), .B1(A[11]), 
        .Y(\generate_pp/pp_adder/n26 ) );
  OR2X1 \generate_pp/pp_adder/U50  ( .A(\generate_pp/feeder[5] ), .B(
        \generate_pp/pp_adder/n10 ), .Y(\generate_pp/pp_adder/n42 ) );
  AO22X1 \generate_pp/pp_adder/U49  ( .A0(\generate_pp/pp_adder/n10 ), .A1(
        \generate_pp/feeder[5] ), .B0(\generate_pp/pp_adder/n42 ), .B1(A[5]), 
        .Y(\generate_pp/pp_adder/n8 ) );
  OR2X1 \generate_pp/pp_adder/U48  ( .A(\generate_pp/feeder[2] ), .B(
        \generate_pp/pp_adder/n16 ), .Y(\generate_pp/pp_adder/n45 ) );
  AO22X1 \generate_pp/pp_adder/U47  ( .A0(\generate_pp/pp_adder/n16 ), .A1(
        \generate_pp/feeder[2] ), .B0(\generate_pp/pp_adder/n45 ), .B1(A[2]), 
        .Y(\generate_pp/pp_adder/n14 ) );
  OR2X1 \generate_pp/pp_adder/U46  ( .A(\generate_pp/feeder[14] ), .B(
        \generate_pp/pp_adder/n22 ), .Y(\generate_pp/pp_adder/n33 ) );
  AO22X1 \generate_pp/pp_adder/U45  ( .A0(\generate_pp/pp_adder/n33 ), .A1(
        A[14]), .B0(\generate_pp/pp_adder/n22 ), .B1(\generate_pp/feeder[14] ), 
        .Y(\generate_pp/pp_adder/n20 ) );
  OR2X1 \generate_pp/pp_adder/U44  ( .A(\generate_pp/feeder[8] ), .B(
        \generate_pp/pp_adder/n4 ), .Y(\generate_pp/pp_adder/n39 ) );
  AO22X1 \generate_pp/pp_adder/U43  ( .A0(\generate_pp/pp_adder/n39 ), .A1(
        A[8]), .B0(\generate_pp/pp_adder/n4 ), .B1(\generate_pp/feeder[8] ), 
        .Y(\generate_pp/pp_adder/n2 ) );
  OAI21XL \generate_pp/pp_adder/U42  ( .A0(\generate_pp/feeder[0] ), .A1(A[0]), 
        .B0(1'b0), .Y(\generate_pp/pp_adder/n47 ) );
  OAI2BB1X1 \generate_pp/pp_adder/U41  ( .A0N(\generate_pp/feeder[0] ), .A1N(
        A[0]), .B0(\generate_pp/pp_adder/n47 ), .Y(\generate_pp/pp_adder/n18 )
         );
  OAI21XL \generate_pp/pp_adder/U40  ( .A0(\generate_pp/feeder[12] ), .A1(
        \generate_pp/pp_adder/n26 ), .B0(A[12]), .Y(\generate_pp/pp_adder/n35 ) );
  OAI2BB1X1 \generate_pp/pp_adder/U39  ( .A0N(\generate_pp/pp_adder/n26 ), 
        .A1N(\generate_pp/feeder[12] ), .B0(\generate_pp/pp_adder/n35 ), .Y(
        \generate_pp/pp_adder/n24 ) );
  OAI21XL \generate_pp/pp_adder/U38  ( .A0(\generate_pp/feeder[9] ), .A1(
        \generate_pp/pp_adder/n2 ), .B0(A[9]), .Y(\generate_pp/pp_adder/n38 )
         );
  OAI2BB1X1 \generate_pp/pp_adder/U37  ( .A0N(\generate_pp/pp_adder/n2 ), 
        .A1N(\generate_pp/feeder[9] ), .B0(\generate_pp/pp_adder/n38 ), .Y(
        \generate_pp/pp_adder/n30 ) );
  OAI21XL \generate_pp/pp_adder/U36  ( .A0(\generate_pp/feeder[6] ), .A1(
        \generate_pp/pp_adder/n8 ), .B0(A[6]), .Y(\generate_pp/pp_adder/n41 )
         );
  OAI2BB1X1 \generate_pp/pp_adder/U35  ( .A0N(\generate_pp/pp_adder/n8 ), 
        .A1N(\generate_pp/feeder[6] ), .B0(\generate_pp/pp_adder/n41 ), .Y(
        \generate_pp/pp_adder/n6 ) );
  OAI21XL \generate_pp/pp_adder/U34  ( .A0(\generate_pp/feeder[3] ), .A1(
        \generate_pp/pp_adder/n14 ), .B0(A[3]), .Y(\generate_pp/pp_adder/n44 )
         );
  OAI2BB1X1 \generate_pp/pp_adder/U33  ( .A0N(\generate_pp/pp_adder/n14 ), 
        .A1N(\generate_pp/feeder[3] ), .B0(\generate_pp/pp_adder/n44 ), .Y(
        \generate_pp/pp_adder/n12 ) );
  OAI21XL \generate_pp/pp_adder/U32  ( .A0(\generate_pp/feeder[15] ), .A1(
        \generate_pp/pp_adder/n20 ), .B0(A[15]), .Y(\generate_pp/pp_adder/n32 ) );
  OAI2BB1X1 \generate_pp/pp_adder/U31  ( .A0N(\generate_pp/pp_adder/n20 ), 
        .A1N(\generate_pp/feeder[15] ), .B0(\generate_pp/pp_adder/n32 ), .Y(
        \generate_pp/adder_out[16] ) );
  XNOR2X1 \generate_pp/pp_adder/U30  ( .A(\generate_pp/feeder[2] ), .B(A[2]), 
        .Y(\generate_pp/pp_adder/n15 ) );
  XNOR2X1 \generate_pp/pp_adder/U29  ( .A(\generate_pp/pp_adder/n15 ), .B(
        \generate_pp/pp_adder/n16 ), .Y(\generate_pp/sum [2]) );
  XNOR2X1 \generate_pp/pp_adder/U28  ( .A(\generate_pp/feeder[1] ), .B(A[1]), 
        .Y(\generate_pp/pp_adder/n17 ) );
  XNOR2X1 \generate_pp/pp_adder/U27  ( .A(\generate_pp/pp_adder/n17 ), .B(
        \generate_pp/pp_adder/n18 ), .Y(\generate_pp/sum [1]) );
  XNOR2X1 \generate_pp/pp_adder/U26  ( .A(\generate_pp/feeder[15] ), .B(A[15]), 
        .Y(\generate_pp/pp_adder/n19 ) );
  XNOR2X1 \generate_pp/pp_adder/U25  ( .A(\generate_pp/pp_adder/n19 ), .B(
        \generate_pp/pp_adder/n20 ), .Y(\generate_pp/sum [15]) );
  XNOR2X1 \generate_pp/pp_adder/U24  ( .A(\generate_pp/feeder[14] ), .B(A[14]), 
        .Y(\generate_pp/pp_adder/n21 ) );
  XNOR2X1 \generate_pp/pp_adder/U23  ( .A(\generate_pp/pp_adder/n21 ), .B(
        \generate_pp/pp_adder/n22 ), .Y(\generate_pp/sum [14]) );
  XNOR2X1 \generate_pp/pp_adder/U22  ( .A(\generate_pp/feeder[13] ), .B(A[13]), 
        .Y(\generate_pp/pp_adder/n23 ) );
  XNOR2X1 \generate_pp/pp_adder/U21  ( .A(\generate_pp/pp_adder/n23 ), .B(
        \generate_pp/pp_adder/n24 ), .Y(\generate_pp/sum [13]) );
  XNOR2X1 \generate_pp/pp_adder/U20  ( .A(\generate_pp/feeder[12] ), .B(A[12]), 
        .Y(\generate_pp/pp_adder/n25 ) );
  XNOR2X1 \generate_pp/pp_adder/U19  ( .A(\generate_pp/pp_adder/n25 ), .B(
        \generate_pp/pp_adder/n26 ), .Y(\generate_pp/sum [12]) );
  XNOR2X1 \generate_pp/pp_adder/U18  ( .A(\generate_pp/feeder[11] ), .B(A[11]), 
        .Y(\generate_pp/pp_adder/n27 ) );
  XNOR2X1 \generate_pp/pp_adder/U17  ( .A(\generate_pp/pp_adder/n27 ), .B(
        \generate_pp/pp_adder/n28 ), .Y(\generate_pp/sum [11]) );
  XNOR2X1 \generate_pp/pp_adder/U16  ( .A(\generate_pp/feeder[10] ), .B(A[10]), 
        .Y(\generate_pp/pp_adder/n29 ) );
  XNOR2X1 \generate_pp/pp_adder/U15  ( .A(\generate_pp/pp_adder/n29 ), .B(
        \generate_pp/pp_adder/n30 ), .Y(\generate_pp/sum [10]) );
  XNOR2X1 \generate_pp/pp_adder/U14  ( .A(\generate_pp/feeder[9] ), .B(A[9]), 
        .Y(\generate_pp/pp_adder/n1 ) );
  XNOR2X1 \generate_pp/pp_adder/U13  ( .A(\generate_pp/pp_adder/n1 ), .B(
        \generate_pp/pp_adder/n2 ), .Y(\generate_pp/sum [9]) );
  XNOR2X1 \generate_pp/pp_adder/U12  ( .A(\generate_pp/feeder[8] ), .B(A[8]), 
        .Y(\generate_pp/pp_adder/n3 ) );
  XNOR2X1 \generate_pp/pp_adder/U11  ( .A(\generate_pp/pp_adder/n3 ), .B(
        \generate_pp/pp_adder/n4 ), .Y(\generate_pp/sum [8]) );
  XNOR2X1 \generate_pp/pp_adder/U10  ( .A(\generate_pp/feeder[7] ), .B(A[7]), 
        .Y(\generate_pp/pp_adder/n5 ) );
  XNOR2X1 \generate_pp/pp_adder/U9  ( .A(\generate_pp/pp_adder/n5 ), .B(
        \generate_pp/pp_adder/n6 ), .Y(\generate_pp/sum [7]) );
  XNOR2X1 \generate_pp/pp_adder/U8  ( .A(\generate_pp/feeder[6] ), .B(A[6]), 
        .Y(\generate_pp/pp_adder/n7 ) );
  XNOR2X1 \generate_pp/pp_adder/U7  ( .A(\generate_pp/pp_adder/n7 ), .B(
        \generate_pp/pp_adder/n8 ), .Y(\generate_pp/sum [6]) );
  XNOR2X1 \generate_pp/pp_adder/U6  ( .A(\generate_pp/feeder[5] ), .B(A[5]), 
        .Y(\generate_pp/pp_adder/n9 ) );
  XNOR2X1 \generate_pp/pp_adder/U5  ( .A(\generate_pp/pp_adder/n9 ), .B(
        \generate_pp/pp_adder/n10 ), .Y(\generate_pp/sum [5]) );
  XNOR2X1 \generate_pp/pp_adder/U4  ( .A(\generate_pp/feeder[4] ), .B(A[4]), 
        .Y(\generate_pp/pp_adder/n11 ) );
  XNOR2X1 \generate_pp/pp_adder/U3  ( .A(\generate_pp/pp_adder/n11 ), .B(
        \generate_pp/pp_adder/n12 ), .Y(\generate_pp/sum [4]) );
  XNOR2X1 \generate_pp/pp_adder/U2  ( .A(\generate_pp/feeder[3] ), .B(A[3]), 
        .Y(\generate_pp/pp_adder/n13 ) );
  XNOR2X1 \generate_pp/pp_adder/U1  ( .A(\generate_pp/pp_adder/n13 ), .B(
        \generate_pp/pp_adder/n14 ), .Y(\generate_pp/sum [3]) );
endmodule


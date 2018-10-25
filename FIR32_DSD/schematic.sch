# File saved with Nlview 6.6.8  2016-12-21 bk=1.3817 VDI=40 GEI=35 GUI=JA:1.6
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
property maxfontsize 12
property maxzoom 5
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
property rubberbandfontsize 12
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
module new FIR32_8_8 work:FIR32_8_8:NOFILE -nosplit
load symbol RTL_ADD4 work RTL(+) pinBus I0 input.left [17:0] pinBus I1 input.left [17:0] pinBus O output.right [17:0] fillcolor 1
load symbol RTL_MULT work RTL(*) pinBus I0 input.left [7:0] pinBus I1 input.left [6:0] pinBus O output.right [14:0] fillcolor 1
load symbol RTL_MULT0 work RTL(*) pinBus I0 input.left [7:0] pinBus I1 input.left [7:0] pinBus O output.right [15:0] fillcolor 1
load symbol RTL_MULT2 work RTL(*) pin I1 input.left pinBus I0 input.left [7:0] pinBus O output.right [8:0] fillcolor 1
load symbol DFF work:abstract:NOFILE HIERBOX pin CLK input.left pin RESET input.left pinBus DIN input.left [7:0] pinBus DOUT output.right [7:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol DFF work:DFF:NOFILE HIERBOX pin CLK input.left pin RESET input.left pinBus DIN input.left [7:0] pinBus DOUT output.right [7:0] boxcolor 1 fillcolor 2 minwidth 13%
load port CLK input -pg 1 -y 180
load port RESET input -pg 1 -y 280
load portBus DOUT output [7:0] -attr @name DOUT[7:0] -pg 1 -y 240
load portBus DIN input [7:0] -attr @name DIN[7:0] -pg 1 -y 260
load inst MUL[1]_i RTL_MULT0 work -attr @cell(#000000) RTL_MULT -pinBusAttr I0 @name I0[7:0] -pinBusAttr I1 @name I1[7:0] -pinBusAttr I1 @attr V=B\"01101111\" -pinBusAttr O @name O[15:0] -pg 1 -lvl 3 -y 150
load inst DOUT1_i RTL_ADD4 work -attr @cell(#000000) RTL_ADD -pinBusAttr I0 @name I0[17:0] -pinBusAttr I1 @name I1[17:0] -pinBusAttr O @name O[17:0] -pg 1 -lvl 8 -y 230
load inst g0[4].Zminus1 DFF work:abstract:NOFILE -autohide -attr @cell(#000000) DFF -pinBusAttr DIN @name DIN[7:0] -pinBusAttr DOUT @name DOUT[7:0] -pg 1 -lvl 6 -y 360
load inst g0[5].Zminus1 DFF work:abstract:NOFILE -autohide -attr @cell(#000000) DFF -pinBusAttr DIN @name DIN[7:0] -pinBusAttr DOUT @name DOUT[7:0] -pg 1 -lvl 7 -y 400
load inst DOUT0_i RTL_ADD4 work -attr @cell(#000000) RTL_ADD -pinBusAttr I0 @name I0[17:0] -pinBusAttr I1 @name I1[17:0] -pinBusAttr O @name O[17:0] -pg 1 -lvl 9 -y 240
load inst g0[3].Zminus1 DFF work:abstract:NOFILE -autohide -attr @cell(#000000) DFF -pinBusAttr DIN @name DIN[7:0] -pinBusAttr DOUT @name DOUT[7:0] -pg 1 -lvl 5 -y 330
load inst g0[6].Zminus1 DFF work:abstract:NOFILE -autohide -attr @cell(#000000) DFF -pinBusAttr DIN @name DIN[7:0] -pinBusAttr DOUT @name DOUT[7:0] -pinBusAttr DOUT @attr n/c -pg 1 -lvl 8 -y 440
load inst DOUT2_i RTL_ADD4 work -attr @cell(#000000) RTL_ADD -pinBusAttr I0 @name I0[17:0] -pinBusAttr I1 @name I1[17:0] -pinBusAttr O @name O[17:0] -pg 1 -lvl 7 -y 180
load inst DOUT4_i RTL_ADD4 work -attr @cell(#000000) RTL_ADD -pinBusAttr I0 @name I0[17:0] -pinBusAttr I1 @name I1[17:0] -pinBusAttr O @name O[17:0] -pg 1 -lvl 5 -y 130
load inst MUL[2]_i RTL_MULT work -attr @cell(#000000) RTL_MULT -pinBusAttr I0 @name I0[7:0] -pinBusAttr I1 @name I1[6:0] -pinBusAttr I1 @attr V=B\"1010010\" -pinBusAttr O @name O[14:0] -pg 1 -lvl 4 -y 170
load inst MUL[0]_i RTL_MULT work -attr @cell(#000000) RTL_MULT -pinBusAttr I0 @name I0[7:0] -pinBusAttr I1 @name I1[6:0] -pinBusAttr I1 @attr V=B\"0100000\" -pinBusAttr O @name O[14:0] -pg 1 -lvl 3 -y 60
load inst MUL[3]_i RTL_MULT2 work -attr @cell(#000000) RTL_MULT -pinBusAttr I0 @name I0[7:0] -pinBusAttr O @name O[8:0] -pg 1 -lvl 5 -y 230
load inst MUL[5]_i RTL_MULT0 work -attr @cell(#000000) RTL_MULT -pinBusAttr I0 @name I0[7:0] -pinBusAttr I1 @name I1[7:0] -pinBusAttr I1 @attr V=B\"01101111\" -pinBusAttr O @name O[15:0] -pg 1 -lvl 7 -y 280
load inst g0[2].Zminus1 DFF work:abstract:NOFILE -autohide -attr @cell(#000000) DFF -pinBusAttr DIN @name DIN[7:0] -pinBusAttr DOUT @name DOUT[7:0] -pg 1 -lvl 4 -y 290
load inst g0[0].Zminus1 DFF work:abstract:NOFILE -autohide -attr @cell(#000000) DFF -pinBusAttr DIN @name DIN[7:0] -pinBusAttr DOUT @name DOUT[7:0] -pg 1 -lvl 2 -y 230
load inst DOUT3_i RTL_ADD4 work -attr @cell(#000000) RTL_ADD -pinBusAttr I0 @name I0[17:0] -pinBusAttr I1 @name I1[17:0] -pinBusAttr O @name O[17:0] -pg 1 -lvl 6 -y 140
load inst MUL[4]_i RTL_MULT work -attr @cell(#000000) RTL_MULT -pinBusAttr I0 @name I0[7:0] -pinBusAttr I1 @name I1[6:0] -pinBusAttr I1 @attr V=B\"1010010\" -pinBusAttr O @name O[14:0] -pg 1 -lvl 6 -y 240
load inst DOUT5_i RTL_ADD4 work -attr @cell(#000000) RTL_ADD -pinBusAttr I0 @name I0[17:0] -pinBusAttr I1 @name I1[17:0] -pinBusAttr O @name O[17:0] -pg 1 -lvl 4 -y 70
load inst g0[1].Zminus1 DFF work:abstract:NOFILE -autohide -attr @cell(#000000) DFF -pinBusAttr DIN @name DIN[7:0] -pinBusAttr DOUT @name DOUT[7:0] -pg 1 -lvl 3 -y 270
load inst MUL[6]_i RTL_MULT work -attr @cell(#000000) RTL_MULT -pinBusAttr I0 @name I0[7:0] -pinBusAttr I1 @name I1[6:0] -pinBusAttr I1 @attr V=B\"0100000\" -pinBusAttr O @name O[14:0] -pg 1 -lvl 8 -y 330
load inst stage1 DFF work:DFF:NOFILE -autohide -attr @cell(#000000) DFF -pinBusAttr DIN @name DIN[7:0] -pinBusAttr DOUT @name DOUT[7:0] -pg 1 -lvl 1 -y 230
load net DOUT5[7] -attr @rip O[7] -pin DOUT4_i I0[7] -pin DOUT5_i O[7]
load net MUL[0][3] -attr @rip O[3] -pin DOUT5_i I0[3] -pin MUL[0]_i O[3]
load net DOUT3[16] -attr @rip O[16] -pin DOUT2_i I0[16] -pin DOUT3_i O[16]
load net DOUT1[0] -attr @rip O[0] -pin DOUT0_i I0[0] -pin DOUT1_i O[0]
load net DOUT3[5] -attr @rip O[5] -pin DOUT2_i I0[5] -pin DOUT3_i O[5]
load net DOUT4[8] -attr @rip O[8] -pin DOUT3_i I0[8] -pin DOUT4_i O[8]
load net MUL[0][10] -attr @rip O[10] -pin DOUT5_i I0[10] -pin MUL[0]_i O[10]
load net QA[5][5] -attr @rip DOUT[5] -pin MUL[5]_i I0[5] -pin g0[4].Zminus1 DOUT[5] -pin g0[5].Zminus1 DIN[5]
load net DOUT1[16] -attr @rip O[16] -pin DOUT0_i I0[16] -pin DOUT1_i O[16]
load net DIN[0] -attr @rip DIN[0] -port DIN[0] -pin stage1 DIN[0]
load net DOUT4[2] -attr @rip O[2] -pin DOUT3_i I0[2] -pin DOUT4_i O[2]
load net QA[1][6] -attr @rip DOUT[6] -pin MUL[1]_i I0[6] -pin g0[0].Zminus1 DOUT[6] -pin g0[1].Zminus1 DIN[6]
load net DOUT4[14] -attr @rip O[14] -pin DOUT3_i I0[14] -pin DOUT4_i O[14]
load net QA[0][0] -attr @rip DOUT[0] -pin MUL[0]_i I0[0] -pin g0[0].Zminus1 DIN[0] -pin stage1 DOUT[0]
load net MUL[1][7] -attr @rip O[7] -pin DOUT5_i I1[7] -pin MUL[1]_i O[7]
load net MUL[2][5] -attr @rip O[5] -pin DOUT4_i I1[5] -pin MUL[2]_i O[5]
load net MUL[3][4] -attr @rip O[4] -pin DOUT3_i I1[4] -pin MUL[3]_i O[4]
load net MUL[6][12] -attr @rip O[12] -pin DOUT0_i I1[12] -pin MUL[6]_i O[12]
load net QA[4][2] -attr @rip DOUT[2] -pin MUL[4]_i I0[2] -pin g0[3].Zminus1 DOUT[2] -pin g0[4].Zminus1 DIN[2]
load net DOUT5[4] -attr @rip O[4] -pin DOUT4_i I0[4] -pin DOUT5_i O[4]
load net MUL[6][8] -attr @rip O[8] -pin DOUT0_i I1[8] -pin MUL[6]_i O[8]
load net MUL[3][3] -attr @rip O[3] -pin DOUT3_i I1[3] -pin MUL[3]_i O[3]
load net MUL[4][9] -attr @rip O[9] -pin DOUT2_i I1[9] -pin MUL[4]_i O[9]
load net MUL[0][7] -attr @rip O[7] -pin DOUT5_i I0[7] -pin MUL[0]_i O[7]
load net DOUT5[3] -attr @rip O[3] -pin DOUT4_i I0[3] -pin DOUT5_i O[3]
load net DOUT4[5] -attr @rip O[5] -pin DOUT3_i I0[5] -pin DOUT4_i O[5]
load net MUL[0][4] -attr @rip O[4] -pin DOUT5_i I0[4] -pin MUL[0]_i O[4]
load net DOUT3[4] -attr @rip O[4] -pin DOUT2_i I0[4] -pin DOUT3_i O[4]
load net DOUT3[17] -attr @rip O[17] -pin DOUT2_i I0[17] -pin DOUT3_i O[17]
load net DOUT2[2] -attr @rip O[2] -pin DOUT1_i I0[2] -pin DOUT2_i O[2]
load net MUL[6][9] -attr @rip O[9] -pin DOUT0_i I1[9] -pin MUL[6]_i O[9]
load net QA[5][4] -attr @rip DOUT[4] -pin MUL[5]_i I0[4] -pin g0[4].Zminus1 DOUT[4] -pin g0[5].Zminus1 DIN[4]
load net DOUT4[1] -attr @rip O[1] -pin DOUT3_i I0[1] -pin DOUT4_i O[1]
load net DOUT1[15] -attr @rip O[15] -pin DOUT0_i I0[15] -pin DOUT1_i O[15]
load net <const0> -ground -pin MUL[0]_i I1[6] -pin MUL[0]_i I1[4] -pin MUL[0]_i I1[3] -pin MUL[0]_i I1[2] -pin MUL[0]_i I1[1] -pin MUL[0]_i I1[0] -pin MUL[1]_i I1[7] -pin MUL[1]_i I1[4] -pin MUL[2]_i I1[5] -pin MUL[2]_i I1[3] -pin MUL[2]_i I1[2] -pin MUL[2]_i I1[0] -pin MUL[4]_i I1[5] -pin MUL[4]_i I1[3] -pin MUL[4]_i I1[2] -pin MUL[4]_i I1[0] -pin MUL[5]_i I1[7] -pin MUL[5]_i I1[4] -pin MUL[6]_i I1[6] -pin MUL[6]_i I1[4] -pin MUL[6]_i I1[3] -pin MUL[6]_i I1[2] -pin MUL[6]_i I1[1] -pin MUL[6]_i I1[0]
load net MUL[0][13] -attr @rip O[13] -pin DOUT5_i I0[13] -pin MUL[0]_i O[13]
load net MUL[1][6] -attr @rip O[6] -pin DOUT5_i I1[6] -pin MUL[1]_i O[6]
load net DOUT1[7] -attr @rip O[7] -pin DOUT0_i I0[7] -pin DOUT1_i O[7]
load net DIN[1] -attr @rip DIN[1] -port DIN[1] -pin stage1 DIN[1]
load net MUL[1][1] -attr @rip O[1] -pin DOUT5_i I1[1] -pin MUL[1]_i O[1]
load net MUL[6][5] -attr @rip O[5] -pin DOUT0_i I1[5] -pin MUL[6]_i O[5]
load net DOUT5[17] -attr @rip O[17] -pin DOUT4_i I0[17] -pin DOUT5_i O[17]
load net MUL[2][6] -attr @rip O[6] -pin DOUT4_i I1[6] -pin MUL[2]_i O[6]
load net DOUT4[17] -attr @rip O[17] -pin DOUT3_i I0[17] -pin DOUT4_i O[17]
load net MUL[1][14] -attr @rip O[14] -pin DOUT5_i I1[14] -pin MUL[1]_i O[14]
load net DOUT5[5] -attr @rip O[5] -pin DOUT4_i I0[5] -pin DOUT5_i O[5]
load net MUL[3][2] -attr @rip O[2] -pin DOUT3_i I1[2] -pin MUL[3]_i O[2]
load net MUL[3][7] -attr @rip O[7] -pin DOUT3_i I1[7] -pin MUL[3]_i O[7]
load net MUL[4][13] -attr @rip O[13] -pin DOUT2_i I1[13] -pin MUL[4]_i O[13]
load net DOUT5[2] -attr @rip O[2] -pin DOUT4_i I0[2] -pin DOUT5_i O[2]
load net QA[0][5] -attr @rip DOUT[5] -pin MUL[0]_i I0[5] -pin g0[0].Zminus1 DIN[5] -pin stage1 DOUT[5]
load net MUL[5][10] -attr @rip O[10] -pin DOUT1_i I1[10] -pin MUL[5]_i O[10]
load net MUL[5][15] -attr @rip O[15] -pin DOUT1_i I1[17] -pin DOUT1_i I1[16] -pin DOUT1_i I1[15] -pin MUL[5]_i O[15]
load net DOUT3[3] -attr @rip O[3] -pin DOUT2_i I0[3] -pin DOUT3_i O[3]
load net MUL[0][8] -attr @rip O[8] -pin DOUT5_i I0[8] -pin MUL[0]_i O[8]
load net DOUT2[1] -attr @rip O[1] -pin DOUT1_i I0[1] -pin DOUT2_i O[1]
load net DOUT4[6] -attr @rip O[6] -pin DOUT3_i I0[6] -pin DOUT4_i O[6]
load net QA[6][3] -attr @rip DOUT[3] -pin MUL[6]_i I0[3] -pin g0[5].Zminus1 DOUT[3] -pin g0[6].Zminus1 DIN[3]
load net MUL[0][5] -attr @rip O[5] -pin DOUT5_i I0[5] -pin MUL[0]_i O[5]
load net DOUT1[10] -attr @rip O[10] -pin DOUT0_i I0[10] -pin DOUT1_i O[10]
load net DOUT3[6] -attr @rip O[6] -pin DOUT2_i I0[6] -pin DOUT3_i O[6]
load net MUL[5][9] -attr @rip O[9] -pin DOUT1_i I1[9] -pin MUL[5]_i O[9]
load net MUL[0][12] -attr @rip O[12] -pin DOUT5_i I0[12] -pin MUL[0]_i O[12]
load net MUL[1][0] -attr @rip O[0] -pin DOUT5_i I1[0] -pin MUL[1]_i O[0]
load net <const1> -power -pin MUL[0]_i I1[5] -pin MUL[1]_i I1[6] -pin MUL[1]_i I1[5] -pin MUL[1]_i I1[3] -pin MUL[1]_i I1[2] -pin MUL[1]_i I1[1] -pin MUL[1]_i I1[0] -pin MUL[2]_i I1[6] -pin MUL[2]_i I1[4] -pin MUL[2]_i I1[1] -pin MUL[3]_i I1 -pin MUL[4]_i I1[6] -pin MUL[4]_i I1[4] -pin MUL[4]_i I1[1] -pin MUL[5]_i I1[6] -pin MUL[5]_i I1[5] -pin MUL[5]_i I1[3] -pin MUL[5]_i I1[2] -pin MUL[5]_i I1[1] -pin MUL[5]_i I1[0] -pin MUL[6]_i I1[5]
load net MUL[2][3] -attr @rip O[3] -pin DOUT4_i I1[3] -pin MUL[2]_i O[3]
load net DOUT1[6] -attr @rip O[6] -pin DOUT0_i I0[6] -pin DOUT1_i O[6]
load net DIN[2] -attr @rip DIN[2] -port DIN[2] -pin stage1 DIN[2]
load net MUL[4][0] -attr @rip O[0] -pin DOUT2_i I1[0] -pin MUL[4]_i O[0]
load net DOUT4[4] -attr @rip O[4] -pin DOUT3_i I0[4] -pin DOUT4_i O[4]
load net DOUT4[16] -attr @rip O[16] -pin DOUT3_i I0[16] -pin DOUT4_i O[16]
load net MUL[6][6] -attr @rip O[6] -pin DOUT0_i I1[6] -pin MUL[6]_i O[6]
load net MUL[1][13] -attr @rip O[13] -pin DOUT5_i I1[13] -pin MUL[1]_i O[13]
load net MUL[3][6] -attr @rip O[6] -pin DOUT3_i I1[6] -pin MUL[3]_i O[6]
load net MUL[4][12] -attr @rip O[12] -pin DOUT2_i I1[12] -pin MUL[4]_i O[12]
load net DOUT4[10] -attr @rip O[10] -pin DOUT3_i I0[10] -pin DOUT4_i O[10]
load net DOUT3[2] -attr @rip O[2] -pin DOUT2_i I0[2] -pin DOUT3_i O[2]
load net QA[0][6] -attr @rip DOUT[6] -pin MUL[0]_i I0[6] -pin g0[0].Zminus1 DIN[6] -pin stage1 DOUT[6]
load net MUL[0][9] -attr @rip O[9] -pin DOUT5_i I0[9] -pin MUL[0]_i O[9]
load net DOUT2[14] -attr @rip O[14] -pin DOUT1_i I0[14] -pin DOUT2_i O[14]
load net QA[6][4] -attr @rip DOUT[4] -pin MUL[6]_i I0[4] -pin g0[5].Zminus1 DOUT[4] -pin g0[6].Zminus1 DIN[4]
load net MUL[0][6] -attr @rip O[6] -pin DOUT5_i I0[6] -pin MUL[0]_i O[6]
load net MUL[5][8] -attr @rip O[8] -pin DOUT1_i I1[8] -pin MUL[5]_i O[8]
load net DOUT2[4] -attr @rip O[4] -pin DOUT1_i I0[4] -pin DOUT2_i O[4]
load net DOUT3[7] -attr @rip O[7] -pin DOUT2_i I0[7] -pin DOUT3_i O[7]
load net DOUT1[5] -attr @rip O[5] -pin DOUT0_i I0[5] -pin DOUT1_i O[5]
load net MUL[2][4] -attr @rip O[4] -pin DOUT4_i I1[4] -pin MUL[2]_i O[4]
load net DOUT4[3] -attr @rip O[3] -pin DOUT3_i I0[3] -pin DOUT4_i O[3]
load net MUL[1][12] -attr @rip O[12] -pin DOUT5_i I1[12] -pin MUL[1]_i O[12]
load net DIN[3] -attr @rip DIN[3] -port DIN[3] -pin stage1 DIN[3]
load net MUL[4][1] -attr @rip O[1] -pin DOUT2_i I1[1] -pin MUL[4]_i O[1]
load net DOUT[0] -attr @rip O[10] -port DOUT[0] -pin DOUT0_i O[10]
load net QA[0][3] -attr @rip DOUT[3] -pin MUL[0]_i I0[3] -pin g0[0].Zminus1 DIN[3] -pin stage1 DOUT[3]
load net DOUT2[9] -attr @rip O[9] -pin DOUT1_i I0[9] -pin DOUT2_i O[9]
load net DOUT3[1] -attr @rip O[1] -pin DOUT2_i I0[1] -pin DOUT3_i O[1]
load net QA[6][1] -attr @rip DOUT[1] -pin MUL[6]_i I0[1] -pin g0[5].Zminus1 DOUT[1] -pin g0[6].Zminus1 DIN[1]
load net DOUT4[11] -attr @rip O[11] -pin DOUT3_i I0[11] -pin DOUT4_i O[11]
load net DOUT2[15] -attr @rip O[15] -pin DOUT1_i I0[15] -pin DOUT2_i O[15]
load net MUL[5][7] -attr @rip O[7] -pin DOUT1_i I1[7] -pin MUL[5]_i O[7]
load net DOUT2[3] -attr @rip O[3] -pin DOUT1_i I0[3] -pin DOUT2_i O[3]
load net DOUT1[12] -attr @rip O[12] -pin DOUT0_i I0[12] -pin DOUT1_i O[12]
load net MUL[2][1] -attr @rip O[1] -pin DOUT4_i I1[1] -pin MUL[2]_i O[1]
load net MUL[4][11] -attr @rip O[11] -pin DOUT2_i I1[11] -pin MUL[4]_i O[11]
load net DOUT1[4] -attr @rip O[4] -pin DOUT0_i I0[4] -pin DOUT1_i O[4]
load net DOUT3[8] -attr @rip O[8] -pin DOUT2_i I0[8] -pin DOUT3_i O[8]
load net QA[2][1] -attr @rip DOUT[1] -pin MUL[2]_i I0[1] -pin g0[1].Zminus1 DOUT[1] -pin g0[2].Zminus1 DIN[1]
load net MUL[0][14] -attr @rip O[14] -pin DOUT5_i I0[17] -pin DOUT5_i I0[16] -pin DOUT5_i I0[15] -pin DOUT5_i I0[14] -pin MUL[0]_i O[14]
load net MUL[1][11] -attr @rip O[11] -pin DOUT5_i I1[11] -pin MUL[1]_i O[11]
load net QA[3][7] -attr @rip DOUT[7] -pin MUL[3]_i I0[7] -pin g0[2].Zminus1 DOUT[7] -pin g0[3].Zminus1 DIN[7]
load net DIN[4] -attr @rip DIN[4] -port DIN[4] -pin stage1 DIN[4]
load net MUL[4][2] -attr @rip O[2] -pin DOUT2_i I1[2] -pin MUL[4]_i O[2]
load net DOUT[1] -attr @rip O[11] -port DOUT[1] -pin DOUT0_i O[11]
load net MUL[0][0] -attr @rip O[0] -pin DOUT5_i I0[0] -pin MUL[0]_i O[0]
load net DOUT3[0] -attr @rip O[0] -pin DOUT2_i I0[0] -pin DOUT3_i O[0]
load net MUL[4][14] -attr @rip O[14] -pin DOUT2_i I1[17] -pin DOUT2_i I1[16] -pin DOUT2_i I1[15] -pin DOUT2_i I1[14] -pin MUL[4]_i O[14]
load net QA[0][4] -attr @rip DOUT[4] -pin MUL[0]_i I0[4] -pin g0[0].Zminus1 DIN[4] -pin stage1 DOUT[4]
load net DOUT2[12] -attr @rip O[12] -pin DOUT1_i I0[12] -pin DOUT2_i O[12]
load net QA[6][2] -attr @rip DOUT[2] -pin MUL[6]_i I0[2] -pin g0[5].Zminus1 DOUT[2] -pin g0[6].Zminus1 DIN[2]
load net DOUT4[12] -attr @rip O[12] -pin DOUT3_i I0[12] -pin DOUT4_i O[12]
load net QA[4][3] -attr @rip DOUT[3] -pin MUL[4]_i I0[3] -pin g0[3].Zminus1 DOUT[3] -pin g0[4].Zminus1 DIN[3]
load net MUL[5][6] -attr @rip O[6] -pin DOUT1_i I1[6] -pin MUL[5]_i O[6]
load net MUL[5][1] -attr @rip O[1] -pin DOUT1_i I1[1] -pin MUL[5]_i O[1]
load net DOUT1[11] -attr @rip O[11] -pin DOUT0_i I0[11] -pin DOUT1_i O[11]
load net MUL[2][14] -attr @rip O[14] -pin DOUT4_i I1[17] -pin DOUT4_i I1[16] -pin DOUT4_i I1[15] -pin DOUT4_i I1[14] -pin MUL[2]_i O[14]
load net DOUT4[9] -attr @rip O[9] -pin DOUT3_i I0[9] -pin DOUT4_i O[9]
load net MUL[4][10] -attr @rip O[10] -pin DOUT2_i I1[10] -pin MUL[4]_i O[10]
load net DOUT5[13] -attr @rip O[13] -pin DOUT4_i I0[13] -pin DOUT5_i O[13]
load net DOUT2[6] -attr @rip O[6] -pin DOUT1_i I0[6] -pin DOUT2_i O[6]
load net DOUT3[9] -attr @rip O[9] -pin DOUT2_i I0[9] -pin DOUT3_i O[9]
load net DOUT3[14] -attr @rip O[14] -pin DOUT2_i I0[14] -pin DOUT3_i O[14]
load net MUL[2][2] -attr @rip O[2] -pin DOUT4_i I1[2] -pin MUL[2]_i O[2]
load net QA[3][6] -attr @rip DOUT[6] -pin MUL[3]_i I0[6] -pin g0[2].Zminus1 DOUT[6] -pin g0[3].Zminus1 DIN[6]
load net QA[2][2] -attr @rip DOUT[2] -pin MUL[2]_i I0[2] -pin g0[1].Zminus1 DOUT[2] -pin g0[2].Zminus1 DIN[2]
load net DOUT2[7] -attr @rip O[7] -pin DOUT1_i I0[7] -pin DOUT2_i O[7]
load net DIN[5] -attr @rip DIN[5] -port DIN[5] -pin stage1 DIN[5]
load net MUL[1][5] -attr @rip O[5] -pin DOUT5_i I1[5] -pin MUL[1]_i O[5]
load net MUL[4][3] -attr @rip O[3] -pin DOUT2_i I1[3] -pin MUL[4]_i O[3]
load net DOUT1[8] -attr @rip O[8] -pin DOUT0_i I0[8] -pin DOUT1_i O[8]
load net DOUT[2] -attr @rip O[12] -port DOUT[2] -pin DOUT0_i O[12]
load net MUL[0][1] -attr @rip O[1] -pin DOUT5_i I0[1] -pin MUL[0]_i O[1]
load net DOUT2[13] -attr @rip O[13] -pin DOUT1_i I0[13] -pin DOUT2_i O[13]
load net QA[4][7] -attr @rip DOUT[7] -pin MUL[4]_i I0[7] -pin g0[3].Zminus1 DOUT[7] -pin g0[4].Zminus1 DIN[7]
load net MUL[5][0] -attr @rip O[0] -pin DOUT1_i I1[0] -pin MUL[5]_i O[0]
load net MUL[5][5] -attr @rip O[5] -pin DOUT1_i I1[5] -pin MUL[5]_i O[5]
load net MUL[6][14] -attr @rip O[14] -pin DOUT0_i I1[17] -pin DOUT0_i I1[16] -pin DOUT0_i I1[15] -pin DOUT0_i I1[14] -pin MUL[6]_i O[14]
load net DOUT4[13] -attr @rip O[13] -pin DOUT3_i I0[13] -pin DOUT4_i O[13]
load net QA[4][4] -attr @rip DOUT[4] -pin MUL[4]_i I0[4] -pin g0[3].Zminus1 DOUT[4] -pin g0[4].Zminus1 DIN[4]
load net MUL[5][14] -attr @rip O[14] -pin DOUT1_i I1[14] -pin MUL[5]_i O[14]
load net QA[5][6] -attr @rip DOUT[6] -pin MUL[5]_i I0[6] -pin g0[4].Zminus1 DOUT[6] -pin g0[5].Zminus1 DIN[6]
load net DOUT2[5] -attr @rip O[5] -pin DOUT1_i I0[5] -pin DOUT2_i O[5]
load net DOUT3[13] -attr @rip O[13] -pin DOUT2_i I0[13] -pin DOUT3_i O[13]
load net DOUT5[14] -attr @rip O[14] -pin DOUT4_i I0[14] -pin DOUT5_i O[14]
load net QA[3][5] -attr @rip DOUT[5] -pin MUL[3]_i I0[5] -pin g0[2].Zminus1 DOUT[5] -pin g0[3].Zminus1 DIN[5]
load net CLK -port CLK -pin g0[0].Zminus1 CLK -pin g0[1].Zminus1 CLK -pin g0[2].Zminus1 CLK -pin g0[3].Zminus1 CLK -pin g0[4].Zminus1 CLK -pin g0[5].Zminus1 CLK -pin g0[6].Zminus1 CLK -pin stage1 CLK
netloc CLK 1 0 8 20 180 290 180 540 220 970 240 1310 280 1620 310 1960 350 2330
load net QA[1][3] -attr @rip DOUT[3] -pin MUL[1]_i I0[3] -pin g0[0].Zminus1 DOUT[3] -pin g0[1].Zminus1 DIN[3]
load net QA[2][3] -attr @rip DOUT[3] -pin MUL[2]_i I0[3] -pin g0[1].Zminus1 DOUT[3] -pin g0[2].Zminus1 DIN[3]
load net MUL[1][4] -attr @rip O[4] -pin DOUT5_i I1[4] -pin MUL[1]_i O[4]
load net DOUT2[8] -attr @rip O[8] -pin DOUT1_i I0[8] -pin DOUT2_i O[8]
load net MUL[6][3] -attr @rip O[3] -pin DOUT0_i I1[3] -pin MUL[6]_i O[3]
load net DOUT2[10] -attr @rip O[10] -pin DOUT1_i I0[10] -pin DOUT2_i O[10]
load net DOUT5[12] -attr @rip O[12] -pin DOUT4_i I0[12] -pin DOUT5_i O[12]
load net DOUT2[17] -attr @rip O[17] -pin DOUT1_i I0[17] -pin DOUT2_i O[17]
load net DIN[6] -attr @rip DIN[6] -port DIN[6] -pin stage1 DIN[6]
load net MUL[4][4] -attr @rip O[4] -pin DOUT2_i I1[4] -pin MUL[4]_i O[4]
load net QA[6][0] -attr @rip DOUT[0] -pin MUL[6]_i I0[0] -pin g0[5].Zminus1 DOUT[0] -pin g0[6].Zminus1 DIN[0]
load net DOUT[3] -attr @rip O[13] -port DOUT[3] -pin DOUT0_i O[13]
load net MUL[0][2] -attr @rip O[2] -pin DOUT5_i I0[2] -pin MUL[0]_i O[2]
load net DOUT1[9] -attr @rip O[9] -pin DOUT0_i I0[9] -pin DOUT1_i O[9]
load net MUL[5][4] -attr @rip O[4] -pin DOUT1_i I1[4] -pin MUL[5]_i O[4]
load net MUL[5][13] -attr @rip O[13] -pin DOUT1_i I1[13] -pin MUL[5]_i O[13]
load net QA[4][5] -attr @rip DOUT[5] -pin MUL[4]_i I0[5] -pin g0[3].Zminus1 DOUT[5] -pin g0[4].Zminus1 DIN[5]
load net DOUT3[12] -attr @rip O[12] -pin DOUT2_i I0[12] -pin DOUT3_i O[12]
load net MUL[2][0] -attr @rip O[0] -pin DOUT4_i I1[0] -pin MUL[2]_i O[0]
load net QA[5][7] -attr @rip DOUT[7] -pin MUL[5]_i I0[7] -pin g0[4].Zminus1 DOUT[7] -pin g0[5].Zminus1 DIN[7]
load net QA[3][4] -attr @rip DOUT[4] -pin MUL[3]_i I0[4] -pin g0[2].Zminus1 DOUT[4] -pin g0[3].Zminus1 DIN[4]
load net DOUT5[15] -attr @rip O[15] -pin DOUT4_i I0[15] -pin DOUT5_i O[15]
load net QA[5][1] -attr @rip DOUT[1] -pin MUL[5]_i I0[1] -pin g0[4].Zminus1 DOUT[1] -pin g0[5].Zminus1 DIN[1]
load net QA[1][2] -attr @rip DOUT[2] -pin MUL[1]_i I0[2] -pin g0[0].Zminus1 DOUT[2] -pin g0[1].Zminus1 DIN[2]
load net MUL[1][3] -attr @rip O[3] -pin DOUT5_i I1[3] -pin MUL[1]_i O[3]
load net QA[2][4] -attr @rip DOUT[4] -pin MUL[2]_i I0[4] -pin g0[1].Zminus1 DOUT[4] -pin g0[2].Zminus1 DIN[4]
load net QA[6][7] -attr @rip DOUT[7] -pin MUL[6]_i I0[7] -pin g0[5].Zminus1 DOUT[7] -pin g0[6].Zminus1 DIN[7]
load net DOUT2[16] -attr @rip O[16] -pin DOUT1_i I0[16] -pin DOUT2_i O[16]
load net DOUT5[11] -attr @rip O[11] -pin DOUT4_i I0[11] -pin DOUT5_i O[11]
load net MUL[6][4] -attr @rip O[4] -pin DOUT0_i I1[4] -pin MUL[6]_i O[4]
load net DOUT2[11] -attr @rip O[11] -pin DOUT1_i I0[11] -pin DOUT2_i O[11]
load net MUL[5][3] -attr @rip O[3] -pin DOUT1_i I1[3] -pin MUL[5]_i O[3]
load net DIN[7] -attr @rip DIN[7] -port DIN[7] -pin stage1 DIN[7]
load net MUL[4][5] -attr @rip O[5] -pin DOUT2_i I1[5] -pin MUL[4]_i O[5]
load net MUL[2][11] -attr @rip O[11] -pin DOUT4_i I1[11] -pin MUL[2]_i O[11]
load net DOUT[4] -attr @rip O[14] -port DOUT[4] -pin DOUT0_i O[14]
load net QA[0][7] -attr @rip DOUT[7] -pin MUL[0]_i I0[7] -pin g0[0].Zminus1 DIN[7] -pin stage1 DOUT[7]
load net MUL[5][12] -attr @rip O[12] -pin DOUT1_i I1[12] -pin MUL[5]_i O[12]
load net QA[2][0] -attr @rip DOUT[0] -pin MUL[2]_i I0[0] -pin g0[1].Zminus1 DOUT[0] -pin g0[2].Zminus1 DIN[0]
load net MUL[2][9] -attr @rip O[9] -pin DOUT4_i I1[9] -pin MUL[2]_i O[9]
load net MUL[3][8] -attr @rip O[8] -pin DOUT3_i I1[17] -pin DOUT3_i I1[16] -pin DOUT3_i I1[15] -pin DOUT3_i I1[14] -pin DOUT3_i I1[13] -pin DOUT3_i I1[12] -pin DOUT3_i I1[11] -pin DOUT3_i I1[10] -pin DOUT3_i I1[9] -pin DOUT3_i I1[8] -pin MUL[3]_i O[8]
load net DOUT3[11] -attr @rip O[11] -pin DOUT2_i I0[11] -pin DOUT3_i O[11]
load net QA[4][6] -attr @rip DOUT[6] -pin MUL[4]_i I0[6] -pin g0[3].Zminus1 DOUT[6] -pin g0[4].Zminus1 DIN[6]
load net DOUT5[8] -attr @rip O[8] -pin DOUT4_i I0[8] -pin DOUT5_i O[8]
load net MUL[6][0] -attr @rip O[0] -pin DOUT0_i I1[0] -pin MUL[6]_i O[0]
load net QA[3][3] -attr @rip DOUT[3] -pin MUL[3]_i I0[3] -pin g0[2].Zminus1 DOUT[3] -pin g0[3].Zminus1 DIN[3]
load net QA[5][0] -attr @rip DOUT[0] -pin MUL[5]_i I0[0] -pin g0[4].Zminus1 DOUT[0] -pin g0[5].Zminus1 DIN[0]
load net DOUT5[16] -attr @rip O[16] -pin DOUT4_i I0[16] -pin DOUT5_i O[16]
load net DOUT1[3] -attr @rip O[3] -pin DOUT0_i I0[3] -pin DOUT1_i O[3]
load net MUL[1][2] -attr @rip O[2] -pin DOUT5_i I1[2] -pin MUL[1]_i O[2]
load net QA[6][6] -attr @rip DOUT[6] -pin MUL[6]_i I0[6] -pin g0[5].Zminus1 DOUT[6] -pin g0[6].Zminus1 DIN[6]
load net MUL[6][1] -attr @rip O[1] -pin DOUT0_i I1[1] -pin MUL[6]_i O[1]
load net DOUT5[10] -attr @rip O[10] -pin DOUT4_i I0[10] -pin DOUT5_i O[10]
load net QA[1][5] -attr @rip DOUT[5] -pin MUL[1]_i I0[5] -pin g0[0].Zminus1 DOUT[5] -pin g0[1].Zminus1 DIN[5]
load net QA[2][5] -attr @rip DOUT[5] -pin MUL[2]_i I0[5] -pin g0[1].Zminus1 DOUT[5] -pin g0[2].Zminus1 DIN[5]
load net MUL[1][15] -attr @rip O[15] -pin DOUT5_i I1[17] -pin DOUT5_i I1[16] -pin DOUT5_i I1[15] -pin MUL[1]_i O[15]
load net MUL[1][10] -attr @rip O[10] -pin DOUT5_i I1[10] -pin MUL[1]_i O[10]
load net MUL[5][2] -attr @rip O[2] -pin DOUT1_i I1[2] -pin MUL[5]_i O[2]
load net MUL[6][11] -attr @rip O[11] -pin DOUT0_i I1[11] -pin MUL[6]_i O[11]
load net MUL[2][10] -attr @rip O[10] -pin DOUT4_i I1[10] -pin MUL[2]_i O[10]
load net QA[0][1] -attr @rip DOUT[1] -pin MUL[0]_i I0[1] -pin g0[0].Zminus1 DIN[1] -pin stage1 DOUT[1]
load net MUL[4][6] -attr @rip O[6] -pin DOUT2_i I1[6] -pin MUL[4]_i O[6]
load net DOUT[5] -attr @rip O[15] -port DOUT[5] -pin DOUT0_i O[15]
load net MUL[5][11] -attr @rip O[11] -pin DOUT1_i I1[11] -pin MUL[5]_i O[11]
load net DOUT3[10] -attr @rip O[10] -pin DOUT2_i I0[10] -pin DOUT3_i O[10]
load net QA[1][1] -attr @rip DOUT[1] -pin MUL[1]_i I0[1] -pin g0[0].Zminus1 DOUT[1] -pin g0[1].Zminus1 DIN[1]
load net QA[3][2] -attr @rip DOUT[2] -pin MUL[3]_i I0[2] -pin g0[2].Zminus1 DOUT[2] -pin g0[3].Zminus1 DIN[2]
load net RESET -port RESET -pin g0[0].Zminus1 RESET -pin g0[1].Zminus1 RESET -pin g0[2].Zminus1 RESET -pin g0[3].Zminus1 RESET -pin g0[4].Zminus1 RESET -pin g0[5].Zminus1 RESET -pin g0[6].Zminus1 RESET -pin stage1 RESET
netloc RESET 1 0 8 20 320 290 320 580 360 970 380 1330 420 1620 450 1980 490 NJ
load net DOUT5[9] -attr @rip O[9] -pin DOUT4_i I0[9] -pin DOUT5_i O[9]
load net DOUT1[2] -attr @rip O[2] -pin DOUT0_i I0[2] -pin DOUT1_i O[2]
load net QA[6][5] -attr @rip DOUT[5] -pin MUL[6]_i I0[5] -pin g0[5].Zminus1 DOUT[5] -pin g0[6].Zminus1 DIN[5]
load net DOUT1[17] -attr @rip O[17] -pin DOUT0_i I0[17] -pin DOUT1_i O[17]
load net QA[5][3] -attr @rip DOUT[3] -pin MUL[5]_i I0[3] -pin g0[4].Zminus1 DOUT[3] -pin g0[5].Zminus1 DIN[3]
load net DOUT4[0] -attr @rip O[0] -pin DOUT3_i I0[0] -pin DOUT4_i O[0]
load net DOUT1[14] -attr @rip O[14] -pin DOUT0_i I0[14] -pin DOUT1_i O[14]
load net QA[1][4] -attr @rip DOUT[4] -pin MUL[1]_i I0[4] -pin g0[0].Zminus1 DOUT[4] -pin g0[1].Zminus1 DIN[4]
load net MUL[6][2] -attr @rip O[2] -pin DOUT0_i I1[2] -pin MUL[6]_i O[2]
load net QA[2][6] -attr @rip DOUT[6] -pin MUL[2]_i I0[6] -pin g0[1].Zminus1 DOUT[6] -pin g0[2].Zminus1 DIN[6]
load net MUL[6][10] -attr @rip O[10] -pin DOUT0_i I1[10] -pin MUL[6]_i O[10]
load net QA[4][0] -attr @rip DOUT[0] -pin MUL[4]_i I0[0] -pin g0[3].Zminus1 DOUT[0] -pin g0[4].Zminus1 DIN[0]
load net MUL[1][9] -attr @rip O[9] -pin DOUT5_i I1[9] -pin MUL[1]_i O[9]
load net MUL[2][7] -attr @rip O[7] -pin DOUT4_i I1[7] -pin MUL[2]_i O[7]
load net MUL[4][7] -attr @rip O[7] -pin DOUT2_i I1[7] -pin MUL[4]_i O[7]
load net QA[0][2] -attr @rip DOUT[2] -pin MUL[0]_i I0[2] -pin g0[0].Zminus1 DIN[2] -pin stage1 DOUT[2]
load net MUL[3][1] -attr @rip O[1] -pin DOUT3_i I1[1] -pin MUL[3]_i O[1]
load net MUL[2][13] -attr @rip O[13] -pin DOUT4_i I1[13] -pin MUL[2]_i O[13]
load net DOUT[6] -attr @rip O[16] -port DOUT[6] -pin DOUT0_i O[16]
load net QA[1][0] -attr @rip DOUT[0] -pin MUL[1]_i I0[0] -pin g0[0].Zminus1 DOUT[0] -pin g0[1].Zminus1 DIN[0]
load net DOUT5[1] -attr @rip O[1] -pin DOUT4_i I0[1] -pin DOUT5_i O[1]
load net DOUT5[6] -attr @rip O[6] -pin DOUT4_i I0[6] -pin DOUT5_i O[6]
load net QA[3][1] -attr @rip DOUT[1] -pin MUL[3]_i I0[1] -pin g0[2].Zminus1 DOUT[1] -pin g0[3].Zminus1 DIN[1]
load net DOUT3[15] -attr @rip O[15] -pin DOUT2_i I0[15] -pin DOUT3_i O[15]
load net DOUT2[0] -attr @rip O[0] -pin DOUT1_i I0[0] -pin DOUT2_i O[0]
load net DOUT4[7] -attr @rip O[7] -pin DOUT3_i I0[7] -pin DOUT4_i O[7]
load net DOUT1[1] -attr @rip O[1] -pin DOUT0_i I0[1] -pin DOUT1_i O[1]
load net QA[5][2] -attr @rip DOUT[2] -pin MUL[5]_i I0[2] -pin g0[4].Zminus1 DOUT[2] -pin g0[5].Zminus1 DIN[2]
load net DOUT1[13] -attr @rip O[13] -pin DOUT0_i I0[13] -pin DOUT1_i O[13]
load net MUL[0][11] -attr @rip O[11] -pin DOUT5_i I0[11] -pin MUL[0]_i O[11]
load net QA[1][7] -attr @rip DOUT[7] -pin MUL[1]_i I0[7] -pin g0[0].Zminus1 DOUT[7] -pin g0[1].Zminus1 DIN[7]
load net QA[2][7] -attr @rip DOUT[7] -pin MUL[2]_i I0[7] -pin g0[1].Zminus1 DOUT[7] -pin g0[2].Zminus1 DIN[7]
load net DOUT4[15] -attr @rip O[15] -pin DOUT3_i I0[15] -pin DOUT4_i O[15]
load net QA[4][1] -attr @rip DOUT[1] -pin MUL[4]_i I0[1] -pin g0[3].Zminus1 DOUT[1] -pin g0[4].Zminus1 DIN[1]
load net MUL[3][0] -attr @rip O[0] -pin DOUT3_i I1[0] -pin MUL[3]_i O[0]
load net MUL[1][8] -attr @rip O[8] -pin DOUT5_i I1[8] -pin MUL[1]_i O[8]
load net MUL[3][5] -attr @rip O[5] -pin DOUT3_i I1[5] -pin MUL[3]_i O[5]
load net MUL[2][12] -attr @rip O[12] -pin DOUT4_i I1[12] -pin MUL[2]_i O[12]
load net MUL[6][7] -attr @rip O[7] -pin DOUT0_i I1[7] -pin MUL[6]_i O[7]
load net MUL[6][13] -attr @rip O[13] -pin DOUT0_i I1[13] -pin MUL[6]_i O[13]
load net DOUT5[0] -attr @rip O[0] -pin DOUT4_i I0[0] -pin DOUT5_i O[0]
load net MUL[2][8] -attr @rip O[8] -pin DOUT4_i I1[8] -pin MUL[2]_i O[8]
load net MUL[4][8] -attr @rip O[8] -pin DOUT2_i I1[8] -pin MUL[4]_i O[8]
load net QA[3][0] -attr @rip DOUT[0] -pin MUL[3]_i I0[0] -pin g0[2].Zminus1 DOUT[0] -pin g0[3].Zminus1 DIN[0]
load net DOUT[7] -attr @rip O[17] -port DOUT[7] -pin DOUT0_i O[17]
load netBundle @QA_5 8 QA[2][7] QA[2][6] QA[2][5] QA[2][4] QA[2][3] QA[2][2] QA[2][1] QA[2][0] -autobundled
netbloc @QA_5 1 3 1 950
load netBundle @DOUT1 18 DOUT1[17] DOUT1[16] DOUT1[15] DOUT1[14] DOUT1[13] DOUT1[12] DOUT1[11] DOUT1[10] DOUT1[9] DOUT1[8] DOUT1[7] DOUT1[6] DOUT1[5] DOUT1[4] DOUT1[3] DOUT1[2] DOUT1[1] DOUT1[0] -autobundled
netbloc @DOUT1 1 8 1 N
load netBundle @QA 8 QA[1][7] QA[1][6] QA[1][5] QA[1][4] QA[1][3] QA[1][2] QA[1][1] QA[1][0] -autobundled
netbloc @QA 1 2 1 560
load netBundle @QA_7 8 QA[0][7] QA[0][6] QA[0][5] QA[0][4] QA[0][3] QA[0][2] QA[0][1] QA[0][0] -autobundled
netbloc @QA_7 1 1 2 270 50 NJ
load netBundle @MUL_14 16 MUL[5][15] MUL[5][14] MUL[5][13] MUL[5][12] MUL[5][11] MUL[5][10] MUL[5][9] MUL[5][8] MUL[5][7] MUL[5][6] MUL[5][5] MUL[5][4] MUL[5][3] MUL[5][2] MUL[5][1] MUL[5][0] -autobundled
netbloc @MUL_14 1 7 1 2350J
load netBundle @DOUT2 18 DOUT2[17] DOUT2[16] DOUT2[15] DOUT2[14] DOUT2[13] DOUT2[12] DOUT2[11] DOUT2[10] DOUT2[9] DOUT2[8] DOUT2[7] DOUT2[6] DOUT2[5] DOUT2[4] DOUT2[3] DOUT2[2] DOUT2[1] DOUT2[0] -autobundled
netbloc @DOUT2 1 7 1 2370
load netBundle @DOUT3 18 DOUT3[17] DOUT3[16] DOUT3[15] DOUT3[14] DOUT3[13] DOUT3[12] DOUT3[11] DOUT3[10] DOUT3[9] DOUT3[8] DOUT3[7] DOUT3[6] DOUT3[5] DOUT3[4] DOUT3[3] DOUT3[2] DOUT3[1] DOUT3[0] -autobundled
netbloc @DOUT3 1 6 1 2000
load netBundle @DOUT 8 DOUT[7] DOUT[6] DOUT[5] DOUT[4] DOUT[3] DOUT[2] DOUT[1] DOUT[0] -autobundled
netbloc @DOUT 1 9 1 N
load netBundle @QA_9 8 QA[3][7] QA[3][6] QA[3][5] QA[3][4] QA[3][3] QA[3][2] QA[3][1] QA[3][0] -autobundled
netbloc @QA_9 1 4 1 1330
load netBundle @MUL_16 15 MUL[2][14] MUL[2][13] MUL[2][12] MUL[2][11] MUL[2][10] MUL[2][9] MUL[2][8] MUL[2][7] MUL[2][6] MUL[2][5] MUL[2][4] MUL[2][3] MUL[2][2] MUL[2][1] MUL[2][0] -autobundled
netbloc @MUL_16 1 4 1 1310J
load netBundle @DOUT4 18 DOUT4[17] DOUT4[16] DOUT4[15] DOUT4[14] DOUT4[13] DOUT4[12] DOUT4[11] DOUT4[10] DOUT4[9] DOUT4[8] DOUT4[7] DOUT4[6] DOUT4[5] DOUT4[4] DOUT4[3] DOUT4[2] DOUT4[1] DOUT4[0] -autobundled
netbloc @DOUT4 1 5 1 N
load netBundle @MUL 15 MUL[4][14] MUL[4][13] MUL[4][12] MUL[4][11] MUL[4][10] MUL[4][9] MUL[4][8] MUL[4][7] MUL[4][6] MUL[4][5] MUL[4][4] MUL[4][3] MUL[4][2] MUL[4][1] MUL[4][0] -autobundled
netbloc @MUL 1 6 1 1980J
load netBundle @DOUT5 18 DOUT5[17] DOUT5[16] DOUT5[15] DOUT5[14] DOUT5[13] DOUT5[12] DOUT5[11] DOUT5[10] DOUT5[9] DOUT5[8] DOUT5[7] DOUT5[6] DOUT5[5] DOUT5[4] DOUT5[3] DOUT5[2] DOUT5[1] DOUT5[0] -autobundled
netbloc @DOUT5 1 4 1 1310
load netBundle @MUL_18 9 MUL[3][8] MUL[3][7] MUL[3][6] MUL[3][5] MUL[3][4] MUL[3][3] MUL[3][2] MUL[3][1] MUL[3][0] -autobundled
netbloc @MUL_18 1 5 1 1580
load netBundle @DIN 8 DIN[7] DIN[6] DIN[5] DIN[4] DIN[3] DIN[2] DIN[1] DIN[0] -autobundled
netbloc @DIN 1 0 1 NJ
load netBundle @MUL_1 15 MUL[6][14] MUL[6][13] MUL[6][12] MUL[6][11] MUL[6][10] MUL[6][9] MUL[6][8] MUL[6][7] MUL[6][6] MUL[6][5] MUL[6][4] MUL[6][3] MUL[6][2] MUL[6][1] MUL[6][0] -autobundled
netbloc @MUL_1 1 8 1 2660
load netBundle @QA_1 8 QA[6][7] QA[6][6] QA[6][5] QA[6][4] QA[6][3] QA[6][2] QA[6][1] QA[6][0] -autobundled
netbloc @QA_1 1 7 1 2350
load netBundle @MUL_20 15 MUL[0][14] MUL[0][13] MUL[0][12] MUL[0][11] MUL[0][10] MUL[0][9] MUL[0][8] MUL[0][7] MUL[0][6] MUL[0][5] MUL[0][4] MUL[0][3] MUL[0][2] MUL[0][1] MUL[0][0] -autobundled
netbloc @MUL_20 1 3 1 NJ
load netBundle @QA_11 8 QA[4][7] QA[4][6] QA[4][5] QA[4][4] QA[4][3] QA[4][2] QA[4][1] QA[4][0] -autobundled
netbloc @QA_11 1 5 1 1600
load netBundle @QA_3 8 QA[5][7] QA[5][6] QA[5][5] QA[5][4] QA[5][3] QA[5][2] QA[5][1] QA[5][0] -autobundled
netbloc @QA_3 1 6 1 1980
load netBundle @MUL_22 16 MUL[1][15] MUL[1][14] MUL[1][13] MUL[1][12] MUL[1][11] MUL[1][10] MUL[1][9] MUL[1][8] MUL[1][7] MUL[1][6] MUL[1][5] MUL[1][4] MUL[1][3] MUL[1][2] MUL[1][1] MUL[1][0] -autobundled
netbloc @MUL_22 1 3 1 930J
levelinfo -pg 1 0 110 380 770 1150 1420 1800 2170 2530 2740 2860 -top 0 -bot 530
show
fullfit
#
# initialize ictrl to current module FIR32_8_8 work:FIR32_8_8:NOFILE
ictrl init topinfo |
ictrl layer glayer install
ictrl layer glayer config ibundle 1
ictrl layer glayer config nbundle 0
ictrl layer glayer config pbundle 0
ictrl layer glayer config cache 1

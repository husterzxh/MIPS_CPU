`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/03/12 15:38:15
// Design Name: 
// Module Name: IM
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module IM(
    input [12:1] address,
    output [32:1] im_now
    );
    reg[32:1] im_mem[1024:1];
    

  im_mem[0] = 08000c05
	im_mem[1] = 20110001
	im_mem[2] = 20120002
	im_mem[3] = 20130003
	im_mem[4] = 08000c09
	im_mem[5] = 20110001
	im_mem[6] = 20120002
	im_mem[7] = 20130003
	im_mem[8] = 08000c0d
	im_mem[9] = 20110001
	im_mem[10] = 20120002
	im_mem[11] = 20130003
	im_mem[12] = 08000c11
	im_mem[13] = 20110001
	im_mem[14] = 20120002
	im_mem[15] = 20130003
	im_mem[16] = 0c000cb8
	im_mem[17] = 20100001
	im_mem[18] = 20110001
	im_mem[19] = 00118fc0
	im_mem[20] = 00112020
	im_mem[21] = 20020022
	im_mem[22] = 0000000c
	im_mem[23] = 00118882
	im_mem[24] = 12200001
	im_mem[25] = 08000c15
	im_mem[26] = 00112020
	im_mem[27] = 20020022
	im_mem[28] = 0000000c
	im_mem[29] = 20110001
	im_mem[30] = 00118880
	im_mem[31] = 00112020
	im_mem[32] = 20020022
	im_mem[33] = 0000000c
	im_mem[34] = 12200001
	im_mem[35] = 08000c1f
	im_mem[36] = 20110001
	im_mem[37] = 00118fc0
	im_mem[38] = 00112020
	im_mem[39] = 20020022
	im_mem[40] = 0000000c
	im_mem[41] = 001188c3
	im_mem[42] = 00112020
	im_mem[43] = 20020022
	im_mem[44] = 0000000c
	im_mem[45] = 00118903
	im_mem[46] = 00112020
	im_mem[47] = 20020022
	im_mem[48] = 0000000c
	im_mem[49] = 00118903
	im_mem[50] = 00112020
	im_mem[51] = 20020022
	im_mem[52] = 0000000c
	im_mem[53] = 00118903
	im_mem[54] = 00112020
	im_mem[55] = 20020022
	im_mem[56] = 0000000c
	im_mem[57] = 00118903
	im_mem[58] = 00112020
	im_mem[59] = 20020022
	im_mem[60] = 0000000c
	im_mem[61] = 00118903
	im_mem[62] = 00112020
	im_mem[63] = 20020022
	im_mem[64] = 0000000c
	im_mem[65] = 00118903
	im_mem[66] = 00112020
	im_mem[67] = 20020022
	im_mem[68] = 0000000c
	im_mem[69] = 00118903
	im_mem[70] = 00112020
	im_mem[71] = 20020022
	im_mem[72] = 0000000c
	im_mem[73] = 20100001
	im_mem[74] = 00109fc0
	im_mem[75] = 00139fc3
	im_mem[76] = 00008021
	im_mem[77] = 2012000c
	im_mem[78] = 24160003
	im_mem[79] = 26100001
	im_mem[80] = 3210000f
	im_mem[81] = 20080008
	im_mem[82] = 20090001
	im_mem[83] = 00139900
	im_mem[84] = 02709825
	im_mem[85] = 00132020
	im_mem[86] = 20020022
	im_mem[87] = 0000000c
	im_mem[88] = 01094022
	im_mem[89] = 1500fff9
	im_mem[90] = 22100001
	im_mem[91] = 2018000f
	im_mem[92] = 02188024
	im_mem[93] = 00108700
	im_mem[94] = 20080008
	im_mem[95] = 20090001
	im_mem[96] = 00139902
	im_mem[97] = 02709825
	im_mem[98] = 00132021
	im_mem[99] = 20020022
	im_mem[100] = 0000000c
	im_mem[101] = 01094022
	im_mem[102] = 1500fff9
	im_mem[103] = 00108702
	im_mem[104] = 02c9b022
	im_mem[105] = 12c00001
	im_mem[106] = 08000c50
	im_mem[107] = 00004020
	im_mem[108] = 01084027
	im_mem[109] = 00084400
	im_mem[110] = 3508ffff
	im_mem[111] = 00082021
	im_mem[112] = 20020022
	im_mem[113] = 0000000c
	im_mem[114] = 2010ffff
	im_mem[115] = 20110000
	im_mem[116] = ae300000
	im_mem[117] = 22100001
	im_mem[118] = 22310004
	im_mem[119] = ae300000
	im_mem[120] = 22100001
	im_mem[121] = 22310004
	im_mem[122] = ae300000
	im_mem[123] = 22100001
	im_mem[124] = 22310004
	im_mem[125] = ae300000
	im_mem[126] = 22100001
	im_mem[127] = 22310004
	im_mem[128] = ae300000
	im_mem[129] = 22100001
	im_mem[130] = 22310004
	im_mem[131] = ae300000
	im_mem[132] = 22100001
	im_mem[133] = 22310004
	im_mem[134] = ae300000
	im_mem[135] = 22100001
	im_mem[136] = 22310004
	im_mem[137] = ae300000
	im_mem[138] = 22100001
	im_mem[139] = 22310004
	im_mem[140] = ae300000
	im_mem[141] = 22100001
	im_mem[142] = 22310004
	im_mem[143] = ae300000
	im_mem[144] = 22100001
	im_mem[145] = 22310004
	im_mem[146] = ae300000
	im_mem[147] = 22100001
	im_mem[148] = 22310004
	im_mem[149] = ae300000
	im_mem[150] = 22100001
	im_mem[151] = 22310004
	im_mem[152] = ae300000
	im_mem[153] = 22100001
	im_mem[154] = 22310004
	im_mem[155] = ae300000
	im_mem[156] = 22100001
	im_mem[157] = 22310004
	im_mem[158] = ae300000
	im_mem[159] = 22100001
	im_mem[160] = 22310004
	im_mem[161] = ae300000
	im_mem[162] = 22100001
	im_mem[163] = 22310004
	im_mem[164] = 22100001
	im_mem[165] = 00008020
	im_mem[166] = 2011003c
	im_mem[167] = 8e130000
	im_mem[168] = 8e340000
	im_mem[169] = 0274402a
	im_mem[170] = 11000002
	im_mem[171] = ae330000
	im_mem[172] = ae140000
	im_mem[173] = 2231fffc
	im_mem[174] = 1611fff8
	im_mem[175] = 00102020
	im_mem[176] = 20020022
	im_mem[177] = 0000000c
	im_mem[178] = 22100004
	im_mem[179] = 2011003c
	im_mem[180] = 1611fff2
	im_mem[181] = 2002000a
	im_mem[182] = 0000000c
	im_mem[183] = 20100000
	im_mem[184] = 22100001
	im_mem[185] = 00102020
	im_mem[186] = 20020022
	im_mem[187] = 0000000c
	im_mem[188] = 22100002
	im_mem[189] = 00102020
	im_mem[190] = 20020022
	im_mem[191] = 0000000c
	im_mem[192] = 22100003
	im_mem[193] = 00102020
	im_mem[194] = 20020022
	im_mem[195] = 0000000c
	im_mem[196] = 22100004
	im_mem[197] = 00102020
	im_mem[198] = 20020022
	im_mem[199] = 0000000c
	im_mem[200] = 22100005
	im_mem[201] = 00102020
	im_mem[202] = 20020022
	im_mem[203] = 0000000c
	im_mem[204] = 22100006
	im_mem[205] = 00102020
	im_mem[206] = 20020022
	im_mem[207] = 0000000c
	im_mem[208] = 22100007
	im_mem[209] = 00102020
	im_mem[210] = 20020022
	im_mem[211] = 0000000c
	im_mem[212] = 22100008
	im_mem[213] = 00102020
	im_mem[214] = 20020022
	im_mem[215] = 20020022
	im_mem[216] = 0000000c
	im_mem[217] = 03e00008

    assign im_now = im_mem[address[12:3]];
endmodule

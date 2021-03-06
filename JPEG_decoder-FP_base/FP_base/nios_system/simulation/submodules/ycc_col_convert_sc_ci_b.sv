module ycc_col_conv_b (data_a, data_b, result);
input wire [31:0] data_a; // this is the y input
input wire [31:0] data_b; // this is the CR value
output wire [31:0] result;

reg [7:0] temp;
reg [31:0] cbb_val [255:0];

always @(*) begin
	temp = data_a + cbb_val[data_b];
	result = (temp > 255) ? 24'd255 : {24'd0, temp};
end

always @(*) begin
cbb_val[0] <= 32'hffffff1d;
cbb_val[1] <= 32'hffffff1f;
cbb_val[2] <= 32'hffffff21;
cbb_val[3] <= 32'hffffff22;
cbb_val[4] <= 32'hffffff24;
cbb_val[5] <= 32'hffffff26;
cbb_val[6] <= 32'hffffff28;
cbb_val[7] <= 32'hffffff2a;
cbb_val[8] <= 32'hffffff2b;
cbb_val[9] <= 32'hffffff2d;
cbb_val[10] <= 32'hffffff2f;
cbb_val[11] <= 32'hffffff31;
cbb_val[12] <= 32'hffffff32;
cbb_val[13] <= 32'hffffff34;
cbb_val[14] <= 32'hffffff36;
cbb_val[15] <= 32'hffffff38;
cbb_val[16] <= 32'hffffff3a;
cbb_val[17] <= 32'hffffff3b;
cbb_val[18] <= 32'hffffff3d;
cbb_val[19] <= 32'hffffff3f;
cbb_val[20] <= 32'hffffff41;
cbb_val[21] <= 32'hffffff42;
cbb_val[22] <= 32'hffffff44;
cbb_val[23] <= 32'hffffff46;
cbb_val[24] <= 32'hffffff48;
cbb_val[25] <= 32'hffffff49;
cbb_val[26] <= 32'hffffff4b;
cbb_val[27] <= 32'hffffff4d;
cbb_val[28] <= 32'hffffff4f;
cbb_val[29] <= 32'hffffff51;
cbb_val[30] <= 32'hffffff52;
cbb_val[31] <= 32'hffffff54;
cbb_val[32] <= 32'hffffff56;
cbb_val[33] <= 32'hffffff58;
cbb_val[34] <= 32'hffffff59;
cbb_val[35] <= 32'hffffff5b;
cbb_val[36] <= 32'hffffff5d;
cbb_val[37] <= 32'hffffff5f;
cbb_val[38] <= 32'hffffff61;
cbb_val[39] <= 32'hffffff62;
cbb_val[40] <= 32'hffffff64;
cbb_val[41] <= 32'hffffff66;
cbb_val[42] <= 32'hffffff68;
cbb_val[43] <= 32'hffffff69;
cbb_val[44] <= 32'hffffff6b;
cbb_val[45] <= 32'hffffff6d;
cbb_val[46] <= 32'hffffff6f;
cbb_val[47] <= 32'hffffff70;
cbb_val[48] <= 32'hffffff72;
cbb_val[49] <= 32'hffffff74;
cbb_val[50] <= 32'hffffff76;
cbb_val[51] <= 32'hffffff78;
cbb_val[52] <= 32'hffffff79;
cbb_val[53] <= 32'hffffff7b;
cbb_val[54] <= 32'hffffff7d;
cbb_val[55] <= 32'hffffff7f;
cbb_val[56] <= 32'hffffff80;
cbb_val[57] <= 32'hffffff82;
cbb_val[58] <= 32'hffffff84;
cbb_val[59] <= 32'hffffff86;
cbb_val[60] <= 32'hffffff88;
cbb_val[61] <= 32'hffffff89;
cbb_val[62] <= 32'hffffff8b;
cbb_val[63] <= 32'hffffff8d;
cbb_val[64] <= 32'hffffff8f;
cbb_val[65] <= 32'hffffff90;
cbb_val[66] <= 32'hffffff92;
cbb_val[67] <= 32'hffffff94;
cbb_val[68] <= 32'hffffff96;
cbb_val[69] <= 32'hffffff97;
cbb_val[70] <= 32'hffffff99;
cbb_val[71] <= 32'hffffff9b;
cbb_val[72] <= 32'hffffff9d;
cbb_val[73] <= 32'hffffff9f;
cbb_val[74] <= 32'hffffffa0;
cbb_val[75] <= 32'hffffffa2;
cbb_val[76] <= 32'hffffffa4;
cbb_val[77] <= 32'hffffffa6;
cbb_val[78] <= 32'hffffffa7;
cbb_val[79] <= 32'hffffffa9;
cbb_val[80] <= 32'hffffffab;
cbb_val[81] <= 32'hffffffad;
cbb_val[82] <= 32'hffffffae;
cbb_val[83] <= 32'hffffffb0;
cbb_val[84] <= 32'hffffffb2;
cbb_val[85] <= 32'hffffffb4;
cbb_val[86] <= 32'hffffffb6;
cbb_val[87] <= 32'hffffffb7;
cbb_val[88] <= 32'hffffffb9;
cbb_val[89] <= 32'hffffffbb;
cbb_val[90] <= 32'hffffffbd;
cbb_val[91] <= 32'hffffffbe;
cbb_val[92] <= 32'hffffffc0;
cbb_val[93] <= 32'hffffffc2;
cbb_val[94] <= 32'hffffffc4;
cbb_val[95] <= 32'hffffffc6;
cbb_val[96] <= 32'hffffffc7;
cbb_val[97] <= 32'hffffffc9;
cbb_val[98] <= 32'hffffffcb;
cbb_val[99] <= 32'hffffffcd;
cbb_val[100] <= 32'hffffffce;
cbb_val[101] <= 32'hffffffd0;
cbb_val[102] <= 32'hffffffd2;
cbb_val[103] <= 32'hffffffd4;
cbb_val[104] <= 32'hffffffd5;
cbb_val[105] <= 32'hffffffd7;
cbb_val[106] <= 32'hffffffd9;
cbb_val[107] <= 32'hffffffdb;
cbb_val[108] <= 32'hffffffdd;
cbb_val[109] <= 32'hffffffde;
cbb_val[110] <= 32'hffffffe0;
cbb_val[111] <= 32'hffffffe2;
cbb_val[112] <= 32'hffffffe4;
cbb_val[113] <= 32'hffffffe5;
cbb_val[114] <= 32'hffffffe7;
cbb_val[115] <= 32'hffffffe9;
cbb_val[116] <= 32'hffffffeb;
cbb_val[117] <= 32'hffffffed;
cbb_val[118] <= 32'hffffffee;
cbb_val[119] <= 32'hfffffff0;
cbb_val[120] <= 32'hfffffff2;
cbb_val[121] <= 32'hfffffff4;
cbb_val[122] <= 32'hfffffff5;
cbb_val[123] <= 32'hfffffff7;
cbb_val[124] <= 32'hfffffff9;
cbb_val[125] <= 32'hfffffffb;
cbb_val[126] <= 32'hfffffffc;
cbb_val[127] <= 32'hfffffffe;
cbb_val[128] <= 32'h00000000;
cbb_val[129] <= 32'h00000002;
cbb_val[130] <= 32'h00000004;
cbb_val[131] <= 32'h00000005;
cbb_val[132] <= 32'h00000007;
cbb_val[133] <= 32'h00000009;
cbb_val[134] <= 32'h0000000b;
cbb_val[135] <= 32'h0000000c;
cbb_val[136] <= 32'h0000000e;
cbb_val[137] <= 32'h00000010;
cbb_val[138] <= 32'h00000012;
cbb_val[139] <= 32'h00000013;
cbb_val[140] <= 32'h00000015;
cbb_val[141] <= 32'h00000017;
cbb_val[142] <= 32'h00000019;
cbb_val[143] <= 32'h0000001b;
cbb_val[144] <= 32'h0000001c;
cbb_val[145] <= 32'h0000001e;
cbb_val[146] <= 32'h00000020;
cbb_val[147] <= 32'h00000022;
cbb_val[148] <= 32'h00000023;
cbb_val[149] <= 32'h00000025;
cbb_val[150] <= 32'h00000027;
cbb_val[151] <= 32'h00000029;
cbb_val[152] <= 32'h0000002b;
cbb_val[153] <= 32'h0000002c;
cbb_val[154] <= 32'h0000002e;
cbb_val[155] <= 32'h00000030;
cbb_val[156] <= 32'h00000032;
cbb_val[157] <= 32'h00000033;
cbb_val[158] <= 32'h00000035;
cbb_val[159] <= 32'h00000037;
cbb_val[160] <= 32'h00000039;
cbb_val[161] <= 32'h0000003a;
cbb_val[162] <= 32'h0000003c;
cbb_val[163] <= 32'h0000003e;
cbb_val[164] <= 32'h00000040;
cbb_val[165] <= 32'h00000042;
cbb_val[166] <= 32'h00000043;
cbb_val[167] <= 32'h00000045;
cbb_val[168] <= 32'h00000047;
cbb_val[169] <= 32'h00000049;
cbb_val[170] <= 32'h0000004a;
cbb_val[171] <= 32'h0000004c;
cbb_val[172] <= 32'h0000004e;
cbb_val[173] <= 32'h00000050;
cbb_val[174] <= 32'h00000052;
cbb_val[175] <= 32'h00000053;
cbb_val[176] <= 32'h00000055;
cbb_val[177] <= 32'h00000057;
cbb_val[178] <= 32'h00000059;
cbb_val[179] <= 32'h0000005a;
cbb_val[180] <= 32'h0000005c;
cbb_val[181] <= 32'h0000005e;
cbb_val[182] <= 32'h00000060;
cbb_val[183] <= 32'h00000061;
cbb_val[184] <= 32'h00000063;
cbb_val[185] <= 32'h00000065;
cbb_val[186] <= 32'h00000067;
cbb_val[187] <= 32'h00000069;
cbb_val[188] <= 32'h0000006a;
cbb_val[189] <= 32'h0000006c;
cbb_val[190] <= 32'h0000006e;
cbb_val[191] <= 32'h00000070;
cbb_val[192] <= 32'h00000071;
cbb_val[193] <= 32'h00000073;
cbb_val[194] <= 32'h00000075;
cbb_val[195] <= 32'h00000077;
cbb_val[196] <= 32'h00000078;
cbb_val[197] <= 32'h0000007a;
cbb_val[198] <= 32'h0000007c;
cbb_val[199] <= 32'h0000007e;
cbb_val[200] <= 32'h00000080;
cbb_val[201] <= 32'h00000081;
cbb_val[202] <= 32'h00000083;
cbb_val[203] <= 32'h00000085;
cbb_val[204] <= 32'h00000087;
cbb_val[205] <= 32'h00000088;
cbb_val[206] <= 32'h0000008a;
cbb_val[207] <= 32'h0000008c;
cbb_val[208] <= 32'h0000008e;
cbb_val[209] <= 32'h00000090;
cbb_val[210] <= 32'h00000091;
cbb_val[211] <= 32'h00000093;
cbb_val[212] <= 32'h00000095;
cbb_val[213] <= 32'h00000097;
cbb_val[214] <= 32'h00000098;
cbb_val[215] <= 32'h0000009a;
cbb_val[216] <= 32'h0000009c;
cbb_val[217] <= 32'h0000009e;
cbb_val[218] <= 32'h0000009f;
cbb_val[219] <= 32'h000000a1;
cbb_val[220] <= 32'h000000a3;
cbb_val[221] <= 32'h000000a5;
cbb_val[222] <= 32'h000000a7;
cbb_val[223] <= 32'h000000a8;
cbb_val[224] <= 32'h000000aa;
cbb_val[225] <= 32'h000000ac;
cbb_val[226] <= 32'h000000ae;
cbb_val[227] <= 32'h000000af;
cbb_val[228] <= 32'h000000b1;
cbb_val[229] <= 32'h000000b3;
cbb_val[230] <= 32'h000000b5;
cbb_val[231] <= 32'h000000b7;
cbb_val[232] <= 32'h000000b8;
cbb_val[233] <= 32'h000000ba;
cbb_val[234] <= 32'h000000bc;
cbb_val[235] <= 32'h000000be;
cbb_val[236] <= 32'h000000bf;
cbb_val[237] <= 32'h000000c1;
cbb_val[238] <= 32'h000000c3;
cbb_val[239] <= 32'h000000c5;
cbb_val[240] <= 32'h000000c6;
cbb_val[241] <= 32'h000000c8;
cbb_val[242] <= 32'h000000ca;
cbb_val[243] <= 32'h000000cc;
cbb_val[244] <= 32'h000000ce;
cbb_val[245] <= 32'h000000cf;
cbb_val[246] <= 32'h000000d1;
cbb_val[247] <= 32'h000000d3;
cbb_val[248] <= 32'h000000d5;
cbb_val[249] <= 32'h000000d6;
cbb_val[250] <= 32'h000000d8;
cbb_val[251] <= 32'h000000da;
cbb_val[252] <= 32'h000000dc;
cbb_val[253] <= 32'h000000de;
cbb_val[254] <= 32'h000000df;
cbb_val[255] <= 32'h000000e1;
end

endmodule

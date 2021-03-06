module ycc_col_conv_r (data_a, data_b, result);
input wire [31:0] data_a; // this is the y input
input wire [31:0] data_b; // this is the CR value
output wire [31:0] result;

wire signed [31:0] temp1;
wire signed [31:0] temp2;
wire signed [31:0] crr_val [255:0];

always @(*) begin
	temp1 = data_a + crr_val[data_b];
	result = (temp1 < 0) ? 32'd0 : ((temp1 > 255) ? 32'd255 : temp1);
end

always @(*) begin
crr_val[0] <= 32'hffffff4d;
crr_val[1] <= 32'hffffff4e;
crr_val[2] <= 32'hffffff4f;
crr_val[3] <= 32'hffffff51;
crr_val[4] <= 32'hffffff52;
crr_val[5] <= 32'hffffff54;
crr_val[6] <= 32'hffffff55;
crr_val[7] <= 32'hffffff56;
crr_val[8] <= 32'hffffff58;
crr_val[9] <= 32'hffffff59;
crr_val[10] <= 32'hffffff5b;
crr_val[11] <= 32'hffffff5c;
crr_val[12] <= 32'hffffff5d;
crr_val[13] <= 32'hffffff5f;
crr_val[14] <= 32'hffffff60;
crr_val[15] <= 32'hffffff62;
crr_val[16] <= 32'hffffff63;
crr_val[17] <= 32'hffffff64;
crr_val[18] <= 32'hffffff66;
crr_val[19] <= 32'hffffff67;
crr_val[20] <= 32'hffffff69;
crr_val[21] <= 32'hffffff6a;
crr_val[22] <= 32'hffffff6b;
crr_val[23] <= 32'hffffff6d;
crr_val[24] <= 32'hffffff6e;
crr_val[25] <= 32'hffffff70;
crr_val[26] <= 32'hffffff71;
crr_val[27] <= 32'hffffff72;
crr_val[28] <= 32'hffffff74;
crr_val[29] <= 32'hffffff75;
crr_val[30] <= 32'hffffff77;
crr_val[31] <= 32'hffffff78;
crr_val[32] <= 32'hffffff79;
crr_val[33] <= 32'hffffff7b;
crr_val[34] <= 32'hffffff7c;
crr_val[35] <= 32'hffffff7e;
crr_val[36] <= 32'hffffff7f;
crr_val[37] <= 32'hffffff80;
crr_val[38] <= 32'hffffff82;
crr_val[39] <= 32'hffffff83;
crr_val[40] <= 32'hffffff85;
crr_val[41] <= 32'hffffff86;
crr_val[42] <= 32'hffffff87;
crr_val[43] <= 32'hffffff89;
crr_val[44] <= 32'hffffff8a;
crr_val[45] <= 32'hffffff8c;
crr_val[46] <= 32'hffffff8d;
crr_val[47] <= 32'hffffff8e;
crr_val[48] <= 32'hffffff90;
crr_val[49] <= 32'hffffff91;
crr_val[50] <= 32'hffffff93;
crr_val[51] <= 32'hffffff94;
crr_val[52] <= 32'hffffff95;
crr_val[53] <= 32'hffffff97;
crr_val[54] <= 32'hffffff98;
crr_val[55] <= 32'hffffff9a;
crr_val[56] <= 32'hffffff9b;
crr_val[57] <= 32'hffffff9c;
crr_val[58] <= 32'hffffff9e;
crr_val[59] <= 32'hffffff9f;
crr_val[60] <= 32'hffffffa1;
crr_val[61] <= 32'hffffffa2;
crr_val[62] <= 32'hffffffa3;
crr_val[63] <= 32'hffffffa5;
crr_val[64] <= 32'hffffffa6;
crr_val[65] <= 32'hffffffa8;
crr_val[66] <= 32'hffffffa9;
crr_val[67] <= 32'hffffffaa;
crr_val[68] <= 32'hffffffac;
crr_val[69] <= 32'hffffffad;
crr_val[70] <= 32'hffffffaf;
crr_val[71] <= 32'hffffffb0;
crr_val[72] <= 32'hffffffb1;
crr_val[73] <= 32'hffffffb3;
crr_val[74] <= 32'hffffffb4;
crr_val[75] <= 32'hffffffb6;
crr_val[76] <= 32'hffffffb7;
crr_val[77] <= 32'hffffffb8;
crr_val[78] <= 32'hffffffba;
crr_val[79] <= 32'hffffffbb;
crr_val[80] <= 32'hffffffbd;
crr_val[81] <= 32'hffffffbe;
crr_val[82] <= 32'hffffffc0;
crr_val[83] <= 32'hffffffc1;
crr_val[84] <= 32'hffffffc2;
crr_val[85] <= 32'hffffffc4;
crr_val[86] <= 32'hffffffc5;
crr_val[87] <= 32'hffffffc7;
crr_val[88] <= 32'hffffffc8;
crr_val[89] <= 32'hffffffc9;
crr_val[90] <= 32'hffffffcb;
crr_val[91] <= 32'hffffffcc;
crr_val[92] <= 32'hffffffce;
crr_val[93] <= 32'hffffffcf;
crr_val[94] <= 32'hffffffd0;
crr_val[95] <= 32'hffffffd2;
crr_val[96] <= 32'hffffffd3;
crr_val[97] <= 32'hffffffd5;
crr_val[98] <= 32'hffffffd6;
crr_val[99] <= 32'hffffffd7;
crr_val[100] <= 32'hffffffd9;
crr_val[101] <= 32'hffffffda;
crr_val[102] <= 32'hffffffdc;
crr_val[103] <= 32'hffffffdd;
crr_val[104] <= 32'hffffffde;
crr_val[105] <= 32'hffffffe0;
crr_val[106] <= 32'hffffffe1;
crr_val[107] <= 32'hffffffe3;
crr_val[108] <= 32'hffffffe4;
crr_val[109] <= 32'hffffffe5;
crr_val[110] <= 32'hffffffe7;
crr_val[111] <= 32'hffffffe8;
crr_val[112] <= 32'hffffffea;
crr_val[113] <= 32'hffffffeb;
crr_val[114] <= 32'hffffffec;
crr_val[115] <= 32'hffffffee;
crr_val[116] <= 32'hffffffef;
crr_val[117] <= 32'hfffffff1;
crr_val[118] <= 32'hfffffff2;
crr_val[119] <= 32'hfffffff3;
crr_val[120] <= 32'hfffffff5;
crr_val[121] <= 32'hfffffff6;
crr_val[122] <= 32'hfffffff8;
crr_val[123] <= 32'hfffffff9;
crr_val[124] <= 32'hfffffffa;
crr_val[125] <= 32'hfffffffc;
crr_val[126] <= 32'hfffffffd;
crr_val[127] <= 32'hffffffff;
crr_val[128] <= 32'h00000000;
crr_val[129] <= 32'h00000001;
crr_val[130] <= 32'h00000003;
crr_val[131] <= 32'h00000004;
crr_val[132] <= 32'h00000006;
crr_val[133] <= 32'h00000007;
crr_val[134] <= 32'h00000008;
crr_val[135] <= 32'h0000000a;
crr_val[136] <= 32'h0000000b;
crr_val[137] <= 32'h0000000d;
crr_val[138] <= 32'h0000000e;
crr_val[139] <= 32'h0000000f;
crr_val[140] <= 32'h00000011;
crr_val[141] <= 32'h00000012;
crr_val[142] <= 32'h00000014;
crr_val[143] <= 32'h00000015;
crr_val[144] <= 32'h00000016;
crr_val[145] <= 32'h00000018;
crr_val[146] <= 32'h00000019;
crr_val[147] <= 32'h0000001b;
crr_val[148] <= 32'h0000001c;
crr_val[149] <= 32'h0000001d;
crr_val[150] <= 32'h0000001f;
crr_val[151] <= 32'h00000020;
crr_val[152] <= 32'h00000022;
crr_val[153] <= 32'h00000023;
crr_val[154] <= 32'h00000024;
crr_val[155] <= 32'h00000026;
crr_val[156] <= 32'h00000027;
crr_val[157] <= 32'h00000029;
crr_val[158] <= 32'h0000002a;
crr_val[159] <= 32'h0000002b;
crr_val[160] <= 32'h0000002d;
crr_val[161] <= 32'h0000002e;
crr_val[162] <= 32'h00000030;
crr_val[163] <= 32'h00000031;
crr_val[164] <= 32'h00000032;
crr_val[165] <= 32'h00000034;
crr_val[166] <= 32'h00000035;
crr_val[167] <= 32'h00000037;
crr_val[168] <= 32'h00000038;
crr_val[169] <= 32'h00000039;
crr_val[170] <= 32'h0000003b;
crr_val[171] <= 32'h0000003c;
crr_val[172] <= 32'h0000003e;
crr_val[173] <= 32'h0000003f;
crr_val[174] <= 32'h00000040;
crr_val[175] <= 32'h00000042;
crr_val[176] <= 32'h00000043;
crr_val[177] <= 32'h00000045;
crr_val[178] <= 32'h00000046;
crr_val[179] <= 32'h00000048;
crr_val[180] <= 32'h00000049;
crr_val[181] <= 32'h0000004a;
crr_val[182] <= 32'h0000004c;
crr_val[183] <= 32'h0000004d;
crr_val[184] <= 32'h0000004f;
crr_val[185] <= 32'h00000050;
crr_val[186] <= 32'h00000051;
crr_val[187] <= 32'h00000053;
crr_val[188] <= 32'h00000054;
crr_val[189] <= 32'h00000056;
crr_val[190] <= 32'h00000057;
crr_val[191] <= 32'h00000058;
crr_val[192] <= 32'h0000005a;
crr_val[193] <= 32'h0000005b;
crr_val[194] <= 32'h0000005d;
crr_val[195] <= 32'h0000005e;
crr_val[196] <= 32'h0000005f;
crr_val[197] <= 32'h00000061;
crr_val[198] <= 32'h00000062;
crr_val[199] <= 32'h00000064;
crr_val[200] <= 32'h00000065;
crr_val[201] <= 32'h00000066;
crr_val[202] <= 32'h00000068;
crr_val[203] <= 32'h00000069;
crr_val[204] <= 32'h0000006b;
crr_val[205] <= 32'h0000006c;
crr_val[206] <= 32'h0000006d;
crr_val[207] <= 32'h0000006f;
crr_val[208] <= 32'h00000070;
crr_val[209] <= 32'h00000072;
crr_val[210] <= 32'h00000073;
crr_val[211] <= 32'h00000074;
crr_val[212] <= 32'h00000076;
crr_val[213] <= 32'h00000077;
crr_val[214] <= 32'h00000079;
crr_val[215] <= 32'h0000007a;
crr_val[216] <= 32'h0000007b;
crr_val[217] <= 32'h0000007d;
crr_val[218] <= 32'h0000007e;
crr_val[219] <= 32'h00000080;
crr_val[220] <= 32'h00000081;
crr_val[221] <= 32'h00000082;
crr_val[222] <= 32'h00000084;
crr_val[223] <= 32'h00000085;
crr_val[224] <= 32'h00000087;
crr_val[225] <= 32'h00000088;
crr_val[226] <= 32'h00000089;
crr_val[227] <= 32'h0000008b;
crr_val[228] <= 32'h0000008c;
crr_val[229] <= 32'h0000008e;
crr_val[230] <= 32'h0000008f;
crr_val[231] <= 32'h00000090;
crr_val[232] <= 32'h00000092;
crr_val[233] <= 32'h00000093;
crr_val[234] <= 32'h00000095;
crr_val[235] <= 32'h00000096;
crr_val[236] <= 32'h00000097;
crr_val[237] <= 32'h00000099;
crr_val[238] <= 32'h0000009a;
crr_val[239] <= 32'h0000009c;
crr_val[240] <= 32'h0000009d;
crr_val[241] <= 32'h0000009e;
crr_val[242] <= 32'h000000a0;
crr_val[243] <= 32'h000000a1;
crr_val[244] <= 32'h000000a3;
crr_val[245] <= 32'h000000a4;
crr_val[246] <= 32'h000000a5;
crr_val[247] <= 32'h000000a7;
crr_val[248] <= 32'h000000a8;
crr_val[249] <= 32'h000000aa;
crr_val[250] <= 32'h000000ab;
crr_val[251] <= 32'h000000ac;
crr_val[252] <= 32'h000000ae;
crr_val[253] <= 32'h000000af;
crr_val[254] <= 32'h000000b1;
crr_val[255] <= 32'h000000b2;
end

endmodule

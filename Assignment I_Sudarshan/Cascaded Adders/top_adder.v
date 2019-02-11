module top_adder(arr, sum ); 
 input [511:0] arr; 
 output [11:0] sum; 
 wire  [319:0] out_4; 
adder4bit A40(arr[3:0], arr[7:4], out_4[4:0]);
adder4bit A41(arr[11:8], arr[15:12], out_4[9:5]);
adder4bit A42(arr[19:16], arr[23:20], out_4[14:10]);
adder4bit A43(arr[27:24], arr[31:28], out_4[19:15]);
adder4bit A44(arr[35:32], arr[39:36], out_4[24:20]);
adder4bit A45(arr[43:40], arr[47:44], out_4[29:25]);
adder4bit A46(arr[51:48], arr[55:52], out_4[34:30]);
adder4bit A47(arr[59:56], arr[63:60], out_4[39:35]);
adder4bit A48(arr[67:64], arr[71:68], out_4[44:40]);
adder4bit A49(arr[75:72], arr[79:76], out_4[49:45]);
adder4bit A410(arr[83:80], arr[87:84], out_4[54:50]);
adder4bit A411(arr[91:88], arr[95:92], out_4[59:55]);
adder4bit A412(arr[99:96], arr[103:100], out_4[64:60]);
adder4bit A413(arr[107:104], arr[111:108], out_4[69:65]);
adder4bit A414(arr[115:112], arr[119:116], out_4[74:70]);
adder4bit A415(arr[123:120], arr[127:124], out_4[79:75]);
adder4bit A416(arr[131:128], arr[135:132], out_4[84:80]);
adder4bit A417(arr[139:136], arr[143:140], out_4[89:85]);
adder4bit A418(arr[147:144], arr[151:148], out_4[94:90]);
adder4bit A419(arr[155:152], arr[159:156], out_4[99:95]);
adder4bit A420(arr[163:160], arr[167:164], out_4[104:100]);
adder4bit A421(arr[171:168], arr[175:172], out_4[109:105]);
adder4bit A422(arr[179:176], arr[183:180], out_4[114:110]);
adder4bit A423(arr[187:184], arr[191:188], out_4[119:115]);
adder4bit A424(arr[195:192], arr[199:196], out_4[124:120]);
adder4bit A425(arr[203:200], arr[207:204], out_4[129:125]);
adder4bit A426(arr[211:208], arr[215:212], out_4[134:130]);
adder4bit A427(arr[219:216], arr[223:220], out_4[139:135]);
adder4bit A428(arr[227:224], arr[231:228], out_4[144:140]);
adder4bit A429(arr[235:232], arr[239:236], out_4[149:145]);
adder4bit A430(arr[243:240], arr[247:244], out_4[154:150]);
adder4bit A431(arr[251:248], arr[255:252], out_4[159:155]);
adder4bit A432(arr[259:256], arr[263:260], out_4[164:160]);
adder4bit A433(arr[267:264], arr[271:268], out_4[169:165]);
adder4bit A434(arr[275:272], arr[279:276], out_4[174:170]);
adder4bit A435(arr[283:280], arr[287:284], out_4[179:175]);
adder4bit A436(arr[291:288], arr[295:292], out_4[184:180]);
adder4bit A437(arr[299:296], arr[303:300], out_4[189:185]);
adder4bit A438(arr[307:304], arr[311:308], out_4[194:190]);
adder4bit A439(arr[315:312], arr[319:316], out_4[199:195]);
adder4bit A440(arr[323:320], arr[327:324], out_4[204:200]);
adder4bit A441(arr[331:328], arr[335:332], out_4[209:205]);
adder4bit A442(arr[339:336], arr[343:340], out_4[214:210]);
adder4bit A443(arr[347:344], arr[351:348], out_4[219:215]);
adder4bit A444(arr[355:352], arr[359:356], out_4[224:220]);
adder4bit A445(arr[363:360], arr[367:364], out_4[229:225]);
adder4bit A446(arr[371:368], arr[375:372], out_4[234:230]);
adder4bit A447(arr[379:376], arr[383:380], out_4[239:235]);
adder4bit A448(arr[387:384], arr[391:388], out_4[244:240]);
adder4bit A449(arr[395:392], arr[399:396], out_4[249:245]);
adder4bit A450(arr[403:400], arr[407:404], out_4[254:250]);
adder4bit A451(arr[411:408], arr[415:412], out_4[259:255]);
adder4bit A452(arr[419:416], arr[423:420], out_4[264:260]);
adder4bit A453(arr[427:424], arr[431:428], out_4[269:265]);
adder4bit A454(arr[435:432], arr[439:436], out_4[274:270]);
adder4bit A455(arr[443:440], arr[447:444], out_4[279:275]);
adder4bit A456(arr[451:448], arr[455:452], out_4[284:280]);
adder4bit A457(arr[459:456], arr[463:460], out_4[289:285]);
adder4bit A458(arr[467:464], arr[471:468], out_4[294:290]);
adder4bit A459(arr[475:472], arr[479:476], out_4[299:295]);
adder4bit A460(arr[483:480], arr[487:484], out_4[304:300]);
adder4bit A461(arr[491:488], arr[495:492], out_4[309:305]);
adder4bit A462(arr[499:496], arr[503:500], out_4[314:310]);
adder4bit A463(arr[507:504], arr[511:508], out_4[319:315]);





wire  [191:0] out_5; 
adder5bit A50(out_4[4:0],out_4[9:5], out_5[5:0]);
adder5bit A51(out_4[14:10],out_4[19:15], out_5[11:6]);
adder5bit A52(out_4[24:20],out_4[29:25], out_5[17:12]);
adder5bit A53(out_4[34:30],out_4[39:35], out_5[23:18]);
adder5bit A54(out_4[44:40],out_4[49:45], out_5[29:24]);
adder5bit A55(out_4[54:50],out_4[59:55], out_5[35:30]);
adder5bit A56(out_4[64:60],out_4[69:65], out_5[41:36]);
adder5bit A57(out_4[74:70],out_4[79:75], out_5[47:42]);
adder5bit A58(out_4[84:80],out_4[89:85], out_5[53:48]);
adder5bit A59(out_4[94:90],out_4[99:95], out_5[59:54]);
adder5bit A510(out_4[104:100],out_4[109:105], out_5[65:60]);
adder5bit A511(out_4[114:110],out_4[119:115], out_5[71:66]);
adder5bit A512(out_4[124:120],out_4[129:125], out_5[77:72]);
adder5bit A513(out_4[134:130],out_4[139:135], out_5[83:78]);
adder5bit A514(out_4[144:140],out_4[149:145], out_5[89:84]);
adder5bit A515(out_4[154:150],out_4[159:155], out_5[95:90]);
adder5bit A516(out_4[164:160],out_4[169:165], out_5[101:96]);
adder5bit A517(out_4[174:170],out_4[179:175], out_5[107:102]);
adder5bit A518(out_4[184:180],out_4[189:185], out_5[113:108]);
adder5bit A519(out_4[194:190],out_4[199:195], out_5[119:114]);
adder5bit A520(out_4[204:200],out_4[209:205], out_5[125:120]);
adder5bit A521(out_4[214:210],out_4[219:215], out_5[131:126]);
adder5bit A522(out_4[224:220],out_4[229:225], out_5[137:132]);
adder5bit A523(out_4[234:230],out_4[239:235], out_5[143:138]);
adder5bit A524(out_4[244:240],out_4[249:245], out_5[149:144]);
adder5bit A525(out_4[254:250],out_4[259:255], out_5[155:150]);
adder5bit A526(out_4[264:260],out_4[269:265], out_5[161:156]);
adder5bit A527(out_4[274:270],out_4[279:275], out_5[167:162]);
adder5bit A528(out_4[284:280],out_4[289:285], out_5[173:168]);
adder5bit A529(out_4[294:290],out_4[299:295], out_5[179:174]);
adder5bit A530(out_4[304:300],out_4[309:305], out_5[185:180]);
adder5bit A531(out_4[314:310],out_4[319:315], out_5[191:186]);





wire  [111:0] out_6; 
adder6bit A60(out_5[5:0],out_5[11:6], out_6[6:0]);
adder6bit A61(out_5[17:12],out_5[23:18], out_6[13:7]);
adder6bit A62(out_5[29:24],out_5[35:30], out_6[20:14]);
adder6bit A63(out_5[41:36],out_5[47:42], out_6[27:21]);
adder6bit A64(out_5[53:48],out_5[59:54], out_6[34:28]);
adder6bit A65(out_5[65:60],out_5[71:66], out_6[41:35]);
adder6bit A66(out_5[77:72],out_5[83:78], out_6[48:42]);
adder6bit A67(out_5[89:84],out_5[95:90], out_6[55:49]);
adder6bit A68(out_5[101:96],out_5[107:102], out_6[62:56]);
adder6bit A69(out_5[113:108],out_5[119:114], out_6[69:63]);
adder6bit A610(out_5[125:120],out_5[131:126], out_6[76:70]);
adder6bit A611(out_5[137:132],out_5[143:138], out_6[83:77]);
adder6bit A612(out_5[149:144],out_5[155:150], out_6[90:84]);
adder6bit A613(out_5[161:156],out_5[167:162], out_6[97:91]);
adder6bit A614(out_5[173:168],out_5[179:174], out_6[104:98]);
adder6bit A615(out_5[185:180],out_5[191:186], out_6[111:105]);





wire  [63:0] out_7; 
adder7bit A70(out_6[6:0],out_6[13:7], out_7[7:0]);
adder7bit A71(out_6[20:14],out_6[27:21], out_7[15:8]);
adder7bit A72(out_6[34:28],out_6[41:35], out_7[23:16]);
adder7bit A73(out_6[48:42],out_6[55:49], out_7[31:24]);
adder7bit A74(out_6[62:56],out_6[69:63], out_7[39:32]);
adder7bit A75(out_6[76:70],out_6[83:77], out_7[47:40]);
adder7bit A76(out_6[90:84],out_6[97:91], out_7[55:48]);
adder7bit A77(out_6[104:98],out_6[111:105], out_7[63:56]);





wire  [35:0] out_8; 
adder8bit A80(out_7[7:0],out_7[15:8], out_8[8:0]);
adder8bit A81(out_7[23:16],out_7[31:24], out_8[17:9]);
adder8bit A82(out_7[39:32],out_7[47:40], out_8[26:18]);
adder8bit A83(out_7[55:48],out_7[63:56], out_8[35:27]);





wire  [19:0] out_9; 
adder9bit A90(out_8[8:0],out_8[17:9], out_9[9:0]);
adder9bit A91(out_8[26:18],out_8[35:27], out_9[19:10]);





adder10bit A101(out_9[9:0],out_9[19:10], sum[10:0]);
endmodule

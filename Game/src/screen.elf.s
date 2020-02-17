
screen.elf:     formato del fichero elf32-bigmips


Desensamblado de la sección .text:

00400000 <start>:
  400000:	3c1d7fff 	lui	sp,0x7fff
  400004:	37bdfffc 	ori	sp,sp,0xfffc
  400008:	0c100258 	jal	400960 <main>
  40000c:	08100003 	j	40000c <start+0xc>

00400010 <moverMono>:
  400010:	27bdffe0 	addiu	sp,sp,-32
  400014:	afb10018 	sw	s1,24(sp)
  400018:	afb00014 	sw	s0,20(sp)
  40001c:	3c111001 	lui	s1,0x1001
  400020:	3c101001 	lui	s0,0x1001
  400024:	92050107 	lbu	a1,263(s0)
  400028:	9224010b 	lbu	a0,267(s1)
  40002c:	afbf001c 	sw	ra,28(sp)
  400030:	0c10042e 	jal	4010b8 <set_cursor>
  400034:	3c041001 	lui	a0,0x1001
  400038:	24840000 	addiu	a0,a0,0
  40003c:	0c100458 	jal	401160 <puts>
  400040:	8e240108 	lw	a0,264(s1)
  400044:	92050107 	lbu	a1,263(s0)
  400048:	2484ffff 	addiu	a0,a0,-1
  40004c:	308400ff 	andi	a0,a0,0xff
  400050:	0c10042e 	jal	4010b8 <set_cursor>
  400054:	3c041001 	lui	a0,0x1001
  400058:	24840008 	addiu	a0,a0,8
  40005c:	0c100458 	jal	401160 <puts>
  400060:	8e240108 	lw	a0,264(s1)
  400064:	92050107 	lbu	a1,263(s0)
  400068:	2484ffff 	addiu	a0,a0,-1
  40006c:	308400ff 	andi	a0,a0,0xff
  400070:	0c10042e 	jal	4010b8 <set_cursor>
  400074:	3c041001 	lui	a0,0x1001
  400078:	2484000c 	addiu	a0,a0,12
  40007c:	0c100458 	jal	401160 <puts>
  400080:	3c031001 	lui	v1,0x1001
  400084:	8c620118 	lw	v0,280(v1)
  400088:	1440002c 	bnez	v0,40013c <moverMono+0x12c>
  40008c:	8e020104 	lw	v0,260(s0)
  400090:	28440032 	slti	a0,v0,50
  400094:	14800006 	bnez	a0,4000b0 <moverMono+0xa0>
  400098:	24040032 	li	a0,50
  40009c:	14440002 	bne	v0,a0,4000a8 <moverMono+0x98>
  4000a0:	24040001 	li	a0,1
  4000a4:	ac640118 	sw	a0,280(v1)
  4000a8:	2442ffff 	addiu	v0,v0,-1
  4000ac:	ae020104 	sw	v0,260(s0)
  4000b0:	00002825 	move	a1,zero
  4000b4:	24040007 	li	a0,7
  4000b8:	0c100420 	jal	401080 <set_color>
  4000bc:	92050107 	lbu	a1,263(s0)
  4000c0:	9224010b 	lbu	a0,267(s1)
  4000c4:	0c10042e 	jal	4010b8 <set_cursor>
  4000c8:	3c041001 	lui	a0,0x1001
  4000cc:	24840010 	addiu	a0,a0,16
  4000d0:	0c100458 	jal	401160 <puts>
  4000d4:	00002825 	move	a1,zero
  4000d8:	24040007 	li	a0,7
  4000dc:	0c100420 	jal	401080 <set_color>
  4000e0:	8e240108 	lw	a0,264(s1)
  4000e4:	92050107 	lbu	a1,263(s0)
  4000e8:	2484ffff 	addiu	a0,a0,-1
  4000ec:	308400ff 	andi	a0,a0,0xff
  4000f0:	0c10042e 	jal	4010b8 <set_cursor>
  4000f4:	3c041001 	lui	a0,0x1001
  4000f8:	24840018 	addiu	a0,a0,24
  4000fc:	0c100458 	jal	401160 <puts>
  400100:	00002825 	move	a1,zero
  400104:	24040007 	li	a0,7
  400108:	0c100420 	jal	401080 <set_color>
  40010c:	8e240108 	lw	a0,264(s1)
  400110:	92050107 	lbu	a1,263(s0)
  400114:	2484ffff 	addiu	a0,a0,-1
  400118:	308400ff 	andi	a0,a0,0xff
  40011c:	0c10042e 	jal	4010b8 <set_cursor>
  400120:	8fbf001c 	lw	ra,28(sp)
  400124:	8fb10018 	lw	s1,24(sp)
  400128:	8fb00014 	lw	s0,20(sp)
  40012c:	3c041001 	lui	a0,0x1001
  400130:	24840020 	addiu	a0,a0,32
  400134:	27bd0020 	addiu	sp,sp,32
  400138:	08100458 	j	401160 <puts>
  40013c:	24040001 	li	a0,1
  400140:	1444ffdb 	bne	v0,a0,4000b0 <moverMono+0xa0>
  400144:	8e020104 	lw	v0,260(s0)
  400148:	28440047 	slti	a0,v0,71
  40014c:	1080ffd8 	beqz	a0,4000b0 <moverMono+0xa0>
  400150:	24040046 	li	a0,70
  400154:	14440001 	bne	v0,a0,40015c <moverMono+0x14c>
  400158:	ac600118 	sw	zero,280(v1)
  40015c:	24420001 	addiu	v0,v0,1
  400160:	1000ffd2 	b	4000ac <moverMono+0x9c>

00400164 <moverBarril>:
  400164:	27bdffe0 	addiu	sp,sp,-32
  400168:	afb10014 	sw	s1,20(sp)
  40016c:	afb00010 	sw	s0,16(sp)
  400170:	3c111001 	lui	s1,0x1001
  400174:	3c101001 	lui	s0,0x1001
  400178:	9205011f 	lbu	a1,287(s0)
  40017c:	922400eb 	lbu	a0,235(s1)
  400180:	afbf001c 	sw	ra,28(sp)
  400184:	afb20018 	sw	s2,24(sp)
  400188:	0c10042e 	jal	4010b8 <set_cursor>
  40018c:	3c041001 	lui	a0,0x1001
  400190:	2484000c 	addiu	a0,a0,12
  400194:	0c100458 	jal	401160 <puts>
  400198:	8e02011c 	lw	v0,284(s0)
  40019c:	28430003 	slti	v1,v0,3
  4001a0:	2442ffff 	addiu	v0,v0,-1
  4001a4:	10600003 	beqz	v1,4001b4 <moverBarril+0x50>
  4001a8:	3c021001 	lui	v0,0x1001
  4001ac:	8c420104 	lw	v0,260(v0)
  4001b0:	2442fffd 	addiu	v0,v0,-3
  4001b4:	3c121001 	lui	s2,0x1001
  4001b8:	8e4300fc 	lw	v1,252(s2)
  4001bc:	ae02011c 	sw	v0,284(s0)
  4001c0:	24640001 	addiu	a0,v1,1
  4001c4:	1482001a 	bne	a0,v0,400230 <moverBarril+0xcc>
  4001c8:	00002825 	move	a1,zero
  4001cc:	24040007 	li	a0,7
  4001d0:	0c100420 	jal	401080 <set_color>
  4001d4:	8e4500fc 	lw	a1,252(s2)
  4001d8:	3c021001 	lui	v0,0x1001
  4001dc:	90440103 	lbu	a0,259(v0)
  4001e0:	24a50002 	addiu	a1,a1,2
  4001e4:	30a500ff 	andi	a1,a1,0xff
  4001e8:	0c10042e 	jal	4010b8 <set_cursor>
  4001ec:	3c041001 	lui	a0,0x1001
  4001f0:	24840024 	addiu	a0,a0,36
  4001f4:	0c100458 	jal	401160 <puts>
  4001f8:	00002825 	move	a1,zero
  4001fc:	24040007 	li	a0,7
  400200:	0c100420 	jal	401080 <set_color>
  400204:	922400eb 	lbu	a0,235(s1)
  400208:	9205011f 	lbu	a1,287(s0)
  40020c:	0c10042e 	jal	4010b8 <set_cursor>
  400210:	8fbf001c 	lw	ra,28(sp)
  400214:	8fb20018 	lw	s2,24(sp)
  400218:	8fb10014 	lw	s1,20(sp)
  40021c:	8fb00010 	lw	s0,16(sp)
  400220:	3c041001 	lui	a0,0x1001
  400224:	24840034 	addiu	a0,a0,52
  400228:	27bd0020 	addiu	sp,sp,32
  40022c:	08100458 	j	401160 <puts>
  400230:	1462000c 	bne	v1,v0,400264 <moverBarril+0x100>
  400234:	00002825 	move	a1,zero
  400238:	24040007 	li	a0,7
  40023c:	0c100420 	jal	401080 <set_color>
  400240:	8e4500fc 	lw	a1,252(s2)
  400244:	3c021001 	lui	v0,0x1001
  400248:	90440103 	lbu	a0,259(v0)
  40024c:	24a50001 	addiu	a1,a1,1
  400250:	30a500ff 	andi	a1,a1,0xff
  400254:	0c10042e 	jal	4010b8 <set_cursor>
  400258:	3c041001 	lui	a0,0x1001
  40025c:	24840028 	addiu	a0,a0,40
  400260:	1000ffe4 	b	4001f4 <moverBarril+0x90>
  400264:	2463ffff 	addiu	v1,v1,-1
  400268:	1462000a 	bne	v1,v0,400294 <moverBarril+0x130>
  40026c:	00002825 	move	a1,zero
  400270:	24040007 	li	a0,7
  400274:	0c100420 	jal	401080 <set_color>
  400278:	3c021001 	lui	v0,0x1001
  40027c:	90440103 	lbu	a0,259(v0)
  400280:	924500ff 	lbu	a1,255(s2)
  400284:	0c10042e 	jal	4010b8 <set_cursor>
  400288:	3c041001 	lui	a0,0x1001
  40028c:	2484002c 	addiu	a0,a0,44
  400290:	1000ffd8 	b	4001f4 <moverBarril+0x90>
  400294:	3c121001 	lui	s2,0x1001
  400298:	8e4300e4 	lw	v1,228(s2)
  40029c:	2463ffff 	addiu	v1,v1,-1
  4002a0:	1462ffd5 	bne	v1,v0,4001f8 <moverBarril+0x94>
  4002a4:	00002825 	move	a1,zero
  4002a8:	24040007 	li	a0,7
  4002ac:	0c100420 	jal	401080 <set_color>
  4002b0:	3c021001 	lui	v0,0x1001
  4002b4:	904400e3 	lbu	a0,227(v0)
  4002b8:	924500e7 	lbu	a1,231(s2)
  4002bc:	0c10042e 	jal	4010b8 <set_cursor>
  4002c0:	3c041001 	lui	a0,0x1001
  4002c4:	24840030 	addiu	a0,a0,48
  4002c8:	1000ffca 	b	4001f4 <moverBarril+0x90>

004002cc <perderConPlanta>:
  4002cc:	27bdffd8 	addiu	sp,sp,-40
  4002d0:	afb10018 	sw	s1,24(sp)
  4002d4:	afb00014 	sw	s0,20(sp)
  4002d8:	3c111001 	lui	s1,0x1001
  4002dc:	3c101001 	lui	s0,0x1001
  4002e0:	8e0600e4 	lw	a2,228(s0)
  4002e4:	8e2500fc 	lw	a1,252(s1)
  4002e8:	afbf0024 	sw	ra,36(sp)
  4002ec:	00c5102a 	slt	v0,a2,a1
  4002f0:	afb30020 	sw	s3,32(sp)
  4002f4:	afb2001c 	sw	s2,28(sp)
  4002f8:	1440000c 	bnez	v0,40032c <perderConPlanta+0x60>
  4002fc:	24a30002 	addiu	v1,a1,2
  400300:	0066182a 	slt	v1,v1,a2
  400304:	14600009 	bnez	v1,40032c <perderConPlanta+0x60>
  400308:	3c031001 	lui	v1,0x1001
  40030c:	3c041001 	lui	a0,0x1001
  400310:	8c630100 	lw	v1,256(v1)
  400314:	8c8700e0 	lw	a3,224(a0)
  400318:	2464ffff 	addiu	a0,v1,-1
  40031c:	00e4202a 	slt	a0,a3,a0
  400320:	14800002 	bnez	a0,40032c <perderConPlanta+0x60>
  400324:	0067182a 	slt	v1,v1,a3
  400328:	1060000f 	beqz	v1,400368 <perderConPlanta+0x9c>
  40032c:	24c30001 	addiu	v1,a2,1
  400330:	0065182a 	slt	v1,v1,a1
  400334:	14600072 	bnez	v1,400500 <perderConPlanta+0x234>
  400338:	24a30001 	addiu	v1,a1,1
  40033c:	0066182a 	slt	v1,v1,a2
  400340:	1460006f 	bnez	v1,400500 <perderConPlanta+0x234>
  400344:	3c031001 	lui	v1,0x1001
  400348:	3c041001 	lui	a0,0x1001
  40034c:	8c6300e0 	lw	v1,224(v1)
  400350:	8c840100 	lw	a0,256(a0)
  400354:	0083382a 	slt	a3,a0,v1
  400358:	14e0006c 	bnez	a3,40050c <perderConPlanta+0x240>
  40035c:	2484ffff 	addiu	a0,a0,-1
  400360:	0064182a 	slt	v1,v1,a0
  400364:	14600069 	bnez	v1,40050c <perderConPlanta+0x240>
  400368:	3c121001 	lui	s2,0x1001
  40036c:	8e43010c 	lw	v1,268(s2)
  400370:	28630002 	slti	v1,v1,2
  400374:	14600033 	bnez	v1,400444 <perderConPlanta+0x178>
  400378:	3c131001 	lui	s3,0x1001
  40037c:	92640103 	lbu	a0,259(s3)
  400380:	30a500ff 	andi	a1,a1,0xff
  400384:	0c10042e 	jal	4010b8 <set_cursor>
  400388:	3c041001 	lui	a0,0x1001
  40038c:	24840038 	addiu	a0,a0,56
  400390:	0c100458 	jal	401160 <puts>
  400394:	8e640100 	lw	a0,256(s3)
  400398:	922500ff 	lbu	a1,255(s1)
  40039c:	2484ffff 	addiu	a0,a0,-1
  4003a0:	308400ff 	andi	a0,a0,0xff
  4003a4:	3c111001 	lui	s1,0x1001
  4003a8:	0c10042e 	jal	4010b8 <set_cursor>
  4003ac:	2624003c 	addiu	a0,s1,60
  4003b0:	0c100458 	jal	401160 <puts>
  4003b4:	3c021001 	lui	v0,0x1001
  4003b8:	904400e3 	lbu	a0,227(v0)
  4003bc:	920500e7 	lbu	a1,231(s0)
  4003c0:	0c10042e 	jal	4010b8 <set_cursor>
  4003c4:	2624003c 	addiu	a0,s1,60
  4003c8:	0c100458 	jal	401160 <puts>
  4003cc:	3c021001 	lui	v0,0x1001
  4003d0:	9045011f 	lbu	a1,287(v0)
  4003d4:	3c021001 	lui	v0,0x1001
  4003d8:	904400eb 	lbu	a0,235(v0)
  4003dc:	0c10042e 	jal	4010b8 <set_cursor>
  4003e0:	3c041001 	lui	a0,0x1001
  4003e4:	2484000c 	addiu	a0,a0,12
  4003e8:	0c100458 	jal	401160 <puts>
  4003ec:	8e42010c 	lw	v0,268(s2)
  4003f0:	00002825 	move	a1,zero
  4003f4:	2442ffff 	addiu	v0,v0,-1
  4003f8:	24040007 	li	a0,7
  4003fc:	ae42010c 	sw	v0,268(s2)
  400400:	0c100420 	jal	401080 <set_color>
  400404:	24050001 	li	a1,1
  400408:	2404001c 	li	a0,28
  40040c:	0c10042e 	jal	4010b8 <set_cursor>
  400410:	3c041001 	lui	a0,0x1001
  400414:	24840030 	addiu	a0,a0,48
  400418:	0c100458 	jal	401160 <puts>
  40041c:	2404002d 	li	a0,45
  400420:	0c1003e6 	jal	400f98 <delay_ms>
  400424:	24020001 	li	v0,1
  400428:	8fbf0024 	lw	ra,36(sp)
  40042c:	8fb30020 	lw	s3,32(sp)
  400430:	8fb2001c 	lw	s2,28(sp)
  400434:	8fb10018 	lw	s1,24(sp)
  400438:	8fb00014 	lw	s0,20(sp)
  40043c:	27bd0028 	addiu	sp,sp,40
  400440:	03e00008 	jr	ra
  400444:	1440000c 	bnez	v0,400478 <perderConPlanta+0x1ac>
  400448:	24a20002 	addiu	v0,a1,2
  40044c:	0046102a 	slt	v0,v0,a2
  400450:	14400009 	bnez	v0,400478 <perderConPlanta+0x1ac>
  400454:	3c021001 	lui	v0,0x1001
  400458:	3c031001 	lui	v1,0x1001
  40045c:	8c420100 	lw	v0,256(v0)
  400460:	8c6400e0 	lw	a0,224(v1)
  400464:	2443ffff 	addiu	v1,v0,-1
  400468:	0083182a 	slt	v1,a0,v1
  40046c:	14600002 	bnez	v1,400478 <perderConPlanta+0x1ac>
  400470:	0044102a 	slt	v0,v0,a0
  400474:	10400011 	beqz	v0,4004bc <perderConPlanta+0x1f0>
  400478:	24c30001 	addiu	v1,a2,1
  40047c:	0065182a 	slt	v1,v1,a1
  400480:	24020003 	li	v0,3
  400484:	1460ffe8 	bnez	v1,400428 <perderConPlanta+0x15c>
  400488:	24a50001 	addiu	a1,a1,1
  40048c:	00a6282a 	slt	a1,a1,a2
  400490:	14a0ffe5 	bnez	a1,400428 <perderConPlanta+0x15c>
  400494:	3c021001 	lui	v0,0x1001
  400498:	8c4300e0 	lw	v1,224(v0)
  40049c:	3c021001 	lui	v0,0x1001
  4004a0:	8c440100 	lw	a0,256(v0)
  4004a4:	24020003 	li	v0,3
  4004a8:	0083282a 	slt	a1,a0,v1
  4004ac:	14a0ffde 	bnez	a1,400428 <perderConPlanta+0x15c>
  4004b0:	2484ffff 	addiu	a0,a0,-1
  4004b4:	0064182a 	slt	v1,v1,a0
  4004b8:	1460ffdb 	bnez	v1,400428 <perderConPlanta+0x15c>
  4004bc:	3c021001 	lui	v0,0x1001
  4004c0:	8c44010c 	lw	a0,268(v0)
  4004c4:	24030001 	li	v1,1
  4004c8:	24020003 	li	v0,3
  4004cc:	1483ffd6 	bne	a0,v1,400428 <perderConPlanta+0x15c>
  4004d0:	0c100466 	jal	401198 <clear_screen>
  4004d4:	00002825 	move	a1,zero
  4004d8:	24040004 	li	a0,4
  4004dc:	0c100420 	jal	401080 <set_color>
  4004e0:	24050022 	li	a1,34
  4004e4:	2404000f 	li	a0,15
  4004e8:	0c10042e 	jal	4010b8 <set_cursor>
  4004ec:	3c041001 	lui	a0,0x1001
  4004f0:	24840040 	addiu	a0,a0,64
  4004f4:	0c100458 	jal	401160 <puts>
  4004f8:	24020002 	li	v0,2
  4004fc:	1000ffca 	b	400428 <perderConPlanta+0x15c>
  400500:	1040ffd1 	beqz	v0,400448 <perderConPlanta+0x17c>
  400504:	24020003 	li	v0,3
  400508:	1000ffc7 	b	400428 <perderConPlanta+0x15c>
  40050c:	1440ffe1 	bnez	v0,400494 <perderConPlanta+0x1c8>
  400510:	1000ffcd 	b	400448 <perderConPlanta+0x17c>

00400514 <perderConBarril>:
  400514:	3c021001 	lui	v0,0x1001
  400518:	3c041001 	lui	a0,0x1001
  40051c:	8c4300e4 	lw	v1,228(v0)
  400520:	8c85011c 	lw	a1,284(a0)
  400524:	27bdffe0 	addiu	sp,sp,-32
  400528:	afb00010 	sw	s0,16(sp)
  40052c:	afbf001c 	sw	ra,28(sp)
  400530:	afb20018 	sw	s2,24(sp)
  400534:	afb10014 	sw	s1,20(sp)
  400538:	00408025 	move	s0,v0
  40053c:	10650003 	beq	v1,a1,40054c <perderConBarril+0x38>
  400540:	24640001 	addiu	a0,v1,1
  400544:	24020003 	li	v0,3
  400548:	14a40024 	bne	a1,a0,4005dc <perderConBarril+0xc8>
  40054c:	3c121001 	lui	s2,0x1001
  400550:	3c021001 	lui	v0,0x1001
  400554:	8e4400e0 	lw	a0,224(s2)
  400558:	8c4600e8 	lw	a2,232(v0)
  40055c:	1486003b 	bne	a0,a2,40064c <perderConBarril+0x138>
  400560:	3c111001 	lui	s1,0x1001
  400564:	8e22010c 	lw	v0,268(s1)
  400568:	28420002 	slti	v0,v0,2
  40056c:	14400021 	bnez	v0,4005f4 <perderConBarril+0xe0>
  400570:	30a500ff 	andi	a1,a1,0xff
  400574:	308400ff 	andi	a0,a0,0xff
  400578:	0c10042e 	jal	4010b8 <set_cursor>
  40057c:	3c041001 	lui	a0,0x1001
  400580:	2484000c 	addiu	a0,a0,12
  400584:	0c100458 	jal	401160 <puts>
  400588:	920500e7 	lbu	a1,231(s0)
  40058c:	924400e3 	lbu	a0,227(s2)
  400590:	0c10042e 	jal	4010b8 <set_cursor>
  400594:	3c041001 	lui	a0,0x1001
  400598:	2484003c 	addiu	a0,a0,60
  40059c:	0c100458 	jal	401160 <puts>
  4005a0:	8e22010c 	lw	v0,268(s1)
  4005a4:	00002825 	move	a1,zero
  4005a8:	2442ffff 	addiu	v0,v0,-1
  4005ac:	24040007 	li	a0,7
  4005b0:	ae22010c 	sw	v0,268(s1)
  4005b4:	0c100420 	jal	401080 <set_color>
  4005b8:	24050001 	li	a1,1
  4005bc:	2404001c 	li	a0,28
  4005c0:	0c10042e 	jal	4010b8 <set_cursor>
  4005c4:	3c041001 	lui	a0,0x1001
  4005c8:	24840030 	addiu	a0,a0,48
  4005cc:	0c100458 	jal	401160 <puts>
  4005d0:	2404002d 	li	a0,45
  4005d4:	0c1003e6 	jal	400f98 <delay_ms>
  4005d8:	24020001 	li	v0,1
  4005dc:	8fbf001c 	lw	ra,28(sp)
  4005e0:	8fb20018 	lw	s2,24(sp)
  4005e4:	8fb10014 	lw	s1,20(sp)
  4005e8:	8fb00010 	lw	s0,16(sp)
  4005ec:	27bd0020 	addiu	sp,sp,32
  4005f0:	03e00008 	jr	ra
  4005f4:	10650004 	beq	v1,a1,400608 <perderConBarril+0xf4>
  4005f8:	24630001 	addiu	v1,v1,1
  4005fc:	24020003 	li	v0,3
  400600:	14a3fff6 	bne	a1,v1,4005dc <perderConBarril+0xc8>
  400604:	1486fff5 	bne	a0,a2,4005dc <perderConBarril+0xc8>
  400608:	3c021001 	lui	v0,0x1001
  40060c:	8c44010c 	lw	a0,268(v0)
  400610:	24030001 	li	v1,1
  400614:	24020003 	li	v0,3
  400618:	1483fff0 	bne	a0,v1,4005dc <perderConBarril+0xc8>
  40061c:	0c100466 	jal	401198 <clear_screen>
  400620:	00002825 	move	a1,zero
  400624:	24040004 	li	a0,4
  400628:	0c100420 	jal	401080 <set_color>
  40062c:	24050022 	li	a1,34
  400630:	2404000f 	li	a0,15
  400634:	0c10042e 	jal	4010b8 <set_cursor>
  400638:	3c041001 	lui	a0,0x1001
  40063c:	24840040 	addiu	a0,a0,64
  400640:	0c100458 	jal	401160 <puts>
  400644:	24020002 	li	v0,2
  400648:	1000ffe4 	b	4005dc <perderConBarril+0xc8>
  40064c:	24020003 	li	v0,3
  400650:	1065ffe2 	beq	v1,a1,4005dc <perderConBarril+0xc8>
  400654:	1000ffe8 	b	4005f8 <perderConBarril+0xe4>

00400658 <perderConMono>:
  400658:	27bdffd8 	addiu	sp,sp,-40
  40065c:	3c021001 	lui	v0,0x1001
  400660:	afb00014 	sw	s0,20(sp)
  400664:	3c101001 	lui	s0,0x1001
  400668:	8c4500e4 	lw	a1,228(v0)
  40066c:	8e030104 	lw	v1,260(s0)
  400670:	afbf0024 	sw	ra,36(sp)
  400674:	00a3102a 	slt	v0,a1,v1
  400678:	afb30020 	sw	s3,32(sp)
  40067c:	afb2001c 	sw	s2,28(sp)
  400680:	afb10018 	sw	s1,24(sp)
  400684:	1440000c 	bnez	v0,4006b8 <perderConMono+0x60>
  400688:	24640004 	addiu	a0,v1,4
  40068c:	0085202a 	slt	a0,a0,a1
  400690:	14800009 	bnez	a0,4006b8 <perderConMono+0x60>
  400694:	3c041001 	lui	a0,0x1001
  400698:	3c061001 	lui	a2,0x1001
  40069c:	8c840108 	lw	a0,264(a0)
  4006a0:	8cc700e0 	lw	a3,224(a2)
  4006a4:	2486fffe 	addiu	a2,a0,-2
  4006a8:	00e6302a 	slt	a2,a3,a2
  4006ac:	14c00002 	bnez	a2,4006b8 <perderConMono+0x60>
  4006b0:	0087202a 	slt	a0,a0,a3
  4006b4:	1080000f 	beqz	a0,4006f4 <perderConMono+0x9c>
  4006b8:	24a40001 	addiu	a0,a1,1
  4006bc:	0083202a 	slt	a0,a0,v1
  4006c0:	1480007a 	bnez	a0,4008ac <perderConMono+0x254>
  4006c4:	24640003 	addiu	a0,v1,3
  4006c8:	0085202a 	slt	a0,a0,a1
  4006cc:	14800077 	bnez	a0,4008ac <perderConMono+0x254>
  4006d0:	3c041001 	lui	a0,0x1001
  4006d4:	3c061001 	lui	a2,0x1001
  4006d8:	8c8400e0 	lw	a0,224(a0)
  4006dc:	8cc60108 	lw	a2,264(a2)
  4006e0:	00c4382a 	slt	a3,a2,a0
  4006e4:	14e00074 	bnez	a3,4008b8 <perderConMono+0x260>
  4006e8:	24c6fffe 	addiu	a2,a2,-2
  4006ec:	0086202a 	slt	a0,a0,a2
  4006f0:	14800071 	bnez	a0,4008b8 <perderConMono+0x260>
  4006f4:	3c111001 	lui	s1,0x1001
  4006f8:	8e24010c 	lw	a0,268(s1)
  4006fc:	28840002 	slti	a0,a0,2
  400700:	1480003b 	bnez	a0,4007f0 <perderConMono+0x198>
  400704:	3c021001 	lui	v0,0x1001
  400708:	904400e3 	lbu	a0,227(v0)
  40070c:	30a500ff 	andi	a1,a1,0xff
  400710:	0c10042e 	jal	4010b8 <set_cursor>
  400714:	3c041001 	lui	a0,0x1001
  400718:	2484003c 	addiu	a0,a0,60
  40071c:	0c100458 	jal	401160 <puts>
  400720:	3c021001 	lui	v0,0x1001
  400724:	9045011f 	lbu	a1,287(v0)
  400728:	3c021001 	lui	v0,0x1001
  40072c:	904400eb 	lbu	a0,235(v0)
  400730:	3c131001 	lui	s3,0x1001
  400734:	0c10042e 	jal	4010b8 <set_cursor>
  400738:	3c121001 	lui	s2,0x1001
  40073c:	2664000c 	addiu	a0,s3,12
  400740:	0c100458 	jal	401160 <puts>
  400744:	92050107 	lbu	a1,263(s0)
  400748:	9244010b 	lbu	a0,267(s2)
  40074c:	0c10042e 	jal	4010b8 <set_cursor>
  400750:	3c041001 	lui	a0,0x1001
  400754:	24840000 	addiu	a0,a0,0
  400758:	0c100458 	jal	401160 <puts>
  40075c:	8e440108 	lw	a0,264(s2)
  400760:	92050107 	lbu	a1,263(s0)
  400764:	2484ffff 	addiu	a0,a0,-1
  400768:	308400ff 	andi	a0,a0,0xff
  40076c:	0c10042e 	jal	4010b8 <set_cursor>
  400770:	3c041001 	lui	a0,0x1001
  400774:	24840008 	addiu	a0,a0,8
  400778:	0c100458 	jal	401160 <puts>
  40077c:	8e440108 	lw	a0,264(s2)
  400780:	92050107 	lbu	a1,263(s0)
  400784:	2484ffff 	addiu	a0,a0,-1
  400788:	308400ff 	andi	a0,a0,0xff
  40078c:	0c10042e 	jal	4010b8 <set_cursor>
  400790:	2664000c 	addiu	a0,s3,12
  400794:	0c100458 	jal	401160 <puts>
  400798:	8e22010c 	lw	v0,268(s1)
  40079c:	00002825 	move	a1,zero
  4007a0:	2442ffff 	addiu	v0,v0,-1
  4007a4:	24040007 	li	a0,7
  4007a8:	ae22010c 	sw	v0,268(s1)
  4007ac:	0c100420 	jal	401080 <set_color>
  4007b0:	24050001 	li	a1,1
  4007b4:	2404001c 	li	a0,28
  4007b8:	0c10042e 	jal	4010b8 <set_cursor>
  4007bc:	3c041001 	lui	a0,0x1001
  4007c0:	24840030 	addiu	a0,a0,48
  4007c4:	0c100458 	jal	401160 <puts>
  4007c8:	2404002d 	li	a0,45
  4007cc:	0c1003e6 	jal	400f98 <delay_ms>
  4007d0:	24020001 	li	v0,1
  4007d4:	8fbf0024 	lw	ra,36(sp)
  4007d8:	8fb30020 	lw	s3,32(sp)
  4007dc:	8fb2001c 	lw	s2,28(sp)
  4007e0:	8fb10018 	lw	s1,24(sp)
  4007e4:	8fb00014 	lw	s0,20(sp)
  4007e8:	27bd0028 	addiu	sp,sp,40
  4007ec:	03e00008 	jr	ra
  4007f0:	1440000c 	bnez	v0,400824 <perderConMono+0x1cc>
  4007f4:	24620004 	addiu	v0,v1,4
  4007f8:	0045102a 	slt	v0,v0,a1
  4007fc:	14400009 	bnez	v0,400824 <perderConMono+0x1cc>
  400800:	3c021001 	lui	v0,0x1001
  400804:	3c041001 	lui	a0,0x1001
  400808:	8c420108 	lw	v0,264(v0)
  40080c:	8c8600e0 	lw	a2,224(a0)
  400810:	2444fffe 	addiu	a0,v0,-2
  400814:	00c4202a 	slt	a0,a2,a0
  400818:	14800002 	bnez	a0,400824 <perderConMono+0x1cc>
  40081c:	0046102a 	slt	v0,v0,a2
  400820:	10400011 	beqz	v0,400868 <perderConMono+0x210>
  400824:	24a40001 	addiu	a0,a1,1
  400828:	0083202a 	slt	a0,a0,v1
  40082c:	24020003 	li	v0,3
  400830:	1480ffe8 	bnez	a0,4007d4 <perderConMono+0x17c>
  400834:	24630003 	addiu	v1,v1,3
  400838:	0065182a 	slt	v1,v1,a1
  40083c:	1460ffe5 	bnez	v1,4007d4 <perderConMono+0x17c>
  400840:	3c021001 	lui	v0,0x1001
  400844:	8c4300e0 	lw	v1,224(v0)
  400848:	3c021001 	lui	v0,0x1001
  40084c:	8c440108 	lw	a0,264(v0)
  400850:	24020003 	li	v0,3
  400854:	0083282a 	slt	a1,a0,v1
  400858:	14a0ffde 	bnez	a1,4007d4 <perderConMono+0x17c>
  40085c:	2484fffe 	addiu	a0,a0,-2
  400860:	0064182a 	slt	v1,v1,a0
  400864:	1460ffdb 	bnez	v1,4007d4 <perderConMono+0x17c>
  400868:	3c021001 	lui	v0,0x1001
  40086c:	8c44010c 	lw	a0,268(v0)
  400870:	24030001 	li	v1,1
  400874:	24020003 	li	v0,3
  400878:	1483ffd6 	bne	a0,v1,4007d4 <perderConMono+0x17c>
  40087c:	0c100466 	jal	401198 <clear_screen>
  400880:	00002825 	move	a1,zero
  400884:	24040004 	li	a0,4
  400888:	0c100420 	jal	401080 <set_color>
  40088c:	24050022 	li	a1,34
  400890:	2404000f 	li	a0,15
  400894:	0c10042e 	jal	4010b8 <set_cursor>
  400898:	3c041001 	lui	a0,0x1001
  40089c:	24840040 	addiu	a0,a0,64
  4008a0:	0c100458 	jal	401160 <puts>
  4008a4:	24020002 	li	v0,2
  4008a8:	1000ffca 	b	4007d4 <perderConMono+0x17c>
  4008ac:	1040ffd1 	beqz	v0,4007f4 <perderConMono+0x19c>
  4008b0:	24020003 	li	v0,3
  4008b4:	1000ffc7 	b	4007d4 <perderConMono+0x17c>
  4008b8:	1440ffe1 	bnez	v0,400840 <perderConMono+0x1e8>
  4008bc:	1000ffcd 	b	4007f4 <perderConMono+0x19c>

004008c0 <ganar>:
  4008c0:	3c021001 	lui	v0,0x1001
  4008c4:	8c4200e4 	lw	v0,228(v0)
  4008c8:	2443ffb4 	addiu	v1,v0,-76
  4008cc:	2c630002 	sltiu	v1,v1,2
  4008d0:	10600005 	beqz	v1,4008e8 <ganar+0x28>
  4008d4:	3c031001 	lui	v1,0x1001
  4008d8:	8c6300e0 	lw	v1,224(v1)
  4008dc:	2463ffe6 	addiu	v1,v1,-26
  4008e0:	2c630003 	sltiu	v1,v1,3
  4008e4:	14600009 	bnez	v1,40090c <ganar+0x4c>
  4008e8:	2442ffb5 	addiu	v0,v0,-75
  4008ec:	2c430002 	sltiu	v1,v0,2
  4008f0:	24020003 	li	v0,3
  4008f4:	10600019 	beqz	v1,40095c <ganar+0x9c>
  4008f8:	3c031001 	lui	v1,0x1001
  4008fc:	8c6300e0 	lw	v1,224(v1)
  400900:	2463ffe6 	addiu	v1,v1,-26
  400904:	2c630003 	sltiu	v1,v1,3
  400908:	10600014 	beqz	v1,40095c <ganar+0x9c>
  40090c:	3c021001 	lui	v0,0x1001
  400910:	8c43010c 	lw	v1,268(v0)
  400914:	24020003 	li	v0,3
  400918:	18600010 	blez	v1,40095c <ganar+0x9c>
  40091c:	27bdffe8 	addiu	sp,sp,-24
  400920:	afbf0014 	sw	ra,20(sp)
  400924:	0c100466 	jal	401198 <clear_screen>
  400928:	00002825 	move	a1,zero
  40092c:	24040002 	li	a0,2
  400930:	0c100420 	jal	401080 <set_color>
  400934:	24050022 	li	a1,34
  400938:	2404000f 	li	a0,15
  40093c:	0c10042e 	jal	4010b8 <set_cursor>
  400940:	3c041001 	lui	a0,0x1001
  400944:	2484004c 	addiu	a0,a0,76
  400948:	0c100458 	jal	401160 <puts>
  40094c:	8fbf0014 	lw	ra,20(sp)
  400950:	24020001 	li	v0,1
  400954:	27bd0018 	addiu	sp,sp,24
  400958:	03e00008 	jr	ra
  40095c:	03e00008 	jr	ra

00400960 <main>:
  400960:	27bdffb0 	addiu	sp,sp,-80
  400964:	afb40038 	sw	s4,56(sp)
  400968:	afb1002c 	sw	s1,44(sp)
  40096c:	afbf004c 	sw	ra,76(sp)
  400970:	afbe0048 	sw	s8,72(sp)
  400974:	afb70044 	sw	s7,68(sp)
  400978:	afb60040 	sw	s6,64(sp)
  40097c:	afb5003c 	sw	s5,60(sp)
  400980:	afb30034 	sw	s3,52(sp)
  400984:	afb20030 	sw	s2,48(sp)
  400988:	afb00028 	sw	s0,40(sp)
  40098c:	3c111001 	lui	s1,0x1001
  400990:	0c100466 	jal	401198 <clear_screen>
  400994:	24140001 	li	s4,1
  400998:	3c151001 	lui	s5,0x1001
  40099c:	26b500bc 	addiu	s5,s5,188
  4009a0:	3c101001 	lui	s0,0x1001
  4009a4:	2404001e 	li	a0,30
  4009a8:	ae0400fc 	sw	a0,252(s0)
  4009ac:	3c1e1001 	lui	s8,0x1001
  4009b0:	24040014 	li	a0,20
  4009b4:	3c161001 	lui	s6,0x1001
  4009b8:	3c121001 	lui	s2,0x1001
  4009bc:	3c131001 	lui	s3,0x1001
  4009c0:	afc400f8 	sw	a0,248(s8)
  4009c4:	aec400f0 	sw	a0,240(s6)
  4009c8:	24040032 	li	a0,50
  4009cc:	ae6400ec 	sw	a0,236(s3)
  4009d0:	8e440104 	lw	a0,260(s2)
  4009d4:	3c081001 	lui	t0,0x1001
  4009d8:	2403001c 	li	v1,28
  4009dc:	3c021001 	lui	v0,0x1001
  4009e0:	3c171001 	lui	s7,0x1001
  4009e4:	24050012 	li	a1,18
  4009e8:	2484fffd 	addiu	a0,a0,-3
  4009ec:	3c071001 	lui	a3,0x1001
  4009f0:	3c061001 	lui	a2,0x1001
  4009f4:	ad04011c 	sw	a0,284(t0)
  4009f8:	ac430100 	sw	v1,256(v0)
  4009fc:	afa20020 	sw	v0,32(sp)
  400a00:	aee500f4 	sw	a1,244(s7)
  400a04:	24020001 	li	v0,1
  400a08:	00002825 	move	a1,zero
  400a0c:	24040004 	li	a0,4
  400a10:	ace300e8 	sw	v1,232(a3)
  400a14:	acc300e0 	sw	v1,224(a2)
  400a18:	afa7001c 	sw	a3,28(sp)
  400a1c:	afa80018 	sw	t0,24(sp)
  400a20:	afa60014 	sw	a2,20(sp)
  400a24:	ae2200e4 	sw	v0,228(s1)
  400a28:	0c100420 	jal	401080 <set_color>
  400a2c:	24050001 	li	a1,1
  400a30:	2404001d 	li	a0,29
  400a34:	0c10042e 	jal	4010b8 <set_cursor>
  400a38:	3c041001 	lui	a0,0x1001
  400a3c:	24840058 	addiu	a0,a0,88
  400a40:	0c100458 	jal	401160 <puts>
  400a44:	00002825 	move	a1,zero
  400a48:	24040007 	li	a0,7
  400a4c:	0c100420 	jal	401080 <set_color>
  400a50:	2405004c 	li	a1,76
  400a54:	2404001c 	li	a0,28
  400a58:	0c10042e 	jal	4010b8 <set_cursor>
  400a5c:	3c041001 	lui	a0,0x1001
  400a60:	248400a8 	addiu	a0,a0,168
  400a64:	0c100458 	jal	401160 <puts>
  400a68:	00002825 	move	a1,zero
  400a6c:	24040007 	li	a0,7
  400a70:	0c100420 	jal	401080 <set_color>
  400a74:	2405004c 	li	a1,76
  400a78:	2404001b 	li	a0,27
  400a7c:	0c10042e 	jal	4010b8 <set_cursor>
  400a80:	3c041001 	lui	a0,0x1001
  400a84:	248400ac 	addiu	a0,a0,172
  400a88:	0c100458 	jal	401160 <puts>
  400a8c:	00002825 	move	a1,zero
  400a90:	24040007 	li	a0,7
  400a94:	0c100420 	jal	401080 <set_color>
  400a98:	2405004d 	li	a1,77
  400a9c:	2404001a 	li	a0,26
  400aa0:	0c10042e 	jal	4010b8 <set_cursor>
  400aa4:	3c041001 	lui	a0,0x1001
  400aa8:	248400b0 	addiu	a0,a0,176
  400aac:	0c100458 	jal	401160 <puts>
  400ab0:	00002825 	move	a1,zero
  400ab4:	24040007 	li	a0,7
  400ab8:	0c100420 	jal	401080 <set_color>
  400abc:	3c031001 	lui	v1,0x1001
  400ac0:	9064010b 	lbu	a0,267(v1)
  400ac4:	92450107 	lbu	a1,263(s2)
  400ac8:	afa30010 	sw	v1,16(sp)
  400acc:	0c10042e 	jal	4010b8 <set_cursor>
  400ad0:	3c041001 	lui	a0,0x1001
  400ad4:	24840010 	addiu	a0,a0,16
  400ad8:	0c100458 	jal	401160 <puts>
  400adc:	00002825 	move	a1,zero
  400ae0:	24040007 	li	a0,7
  400ae4:	0c100420 	jal	401080 <set_color>
  400ae8:	8fa30010 	lw	v1,16(sp)
  400aec:	92450107 	lbu	a1,263(s2)
  400af0:	8c640108 	lw	a0,264(v1)
  400af4:	2484ffff 	addiu	a0,a0,-1
  400af8:	308400ff 	andi	a0,a0,0xff
  400afc:	0c10042e 	jal	4010b8 <set_cursor>
  400b00:	3c041001 	lui	a0,0x1001
  400b04:	24840018 	addiu	a0,a0,24
  400b08:	0c100458 	jal	401160 <puts>
  400b0c:	00002825 	move	a1,zero
  400b10:	24040007 	li	a0,7
  400b14:	0c100420 	jal	401080 <set_color>
  400b18:	8fa30010 	lw	v1,16(sp)
  400b1c:	92450107 	lbu	a1,263(s2)
  400b20:	8c640108 	lw	a0,264(v1)
  400b24:	3c121001 	lui	s2,0x1001
  400b28:	2484ffff 	addiu	a0,a0,-1
  400b2c:	308400ff 	andi	a0,a0,0xff
  400b30:	0c10042e 	jal	4010b8 <set_cursor>
  400b34:	3c041001 	lui	a0,0x1001
  400b38:	24840020 	addiu	a0,a0,32
  400b3c:	0c100458 	jal	401160 <puts>
  400b40:	00002825 	move	a1,zero
  400b44:	24040007 	li	a0,7
  400b48:	0c100420 	jal	401080 <set_color>
  400b4c:	8fa20020 	lw	v0,32(sp)
  400b50:	920500ff 	lbu	a1,255(s0)
  400b54:	90440103 	lbu	a0,259(v0)
  400b58:	afa20010 	sw	v0,16(sp)
  400b5c:	0c10042e 	jal	4010b8 <set_cursor>
  400b60:	3c041001 	lui	a0,0x1001
  400b64:	248400b4 	addiu	a0,a0,180
  400b68:	0c100458 	jal	401160 <puts>
  400b6c:	00002825 	move	a1,zero
  400b70:	24040007 	li	a0,7
  400b74:	0c100420 	jal	401080 <set_color>
  400b78:	8fa20010 	lw	v0,16(sp)
  400b7c:	920500ff 	lbu	a1,255(s0)
  400b80:	8c440100 	lw	a0,256(v0)
  400b84:	3c101001 	lui	s0,0x1001
  400b88:	2484ffff 	addiu	a0,a0,-1
  400b8c:	308400ff 	andi	a0,a0,0xff
  400b90:	0c10042e 	jal	4010b8 <set_cursor>
  400b94:	3c041001 	lui	a0,0x1001
  400b98:	248400b8 	addiu	a0,a0,184
  400b9c:	0c100458 	jal	401160 <puts>
  400ba0:	00002825 	move	a1,zero
  400ba4:	24040007 	li	a0,7
  400ba8:	0c100420 	jal	401080 <set_color>
  400bac:	92e500f7 	lbu	a1,247(s7)
  400bb0:	93c400fb 	lbu	a0,251(s8)
  400bb4:	0c10042e 	jal	4010b8 <set_cursor>
  400bb8:	02a02025 	move	a0,s5
  400bbc:	0c100458 	jal	401160 <puts>
  400bc0:	00002825 	move	a1,zero
  400bc4:	24040007 	li	a0,7
  400bc8:	0c100420 	jal	401080 <set_color>
  400bcc:	8fc400f8 	lw	a0,248(s8)
  400bd0:	92e500f7 	lbu	a1,247(s7)
  400bd4:	2484ffff 	addiu	a0,a0,-1
  400bd8:	308400ff 	andi	a0,a0,0xff
  400bdc:	0c10042e 	jal	4010b8 <set_cursor>
  400be0:	260400c4 	addiu	a0,s0,196
  400be4:	0c100458 	jal	401160 <puts>
  400be8:	00002825 	move	a1,zero
  400bec:	24040007 	li	a0,7
  400bf0:	0c100420 	jal	401080 <set_color>
  400bf4:	926500ef 	lbu	a1,239(s3)
  400bf8:	92c400f3 	lbu	a0,243(s6)
  400bfc:	0c10042e 	jal	4010b8 <set_cursor>
  400c00:	02a02025 	move	a0,s5
  400c04:	0c100458 	jal	401160 <puts>
  400c08:	00002825 	move	a1,zero
  400c0c:	24040007 	li	a0,7
  400c10:	0c100420 	jal	401080 <set_color>
  400c14:	8ec400f0 	lw	a0,240(s6)
  400c18:	926500ef 	lbu	a1,239(s3)
  400c1c:	2484ffff 	addiu	a0,a0,-1
  400c20:	308400ff 	andi	a0,a0,0xff
  400c24:	0c10042e 	jal	4010b8 <set_cursor>
  400c28:	260400c4 	addiu	a0,s0,196
  400c2c:	0c100458 	jal	401160 <puts>
  400c30:	00002825 	move	a1,zero
  400c34:	24040007 	li	a0,7
  400c38:	0c100420 	jal	401080 <set_color>
  400c3c:	8fa80018 	lw	t0,24(sp)
  400c40:	8fa7001c 	lw	a3,28(sp)
  400c44:	9105011f 	lbu	a1,287(t0)
  400c48:	90e400eb 	lbu	a0,235(a3)
  400c4c:	0c10042e 	jal	4010b8 <set_cursor>
  400c50:	3c041001 	lui	a0,0x1001
  400c54:	24840034 	addiu	a0,a0,52
  400c58:	0c100458 	jal	401160 <puts>
  400c5c:	00002825 	move	a1,zero
  400c60:	24040007 	li	a0,7
  400c64:	0c100420 	jal	401080 <set_color>
  400c68:	24050001 	li	a1,1
  400c6c:	2404001c 	li	a0,28
  400c70:	0c10042e 	jal	4010b8 <set_cursor>
  400c74:	26440030 	addiu	a0,s2,48
  400c78:	0c100458 	jal	401160 <puts>
  400c7c:	00002825 	move	a1,zero
  400c80:	24040004 	li	a0,4
  400c84:	0c100420 	jal	401080 <set_color>
  400c88:	2405004c 	li	a1,76
  400c8c:	24040014 	li	a0,20
  400c90:	0c10042e 	jal	4010b8 <set_cursor>
  400c94:	3c021001 	lui	v0,0x1001
  400c98:	8fa60014 	lw	a2,20(sp)
  400c9c:	8c42010c 	lw	v0,268(v0)
  400ca0:	24030003 	li	v1,3
  400ca4:	00c08025 	move	s0,a2
  400ca8:	14430030 	bne	v0,v1,400d6c <main+0x40c>
  400cac:	3c041001 	lui	a0,0x1001
  400cb0:	248400c8 	addiu	a0,a0,200
  400cb4:	0c100458 	jal	401160 <puts>
  400cb8:	0c1003f1 	jal	400fc4 <keypad_init>
  400cbc:	3c131001 	lui	s3,0x1001
  400cc0:	24040064 	li	a0,100
  400cc4:	0c1003e6 	jal	400f98 <delay_ms>
  400cc8:	3c161001 	lui	s6,0x1001
  400ccc:	267e003c 	addiu	s8,s3,60
  400cd0:	0c1003f5 	jal	400fd4 <keypad_getkey>
  400cd4:	24030002 	li	v1,2
  400cd8:	1443002d 	bne	v0,v1,400d90 <main+0x430>
  400cdc:	8e2500e4 	lw	a1,228(s1)
  400ce0:	28a2004c 	slti	v0,a1,76
  400ce4:	1040000d 	beqz	v0,400d1c <main+0x3bc>
  400ce8:	920400e3 	lbu	a0,227(s0)
  400cec:	30a500ff 	andi	a1,a1,0xff
  400cf0:	0c10042e 	jal	4010b8 <set_cursor>
  400cf4:	2664003c 	addiu	a0,s3,60
  400cf8:	0c100458 	jal	401160 <puts>
  400cfc:	8e2500e4 	lw	a1,228(s1)
  400d00:	24a50001 	addiu	a1,a1,1
  400d04:	920400e3 	lbu	a0,227(s0)
  400d08:	ae2500e4 	sw	a1,228(s1)
  400d0c:	30a500ff 	andi	a1,a1,0xff
  400d10:	0c10042e 	jal	4010b8 <set_cursor>
  400d14:	26440030 	addiu	a0,s2,48
  400d18:	0c100458 	jal	401160 <puts>
  400d1c:	0c100004 	jal	400010 <moverMono>
  400d20:	0c100059 	jal	400164 <moverBarril>
  400d24:	0c1000b3 	jal	4002cc <perderConPlanta>
  400d28:	1054ff1d 	beq	v0,s4,4009a0 <main+0x40>
  400d2c:	0c1000b3 	jal	4002cc <perderConPlanta>
  400d30:	24170002 	li	s7,2
  400d34:	1057008b 	beq	v0,s7,400f64 <main+0x604>
  400d38:	0c100145 	jal	400514 <perderConBarril>
  400d3c:	1054ff18 	beq	v0,s4,4009a0 <main+0x40>
  400d40:	0c100145 	jal	400514 <perderConBarril>
  400d44:	10570087 	beq	v0,s7,400f64 <main+0x604>
  400d48:	0c100196 	jal	400658 <perderConMono>
  400d4c:	1054ff12 	beq	v0,s4,400998 <main+0x38>
  400d50:	0c100196 	jal	400658 <perderConMono>
  400d54:	10570083 	beq	v0,s7,400f64 <main+0x604>
  400d58:	0c100230 	jal	4008c0 <ganar>
  400d5c:	10540081 	beq	v0,s4,400f64 <main+0x604>
  400d60:	2404002d 	li	a0,45
  400d64:	0c1003e6 	jal	400f98 <delay_ms>
  400d68:	1000ffd9 	b	400cd0 <main+0x370>
  400d6c:	24030002 	li	v1,2
  400d70:	14430003 	bne	v0,v1,400d80 <main+0x420>
  400d74:	3c041001 	lui	a0,0x1001
  400d78:	248400cc 	addiu	a0,a0,204
  400d7c:	1000ffcd 	b	400cb4 <main+0x354>
  400d80:	1454ffcd 	bne	v0,s4,400cb8 <main+0x358>
  400d84:	3c041001 	lui	a0,0x1001
  400d88:	248400d0 	addiu	a0,a0,208
  400d8c:	1000ffc9 	b	400cb4 <main+0x354>
  400d90:	10540024 	beq	v0,s4,400e24 <main+0x4c4>
  400d94:	24030008 	li	v1,8
  400d98:	1043002d 	beq	v0,v1,400e50 <main+0x4f0>
  400d9c:	24030004 	li	v1,4
  400da0:	10430045 	beq	v0,v1,400eb8 <main+0x558>
  400da4:	24030003 	li	v1,3
  400da8:	1443ffdc 	bne	v0,v1,400d1c <main+0x3bc>
  400dac:	8e2500e4 	lw	a1,228(s1)
  400db0:	28a20002 	slti	v0,a1,2
  400db4:	1440ffd9 	bnez	v0,400d1c <main+0x3bc>
  400db8:	920400e3 	lbu	a0,227(s0)
  400dbc:	30a500ff 	andi	a1,a1,0xff
  400dc0:	0c10042e 	jal	4010b8 <set_cursor>
  400dc4:	2664003c 	addiu	a0,s3,60
  400dc8:	0c100458 	jal	401160 <puts>
  400dcc:	8e0400e0 	lw	a0,224(s0)
  400dd0:	922500e7 	lbu	a1,231(s1)
  400dd4:	2484fffb 	addiu	a0,a0,-5
  400dd8:	ae0400e0 	sw	a0,224(s0)
  400ddc:	308400ff 	andi	a0,a0,0xff
  400de0:	0c10042e 	jal	4010b8 <set_cursor>
  400de4:	26440030 	addiu	a0,s2,48
  400de8:	0c100458 	jal	401160 <puts>
  400dec:	922500e7 	lbu	a1,231(s1)
  400df0:	920400e3 	lbu	a0,227(s0)
  400df4:	0c10042e 	jal	4010b8 <set_cursor>
  400df8:	2664003c 	addiu	a0,s3,60
  400dfc:	0c100458 	jal	401160 <puts>
  400e00:	8e2500e4 	lw	a1,228(s1)
  400e04:	8e0400e0 	lw	a0,224(s0)
  400e08:	24a5fff9 	addiu	a1,a1,-7
  400e0c:	ae2500e4 	sw	a1,228(s1)
  400e10:	1ca00052 	bgtz	a1,400f5c <main+0x5fc>
  400e14:	24020001 	li	v0,1
  400e18:	ae2200e4 	sw	v0,228(s1)
  400e1c:	24050001 	li	a1,1
  400e20:	10000043 	b	400f30 <main+0x5d0>
  400e24:	8e2500e4 	lw	a1,228(s1)
  400e28:	28a20002 	slti	v0,a1,2
  400e2c:	1440ffbb 	bnez	v0,400d1c <main+0x3bc>
  400e30:	920400e3 	lbu	a0,227(s0)
  400e34:	30a500ff 	andi	a1,a1,0xff
  400e38:	0c10042e 	jal	4010b8 <set_cursor>
  400e3c:	2664003c 	addiu	a0,s3,60
  400e40:	0c100458 	jal	401160 <puts>
  400e44:	8e2500e4 	lw	a1,228(s1)
  400e48:	24a5ffff 	addiu	a1,a1,-1
  400e4c:	1000ffad 	b	400d04 <main+0x3a4>
  400e50:	922500e7 	lbu	a1,231(s1)
  400e54:	920400e3 	lbu	a0,227(s0)
  400e58:	0c10042e 	jal	4010b8 <set_cursor>
  400e5c:	2664003c 	addiu	a0,s3,60
  400e60:	0c100458 	jal	401160 <puts>
  400e64:	8e0400e0 	lw	a0,224(s0)
  400e68:	922500e7 	lbu	a1,231(s1)
  400e6c:	2484fffb 	addiu	a0,a0,-5
  400e70:	ae0400e0 	sw	a0,224(s0)
  400e74:	308400ff 	andi	a0,a0,0xff
  400e78:	0c10042e 	jal	4010b8 <set_cursor>
  400e7c:	26440030 	addiu	a0,s2,48
  400e80:	0c100458 	jal	401160 <puts>
  400e84:	8ec400d4 	lw	a0,212(s6)
  400e88:	0c1003e6 	jal	400f98 <delay_ms>
  400e8c:	920400e3 	lbu	a0,227(s0)
  400e90:	922500e7 	lbu	a1,231(s1)
  400e94:	0c10042e 	jal	4010b8 <set_cursor>
  400e98:	2664003c 	addiu	a0,s3,60
  400e9c:	0c100458 	jal	401160 <puts>
  400ea0:	8e0400e0 	lw	a0,224(s0)
  400ea4:	922500e7 	lbu	a1,231(s1)
  400ea8:	24840005 	addiu	a0,a0,5
  400eac:	ae0400e0 	sw	a0,224(s0)
  400eb0:	308400ff 	andi	a0,a0,0xff
  400eb4:	1000ff96 	b	400d10 <main+0x3b0>
  400eb8:	8e2500e4 	lw	a1,228(s1)
  400ebc:	28a2004c 	slti	v0,a1,76
  400ec0:	1040ff96 	beqz	v0,400d1c <main+0x3bc>
  400ec4:	920400e3 	lbu	a0,227(s0)
  400ec8:	30a500ff 	andi	a1,a1,0xff
  400ecc:	0c10042e 	jal	4010b8 <set_cursor>
  400ed0:	2664003c 	addiu	a0,s3,60
  400ed4:	0c100458 	jal	401160 <puts>
  400ed8:	8e0400e0 	lw	a0,224(s0)
  400edc:	922500e7 	lbu	a1,231(s1)
  400ee0:	2484fffb 	addiu	a0,a0,-5
  400ee4:	ae0400e0 	sw	a0,224(s0)
  400ee8:	308400ff 	andi	a0,a0,0xff
  400eec:	0c10042e 	jal	4010b8 <set_cursor>
  400ef0:	26440030 	addiu	a0,s2,48
  400ef4:	0c100458 	jal	401160 <puts>
  400ef8:	922500e7 	lbu	a1,231(s1)
  400efc:	920400e3 	lbu	a0,227(s0)
  400f00:	0c10042e 	jal	4010b8 <set_cursor>
  400f04:	2664003c 	addiu	a0,s3,60
  400f08:	0c100458 	jal	401160 <puts>
  400f0c:	8e2500e4 	lw	a1,228(s1)
  400f10:	8e0400e0 	lw	a0,224(s0)
  400f14:	24a50007 	addiu	a1,a1,7
  400f18:	28a2004d 	slti	v0,a1,77
  400f1c:	ae2500e4 	sw	a1,228(s1)
  400f20:	1440000e 	bnez	v0,400f5c <main+0x5fc>
  400f24:	2402004c 	li	v0,76
  400f28:	ae2200e4 	sw	v0,228(s1)
  400f2c:	2405004c 	li	a1,76
  400f30:	308400ff 	andi	a0,a0,0xff
  400f34:	0c10042e 	jal	4010b8 <set_cursor>
  400f38:	26440030 	addiu	a0,s2,48
  400f3c:	0c100458 	jal	401160 <puts>
  400f40:	8ec400d4 	lw	a0,212(s6)
  400f44:	0c1003e6 	jal	400f98 <delay_ms>
  400f48:	920400e3 	lbu	a0,227(s0)
  400f4c:	922500e7 	lbu	a1,231(s1)
  400f50:	0c10042e 	jal	4010b8 <set_cursor>
  400f54:	03c02025 	move	a0,s8
  400f58:	1000ffd0 	b	400e9c <main+0x53c>
  400f5c:	30a500ff 	andi	a1,a1,0xff
  400f60:	1000fff3 	b	400f30 <main+0x5d0>
  400f64:	8fbf004c 	lw	ra,76(sp)
  400f68:	8fbe0048 	lw	s8,72(sp)
  400f6c:	8fb70044 	lw	s7,68(sp)
  400f70:	8fb60040 	lw	s6,64(sp)
  400f74:	8fb5003c 	lw	s5,60(sp)
  400f78:	8fb40038 	lw	s4,56(sp)
  400f7c:	8fb30034 	lw	s3,52(sp)
  400f80:	8fb20030 	lw	s2,48(sp)
  400f84:	8fb1002c 	lw	s1,44(sp)
  400f88:	8fb00028 	lw	s0,40(sp)
  400f8c:	00001025 	move	v0,zero
  400f90:	27bd0050 	addiu	sp,sp,80
  400f94:	03e00008 	jr	ra

00400f98 <delay_ms>:
  400f98:	3c08ffff 	lui	t0,0xffff
  400f9c:	8d090008 	lw	t1,8(t0)
  400fa0:	00000000 	nop
  400fa4:	01244820 	add	t1,t1,a0

00400fa8 <.dm_loop>:
  400fa8:	8d0a0008 	lw	t2,8(t0)
  400fac:	00000000 	nop
  400fb0:	0149582b 	sltu	t3,t2,t1
  400fb4:	1560fffc 	bnez	t3,400fa8 <.dm_loop>
  400fb8:	00000000 	nop
  400fbc:	03e00008 	jr	ra
  400fc0:	00000000 	nop

00400fc4 <keypad_init>:
  400fc4:	3c081001 	lui	t0,0x1001
  400fc8:	ad000110 	sw	zero,272(t0)
  400fcc:	03e00008 	jr	ra
  400fd0:	00000000 	nop

00400fd4 <keypad_getkey>:
  400fd4:	3c08ffff 	lui	t0,0xffff
  400fd8:	81080004 	lb	t0,4(t0)
  400fdc:	24090008 	li	t1,8
  400fe0:	240b0001 	li	t3,1
  400fe4:	00005025 	move	t2,zero

00400fe8 <.gk_loop>:
  400fe8:	11490018 	beq	t2,t1,40104c <.gk_end_loop>
  400fec:	00000000 	nop
  400ff0:	010b6024 	and	t4,t0,t3
  400ff4:	000b5840 	sll	t3,t3,0x1
  400ff8:	11800011 	beqz	t4,401040 <.gk_inc_loop>
  400ffc:	00000000 	nop
  401000:	3c081001 	lui	t0,0x1001
  401004:	8d080110 	lw	t0,272(t0)
  401008:	3c09ffff 	lui	t1,0xffff
  40100c:	8d290008 	lw	t1,8(t1)
  401010:	00000000 	nop
  401014:	0128582b 	sltu	t3,t1,t0
  401018:	11600002 	beqz	t3,401024 <.set_key>
  40101c:	00000000 	nop
  401020:	00001025 	move	v0,zero

00401024 <.set_key>:
  401024:	252900c8 	addiu	t1,t1,200
  401028:	3c081001 	lui	t0,0x1001
  40102c:	ad090110 	sw	t1,272(t0)
  401030:	01401025 	move	v0,t2
  401034:	24420001 	addiu	v0,v0,1
  401038:	03e00008 	jr	ra
  40103c:	00000000 	nop

00401040 <.gk_inc_loop>:
  401040:	254a0001 	addiu	t2,t2,1
  401044:	081003fa 	j	400fe8 <.gk_loop>
  401048:	00000000 	nop

0040104c <.gk_end_loop>:
  40104c:	00001025 	move	v0,zero
  401050:	03e00008 	jr	ra
  401054:	00000000 	nop

00401058 <divide>:
  401058:	acc00000 	sw	zero,0(a2)
  40105c:	0085102b 	sltu	v0,a0,a1
  401060:	10400002 	beqz	v0,40106c <divide+0x14>
  401064:	ace40000 	sw	a0,0(a3)
  401068:	03e00008 	jr	ra
  40106c:	8cc20000 	lw	v0,0(a2)
  401070:	00852023 	subu	a0,a0,a1
  401074:	24420001 	addiu	v0,v0,1
  401078:	acc20000 	sw	v0,0(a2)
  40107c:	1000fff7 	b	40105c <divide+0x4>

00401080 <set_color>:
  401080:	00052900 	sll	a1,a1,0x4
  401084:	3084000f 	andi	a0,a0,0xf
  401088:	00a42825 	or	a1,a1,a0
  40108c:	3c021001 	lui	v0,0x1001
  401090:	a0450122 	sb	a1,290(v0)
  401094:	03e00008 	jr	ra

00401098 <get_color>:
  401098:	3c031001 	lui	v1,0x1001
  40109c:	90620122 	lbu	v0,290(v1)
  4010a0:	3042000f 	andi	v0,v0,0xf
  4010a4:	a0820000 	sb	v0,0(a0)
  4010a8:	90620122 	lbu	v0,290(v1)
  4010ac:	00021102 	srl	v0,v0,0x4
  4010b0:	a0a20000 	sb	v0,0(a1)
  4010b4:	03e00008 	jr	ra

004010b8 <set_cursor>:
  4010b8:	2c820028 	sltiu	v0,a0,40
  4010bc:	10400006 	beqz	v0,4010d8 <set_cursor+0x20>
  4010c0:	2ca20050 	sltiu	v0,a1,80
  4010c4:	10400004 	beqz	v0,4010d8 <set_cursor+0x20>
  4010c8:	3c021001 	lui	v0,0x1001
  4010cc:	a0440121 	sb	a0,289(v0)
  4010d0:	3c021001 	lui	v0,0x1001
  4010d4:	a0450120 	sb	a1,288(v0)
  4010d8:	03e00008 	jr	ra

004010dc <put_char>:
  4010dc:	3c071001 	lui	a3,0x1001
  4010e0:	2403000a 	li	v1,10
  4010e4:	90e20121 	lbu	v0,289(a3)
  4010e8:	3c061001 	lui	a2,0x1001
  4010ec:	14830006 	bne	a0,v1,401108 <put_char+0x2c>
  4010f0:	2c430027 	sltiu	v1,v0,39
  4010f4:	10600002 	beqz	v1,401100 <put_char+0x24>
  4010f8:	24420001 	addiu	v0,v0,1
  4010fc:	a0e20121 	sb	v0,289(a3)
  401100:	a0c00120 	sb	zero,288(a2)
  401104:	03e00008 	jr	ra
  401108:	3c031001 	lui	v1,0x1001
  40110c:	90630122 	lbu	v1,290(v1)
  401110:	90c50120 	lbu	a1,288(a2)
  401114:	00031a00 	sll	v1,v1,0x8
  401118:	00642025 	or	a0,v1,a0
  40111c:	00021880 	sll	v1,v0,0x2
  401120:	00621821 	addu	v1,v1,v0
  401124:	00031900 	sll	v1,v1,0x4
  401128:	00651821 	addu	v1,v1,a1
  40112c:	00031840 	sll	v1,v1,0x1
  401130:	3408b800 	li	t0,0xb800
  401134:	01031821 	addu	v1,t0,v1
  401138:	a4640000 	sh	a0,0(v1)
  40113c:	2ca3004f 	sltiu	v1,a1,79
  401140:	10600003 	beqz	v1,401150 <put_char+0x74>
  401144:	24a50001 	addiu	a1,a1,1
  401148:	a0c50120 	sb	a1,288(a2)
  40114c:	03e00008 	jr	ra
  401150:	24420001 	addiu	v0,v0,1
  401154:	a0c00120 	sb	zero,288(a2)
  401158:	a0e20121 	sb	v0,289(a3)
  40115c:	03e00008 	jr	ra

00401160 <puts>:
  401160:	00804825 	move	t1,a0
  401164:	80840000 	lb	a0,0(a0)
  401168:	14800001 	bnez	a0,401170 <puts+0x10>
  40116c:	03e00008 	jr	ra
  401170:	27bdffe8 	addiu	sp,sp,-24
  401174:	afbf0014 	sw	ra,20(sp)
  401178:	308400ff 	andi	a0,a0,0xff
  40117c:	25290001 	addiu	t1,t1,1
  401180:	0c100437 	jal	4010dc <put_char>
  401184:	81240000 	lb	a0,0(t1)
  401188:	1480fffb 	bnez	a0,401178 <puts+0x18>
  40118c:	8fbf0014 	lw	ra,20(sp)
  401190:	27bd0018 	addiu	sp,sp,24
  401194:	03e00008 	jr	ra

00401198 <clear_screen>:
  401198:	3c021001 	lui	v0,0x1001
  40119c:	90420122 	lbu	v0,290(v0)
  4011a0:	3403b800 	li	v1,0xb800
  4011a4:	00021200 	sll	v0,v0,0x8
  4011a8:	34420020 	ori	v0,v0,0x20
  4011ac:	3404cac0 	li	a0,0xcac0
  4011b0:	a4620000 	sh	v0,0(v1)
  4011b4:	24630002 	addiu	v1,v1,2
  4011b8:	1464fffd 	bne	v1,a0,4011b0 <clear_screen+0x18>
  4011bc:	3c021001 	lui	v0,0x1001
  4011c0:	a0400121 	sb	zero,289(v0)
  4011c4:	3c021001 	lui	v0,0x1001
  4011c8:	a0400120 	sb	zero,288(v0)
  4011cc:	03e00008 	jr	ra

Desensamblado de la sección .data:

10010000 <caida-0xd4>:
10010000:	04040404 	0x4040404
10010004:	00000000 	nop
10010008:	04040404 	0x4040404
1001000c:	04000000 	bltz	zero,10010010 <clear_screen+0xfc0ee78>
10010010:	14151617 	bne	zero,s5,10015870 <chr_attr+0x574e>
10010014:	00000000 	nop
10010018:	18192223 	0x18192223
1001001c:	24000000 	li	zero,0
10010020:	25000000 	addiu	zero,t0,0
10010024:	29000000 	slti	zero,t0,0
10010028:	28000000 	slti	zero,zero,0
1001002c:	26000000 	addiu	zero,s0,0
10010030:	01020000 	0x1020000
10010034:	86000000 	lh	zero,0(s0)
10010038:	04040400 	0x4040400
1001003c:	04040000 	0x4040000
10010040:	50455244 	0x50455244
10010044:	49535445 	0x49535445
10010048:	203a4f00 	addi	k0,at,20224
1001004c:	47414e41 	c1	0x1414e41
10010050:	53544520 	0x53544520
10010054:	3a442000 	xori	a0,s2,0x2000
10010058:	05050505 	0x5050505
1001005c:	05050505 	0x5050505
10010060:	05050505 	0x5050505
10010064:	05050505 	0x5050505
10010068:	05050505 	0x5050505
1001006c:	05050505 	0x5050505
10010070:	05050505 	0x5050505
10010074:	05050505 	0x5050505
10010078:	05050505 	0x5050505
1001007c:	05050505 	0x5050505
10010080:	05050505 	0x5050505
10010084:	05050505 	0x5050505
10010088:	05050505 	0x5050505
1001008c:	05050505 	0x5050505
10010090:	05050505 	0x5050505
10010094:	05050505 	0x5050505
10010098:	05050505 	0x5050505
1001009c:	05050505 	0x5050505
100100a0:	05050505 	0x5050505
100100a4:	05050000 	0x5050000
100100a8:	06070800 	0x6070800
100100ac:	09111200 	j	14444800 <chr_attr+0x44346de>
100100b0:	13000000 	beqz	t8,100100b4 <clear_screen+0xfc0ef1c>
100100b4:	26282900 	addiu	t0,s1,10496
100100b8:	2a2b0000 	slti	t3,s1,0
100100bc:	7f838485 	0x7f838485
100100c0:	00000000 	nop
100100c4:	80818200 	lb	at,-32256(a0)
100100c8:	03030300 	0x3030300
100100cc:	03030400 	0x3030400
100100d0:	03040000 	0x3040000

100100d4 <caida>:
100100d4:	00000064 	0x64

100100d8 <m>:
100100d8:	00000bb8 	0xbb8

100100dc <semilla>:
100100dc:	000004d2 	0x4d2

100100e0 <fila>:
100100e0:	0000001c 	0x1c

100100e4 <columna>:
100100e4:	00000001 	0x1

100100e8 <filaBarril>:
100100e8:	0000001c 	0x1c

100100ec <columnaNube2>:
100100ec:	00000032 	0x32

100100f0 <filaNube2>:
100100f0:	00000014 	0x14

100100f4 <columnaNube1>:
100100f4:	00000012 	mflo	zero

100100f8 <filaNube1>:
100100f8:	00000014 	0x14

100100fc <columnaPlanta>:
100100fc:	0000001e 	0x1e

10010100 <filaPlanta>:
10010100:	0000001c 	0x1c

10010104 <columnaMono>:
10010104:	00000041 	0x41

10010108 <filaMono>:
10010108:	0000001c 	0x1c

1001010c <contadorVidas>:
1001010c:	00000003 	sra	zero,zero,0x0

10010110 <next_key_time>:
10010110:	00000000 	nop

10010114 <contadorSaltos>:
10010114:	00000000 	nop

10010118 <movMono>:
10010118:	00000000 	nop

1001011c <columnaBarril>:
1001011c:	00000000 	nop

Desensamblado de la sección .gnu.attributes:

00000000 <.gnu.attributes>:
   0:	41000000 	bc0f	4 <_gp+0x4>
   4:	0f676e75 	jal	d9db9d4 <clear_screen+0xd5da83c>
   8:	00010000 	sll	zero,at,0x0
   c:	00070401 	0x70401

Desensamblado de la sección .bss:

10010120 <cursor_col>:
	...

10010121 <cursor_row>:
	...

10010122 <chr_attr>:
	...

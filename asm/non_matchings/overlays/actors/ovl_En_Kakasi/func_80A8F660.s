glabel func_80A8F660
/* 004F0 80A8F660 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 004F4 80A8F664 AFB00028 */  sw      $s0, 0x0028($sp)
/* 004F8 80A8F668 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 004FC 80A8F66C AFBF002C */  sw      $ra, 0x002C($sp)
/* 00500 80A8F670 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 00504 80A8F674 AFA50034 */  sw      $a1, 0x0034($sp)
/* 00508 80A8F678 0C028800 */  jal     SkelAnime_GetFrameCount

/* 0050C 80A8F67C 24840214 */  addiu   $a0, $a0, 0x0214           ## $a0 = 06000214
/* 00510 80A8F680 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 00514 80A8F684 3C01C120 */  lui     $at, 0xC120                ## $at = C1200000
/* 00518 80A8F688 44819000 */  mtc1    $at, $f18                  ## $f18 = -10.00
/* 0051C 80A8F68C 468021A0 */  cvt.s.w $f6, $f4
/* 00520 80A8F690 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00524 80A8F694 24A50214 */  addiu   $a1, $a1, 0x0214           ## $a1 = 06000214
/* 00528 80A8F698 26040150 */  addiu   $a0, $s0, 0x0150           ## $a0 = 00000150
/* 0052C 80A8F69C 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00530 80A8F6A0 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 00534 80A8F6A4 4600320D */  trunc.w.s $f8, $f6
/* 00538 80A8F6A8 AFA00014 */  sw      $zero, 0x0014($sp)
/* 0053C 80A8F6AC E7B20018 */  swc1    $f18, 0x0018($sp)
/* 00540 80A8F6B0 440F4000 */  mfc1    $t7, $f8
/* 00544 80A8F6B4 00000000 */  nop
/* 00548 80A8F6B8 000FC400 */  sll     $t8, $t7, 16
/* 0054C 80A8F6BC 0018CC03 */  sra     $t9, $t8, 16
/* 00550 80A8F6C0 44995000 */  mtc1    $t9, $f10                  ## $f10 = 0.00
/* 00554 80A8F6C4 00000000 */  nop
/* 00558 80A8F6C8 46805420 */  cvt.s.w $f16, $f10
/* 0055C 80A8F6CC 0C029468 */  jal     SkelAnime_ChangeAnim

/* 00560 80A8F6D0 E7B00010 */  swc1    $f16, 0x0010($sp)
/* 00564 80A8F6D4 3C028016 */  lui     $v0, %hi(gSaveContext)
/* 00568 80A8F6D8 24084076 */  addiu   $t0, $zero, 0x4076         ## $t0 = 00004076
/* 0056C 80A8F6DC 24090006 */  addiu   $t1, $zero, 0x0006         ## $t1 = 00000006
/* 00570 80A8F6E0 2442E660 */  addiu   $v0, %lo(gSaveContext)
/* 00574 80A8F6E4 A608010E */  sh      $t0, 0x010E($s0)           ## 0000010E
/* 00578 80A8F6E8 A6090196 */  sh      $t1, 0x0196($s0)           ## 00000196
/* 0057C 80A8F6EC 8C4A0004 */  lw      $t2, 0x0004($v0)           ## 8015E664
/* 00580 80A8F6F0 3C0880A9 */  lui     $t0, %hi(func_80A8F75C)    ## $t0 = 80A90000
/* 00584 80A8F6F4 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 00588 80A8F6F8 1140000A */  beq     $t2, $zero, .L80A8F724
/* 0058C 80A8F6FC 2508F75C */  addiu   $t0, $t0, %lo(func_80A8F75C) ## $t0 = 80A8F75C
/* 00590 80A8F700 A2000194 */  sb      $zero, 0x0194($s0)         ## 00000194
/* 00594 80A8F704 904B0F40 */  lbu     $t3, 0x0F40($v0)           ## 8015F5A0
/* 00598 80A8F708 240C407A */  addiu   $t4, $zero, 0x407A         ## $t4 = 0000407A
/* 0059C 80A8F70C 240D0005 */  addiu   $t5, $zero, 0x0005         ## $t5 = 00000005
/* 005A0 80A8F710 5160000D */  beql    $t3, $zero, .L80A8F748
/* 005A4 80A8F714 AE08014C */  sw      $t0, 0x014C($s0)           ## 0000014C
/* 005A8 80A8F718 A60C010E */  sh      $t4, 0x010E($s0)           ## 0000010E
/* 005AC 80A8F71C 10000009 */  beq     $zero, $zero, .L80A8F744
/* 005B0 80A8F720 A60D0196 */  sh      $t5, 0x0196($s0)           ## 00000196
.L80A8F724:
/* 005B4 80A8F724 A20E0194 */  sb      $t6, 0x0194($s0)           ## 00000194
/* 005B8 80A8F728 904F0F40 */  lbu     $t7, 0x0F40($v0)           ## 8015F5A0
/* 005BC 80A8F72C 24184079 */  addiu   $t8, $zero, 0x4079         ## $t8 = 00004079
/* 005C0 80A8F730 24190005 */  addiu   $t9, $zero, 0x0005         ## $t9 = 00000005
/* 005C4 80A8F734 51E00004 */  beql    $t7, $zero, .L80A8F748
/* 005C8 80A8F738 AE08014C */  sw      $t0, 0x014C($s0)           ## 0000014C
/* 005CC 80A8F73C A618010E */  sh      $t8, 0x010E($s0)           ## 0000010E
/* 005D0 80A8F740 A6190196 */  sh      $t9, 0x0196($s0)           ## 00000196
.L80A8F744:
/* 005D4 80A8F744 AE08014C */  sw      $t0, 0x014C($s0)           ## 0000014C
.L80A8F748:
/* 005D8 80A8F748 8FBF002C */  lw      $ra, 0x002C($sp)
/* 005DC 80A8F74C 8FB00028 */  lw      $s0, 0x0028($sp)
/* 005E0 80A8F750 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 005E4 80A8F754 03E00008 */  jr      $ra
/* 005E8 80A8F758 00000000 */  nop
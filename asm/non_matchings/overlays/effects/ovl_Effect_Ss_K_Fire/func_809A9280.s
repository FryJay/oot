.rdata
glabel D_809A95D0
    .asciz "../z_eff_k_fire.c"
    .balign 4

glabel D_809A95E4
    .asciz "../z_eff_k_fire.c"
    .balign 4

glabel D_809A95F8
    .asciz "../z_eff_k_fire.c"
    .balign 4

.late_rodata
glabel D_809A960C
    .float 10000.0

glabel D_809A9610
    .float 3.14159274101

.text
glabel func_809A9280
/* 000D0 809A9280 27BDFF78 */  addiu   $sp, $sp, 0xFF78           ## $sp = FFFFFF78
/* 000D4 809A9284 AFBF003C */  sw      $ra, 0x003C($sp)           
/* 000D8 809A9288 AFB10038 */  sw      $s1, 0x0038($sp)           
/* 000DC 809A928C AFB00034 */  sw      $s0, 0x0034($sp)           
/* 000E0 809A9290 AFA40088 */  sw      $a0, 0x0088($sp)           
/* 000E4 809A9294 AFA5008C */  sw      $a1, 0x008C($sp)           
/* 000E8 809A9298 84CF004A */  lh      $t7, 0x004A($a2)           ## 0000004A
/* 000EC 809A929C 3C01809B */  lui     $at, %hi(D_809A960C)       ## $at = 809B0000
/* 000F0 809A92A0 C420960C */  lwc1    $f0, %lo(D_809A960C)($at)  
/* 000F4 809A92A4 448F2000 */  mtc1    $t7, $f4                   ## $f4 = 0.00
/* 000F8 809A92A8 8C910000 */  lw      $s1, 0x0000($a0)           ## 00000000
/* 000FC 809A92AC 00C08025 */  or      $s0, $a2, $zero            ## $s0 = 00000000
/* 00100 809A92B0 468021A0 */  cvt.s.w $f6, $f4                   
/* 00104 809A92B4 27A40064 */  addiu   $a0, $sp, 0x0064           ## $a0 = FFFFFFDC
/* 00108 809A92B8 24070098 */  addiu   $a3, $zero, 0x0098         ## $a3 = 00000098
/* 0010C 809A92BC 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 00110 809A92C0 46003203 */  div.s   $f8, $f6, $f0              
/* 00114 809A92C4 E7A8007C */  swc1    $f8, 0x007C($sp)           
/* 00118 809A92C8 84D80048 */  lh      $t8, 0x0048($a2)           ## 00000048
/* 0011C 809A92CC 3C06809B */  lui     $a2, %hi(D_809A95D0)       ## $a2 = 809B0000
/* 00120 809A92D0 24C695D0 */  addiu   $a2, $a2, %lo(D_809A95D0)  ## $a2 = 809A95D0
/* 00124 809A92D4 44985000 */  mtc1    $t8, $f10                  ## $f10 = 0.00
/* 00128 809A92D8 00000000 */  nop
/* 0012C 809A92DC 46805420 */  cvt.s.w $f16, $f10                 
/* 00130 809A92E0 46008483 */  div.s   $f18, $f16, $f0            
/* 00134 809A92E4 0C031AB1 */  jal     Graph_OpenDisps              
/* 00138 809A92E8 E7B20078 */  swc1    $f18, 0x0078($sp)          
/* 0013C 809A92EC C60C0000 */  lwc1    $f12, 0x0000($s0)          ## 00000000
/* 00140 809A92F0 C60E0004 */  lwc1    $f14, 0x0004($s0)          ## 00000004
/* 00144 809A92F4 8E060008 */  lw      $a2, 0x0008($s0)           ## 00000008
/* 00148 809A92F8 0C034261 */  jal     Matrix_Translate              
/* 0014C 809A92FC 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 00150 809A9300 C7AC007C */  lwc1    $f12, 0x007C($sp)          
/* 00154 809A9304 C7AE0078 */  lwc1    $f14, 0x0078($sp)          
/* 00158 809A9308 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 0015C 809A930C 44066000 */  mfc1    $a2, $f12                  
/* 00160 809A9310 0C0342A3 */  jal     Matrix_Scale              
/* 00164 809A9314 00000000 */  nop
/* 00168 809A9318 8FB90088 */  lw      $t9, 0x0088($sp)           
/* 0016C 809A931C 0C024F61 */  jal     func_80093D84              
/* 00170 809A9320 8F240000 */  lw      $a0, 0x0000($t9)           ## 00000000
/* 00174 809A9324 8E2202D0 */  lw      $v0, 0x02D0($s1)           ## 000002D0
/* 00178 809A9328 8FA80088 */  lw      $t0, 0x0088($sp)           
/* 0017C 809A932C 3C0ADB06 */  lui     $t2, 0xDB06                ## $t2 = DB060000
/* 00180 809A9330 24490008 */  addiu   $t1, $v0, 0x0008           ## $t1 = 00000008
/* 00184 809A9334 AE2902D0 */  sw      $t1, 0x02D0($s1)           ## 000002D0
/* 00188 809A9338 354A0020 */  ori     $t2, $t2, 0x0020           ## $t2 = DB060020
/* 0018C 809A933C AC4A0000 */  sw      $t2, 0x0000($v0)           ## 00000000
/* 00190 809A9340 8D040000 */  lw      $a0, 0x0000($t0)           ## 00000000
/* 00194 809A9344 240B0020 */  addiu   $t3, $zero, 0x0020         ## $t3 = 00000020
/* 00198 809A9348 240C0040 */  addiu   $t4, $zero, 0x0040         ## $t4 = 00000040
/* 0019C 809A934C 240D0001 */  addiu   $t5, $zero, 0x0001         ## $t5 = 00000001
/* 001A0 809A9350 AFAD0018 */  sw      $t5, 0x0018($sp)           
/* 001A4 809A9354 AFAC0014 */  sw      $t4, 0x0014($sp)           
/* 001A8 809A9358 AFAB0010 */  sw      $t3, 0x0010($sp)           
/* 001AC 809A935C AFA0001C */  sw      $zero, 0x001C($sp)         
/* 001B0 809A9360 860E0044 */  lh      $t6, 0x0044($s0)           ## 00000044
/* 001B4 809A9364 8D0F009C */  lw      $t7, 0x009C($t0)           ## 0000009C
/* 001B8 809A9368 24090080 */  addiu   $t1, $zero, 0x0080         ## $t1 = 00000080
/* 001BC 809A936C 24190020 */  addiu   $t9, $zero, 0x0020         ## $t9 = 00000020
/* 001C0 809A9370 01CF0019 */  multu   $t6, $t7                   
/* 001C4 809A9374 AFB90024 */  sw      $t9, 0x0024($sp)           
/* 001C8 809A9378 AFA90028 */  sw      $t1, 0x0028($sp)           
/* 001CC 809A937C 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 001D0 809A9380 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 001D4 809A9384 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 001D8 809A9388 AFA20060 */  sw      $v0, 0x0060($sp)           
/* 001DC 809A938C 0000C012 */  mflo    $t8                        
/* 001E0 809A9390 AFB80020 */  sw      $t8, 0x0020($sp)           
/* 001E4 809A9394 0C0253D0 */  jal     Gfx_TwoTexScroll              
/* 001E8 809A9398 00000000 */  nop
/* 001EC 809A939C 8FA30060 */  lw      $v1, 0x0060($sp)           
/* 001F0 809A93A0 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 001F4 809A93A4 860A0046 */  lh      $t2, 0x0046($s0)           ## 00000046
/* 001F8 809A93A8 29410064 */  slti    $at, $t2, 0x0064           
/* 001FC 809A93AC 54200015 */  bnel    $at, $zero, .L809A9404     
/* 00200 809A93B0 8E2202D0 */  lw      $v0, 0x02D0($s1)           ## 000002D0
/* 00204 809A93B4 8E2202D0 */  lw      $v0, 0x02D0($s1)           ## 000002D0
/* 00208 809A93B8 3C0CFA00 */  lui     $t4, 0xFA00                ## $t4 = FA000000
/* 0020C 809A93BC 358C8080 */  ori     $t4, $t4, 0x8080           ## $t4 = FA008080
/* 00210 809A93C0 244B0008 */  addiu   $t3, $v0, 0x0008           ## $t3 = 00000008
/* 00214 809A93C4 AE2B02D0 */  sw      $t3, 0x02D0($s1)           ## 000002D0
/* 00218 809A93C8 AC4C0000 */  sw      $t4, 0x0000($v0)           ## 00000000
/* 0021C 809A93CC 860D0040 */  lh      $t5, 0x0040($s0)           ## 00000040
/* 00220 809A93D0 3C01FFFF */  lui     $at, 0xFFFF                ## $at = FFFF0000
/* 00224 809A93D4 3C19FB00 */  lui     $t9, 0xFB00                ## $t9 = FB000000
/* 00228 809A93D8 31AE00FF */  andi    $t6, $t5, 0x00FF           ## $t6 = 00000000
/* 0022C 809A93DC 01C17825 */  or      $t7, $t6, $at              ## $t7 = FFFF0000
/* 00230 809A93E0 AC4F0004 */  sw      $t7, 0x0004($v0)           ## 00000004
/* 00234 809A93E4 8E2202D0 */  lw      $v0, 0x02D0($s1)           ## 000002D0
/* 00238 809A93E8 3C09FF0A */  lui     $t1, 0xFF0A                ## $t1 = FF0A0000
/* 0023C 809A93EC 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 00240 809A93F0 AE3802D0 */  sw      $t8, 0x02D0($s1)           ## 000002D0
/* 00244 809A93F4 AC490004 */  sw      $t1, 0x0004($v0)           ## 00000004
/* 00248 809A93F8 10000014 */  beq     $zero, $zero, .L809A944C   
/* 0024C 809A93FC AC590000 */  sw      $t9, 0x0000($v0)           ## 00000000
/* 00250 809A9400 8E2202D0 */  lw      $v0, 0x02D0($s1)           ## 000002D0
.L809A9404:
/* 00254 809A9404 3C0BFA00 */  lui     $t3, 0xFA00                ## $t3 = FA000000
/* 00258 809A9408 356B8080 */  ori     $t3, $t3, 0x8080           ## $t3 = FA008080
/* 0025C 809A940C 244A0008 */  addiu   $t2, $v0, 0x0008           ## $t2 = 00000008
/* 00260 809A9410 AE2A02D0 */  sw      $t2, 0x02D0($s1)           ## 000002D0
/* 00264 809A9414 AC4B0000 */  sw      $t3, 0x0000($v0)           ## 00000000
/* 00268 809A9418 860C0040 */  lh      $t4, 0x0040($s0)           ## 00000040
/* 0026C 809A941C 2401FF00 */  addiu   $at, $zero, 0xFF00         ## $at = FFFFFF00
/* 00270 809A9420 3C1900FF */  lui     $t9, 0x00FF                ## $t9 = 00FF0000
/* 00274 809A9424 318D00FF */  andi    $t5, $t4, 0x00FF           ## $t5 = 00000080
/* 00278 809A9428 01A17025 */  or      $t6, $t5, $at              ## $t6 = FFFFFF80
/* 0027C 809A942C AC4E0004 */  sw      $t6, 0x0004($v0)           ## 00000004
/* 00280 809A9430 8E2202D0 */  lw      $v0, 0x02D0($s1)           ## 000002D0
/* 00284 809A9434 3739FF00 */  ori     $t9, $t9, 0xFF00           ## $t9 = 00FFFF00
/* 00288 809A9438 3C18FB00 */  lui     $t8, 0xFB00                ## $t8 = FB000000
/* 0028C 809A943C 244F0008 */  addiu   $t7, $v0, 0x0008           ## $t7 = 00000008
/* 00290 809A9440 AE2F02D0 */  sw      $t7, 0x02D0($s1)           ## 000002D0
/* 00294 809A9444 AC590004 */  sw      $t9, 0x0004($v0)           ## 00000004
/* 00298 809A9448 AC580000 */  sw      $t8, 0x0000($v0)           ## 00000000
.L809A944C:
/* 0029C 809A944C 8E2202D0 */  lw      $v0, 0x02D0($s1)           ## 000002D0
/* 002A0 809A9450 3C0AE700 */  lui     $t2, 0xE700                ## $t2 = E7000000
/* 002A4 809A9454 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 002A8 809A9458 24490008 */  addiu   $t1, $v0, 0x0008           ## $t1 = 00000008
/* 002AC 809A945C AE2902D0 */  sw      $t1, 0x02D0($s1)           ## 000002D0
/* 002B0 809A9460 AC400004 */  sw      $zero, 0x0004($v0)         ## 00000004
/* 002B4 809A9464 AC4A0000 */  sw      $t2, 0x0000($v0)           ## 00000000
/* 002B8 809A9468 8FA40088 */  lw      $a0, 0x0088($sp)           
/* 002BC 809A946C 34211DA0 */  ori     $at, $at, 0x1DA0           ## $at = 00011DA0
/* 002C0 809A9470 0C0347F5 */  jal     func_800D1FD4              
/* 002C4 809A9474 00812021 */  addu    $a0, $a0, $at              
/* 002C8 809A9478 8FAB008C */  lw      $t3, 0x008C($sp)           
/* 002CC 809A947C 3C01809B */  lui     $at, %hi(D_809A9610)       ## $at = 809B0000
/* 002D0 809A9480 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 002D4 809A9484 316C0001 */  andi    $t4, $t3, 0x0001           ## $t4 = 00000000
/* 002D8 809A9488 51800004 */  beql    $t4, $zero, .L809A949C     
/* 002DC 809A948C 8E2202D0 */  lw      $v0, 0x02D0($s1)           ## 000002D0
/* 002E0 809A9490 0C034348 */  jal     Matrix_RotateY              
/* 002E4 809A9494 C42C9610 */  lwc1    $f12, %lo(D_809A9610)($at) 
/* 002E8 809A9498 8E2202D0 */  lw      $v0, 0x02D0($s1)           ## 000002D0
.L809A949C:
/* 002EC 809A949C 3C0EDA38 */  lui     $t6, 0xDA38                ## $t6 = DA380000
/* 002F0 809A94A0 35CE0003 */  ori     $t6, $t6, 0x0003           ## $t6 = DA380003
/* 002F4 809A94A4 244D0008 */  addiu   $t5, $v0, 0x0008           ## $t5 = 00000008
/* 002F8 809A94A8 AE2D02D0 */  sw      $t5, 0x02D0($s1)           ## 000002D0
/* 002FC 809A94AC AC4E0000 */  sw      $t6, 0x0000($v0)           ## 00000000
/* 00300 809A94B0 8FAF0088 */  lw      $t7, 0x0088($sp)           
/* 00304 809A94B4 3C05809B */  lui     $a1, %hi(D_809A95E4)       ## $a1 = 809B0000
/* 00308 809A94B8 24A595E4 */  addiu   $a1, $a1, %lo(D_809A95E4)  ## $a1 = 809A95E4
/* 0030C 809A94BC 240600D7 */  addiu   $a2, $zero, 0x00D7         ## $a2 = 000000D7
/* 00310 809A94C0 00408025 */  or      $s0, $v0, $zero            ## $s0 = 00000000
/* 00314 809A94C4 0C0346A2 */  jal     Matrix_NewMtx              
/* 00318 809A94C8 8DE40000 */  lw      $a0, 0x0000($t7)           ## 00000000
/* 0031C 809A94CC AE020004 */  sw      $v0, 0x0004($s0)           ## 00000004
/* 00320 809A94D0 8E2202D0 */  lw      $v0, 0x02D0($s1)           ## 000002D0
/* 00324 809A94D4 3C090405 */  lui     $t1, 0x0405                ## $t1 = 04050000
/* 00328 809A94D8 2529D4E0 */  addiu   $t1, $t1, 0xD4E0           ## $t1 = 0404D4E0
/* 0032C 809A94DC 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 00330 809A94E0 AE3802D0 */  sw      $t8, 0x02D0($s1)           ## 000002D0
/* 00334 809A94E4 3C19DE00 */  lui     $t9, 0xDE00                ## $t9 = DE000000
/* 00338 809A94E8 3C06809B */  lui     $a2, %hi(D_809A95F8)       ## $a2 = 809B0000
/* 0033C 809A94EC 24C695F8 */  addiu   $a2, $a2, %lo(D_809A95F8)  ## $a2 = 809A95F8
/* 00340 809A94F0 27A40064 */  addiu   $a0, $sp, 0x0064           ## $a0 = FFFFFFDC
/* 00344 809A94F4 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 00348 809A94F8 240700DC */  addiu   $a3, $zero, 0x00DC         ## $a3 = 000000DC
/* 0034C 809A94FC AC590000 */  sw      $t9, 0x0000($v0)           ## 00000000
/* 00350 809A9500 0C031AD5 */  jal     Graph_CloseDisps              
/* 00354 809A9504 AC490004 */  sw      $t1, 0x0004($v0)           ## 00000004
/* 00358 809A9508 8FBF003C */  lw      $ra, 0x003C($sp)           
/* 0035C 809A950C 8FB00034 */  lw      $s0, 0x0034($sp)           
/* 00360 809A9510 8FB10038 */  lw      $s1, 0x0038($sp)           
/* 00364 809A9514 03E00008 */  jr      $ra                        
/* 00368 809A9518 27BD0088 */  addiu   $sp, $sp, 0x0088           ## $sp = 00000000
glabel func_808B4C4C
/* 0001C 808B4C4C 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00020 808B4C50 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00024 808B4C54 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 00028 808B4C58 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 0002C 808B4C5C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00030 808B4C60 24C50164 */  addiu   $a1, $a2, 0x0164           ## $a1 = 00000164
/* 00034 808B4C64 AFA50020 */  sw      $a1, 0x0020($sp)           
/* 00038 808B4C68 0C016EFE */  jal     Collider_InitJntSph              
/* 0003C 808B4C6C AFA60028 */  sw      $a2, 0x0028($sp)           
/* 00040 808B4C70 8FA60028 */  lw      $a2, 0x0028($sp)           
/* 00044 808B4C74 3C07808B */  lui     $a3, %hi(D_808B5E74)       ## $a3 = 808B0000
/* 00048 808B4C78 8FA50020 */  lw      $a1, 0x0020($sp)           
/* 0004C 808B4C7C 24CE0184 */  addiu   $t6, $a2, 0x0184           ## $t6 = 00000184
/* 00050 808B4C80 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 00054 808B4C84 24E75E74 */  addiu   $a3, $a3, %lo(D_808B5E74)  ## $a3 = 808B5E74
/* 00058 808B4C88 0C017014 */  jal     Collider_SetJntSph              
/* 0005C 808B4C8C 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 00060 808B4C90 8FA60028 */  lw      $a2, 0x0028($sp)           
/* 00064 808B4C94 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 00068 808B4C98 44815000 */  mtc1    $at, $f10                  ## $f10 = 50.00
/* 0006C 808B4C9C C4C40024 */  lwc1    $f4, 0x0024($a2)           ## 00000024
/* 00070 808B4CA0 8CD90180 */  lw      $t9, 0x0180($a2)           ## 00000180
/* 00074 808B4CA4 240E0078 */  addiu   $t6, $zero, 0x0078         ## $t6 = 00000078
/* 00078 808B4CA8 4600218D */  trunc.w.s $f6, $f4                   
/* 0007C 808B4CAC 44183000 */  mfc1    $t8, $f6                   
/* 00080 808B4CB0 00000000 */  nop
/* 00084 808B4CB4 A7380030 */  sh      $t8, 0x0030($t9)           ## 00000030
/* 00088 808B4CB8 C4C80028 */  lwc1    $f8, 0x0028($a2)           ## 00000028
/* 0008C 808B4CBC 8CCA0180 */  lw      $t2, 0x0180($a2)           ## 00000180
/* 00090 808B4CC0 460A4400 */  add.s   $f16, $f8, $f10            
/* 00094 808B4CC4 4600848D */  trunc.w.s $f18, $f16                 
/* 00098 808B4CC8 44099000 */  mfc1    $t1, $f18                  
/* 0009C 808B4CCC 00000000 */  nop
/* 000A0 808B4CD0 A5490032 */  sh      $t1, 0x0032($t2)           ## 00000032
/* 000A4 808B4CD4 C4C4002C */  lwc1    $f4, 0x002C($a2)           ## 0000002C
/* 000A8 808B4CD8 8CCD0180 */  lw      $t5, 0x0180($a2)           ## 00000180
/* 000AC 808B4CDC 4600218D */  trunc.w.s $f6, $f4                   
/* 000B0 808B4CE0 440C3000 */  mfc1    $t4, $f6                   
/* 000B4 808B4CE4 00000000 */  nop
/* 000B8 808B4CE8 A5AC0034 */  sh      $t4, 0x0034($t5)           ## 00000034
/* 000BC 808B4CEC 8CCF0180 */  lw      $t7, 0x0180($a2)           ## 00000180
/* 000C0 808B4CF0 A5EE0036 */  sh      $t6, 0x0036($t7)           ## 00000036
/* 000C4 808B4CF4 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 000C8 808B4CF8 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 000CC 808B4CFC 03E00008 */  jr      $ra                        
/* 000D0 808B4D00 00000000 */  nop
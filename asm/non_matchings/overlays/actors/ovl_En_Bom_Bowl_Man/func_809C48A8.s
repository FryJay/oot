glabel func_809C48A8
/* 01278 809C48A8 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 0127C 809C48AC AFA40000 */  sw      $a0, 0x0000($sp)           
/* 01280 809C48B0 AFA60008 */  sw      $a2, 0x0008($sp)           
/* 01284 809C48B4 14A1000B */  bne     $a1, $at, .L809C48E4       
/* 01288 809C48B8 AFA7000C */  sw      $a3, 0x000C($sp)           
/* 0128C 809C48BC 8FA20014 */  lw      $v0, 0x0014($sp)           
/* 01290 809C48C0 8FA30010 */  lw      $v1, 0x0010($sp)           
/* 01294 809C48C4 844F021A */  lh      $t7, 0x021A($v0)           ## 0000021A
/* 01298 809C48C8 846E0000 */  lh      $t6, 0x0000($v1)           ## 00000000
/* 0129C 809C48CC 84790004 */  lh      $t9, 0x0004($v1)           ## 00000004
/* 012A0 809C48D0 01CFC021 */  addu    $t8, $t6, $t7              
/* 012A4 809C48D4 A4780000 */  sh      $t8, 0x0000($v1)           ## 00000000
/* 012A8 809C48D8 8448021C */  lh      $t0, 0x021C($v0)           ## 0000021C
/* 012AC 809C48DC 03284821 */  addu    $t1, $t9, $t0              
/* 012B0 809C48E0 A4690004 */  sh      $t1, 0x0004($v1)           ## 00000004
.L809C48E4:
/* 012B4 809C48E4 03E00008 */  jr      $ra                        
/* 012B8 809C48E8 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000

glabel BgSpot18Shutter_Draw
/* 0044C 808B981C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00450 808B9820 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00454 808B9824 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00458 808B9828 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0045C 808B982C 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00460 808B9830 0C00D498 */  jal     Gfx_DrawDListOpa
              
/* 00464 808B9834 24A50420 */  addiu   $a1, $a1, 0x0420           ## $a1 = 06000420
/* 00468 808B9838 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0046C 808B983C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00470 808B9840 03E00008 */  jr      $ra                        
/* 00474 808B9844 00000000 */  nop
/* 00478 808B9848 00000000 */  nop
/* 0047C 808B984C 00000000 */  nop
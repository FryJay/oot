glabel func_80B9BFF8
/* 00E78 80B9BFF8 AFA50004 */  sw      $a1, 0x0004($sp)           
/* 00E7C 80B9BFFC 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00E80 80B9C000 948E0168 */  lhu     $t6, 0x0168($a0)           ## 00000168
/* 00E84 80B9C004 3C1880BA */  lui     $t8, %hi(func_80B9C02C)    ## $t8 = 80BA0000
/* 00E88 80B9C008 2718C02C */  addiu   $t8, $t8, %lo(func_80B9C02C) ## $t8 = 80B9C02C
/* 00E8C 80B9C00C 35CF0002 */  ori     $t7, $t6, 0x0002           ## $t7 = 00000002
/* 00E90 80B9C010 A48F0168 */  sh      $t7, 0x0168($a0)           ## 00000168
/* 00E94 80B9C014 AC980164 */  sw      $t8, 0x0164($a0)           ## 00000164
/* 00E98 80B9C018 E480006C */  swc1    $f0, 0x006C($a0)           ## 0000006C
/* 00E9C 80B9C01C E4800064 */  swc1    $f0, 0x0064($a0)           ## 00000064
/* 00EA0 80B9C020 E4800060 */  swc1    $f0, 0x0060($a0)           ## 00000060
/* 00EA4 80B9C024 03E00008 */  jr      $ra                        
/* 00EA8 80B9C028 E480005C */  swc1    $f0, 0x005C($a0)           ## 0000005C
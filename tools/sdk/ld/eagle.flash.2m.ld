/* Flash Split for 2M chips */
/* sketch 1019KB */
/* spiffs 1004KB */
/* eeprom 20KB */

MEMORY
{
  dport0_0_seg :                        org = 0x3FF00000, len = 0x10
  dram0_0_seg :                         org = 0x3FFE8000, len = 0x14000
  iram1_0_seg :                         org = 0x40100000, len = 0x8000
  irom0_0_seg :                         org = 0x40201010, len = 0xfeff0
}

PROVIDE ( _SPIFFS_start = 0x40300000 );
PROVIDE ( _SPIFFS_end = 0x403FB000 );
PROVIDE ( _SPIFFS_page = 0x100 );
PROVIDE ( _SPIFFS_block = 0x2000 );

INCLUDE "eagle.app.v6.common.ld"

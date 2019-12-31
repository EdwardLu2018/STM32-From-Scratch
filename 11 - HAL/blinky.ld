/* blink.ld
 *
 * Memory layout on an STM32F103:
 *
 * 0x00000000 - 0x07ffffff - aliased to flash or sys memory depending on BOOT jumpers
 * 0x08000000 - 0x0800ffff - Flash (64K ... or 128K)
 * 0x1ffff000 - 0x1ffff7ff - Boot firmware in system memory
 * 0x1ffff800 - 0x1fffffff - option bytes
 * 0x20000000 - 0x20004fff - SRAM (20k)
 * 0x40000000 - 0x40023400 - peripherals
 */

_estack = 0x20005000;   /* end of stack/RAM */

MEMORY
{
   FLASH (rx)  : ORIGIN = 0x08000000, LENGTH = 128K
   SRAM (wail) : ORIGIN = 0x20000000, LENGTH = 20K
}

SECTIONS
{
   .text : { *(.text*) } > FLASH
   .bss  : { *(.bss*) } > SRAM
}

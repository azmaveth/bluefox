.arch armv7-a
.section .text
.global _start

_start:
  ldr r0, =mystring
  bl printf
  mov r0, #0
  bl exit

.section .rodata
.balign 8
mystring:
.asciz "Hello world\n"

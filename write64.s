.arch armv8-a
.section .text
.global _start

_start:
  mov x0, #1
  ldr x1, =mystring
  mov x2, #12
  mov x8, #64
  svc #1

  eor x0, x0, x0
  mov x8, #93
  svc #1

mystring:
.asciz "Hello world\n"

	.arch armv5te
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"arm.c"
	.text
	.section	.rodata
	.align	2
.LC0:
	.ascii	"%d\012\000"
	.text
	.align	2
	.global	main
	.syntax unified
	.arm
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	mov	r1, #26
	ldr	r3, .L3
.LPIC0:
	add	r3, pc, r3
	mov	r0, r3
	bl	printf(PLT)
	mov	r3, #0
	mov	r0, r3
	pop	{fp, pc}
.L4:
	.align	2
.L3:
	.word	.LC0-(.LPIC0+8)
	.size	main, .-main
	.ident	"GCC: (Debian 13.2.0-13) 13.2.0"
	.section	.note.GNU-stack,"",%progbits

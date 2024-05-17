.LC0:
	.ascii	"%d\000"
	.align	2
.LC1:
	.ascii	"%d\012\000"
	.text
	.align	2
	.global	main
main:
	push	{fp,lr}		
	add	fp,	sp,	#4
	mov	r1,	#42	
	push	{r1}		
	pop	{r1}		
	ldr	r0,	=.LC1	
	bl	printf		
	mov	r0,	#0	
	pop	{fp, pc}

.L3:
	.size	main, .-main
	.ident	"GCC: (Debian 13.2.0-13) 13.2.0"
	.section	.note.GNU-stack,"",%progbits

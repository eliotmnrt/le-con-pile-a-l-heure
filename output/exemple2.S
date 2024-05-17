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
	mov	r1,	#2	
	push	{r1}		
	mov	r1,	#3	
	push	{r1}		
	mov	r1,	#5	
	push	{r1}		
	pop	{r1}				 @ dépile exp2 dans r1
	pop	{r0}				 @ dépile exp1 dans r0
	add	r0,	r1,	r0		 @ effectue l'opération r0+r1 et met le résultat dans r0
	push	{r0}				 @ empile le résultat
	pop	{r1}				 @ dépile exp2 dans r1
	pop	{r0}				 @ dépile exp1 dans r0
	mul	r0,	r1,	r0		 @ effectue l'opération r0*r1 et met le résultat dans r0
	push	{r0}				 @ empile le résultat
	pop	{r1}		
	ldr	r0,	=.LC1	
	bl	printf		
	mov	r0,	#0	
	pop	{fp, pc}		

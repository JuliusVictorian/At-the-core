	.file	"assembly.c"
	.text
	.section	.rodata
.LC0:
	.string	"Enter the number of rows: "
.LC1:
	.string	"%d"
.LC2:
	.string	"* "
.LC3:
	.string	"Hello from Assembly!"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-12(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	$1, -4(%rbp)
	jmp	.L2
.L5:
	movl	$1, -8(%rbp)
	jmp	.L3
.L4:
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	addl	$1, -8(%rbp)
.L3:
	movl	-8(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jle	.L4
	movl	$10, %edi
	call	putchar@PLT
	addl	$1, -4(%rbp)
.L2:
	movl	-12(%rbp), %eax
	cmpl	%eax, -4(%rbp)
	jle	.L5
	movl	$10, %edi
	call	putchar@PLT
	leaq	.LC3(%rip), %rdi
	call	puts@PLT
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Debian 9.3.0-18) 9.3.0"
	.section	.note.GNU-stack,"",@progbits

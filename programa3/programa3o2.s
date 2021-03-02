	.file	"programa3.c"
	.text
	.p2align 4,,15
	.globl	crypt
	.type	crypt, @function
crypt:
.LFB0:
	.cfi_startproc
	movq	%rdi, %rax
	ret
	.cfi_endproc
.LFE0:
	.size	crypt, .-crypt
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"%s"
.LC1:
	.string	"crypt(%s) = %s\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	leaq	.LC0(%rip), %rdi
	subq	$112, %rsp
	.cfi_def_cfa_offset 128
	movq	%rsp, %rbx
	movq	%fs:40, %rax
	movq	%rax, 104(%rsp)
	xorl	%eax, %eax
	movq	%rbx, %rsi
	call	__isoc99_scanf@PLT
	leaq	.LC1(%rip), %rdi
	xorl	%eax, %eax
	movq	%rbx, %rdx
	movq	%rbx, %rsi
	call	printf@PLT
	movq	104(%rsp), %rcx
	xorq	%fs:40, %rcx
	jne	.L6
	addq	$112, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
.L6:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits

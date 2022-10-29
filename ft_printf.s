	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 14	sdk_version 10, 14
	.globl	_ft_printf              ## -- Begin function ft_printf
	.p2align	4, 0x90
_ft_printf:                             ## @ft_printf
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$432, %rsp              ## imm = 0x1B0
	testb	%al, %al
	movaps	%xmm7, -256(%rbp)       ## 16-byte Spill
	movaps	%xmm6, -272(%rbp)       ## 16-byte Spill
	movaps	%xmm5, -288(%rbp)       ## 16-byte Spill
	movaps	%xmm4, -304(%rbp)       ## 16-byte Spill
	movaps	%xmm3, -320(%rbp)       ## 16-byte Spill
	movaps	%xmm2, -336(%rbp)       ## 16-byte Spill
	movaps	%xmm1, -352(%rbp)       ## 16-byte Spill
	movaps	%xmm0, -368(%rbp)       ## 16-byte Spill
	movq	%r9, -376(%rbp)         ## 8-byte Spill
	movq	%r8, -384(%rbp)         ## 8-byte Spill
	movq	%rcx, -392(%rbp)        ## 8-byte Spill
	movq	%rdx, -400(%rbp)        ## 8-byte Spill
	movq	%rsi, -408(%rbp)        ## 8-byte Spill
	movq	%rdi, -416(%rbp)        ## 8-byte Spill
	je	LBB0_4
## %bb.3:
	movaps	-368(%rbp), %xmm0       ## 16-byte Reload
	movaps	%xmm0, -192(%rbp)
	movaps	-352(%rbp), %xmm1       ## 16-byte Reload
	movaps	%xmm1, -176(%rbp)
	movaps	-336(%rbp), %xmm2       ## 16-byte Reload
	movaps	%xmm2, -160(%rbp)
	movaps	-320(%rbp), %xmm3       ## 16-byte Reload
	movaps	%xmm3, -144(%rbp)
	movaps	-304(%rbp), %xmm4       ## 16-byte Reload
	movaps	%xmm4, -128(%rbp)
	movaps	-288(%rbp), %xmm5       ## 16-byte Reload
	movaps	%xmm5, -112(%rbp)
	movaps	-272(%rbp), %xmm6       ## 16-byte Reload
	movaps	%xmm6, -96(%rbp)
	movaps	-256(%rbp), %xmm7       ## 16-byte Reload
	movaps	%xmm7, -80(%rbp)
LBB0_4:
	movq	-376(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -200(%rbp)
	movq	-384(%rbp), %rcx        ## 8-byte Reload
	movq	%rcx, -208(%rbp)
	movq	-392(%rbp), %rdx        ## 8-byte Reload
	movq	%rdx, -216(%rbp)
	movq	-400(%rbp), %rsi        ## 8-byte Reload
	movq	%rsi, -224(%rbp)
	movq	-408(%rbp), %rdi        ## 8-byte Reload
	movq	%rdi, -232(%rbp)
	leaq	-32(%rbp), %r8
	movq	___stack_chk_guard@GOTPCREL(%rip), %r9
	movq	(%r9), %r9
	movq	%r9, -8(%rbp)
	movq	-416(%rbp), %r9         ## 8-byte Reload
	movq	%r9, -40(%rbp)
	movq	%r8, %r10
	leaq	-240(%rbp), %r11
	movq	%r11, 16(%r10)
	leaq	16(%rbp), %r11
	movq	%r11, 8(%r10)
	movl	$48, 4(%r10)
	movl	$8, (%r10)
	movq	-40(%rbp), %r10
	movq	%r10, -48(%rbp)
	movq	-48(%rbp), %rdi
	movq	%r8, %rsi
	callq	_ft_vprintf
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %eax
	movq	___stack_chk_guard@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	movq	-8(%rbp), %rdx
	cmpq	%rdx, %rcx
	movl	%eax, -420(%rbp)        ## 4-byte Spill
	jne	LBB0_2
## %bb.1:                               ## %SP_return
	movl	-420(%rbp), %eax        ## 4-byte Reload
	addq	$432, %rsp              ## imm = 0x1B0
	popq	%rbp
	retq
LBB0_2:                                 ## %CallStackCheckFailBlk
	callq	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function ft_vprintf
_ft_vprintf:                            ## @ft_vprintf
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -20(%rbp)
	movl	$0, -24(%rbp)
LBB1_1:                                 ## =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	movslq	-20(%rbp), %rcx
	cmpb	$0, (%rax,%rcx)
	je	LBB1_6
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movq	-8(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movsbl	(%rax,%rcx), %edx
	cmpl	$37, %edx
	je	LBB1_4
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movq	-8(%rbp), %rax
	movslq	-20(%rbp), %rcx
	addq	%rcx, %rax
	movl	$1, %edi
	movq	%rax, %rsi
	movl	$1, %edx
	callq	_write
	movl	-24(%rbp), %edi
	addl	$1, %edi
	movl	%edi, -24(%rbp)
	movq	%rax, -32(%rbp)         ## 8-byte Spill
	jmp	LBB1_5
LBB1_4:                                 ##   in Loop: Header=BB1_1 Depth=1
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	movl	%eax, %edx
	callq	_ft_check_format_specifie
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
LBB1_5:                                 ##   in Loop: Header=BB1_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	LBB1_1
LBB1_6:
	movl	-24(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_main                   ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$176, %rsp
	xorl	%eax, %eax
	leaq	L_.str(%rip), %rdi
	movl	$65, %esi
	leaq	L_.str.1(%rip), %rdx
	movl	$42, %ecx
	movl	%ecx, -12(%rbp)         ## 4-byte Spill
	movl	-12(%rbp), %r8d         ## 4-byte Reload
	movl	-12(%rbp), %r9d         ## 4-byte Reload
	movl	$42, (%rsp)
	movl	$42, 8(%rsp)
	movl	$66, 16(%rsp)
	leaq	L_.str.2(%rip), %r10
	movq	%r10, 24(%rsp)
	movl	$-42, 32(%rsp)
	movl	$-42, 40(%rsp)
	movl	$-42, 48(%rsp)
	movl	$-42, 56(%rsp)
	movl	$42, 64(%rsp)
	movl	$67, 72(%rsp)
	leaq	L_.str.3(%rip), %r10
	movq	%r10, 80(%rsp)
	movl	$0, 88(%rsp)
	movl	$0, 96(%rsp)
	movl	$0, 104(%rsp)
	movl	$0, 112(%rsp)
	movl	$42, 120(%rsp)
	movl	$0, 128(%rsp)
	movl	%eax, -16(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	movl	%eax, -4(%rbp)
	leaq	L_.str.4(%rip), %rdi
	movb	$0, %al
	callq	_printf
	xorl	%ecx, %ecx
	leaq	L_.str(%rip), %rdi
	movl	$65, %esi
	leaq	L_.str.1(%rip), %rdx
	movl	$42, %r8d
	movl	%ecx, -20(%rbp)         ## 4-byte Spill
	movl	%r8d, %ecx
	movl	%r8d, -24(%rbp)         ## 4-byte Spill
	movl	-24(%rbp), %r9d         ## 4-byte Reload
	movl	$42, (%rsp)
	movl	$42, 8(%rsp)
	movl	$66, 16(%rsp)
	leaq	L_.str.2(%rip), %r10
	movq	%r10, 24(%rsp)
	movl	$-42, 32(%rsp)
	movl	$-42, 40(%rsp)
	movl	$-42, 48(%rsp)
	movl	$-42, 56(%rsp)
	movl	$42, 64(%rsp)
	movl	$67, 72(%rsp)
	leaq	L_.str.3(%rip), %r10
	movq	%r10, 80(%rsp)
	movl	$0, 88(%rsp)
	movl	$0, 96(%rsp)
	movl	$0, 104(%rsp)
	movl	$0, 112(%rsp)
	movl	$42, 120(%rsp)
	movl	$0, 128(%rsp)
	movl	%eax, -28(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_ft_printf
	movl	%eax, -8(%rbp)
	movl	-4(%rbp), %esi
	movl	-8(%rbp), %edx
	leaq	L_.str.5(%rip), %rdi
	movb	$0, %al
	callq	_ft_printf
	leaq	L_.str.6(%rip), %rdi
	movl	$4294967295, %esi       ## imm = 0xFFFFFFFF
	movl	%eax, -32(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	xorl	%ecx, %ecx
	movl	%eax, -36(%rbp)         ## 4-byte Spill
	movl	%ecx, %eax
	addq	$176, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function ft_check_format_specifie
_ft_check_format_specifie:              ## @ft_check_format_specifie
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$192, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	$0, -24(%rbp)
	movq	-8(%rbp), %rsi
	movslq	-20(%rbp), %rdi
	movsbl	(%rsi,%rdi), %edx
	cmpl	$37, %edx
	jne	LBB3_2
## %bb.1:
	movq	-8(%rbp), %rax
	movslq	-20(%rbp), %rcx
	addq	%rcx, %rax
	movl	$1, %edi
	movq	%rax, %rsi
	movl	$1, %edx
	callq	_write
	movslq	-24(%rbp), %rcx
	addq	%rax, %rcx
	movl	%ecx, %edi
	movl	%edi, -24(%rbp)
	jmp	LBB3_45
LBB3_2:
	movq	-8(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movsbl	(%rax,%rcx), %edx
	cmpl	$99, %edx
	jne	LBB3_7
## %bb.3:
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	cmpl	$40, %ecx
	movq	%rax, -32(%rbp)         ## 8-byte Spill
	movl	%ecx, -36(%rbp)         ## 4-byte Spill
	ja	LBB3_5
## %bb.4:
	movl	-36(%rbp), %eax         ## 4-byte Reload
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdx         ## 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -48(%rbp)         ## 8-byte Spill
	jmp	LBB3_6
LBB3_5:
	movq	-32(%rbp), %rax         ## 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -48(%rbp)         ## 8-byte Spill
LBB3_6:
	movq	-48(%rbp), %rax         ## 8-byte Reload
	movl	(%rax), %edi
	callq	_ft_putchar
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	jmp	LBB3_44
LBB3_7:
	movq	-8(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movsbl	(%rax,%rcx), %edx
	cmpl	$115, %edx
	jne	LBB3_12
## %bb.8:
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	cmpl	$40, %ecx
	movq	%rax, -56(%rbp)         ## 8-byte Spill
	movl	%ecx, -60(%rbp)         ## 4-byte Spill
	ja	LBB3_10
## %bb.9:
	movl	-60(%rbp), %eax         ## 4-byte Reload
	movslq	%eax, %rcx
	movq	-56(%rbp), %rdx         ## 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -72(%rbp)         ## 8-byte Spill
	jmp	LBB3_11
LBB3_10:
	movq	-56(%rbp), %rax         ## 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -72(%rbp)         ## 8-byte Spill
LBB3_11:
	movq	-72(%rbp), %rax         ## 8-byte Reload
	movq	(%rax), %rdi
	callq	_ft_putstr
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	jmp	LBB3_43
LBB3_12:
	movq	-8(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movsbl	(%rax,%rcx), %edx
	cmpl	$105, %edx
	je	LBB3_14
## %bb.13:
	movq	-8(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movsbl	(%rax,%rcx), %edx
	cmpl	$100, %edx
	jne	LBB3_18
LBB3_14:
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	cmpl	$40, %ecx
	movq	%rax, -80(%rbp)         ## 8-byte Spill
	movl	%ecx, -84(%rbp)         ## 4-byte Spill
	ja	LBB3_16
## %bb.15:
	movl	-84(%rbp), %eax         ## 4-byte Reload
	movslq	%eax, %rcx
	movq	-80(%rbp), %rdx         ## 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -96(%rbp)         ## 8-byte Spill
	jmp	LBB3_17
LBB3_16:
	movq	-80(%rbp), %rax         ## 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -96(%rbp)         ## 8-byte Spill
LBB3_17:
	movq	-96(%rbp), %rax         ## 8-byte Reload
	movl	(%rax), %edi
	callq	_ft_putnbr
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	jmp	LBB3_42
LBB3_18:
	movq	-8(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movsbl	(%rax,%rcx), %edx
	cmpl	$117, %edx
	jne	LBB3_23
## %bb.19:
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	cmpl	$40, %ecx
	movq	%rax, -104(%rbp)        ## 8-byte Spill
	movl	%ecx, -108(%rbp)        ## 4-byte Spill
	ja	LBB3_21
## %bb.20:
	movl	-108(%rbp), %eax        ## 4-byte Reload
	movslq	%eax, %rcx
	movq	-104(%rbp), %rdx        ## 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -120(%rbp)        ## 8-byte Spill
	jmp	LBB3_22
LBB3_21:
	movq	-104(%rbp), %rax        ## 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -120(%rbp)        ## 8-byte Spill
LBB3_22:
	movq	-120(%rbp), %rax        ## 8-byte Reload
	movl	(%rax), %edi
	callq	_ft_putunbr
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	jmp	LBB3_41
LBB3_23:
	movq	-8(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movsbl	(%rax,%rcx), %edx
	cmpl	$120, %edx
	jne	LBB3_28
## %bb.24:
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	cmpl	$40, %ecx
	movq	%rax, -128(%rbp)        ## 8-byte Spill
	movl	%ecx, -132(%rbp)        ## 4-byte Spill
	ja	LBB3_26
## %bb.25:
	movl	-132(%rbp), %eax        ## 4-byte Reload
	movslq	%eax, %rcx
	movq	-128(%rbp), %rdx        ## 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -144(%rbp)        ## 8-byte Spill
	jmp	LBB3_27
LBB3_26:
	movq	-128(%rbp), %rax        ## 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -144(%rbp)        ## 8-byte Spill
LBB3_27:
	movq	-144(%rbp), %rax        ## 8-byte Reload
	movl	(%rax), %edi
	movl	$120, %esi
	callq	_ft_puthexa
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	jmp	LBB3_40
LBB3_28:
	movq	-8(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movsbl	(%rax,%rcx), %edx
	cmpl	$88, %edx
	jne	LBB3_33
## %bb.29:
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	cmpl	$40, %ecx
	movq	%rax, -152(%rbp)        ## 8-byte Spill
	movl	%ecx, -156(%rbp)        ## 4-byte Spill
	ja	LBB3_31
## %bb.30:
	movl	-156(%rbp), %eax        ## 4-byte Reload
	movslq	%eax, %rcx
	movq	-152(%rbp), %rdx        ## 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -168(%rbp)        ## 8-byte Spill
	jmp	LBB3_32
LBB3_31:
	movq	-152(%rbp), %rax        ## 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -168(%rbp)        ## 8-byte Spill
LBB3_32:
	movq	-168(%rbp), %rax        ## 8-byte Reload
	movl	(%rax), %edi
	movl	$88, %esi
	callq	_ft_puthexa
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	jmp	LBB3_39
LBB3_33:
	movq	-8(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movsbl	(%rax,%rcx), %edx
	cmpl	$112, %edx
	jne	LBB3_38
## %bb.34:
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	cmpl	$40, %ecx
	movq	%rax, -176(%rbp)        ## 8-byte Spill
	movl	%ecx, -180(%rbp)        ## 4-byte Spill
	ja	LBB3_36
## %bb.35:
	movl	-180(%rbp), %eax        ## 4-byte Reload
	movslq	%eax, %rcx
	movq	-176(%rbp), %rdx        ## 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -192(%rbp)        ## 8-byte Spill
	jmp	LBB3_37
LBB3_36:
	movq	-176(%rbp), %rax        ## 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -192(%rbp)        ## 8-byte Spill
LBB3_37:
	movq	-192(%rbp), %rax        ## 8-byte Reload
	movq	(%rax), %rdi
	callq	_ft_putadd
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
LBB3_38:
	jmp	LBB3_39
LBB3_39:
	jmp	LBB3_40
LBB3_40:
	jmp	LBB3_41
LBB3_41:
	jmp	LBB3_42
LBB3_42:
	jmp	LBB3_43
LBB3_43:
	jmp	LBB3_44
LBB3_44:
	jmp	LBB3_45
LBB3_45:
	movl	-24(%rbp), %eax
	addq	$192, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%%%c%%%s%%%d%%%i%%%u%%%x%%%X%%%% %%%c%%%s%%%d%%%i%%%u%%%x%%%X%%%% %%%c%%%s%%%d%%%i%%%u%%%x%%%X%%%% %c%%\n"

L_.str.1:                               ## @.str.1
	.asciz	"42"

L_.str.2:                               ## @.str.2
	.asciz	"-42"

L_.str.3:                               ## @.str.3
	.asciz	"0"

L_.str.4:                               ## @.str.4
	.asciz	"------------------------\n"

L_.str.5:                               ## @.str.5
	.asciz	"%d \n %d \n"

L_.str.6:                               ## @.str.6
	.asciz	"%d"


.subsections_via_symbols

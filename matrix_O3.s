	.file	"matrix.cpp"
	.text
	.section	.text$_ZNKSt5ctypeIcE8do_widenEc,"x"
	.linkonce discard
	.align 2
	.p2align 4
	.globl	_ZNKSt5ctypeIcE8do_widenEc
	.def	_ZNKSt5ctypeIcE8do_widenEc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt5ctypeIcE8do_widenEc
_ZNKSt5ctypeIcE8do_widenEc:
.LFB1963:
	.seh_endprologue
	movl	%edx, %eax
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC4:
	.ascii "\346\234\254\346\254\241\350\247\204\346\250\241\345\244\247\345\260\217\344\270\272 \0"
	.align 8
.LC5:
	.ascii " \344\270\244\344\270\252\347\256\227\346\263\225\345\210\206\345\210\253\346\211\200\347\224\250\346\227\266\351\227\264\344\270\272\0"
	.section	.text.startup,"x"
	.p2align 4
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB10333:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$200, %rsp
	.seh_stackalloc	200
	movups	%xmm6, 144(%rsp)
	.seh_savexmm	%xmm6, 144
	movups	%xmm7, 160(%rsp)
	.seh_savexmm	%xmm7, 160
	movups	%xmm8, 176(%rsp)
	.seh_savexmm	%xmm8, 176
	.seh_endprologue
	xorl	%r14d, %r14d
	call	__main
	movl	$65001, %ecx
	call	*__imp_SetConsoleCP(%rip)
	movl	$65001, %ecx
	call	*__imp_SetConsoleOutputCP(%rip)
	movq	.refptr._ZSt3cin(%rip), %rax
	leaq	88(%rsp), %rdx
	movq	%rax, %rcx
	movq	%rax, 48(%rsp)
	call	_ZNSirsERi
	leaq	92(%rsp), %rax
	movq	%rax, 56(%rsp)
	movl	88(%rsp), %eax
	testl	%eax, %eax
	jle	.L71
	movdqu	.LC0(%rip), %xmm6
.L4:
	movq	56(%rsp), %rdx
	movq	48(%rsp), %rcx
	call	_ZNSirsERi
	movslq	92(%rsp), %r12
	movq	%r12, %rax
	shrq	$60, %rax
	jne	.L5
	leaq	0(,%r12,8), %rcx
	leaq	0(,%r12,4), %rbp
	xorl	%r13d, %r13d
	call	_Znay
	movq	%rax, %rdi
	leal	-1(%r12), %eax
	movl	%eax, 32(%rsp)
	movl	$4, %eax
	movd	%eax, %xmm7
	pshufd	$0, %xmm7, %xmm7
	testl	%r12d, %r12d
	je	.L78
	movl	%r14d, 40(%rsp)
	movq	%rdi, %r14
	movl	%r12d, %edi
.L13:
	movq	%rbp, %rcx
	movl	%r13d, %ebx
	call	_Znay
	movq	%rax, (%r14,%r13,8)
	movq	%rax, %rdx
	cmpl	$2, 32(%rsp)
	jbe	.L47
	movl	%edi, %r15d
	movl	%edi, %esi
	shrl	$2, %r15d
	andl	$-4, %esi
	salq	$4, %r15
.L11:
	movd	%ebx, %xmm5
	leaq	(%r15,%rdx), %rcx
	movdqa	%xmm6, %xmm0
	movq	%rdx, %rax
	pshufd	$0, %xmm5, %xmm2
.L9:
	movdqa	%xmm2, %xmm1
	addq	$16, %rax
	paddd	%xmm0, %xmm1
	paddd	%xmm7, %xmm0
	movups	%xmm1, -16(%rax)
	cmpq	%rcx, %rax
	jne	.L9
	cmpl	%esi, %edi
	je	.L79
.L8:
	leal	(%rbx,%rsi), %eax
	movslq	%esi, %rcx
	movl	%eax, (%rdx,%rcx,4)
	leal	1(%rsi), %eax
	cmpl	%eax, %edi
	jle	.L12
	addl	%ebx, %eax
	addl	$2, %esi
	movl	%eax, 4(%rdx,%rcx,4)
	cmpl	%esi, %edi
	jle	.L12
	addl	%esi, %ebx
	movl	%ebx, 8(%rdx,%rcx,4)
.L12:
	addq	$1, %r13
	cmpq	%r13, %r12
	jne	.L13
.L75:
	movq	%rbp, %rcx
	movl	%edi, %ebx
	movq	%r14, %rdi
	movl	40(%rsp), %r14d
	call	_Znay
	movq	%rax, %rsi
	cmpl	$2, 32(%rsp)
	jbe	.L48
	movq	%rax, %rdx
	movl	%ebx, %eax
	movl	$4, %ecx
	movdqu	.LC0(%rip), %xmm1
	shrl	$2, %eax
	movd	%ecx, %xmm0
	salq	$4, %rax
	pshufd	$0, %xmm0, %xmm0
	addq	%rsi, %rax
.L16:
	movups	%xmm1, (%rdx)
	addq	$16, %rdx
	paddd	%xmm0, %xmm1
	cmpq	%rax, %rdx
	jne	.L16
	testb	$3, %bl
	je	.L14
	movl	%ebx, %eax
	andl	$-4, %eax
.L15:
	movslq	%eax, %rdx
	leal	1(%rax), %ecx
	movl	%eax, (%rsi,%rdx,4)
	cmpl	%ecx, %ebx
	jle	.L14
	addl	$2, %eax
	movl	%ecx, 4(%rsi,%rdx,4)
	cmpl	%eax, %ebx
	jle	.L14
	movl	%eax, 8(%rsi,%rdx,4)
.L14:
	movq	%rbp, %rcx
	call	_Znay
	leaq	112(%rsp), %rcx
	movq	%rax, %r12
	call	*__imp_QueryPerformanceFrequency(%rip)
	leaq	96(%rsp), %rcx
	call	*__imp_QueryPerformanceCounter(%rip)
	movslq	92(%rsp), %r13
	testl	%r13d, %r13d
	jle	.L18
	leal	-1(%r13), %eax
	leaq	0(,%r13,4), %r15
	movl	$100, %ebx
	leaq	4(,%rax,4), %rbp
	.p2align 4
	.p2align 3
.L22:
	movq	%rbp, %r8
	xorl	%edx, %edx
	movq	%r12, %rcx
	call	memset
	xorl	%r8d, %r8d
	.p2align 4
	.p2align 3
.L19:
	movl	(%r12,%r8), %ecx
	xorl	%eax, %eax
	.p2align 5
	.p2align 4
	.p2align 3
.L20:
	movq	(%rdi,%rax,8), %rdx
	movl	(%rdx,%r8), %edx
	imull	(%rsi,%rax,4), %edx
	addq	$1, %rax
	addl	%edx, %ecx
	cmpq	%r13, %rax
	jne	.L20
	movl	%ecx, (%r12,%r8)
	addq	$4, %r8
	cmpq	%r15, %r8
	jne	.L19
	subl	$1, %ebx
	jne	.L22
.L18:
	leaq	104(%rsp), %rcx
	call	*__imp_QueryPerformanceCounter(%rip)
	movq	104(%rsp), %rax
	pxor	%xmm0, %xmm0
	subq	96(%rsp), %rax
	cvtsi2sdq	%rax, %xmm0
	pxor	%xmm1, %xmm1
	cvtsi2sdq	112(%rsp), %xmm1
	movslq	92(%rsp), %rax
	mulsd	.LC2(%rip), %xmm0
	movabsq	$2305843009213693950, %rdx
	divsd	%xmm1, %xmm0
	divsd	.LC3(%rip), %xmm0
	movapd	%xmm0, %xmm8
	cmpq	%rax, %rdx
	jb	.L5
	leaq	0(,%rax,4), %rcx
	call	_Znay
	leaq	136(%rsp), %rcx
	movq	%rax, %rbx
	call	*__imp_QueryPerformanceFrequency(%rip)
	leaq	120(%rsp), %rcx
	call	*__imp_QueryPerformanceCounter(%rip)
	movl	92(%rsp), %r13d
	testl	%r13d, %r13d
	jle	.L23
	leal	-1(%r13), %eax
	movq	%r12, 72(%rsp)
	movslq	%r13d, %rbp
	movq	%rax, %r15
	leaq	4(,%rax,4), %rax
	movl	%r14d, 68(%rsp)
	salq	$2, %rbp
	movq	%rax, 40(%rsp)
	leal	-3(%r13), %eax
	movl	$100, %r14d
	shrl	%eax
	addl	$2, %eax
	movl	%eax, 64(%rsp)
	.p2align 4
	.p2align 3
.L35:
	movq	40(%rsp), %r8
	movq	%rbx, %rcx
	xorl	%edx, %edx
	call	memset
	movl	64(%rsp), %r12d
	movl	$2, %ecx
	movl	%r13d, %r8d
	addq	%r12, %r12
	cmpl	$2, %r13d
	jle	.L80
	.p2align 4
	.p2align 3
.L27:
	movq	%rsi, 32(%rsp)
	movq	-16(%rdi,%rcx,8), %r13
	xorl	%eax, %eax
	movl	-8(%rsi,%rcx,4), %r11d
	movl	-4(%rsi,%rcx,4), %r10d
	movq	-8(%rdi,%rcx,8), %r9
	.p2align 5
	.p2align 4
	.p2align 3
.L26:
	movl	0(%r13,%rax), %esi
	movl	(%r9,%rax), %edx
	imull	%r11d, %esi
	imull	%r10d, %edx
	addl	%esi, %edx
	addl	%edx, (%rbx,%rax)
	addq	$4, %rax
	cmpq	%rbp, %rax
	jne	.L26
	leaq	2(%rcx), %rax
	movq	32(%rsp), %rsi
	cmpq	%rax, %r12
	je	.L81
	movq	%rax, %rcx
	jmp	.L27
	.p2align 4,,10
	.p2align 3
.L81:
	movl	%r8d, %r13d
.L25:
	movslq	%ecx, %rax
	movl	%r13d, %ecx
	shrl	$2, %ecx
	salq	$4, %rcx
.L34:
	movq	(%rdi,%rax,8), %r8
	movl	(%rsi,%rax,4), %r9d
	cmpl	$2, %r15d
	jbe	.L50
.L32:
	movd	%r9d, %xmm4
	xorl	%edx, %edx
	pshufd	$0, %xmm4, %xmm1
	movdqa	%xmm1, %xmm3
	psrlq	$32, %xmm3
	.p2align 6
	.p2align 4
	.p2align 3
.L29:
	movdqu	(%r8,%rdx), %xmm0
	movdqa	%xmm0, %xmm2
	psrlq	$32, %xmm0
	pmuludq	%xmm1, %xmm2
	pmuludq	%xmm3, %xmm0
	pshufd	$8, %xmm2, %xmm2
	pshufd	$8, %xmm0, %xmm0
	punpckldq	%xmm0, %xmm2
	movdqu	(%rbx,%rdx), %xmm0
	paddd	%xmm2, %xmm0
	movups	%xmm0, (%rbx,%rdx)
	addq	$16, %rdx
	cmpq	%rdx, %rcx
	jne	.L29
	testb	$3, %r13b
	je	.L30
	movl	%r13d, %r10d
	andl	$-4, %r10d
.L28:
	movslq	%r10d, %rdx
	movl	(%r8,%rdx,4), %r11d
	imull	%r9d, %r11d
	addl	%r11d, (%rbx,%rdx,4)
	leal	1(%r10), %r11d
	cmpl	%r11d, %r13d
	jle	.L33
	movl	4(%r8,%rdx,4), %r11d
	addl	$2, %r10d
	imull	%r9d, %r11d
	addl	%r11d, 4(%rbx,%rdx,4)
	cmpl	%r13d, %r10d
	jge	.L33
	imull	8(%r8,%rdx,4), %r9d
	addl	%r9d, 8(%rbx,%rdx,4)
.L33:
	addq	$1, %rax
	cmpl	%eax, %r13d
	jg	.L34
.L31:
	subl	$1, %r14d
	jne	.L35
	movl	68(%rsp), %r14d
	movq	72(%rsp), %r12
.L23:
	leaq	128(%rsp), %rcx
	pxor	%xmm7, %xmm7
	call	*__imp_QueryPerformanceCounter(%rip)
	pxor	%xmm0, %xmm0
	movq	128(%rsp), %rax
	subq	120(%rsp), %rax
	cvtsi2sdq	%rax, %xmm7
	mulsd	.LC2(%rip), %xmm7
	cvtsi2sdq	136(%rsp), %xmm0
	movq	.refptr._ZSt4cout(%rip), %rbp
	movl	$22, %r8d
	leaq	.LC4(%rip), %rdx
	movq	%rbp, %rcx
	divsd	%xmm0, %xmm7
	divsd	.LC3(%rip), %xmm7
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%rbp, %rcx
	movl	92(%rsp), %edx
	call	_ZNSolsEi
	movl	$34, %r8d
	leaq	.LC5(%rip), %rdx
	movq	%rax, %rbp
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%rbp, %rcx
	movapd	%xmm8, %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	movb	$32, 87(%rsp)
	movq	%rax, %rbp
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	cmpq	$0, 16(%rbp,%rax)
	je	.L36
	movq	%rbp, %rcx
	leaq	87(%rsp), %rdx
	movl	$1, %r8d
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%rax, %rbp
.L37:
	movq	%rbp, %rcx
	movapd	%xmm7, %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %r13
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%r13,%rax), %rbp
	testq	%rbp, %rbp
	je	.L82
	cmpb	$0, 56(%rbp)
	je	.L39
	movsbl	67(%rbp), %edx
.L40:
	movq	%r13, %rcx
	call	_ZNSo3putEc
	movq	%rax, %rcx
	call	_ZNSo5flushEv
	movq	%r12, %rcx
	call	_ZdaPv
	movq	%rbx, %rcx
	movq	%rdi, %rbx
	call	_ZdaPv
	movq	%rsi, %rcx
	call	_ZdaPv
	movslq	92(%rsp), %rax
	leaq	(%rdi,%rax,8), %rsi
	testl	%eax, %eax
	jle	.L45
.L44:
	movq	(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L43
	call	_ZdaPv
.L43:
	addq	$8, %rbx
	cmpq	%rbx, %rsi
	jne	.L44
.L45:
	movq	%rdi, %rcx
	addl	$1, %r14d
	call	_ZdaPv
	cmpl	%r14d, 88(%rsp)
	jg	.L4
.L71:
	movups	144(%rsp), %xmm6
	movups	160(%rsp), %xmm7
	xorl	%eax, %eax
	movups	176(%rsp), %xmm8
	addq	$200, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L30:
	addq	$1, %rax
	cmpl	%eax, %r13d
	jle	.L31
	movq	(%rdi,%rax,8), %r8
	movl	(%rsi,%rax,4), %r9d
	jmp	.L32
.L50:
	xorl	%r10d, %r10d
	jmp	.L28
.L80:
	xorl	%ecx, %ecx
	jmp	.L25
.L79:
	addq	$1, %r13
	cmpq	%r13, %r12
	je	.L75
	movq	%rbp, %rcx
	movl	%r13d, %ebx
	call	_Znay
	movq	%rax, (%r14,%r13,8)
	movq	%rax, %rdx
	jmp	.L11
.L39:
	movq	%rbp, %rcx
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	0(%rbp), %rax
	movl	$10, %edx
	leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %rcx
	movq	48(%rax), %rax
	cmpq	%rcx, %rax
	je	.L40
	movq	%rbp, %rcx
	call	*%rax
	movsbl	%al, %edx
	jmp	.L40
.L36:
	movl	$32, %edx
	movq	%rbp, %rcx
	call	_ZNSo3putEc
	jmp	.L37
.L47:
	xorl	%esi, %esi
	jmp	.L8
.L48:
	xorl	%eax, %eax
	jmp	.L15
.L78:
	xorl	%ecx, %ecx
	xorl	%ebp, %ebp
	call	_Znay
	movq	%rax, %rsi
	jmp	.L14
.L5:
	call	__cxa_throw_bad_array_new_length
.L82:
	call	_ZSt16__throw_bad_castv
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 16
.LC0:
	.long	0
	.long	1
	.long	2
	.long	3
	.align 8
.LC2:
	.long	0
	.long	1083129856
	.align 8
.LC3:
	.long	0
	.long	1079574528
	.def	__main;	.scl	2;	.type	32;	.endef
	.ident	"GCC: (Rev13, Built by MSYS2 project) 15.2.0"
	.def	_ZNSirsERi;	.scl	2;	.type	32;	.endef
	.def	_Znay;	.scl	2;	.type	32;	.endef
	.def	memset;	.scl	2;	.type	32;	.endef
	.def	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x;	.scl	2;	.type	32;	.endef
	.def	_ZNSolsEi;	.scl	2;	.type	32;	.endef
	.def	_ZNSo9_M_insertIdEERSoT_;	.scl	2;	.type	32;	.endef
	.def	_ZNSo3putEc;	.scl	2;	.type	32;	.endef
	.def	_ZNSo5flushEv;	.scl	2;	.type	32;	.endef
	.def	_ZdaPv;	.scl	2;	.type	32;	.endef
	.def	_ZNKSt5ctypeIcE13_M_widen_initEv;	.scl	2;	.type	32;	.endef
	.def	__cxa_throw_bad_array_new_length;	.scl	2;	.type	32;	.endef
	.def	_ZSt16__throw_bad_castv;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr._ZSt4cout, "dr"
	.p2align	3, 0
	.globl	.refptr._ZSt4cout
	.linkonce	discard
.refptr._ZSt4cout:
	.quad	_ZSt4cout
	.section	.rdata$.refptr._ZSt3cin, "dr"
	.p2align	3, 0
	.globl	.refptr._ZSt3cin
	.linkonce	discard
.refptr._ZSt3cin:
	.quad	_ZSt3cin

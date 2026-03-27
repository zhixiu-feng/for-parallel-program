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
.LC2:
	.ascii "\346\234\254\346\254\241\350\247\204\346\250\241\345\244\247\345\260\217\344\270\272 \0"
	.align 8
.LC3:
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
	subq	$168, %rsp
	.seh_stackalloc	168
	movups	%xmm6, 144(%rsp)
	.seh_savexmm	%xmm6, 144
	.seh_endprologue
	call	__main
	movl	$65001, %ecx
	call	*__imp_SetConsoleCP(%rip)
	movl	$65001, %ecx
	call	*__imp_SetConsoleOutputCP(%rip)
	movq	.refptr._ZSt3cin(%rip), %rax
	leaq	88(%rsp), %rdx
	movq	%rax, %rcx
	movq	%rax, 56(%rsp)
	call	_ZNSirsERi
	leaq	92(%rsp), %rax
	movl	$0, 52(%rsp)
	movq	%rax, 64(%rsp)
	movl	88(%rsp), %eax
	testl	%eax, %eax
	jle	.L61
.L4:
	movq	64(%rsp), %rdx
	movq	56(%rsp), %rcx
	call	_ZNSirsERi
	movslq	92(%rsp), %rbp
	movabsq	$1152921504606846975, %rax
	movq	%rbp, %rbx
	cmpq	%rbp, %rax
	jb	.L5
	leaq	0(,%rbp,8), %rcx
	leaq	0(,%rbp,4), %r12
	xorl	%esi, %esi
	call	_Znay
	movq	%rax, %rdi
	testl	%ebp, %ebp
	je	.L71
.L9:
	movq	%r12, %rcx
	call	_Znay
	movq	%rax, (%rdi,%rsi,8)
	movq	%rax, %rdx
	movl	%esi, %eax
.L8:
	movl	%eax, (%rdx)
	addl	$1, %eax
	addq	$4, %rdx
	cmpl	%eax, %ebx
	jne	.L8
	addq	$1, %rsi
	addl	$1, %ebx
	cmpq	%rbp, %rsi
	jne	.L9
	movq	%r12, %rcx
	call	_Znay
	movq	%rax, %rsi
	xorl	%eax, %eax
	testb	$1, %bpl
	je	.L12
	movl	$1, %eax
	movl	$0, (%rsi)
	cmpq	%rbp, %rax
	je	.L11
.L12:
	movl	%eax, (%rsi,%rax,4)
	leaq	1(%rax), %rdx
	addq	$2, %rax
	movl	%edx, (%rsi,%rdx,4)
	cmpq	%rbp, %rax
	jne	.L12
.L11:
	movq	%r12, %rcx
	call	_Znay
	leaq	112(%rsp), %rcx
	movq	%rax, %r15
	call	*__imp_QueryPerformanceFrequency(%rip)
	leaq	96(%rsp), %rcx
	call	*__imp_QueryPerformanceCounter(%rip)
	movslq	92(%rsp), %r12
	testl	%r12d, %r12d
	jle	.L13
	leal	-1(%r12), %eax
	leaq	0(,%r12,4), %r13
	movl	$100, %ebx
	leaq	4(,%rax,4), %rbp
	.p2align 4
	.p2align 3
.L16:
	movq	%rbp, %r8
	xorl	%edx, %edx
	movq	%r15, %rcx
	call	memset
	xorl	%r8d, %r8d
	.p2align 4
	.p2align 3
.L14:
	movl	(%r15,%r8), %ecx
	xorl	%eax, %eax
	.p2align 5
	.p2align 4
	.p2align 3
.L15:
	movq	(%rdi,%rax,8), %rdx
	movl	(%rdx,%r8), %edx
	imull	(%rsi,%rax,4), %edx
	addq	$1, %rax
	addl	%edx, %ecx
	cmpq	%r12, %rax
	jne	.L15
	movl	%ecx, (%r15,%r8)
	addq	$4, %r8
	cmpq	%r8, %r13
	jne	.L14
	subl	$1, %ebx
	jne	.L16
.L13:
	leaq	104(%rsp), %rcx
	call	*__imp_QueryPerformanceCounter(%rip)
	movq	104(%rsp), %rax
	pxor	%xmm0, %xmm0
	subq	96(%rsp), %rax
	cvtsi2sdq	%rax, %xmm0
	pxor	%xmm1, %xmm1
	cvtsi2sdq	112(%rsp), %xmm1
	movslq	92(%rsp), %rax
	mulsd	.LC0(%rip), %xmm0
	movabsq	$2305843009213693950, %rdx
	divsd	%xmm1, %xmm0
	divsd	.LC1(%rip), %xmm0
	movapd	%xmm0, %xmm6
	cmpq	%rax, %rdx
	jb	.L5
	leaq	0(,%rax,4), %rcx
	call	_Znay
	leaq	136(%rsp), %rcx
	movq	%rax, %rbx
	call	*__imp_QueryPerformanceFrequency(%rip)
	leaq	120(%rsp), %rcx
	call	*__imp_QueryPerformanceCounter(%rip)
	movl	92(%rsp), %r12d
	testl	%r12d, %r12d
	jle	.L17
	leal	-1(%r12), %eax
	movl	%r12d, %ebp
	movq	%r15, 72(%rsp)
	movq	%rdi, %r14
	shrl	$2, %ebp
	leal	-1(%r12), %r15d
	movslq	%r12d, %r13
	movl	$100, %edi
	leaq	4(,%rax,4), %rax
	salq	$4, %rbp
	movq	%rax, 40(%rsp)
	.p2align 4
	.p2align 3
.L27:
	movq	40(%rsp), %r8
	movq	%rbx, %rcx
	xorl	%edx, %edx
	call	memset
	xorl	%ecx, %ecx
	.p2align 4
	.p2align 3
.L18:
	movq	(%r14,%rcx,8), %rdx
	movl	(%rsi,%rcx,4), %r9d
	cmpl	$2, %r15d
	jbe	.L39
.L25:
	movd	%r9d, %xmm4
	xorl	%eax, %eax
	pshufd	$0, %xmm4, %xmm1
	movdqa	%xmm1, %xmm3
	psrlq	$32, %xmm3
	.p2align 6
	.p2align 4
	.p2align 3
.L22:
	movdqu	(%rdx,%rax), %xmm0
	movdqa	%xmm0, %xmm2
	psrlq	$32, %xmm0
	pmuludq	%xmm1, %xmm2
	pmuludq	%xmm3, %xmm0
	pshufd	$8, %xmm2, %xmm2
	pshufd	$8, %xmm0, %xmm0
	punpckldq	%xmm0, %xmm2
	movdqu	(%rbx,%rax), %xmm0
	paddd	%xmm2, %xmm0
	movups	%xmm0, (%rbx,%rax)
	addq	$16, %rax
	cmpq	%rax, %rbp
	jne	.L22
	testb	$3, %r12b
	je	.L19
	movl	%r12d, %eax
	andl	$-4, %eax
.L26:
	cltq
.L20:
	movl	(%rdx,%rax,4), %r8d
	imull	%r9d, %r8d
	addl	%r8d, (%rbx,%rax,4)
	addq	$1, %rax
	cmpl	%eax, %r12d
	jg	.L20
	addq	$1, %rcx
	cmpq	%rcx, %r13
	jne	.L18
.L24:
	subl	$1, %edi
	jne	.L27
	movq	72(%rsp), %r15
	movq	%r14, %rdi
.L17:
	leaq	128(%rsp), %rcx
	call	*__imp_QueryPerformanceCounter(%rip)
	pxor	%xmm1, %xmm1
	pxor	%xmm0, %xmm0
	movq	128(%rsp), %rax
	subq	120(%rsp), %rax
	movq	.refptr._ZSt4cout(%rip), %rcx
	cvtsi2sdq	136(%rsp), %xmm0
	movl	$22, %r8d
	cvtsi2sdq	%rax, %xmm1
	mulsd	.LC0(%rip), %xmm1
	leaq	.LC2(%rip), %rdx
	divsd	%xmm0, %xmm1
	divsd	.LC1(%rip), %xmm1
	movq	%xmm1, %r12
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	92(%rsp), %edx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	_ZNSolsEi
	movl	$34, %r8d
	leaq	.LC3(%rip), %rdx
	movq	%rax, %rbp
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%rbp, %rcx
	movapd	%xmm6, %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	movb	$32, 87(%rsp)
	movq	%rax, %rbp
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	cmpq	$0, 16(%rbp,%rax)
	je	.L28
	movq	%rbp, %rcx
	leaq	87(%rsp), %rdx
	movl	$1, %r8d
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%rax, %rbp
.L29:
	movq	%r12, %xmm1
	movq	%rbp, %rcx
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %r12
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%r12,%rax), %rbp
	testq	%rbp, %rbp
	je	.L72
	cmpb	$0, 56(%rbp)
	je	.L31
	movsbl	67(%rbp), %edx
.L32:
	movq	%r12, %rcx
	call	_ZNSo3putEc
	movq	%rax, %rcx
	call	_ZNSo5flushEv
	movq	%r15, %rcx
	call	_ZdaPv
	movq	%rbx, %rcx
	movq	%rdi, %rbx
	call	_ZdaPv
	movq	%rsi, %rcx
	call	_ZdaPv
	movslq	92(%rsp), %rax
	leaq	(%rdi,%rax,8), %rsi
	testl	%eax, %eax
	jle	.L37
.L36:
	movq	(%rbx), %rcx
	testq	%rcx, %rcx
	je	.L35
	call	_ZdaPv
.L35:
	addq	$8, %rbx
	cmpq	%rbx, %rsi
	jne	.L36
.L37:
	movq	%rdi, %rcx
	call	_ZdaPv
	addl	$1, 52(%rsp)
	movl	52(%rsp), %eax
	cmpl	%eax, 88(%rsp)
	jg	.L4
.L61:
	movups	144(%rsp), %xmm6
	xorl	%eax, %eax
	addq	$168, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.p2align 4,,10
	.p2align 3
.L19:
	addq	$1, %rcx
	cmpq	%rcx, %r13
	je	.L24
	movq	(%r14,%rcx,8), %rdx
	movl	(%rsi,%rcx,4), %r9d
	jmp	.L25
	.p2align 4,,10
	.p2align 3
.L39:
	xorl	%eax, %eax
	jmp	.L26
.L31:
	movq	%rbp, %rcx
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	0(%rbp), %rax
	movl	$10, %edx
	leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %rcx
	movq	48(%rax), %rax
	cmpq	%rcx, %rax
	je	.L32
	movq	%rbp, %rcx
	call	*%rax
	movsbl	%al, %edx
	jmp	.L32
.L28:
	movl	$32, %edx
	movq	%rbp, %rcx
	call	_ZNSo3putEc
	jmp	.L29
.L71:
	xorl	%ecx, %ecx
	xorl	%r12d, %r12d
	call	_Znay
	movq	%rax, %rsi
	jmp	.L11
.L5:
	call	__cxa_throw_bad_array_new_length
.L72:
	call	_ZSt16__throw_bad_castv
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC0:
	.long	0
	.long	1083129856
	.align 8
.LC1:
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

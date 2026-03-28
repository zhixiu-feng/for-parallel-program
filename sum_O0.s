	.file	"sum.cpp"
	.text
	.section	.text$_ZStanSt13_Ios_FmtflagsS_,"x"
	.linkonce discard
	.globl	_ZStanSt13_Ios_FmtflagsS_
	.def	_ZStanSt13_Ios_FmtflagsS_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZStanSt13_Ios_FmtflagsS_
_ZStanSt13_Ios_FmtflagsS_:
.LFB8200:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	movl	%edx, 24(%rbp)
	movl	16(%rbp), %eax
	andl	24(%rbp), %eax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZStorSt13_Ios_FmtflagsS_,"x"
	.linkonce discard
	.globl	_ZStorSt13_Ios_FmtflagsS_
	.def	_ZStorSt13_Ios_FmtflagsS_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZStorSt13_Ios_FmtflagsS_
_ZStorSt13_Ios_FmtflagsS_:
.LFB8201:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	movl	%edx, 24(%rbp)
	movl	16(%rbp), %eax
	orl	24(%rbp), %eax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZStcoSt13_Ios_Fmtflags,"x"
	.linkonce discard
	.globl	_ZStcoSt13_Ios_Fmtflags
	.def	_ZStcoSt13_Ios_Fmtflags;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZStcoSt13_Ios_Fmtflags
_ZStcoSt13_Ios_Fmtflags:
.LFB8203:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	movl	16(%rbp), %eax
	notl	%eax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZStoRRSt13_Ios_FmtflagsS_,"x"
	.linkonce discard
	.globl	_ZStoRRSt13_Ios_FmtflagsS_
	.def	_ZStoRRSt13_Ios_FmtflagsS_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZStoRRSt13_Ios_FmtflagsS_
_ZStoRRSt13_Ios_FmtflagsS_:
.LFB8204:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movl	%edx, 24(%rbp)
	movq	16(%rbp), %rax
	movl	(%rax), %eax
	movl	24(%rbp), %edx
	movl	%eax, %ecx
	call	_ZStorSt13_Ios_FmtflagsS_
	movq	16(%rbp), %rdx
	movl	%eax, (%rdx)
	movq	16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZStaNRSt13_Ios_FmtflagsS_,"x"
	.linkonce discard
	.globl	_ZStaNRSt13_Ios_FmtflagsS_
	.def	_ZStaNRSt13_Ios_FmtflagsS_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZStaNRSt13_Ios_FmtflagsS_
_ZStaNRSt13_Ios_FmtflagsS_:
.LFB8205:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movl	%edx, 24(%rbp)
	movq	16(%rbp), %rax
	movl	(%rax), %eax
	movl	24(%rbp), %edx
	movl	%eax, %ecx
	call	_ZStanSt13_Ios_FmtflagsS_
	movq	16(%rbp), %rdx
	movl	%eax, (%rdx)
	movq	16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt8ios_base4setfESt13_Ios_FmtflagsS0_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt8ios_base4setfESt13_Ios_FmtflagsS0_
	.def	_ZNSt8ios_base4setfESt13_Ios_FmtflagsS0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt8ios_base4setfESt13_Ios_FmtflagsS0_
_ZNSt8ios_base4setfESt13_Ios_FmtflagsS0_:
.LFB8234:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movl	%edx, 24(%rbp)
	movl	%r8d, 32(%rbp)
	movq	16(%rbp), %rax
	movl	24(%rax), %eax
	movl	%eax, -4(%rbp)
	movl	32(%rbp), %eax
	movl	%eax, %ecx
	call	_ZStcoSt13_Ios_Fmtflags
	movl	%eax, %edx
	movq	16(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rcx
	call	_ZStaNRSt13_Ios_FmtflagsS_
	movl	32(%rbp), %edx
	movl	24(%rbp), %eax
	movl	%eax, %ecx
	call	_ZStanSt13_Ios_FmtflagsS_
	movl	%eax, %edx
	movq	16(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rcx
	call	_ZStoRRSt13_Ios_FmtflagsS_
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt5fixedRSt8ios_base,"x"
	.linkonce discard
	.globl	_ZSt5fixedRSt8ios_base
	.def	_ZSt5fixedRSt8ios_base;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt5fixedRSt8ios_base
_ZSt5fixedRSt8ios_base:
.LFB8264:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movl	$260, %r8d
	movl	$4, %edx
	movq	%rax, %rcx
	call	_ZNSt8ios_base4setfESt13_Ios_FmtflagsS0_
	movq	16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt12setprecisioni,"x"
	.linkonce discard
	.globl	_ZSt12setprecisioni
	.def	_ZSt12setprecisioni;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt12setprecisioni
_ZSt12setprecisioni:
.LFB8880:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	movl	16(%rbp), %eax
	popq	%rbp
	ret
	.seh_endproc
	.text
	.globl	_Z9sum_naivePdi
	.def	_Z9sum_naivePdi;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z9sum_naivePdi
_Z9sum_naivePdi:
.LFB8898:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$16, %rsp
	.seh_stackalloc	16
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movl	%edx, 24(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
	movl	$0, -12(%rbp)
	jmp	.L18
.L19:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	16(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm0
	movsd	-8(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
	addl	$1, -12(%rbp)
.L18:
	movl	-12(%rbp), %eax
	cmpl	24(%rbp), %eax
	jl	.L19
	movsd	-8(%rbp), %xmm0
	addq	$16, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	_Z11sum_unroll2Pdi
	.def	_Z11sum_unroll2Pdi;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z11sum_unroll2Pdi
_Z11sum_unroll2Pdi:
.LFB8899:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movl	%edx, 24(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -16(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L22
.L23:
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	16(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm0
	movsd	-8(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
	movl	-20(%rbp), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,8), %rdx
	movq	16(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm0
	movsd	-16(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	addl	$2, -20(%rbp)
.L22:
	movl	-20(%rbp), %eax
	addl	$1, %eax
	cmpl	%eax, 24(%rbp)
	jg	.L23
	jmp	.L24
.L25:
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	16(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm0
	movsd	-8(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
	addl	$1, -20(%rbp)
.L24:
	movl	-20(%rbp), %eax
	cmpl	24(%rbp), %eax
	jl	.L25
	movsd	-8(%rbp), %xmm0
	addsd	-16(%rbp), %xmm0
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	_Z11sum_unroll4Pdi
	.def	_Z11sum_unroll4Pdi;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z11sum_unroll4Pdi
_Z11sum_unroll4Pdi:
.LFB8900:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movl	%edx, 24(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -16(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -24(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -32(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L28
.L29:
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	16(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm0
	movsd	-8(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
	movl	-36(%rbp), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,8), %rdx
	movq	16(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm0
	movsd	-16(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	movl	-36(%rbp), %eax
	cltq
	addq	$2, %rax
	leaq	0(,%rax,8), %rdx
	movq	16(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm0
	movsd	-24(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -24(%rbp)
	movl	-36(%rbp), %eax
	cltq
	addq	$3, %rax
	leaq	0(,%rax,8), %rdx
	movq	16(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm0
	movsd	-32(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
	addl	$4, -36(%rbp)
.L28:
	movl	-36(%rbp), %eax
	addl	$3, %eax
	cmpl	%eax, 24(%rbp)
	jg	.L29
	jmp	.L30
.L31:
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	16(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm0
	movsd	-8(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
	addl	$1, -36(%rbp)
.L30:
	movl	-36(%rbp), %eax
	cmpl	24(%rbp), %eax
	jl	.L31
	movsd	-8(%rbp), %xmm0
	addsd	-16(%rbp), %xmm0
	addsd	-24(%rbp), %xmm0
	addsd	-32(%rbp), %xmm0
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	_Z22sum_recursive_pairwisePdi
	.def	_Z22sum_recursive_pairwisePdi;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z22sum_recursive_pairwisePdi
_Z22sum_recursive_pairwisePdi:
.LFB8901:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movl	%edx, 24(%rbp)
	cmpl	$0, 24(%rbp)
	jne	.L34
	pxor	%xmm0, %xmm0
	jmp	.L35
.L34:
	cmpl	$1, 24(%rbp)
	jne	.L36
	movq	16(%rbp), %rax
	movsd	(%rax), %xmm0
	jmp	.L35
.L36:
	movl	24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	cltq
	movabsq	$1152921504606846975, %rdx
	cmpq	%rax, %rdx
	jb	.L37
	salq	$3, %rax
	movq	%rax, %rcx
	call	_Znay
	movq	%rax, -24(%rbp)
	movl	$0, -4(%rbp)
	movl	$0, -8(%rbp)
	jmp	.L39
.L37:
	call	__cxa_throw_bad_array_new_length
.L40:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	16(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	movl	-4(%rbp), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,8), %rdx
	movq	16(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm0
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	addsd	%xmm1, %xmm0
	movsd	%xmm0, (%rax)
	addl	$2, -4(%rbp)
	addl	$1, -8(%rbp)
.L39:
	movl	-4(%rbp), %eax
	addl	$1, %eax
	cmpl	%eax, 24(%rbp)
	jg	.L40
	movl	-4(%rbp), %eax
	cmpl	24(%rbp), %eax
	jge	.L41
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	16(%rbp), %rax
	addq	%rax, %rdx
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	movsd	(%rdx), %xmm0
	movsd	%xmm0, (%rax)
.L41:
	movl	-12(%rbp), %edx
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	call	_Z22sum_recursive_pairwisePdi
	movq	%xmm0, %rax
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L42
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZdaPv
.L42:
	movsd	-32(%rbp), %xmm0
.L35:
	addq	$64, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	_Z11repeat_timei
	.def	_Z11repeat_timei;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z11repeat_timei
_Z11repeat_timei:
.LFB8902:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	cmpl	$999, 16(%rbp)
	jg	.L44
	movl	$100000, %eax
	jmp	.L45
.L44:
	cmpl	$9999, 16(%rbp)
	jg	.L46
	movl	$10000, %eax
	jmp	.L45
.L46:
	movl	$2000, %eax
.L45:
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC1:
	.ascii "n\0"
.LC2:
	.ascii "\11naive(ms)\0"
.LC3:
	.ascii "\11unroll2(ms)\0"
.LC4:
	.ascii "\11unroll4(ms)\0"
.LC5:
	.ascii "\11recursive(ms)\0"
.LC6:
	.ascii "\11naive_sum\0"
.LC7:
	.ascii "\11unroll2_sum\0"
.LC8:
	.ascii "\11unroll4_sum\0"
.LC9:
	.ascii "\11recursive_sum\0"
.LC12:
	.ascii "\11\0"
.LC13:
	.ascii "guard = \0"
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB8903:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$232, %rsp
	.seh_stackalloc	232
	leaq	224(%rsp), %rbp
	.seh_setframe	%rbp, 224
	.seh_endprologue
	call	__main
	movl	$64, -160(%rbp)
	movl	$128, -156(%rbp)
	movl	$256, -152(%rbp)
	movl	$512, -148(%rbp)
	movl	$1024, -144(%rbp)
	movl	$2048, -140(%rbp)
	movl	$4096, -136(%rbp)
	movl	$8192, -132(%rbp)
	movl	$16384, -128(%rbp)
	movl	$32768, -124(%rbp)
	movl	$65536, -120(%rbp)
	movl	$11, -60(%rbp)
	leaq	-168(%rbp), %rax
	movq	%rax, %rcx
	movq	__imp_QueryPerformanceFrequency(%rip), %rax
	call	*%rax
	leaq	_ZSt5fixedRSt8ios_base(%rip), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZNSolsEPFRSt8ios_baseS0_E
	movq	%rax, %rbx
	movl	$9, %ecx
	call	_ZSt12setprecisioni
	movl	%eax, %edx
	movq	%rbx, %rcx
	call	_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St13_Setprecision
	leaq	.LC1(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rax
	movq	%rax, %rdx
	call	_ZNSolsEPFRSoS_E
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -192(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L48
.L62:
	movl	-4(%rbp), %eax
	cltq
	movl	-160(%rbp,%rax,4), %eax
	movl	%eax, -64(%rbp)
	movl	-64(%rbp), %eax
	movl	%eax, %ecx
	call	_Z11repeat_timei
	movl	%eax, -68(%rbp)
	movl	-64(%rbp), %eax
	cltq
	movabsq	$1152921504606846975, %rdx
	cmpq	%rax, %rdx
	jb	.L49
	salq	$3, %rax
	movq	%rax, %rcx
	call	_Znay
	movq	%rax, -80(%rbp)
	movl	$0, -8(%rbp)
	jmp	.L51
.L49:
	call	__cxa_throw_bad_array_new_length
.L52:
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movsd	.LC10(%rip), %xmm0
	movsd	%xmm0, (%rax)
	addl	$1, -8(%rbp)
.L51:
	movl	-8(%rbp), %eax
	cmpl	-64(%rbp), %eax
	jl	.L52
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -16(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -24(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -32(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -40(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, %rcx
	movq	__imp_QueryPerformanceCounter(%rip), %rax
	call	*%rax
	movl	$0, -44(%rbp)
	jmp	.L53
.L54:
	movl	-64(%rbp), %edx
	movq	-80(%rbp), %rax
	movq	%rax, %rcx
	call	_Z9sum_naivePdi
	movq	%xmm0, %rax
	movq	%rax, -16(%rbp)
	movsd	-192(%rbp), %xmm0
	addsd	-16(%rbp), %xmm0
	movsd	%xmm0, -192(%rbp)
	addl	$1, -44(%rbp)
.L53:
	movl	-44(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jl	.L54
	leaq	-184(%rbp), %rax
	movq	%rax, %rcx
	movq	__imp_QueryPerformanceCounter(%rip), %rax
	call	*%rax
	movq	-184(%rbp), %rdx
	movq	-176(%rbp), %rax
	subq	%rax, %rdx
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rdx, %xmm1
	movsd	.LC11(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	movq	-168(%rbp), %rax
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rax, %xmm1
	divsd	%xmm1, %xmm0
	pxor	%xmm1, %xmm1
	cvtsi2sdl	-68(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -88(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, %rcx
	movq	__imp_QueryPerformanceCounter(%rip), %rax
	call	*%rax
	movl	$0, -48(%rbp)
	jmp	.L55
.L56:
	movl	-64(%rbp), %edx
	movq	-80(%rbp), %rax
	movq	%rax, %rcx
	call	_Z11sum_unroll2Pdi
	movq	%xmm0, %rax
	movq	%rax, -24(%rbp)
	movsd	-192(%rbp), %xmm0
	addsd	-24(%rbp), %xmm0
	movsd	%xmm0, -192(%rbp)
	addl	$1, -48(%rbp)
.L55:
	movl	-48(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jl	.L56
	leaq	-184(%rbp), %rax
	movq	%rax, %rcx
	movq	__imp_QueryPerformanceCounter(%rip), %rax
	call	*%rax
	movq	-184(%rbp), %rdx
	movq	-176(%rbp), %rax
	subq	%rax, %rdx
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rdx, %xmm1
	movsd	.LC11(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	movq	-168(%rbp), %rax
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rax, %xmm1
	divsd	%xmm1, %xmm0
	pxor	%xmm1, %xmm1
	cvtsi2sdl	-68(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -96(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, %rcx
	movq	__imp_QueryPerformanceCounter(%rip), %rax
	call	*%rax
	movl	$0, -52(%rbp)
	jmp	.L57
.L58:
	movl	-64(%rbp), %edx
	movq	-80(%rbp), %rax
	movq	%rax, %rcx
	call	_Z11sum_unroll4Pdi
	movq	%xmm0, %rax
	movq	%rax, -32(%rbp)
	movsd	-192(%rbp), %xmm0
	addsd	-32(%rbp), %xmm0
	movsd	%xmm0, -192(%rbp)
	addl	$1, -52(%rbp)
.L57:
	movl	-52(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jl	.L58
	leaq	-184(%rbp), %rax
	movq	%rax, %rcx
	movq	__imp_QueryPerformanceCounter(%rip), %rax
	call	*%rax
	movq	-184(%rbp), %rdx
	movq	-176(%rbp), %rax
	subq	%rax, %rdx
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rdx, %xmm1
	movsd	.LC11(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	movq	-168(%rbp), %rax
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rax, %xmm1
	divsd	%xmm1, %xmm0
	pxor	%xmm1, %xmm1
	cvtsi2sdl	-68(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -104(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, %rcx
	movq	__imp_QueryPerformanceCounter(%rip), %rax
	call	*%rax
	movl	$0, -56(%rbp)
	jmp	.L59
.L60:
	movl	-64(%rbp), %edx
	movq	-80(%rbp), %rax
	movq	%rax, %rcx
	call	_Z22sum_recursive_pairwisePdi
	movq	%xmm0, %rax
	movq	%rax, -40(%rbp)
	movsd	-192(%rbp), %xmm0
	addsd	-40(%rbp), %xmm0
	movsd	%xmm0, -192(%rbp)
	addl	$1, -56(%rbp)
.L59:
	movl	-56(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jl	.L60
	leaq	-184(%rbp), %rax
	movq	%rax, %rcx
	movq	__imp_QueryPerformanceCounter(%rip), %rax
	call	*%rax
	movq	-184(%rbp), %rdx
	movq	-176(%rbp), %rax
	subq	%rax, %rdx
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rdx, %xmm1
	movsd	.LC11(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	movq	-168(%rbp), %rax
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rax, %xmm1
	divsd	%xmm1, %xmm0
	pxor	%xmm1, %xmm1
	cvtsi2sdl	-68(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -112(%rbp)
	movl	-64(%rbp), %edx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZNSolsEi
	movq	%rax, %rcx
	leaq	.LC12(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movsd	-88(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	movq	%rax, %rcx
	call	_ZNSolsEd
	movq	%rax, %rcx
	leaq	.LC12(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movsd	-96(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	movq	%rax, %rcx
	call	_ZNSolsEd
	movq	%rax, %rcx
	leaq	.LC12(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movsd	-104(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	movq	%rax, %rcx
	call	_ZNSolsEd
	movq	%rax, %rcx
	leaq	.LC12(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movsd	-112(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	movq	%rax, %rcx
	call	_ZNSolsEd
	movq	%rax, %rcx
	leaq	.LC12(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movsd	-16(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	movq	%rax, %rcx
	call	_ZNSolsEd
	movq	%rax, %rcx
	leaq	.LC12(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movsd	-24(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	movq	%rax, %rcx
	call	_ZNSolsEd
	movq	%rax, %rcx
	leaq	.LC12(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movsd	-32(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	movq	%rax, %rcx
	call	_ZNSolsEd
	movq	%rax, %rcx
	leaq	.LC12(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movsd	-40(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	movq	%rax, %rcx
	call	_ZNSolsEd
	movq	%rax, %rcx
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rax
	movq	%rax, %rdx
	call	_ZNSolsEPFRSoS_E
	cmpq	$0, -80(%rbp)
	je	.L61
	movq	-80(%rbp), %rax
	movq	%rax, %rcx
	call	_ZdaPv
.L61:
	addl	$1, -4(%rbp)
.L48:
	movl	-4(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jl	.L62
	leaq	.LC13(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movsd	-192(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	movq	%rax, %rcx
	call	_ZNSolsEd
	movq	%rax, %rcx
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rax
	movq	%rax, %rdx
	call	_ZNSolsEPFRSoS_E
	movl	$0, %eax
	addq	$232, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC10:
	.long	0
	.long	1072693248
	.align 8
.LC11:
	.long	0
	.long	1083129856
	.def	__main;	.scl	2;	.type	32;	.endef
	.ident	"GCC: (Rev13, Built by MSYS2 project) 15.2.0"
	.def	_Znay;	.scl	2;	.type	32;	.endef
	.def	__cxa_throw_bad_array_new_length;	.scl	2;	.type	32;	.endef
	.def	_ZdaPv;	.scl	2;	.type	32;	.endef
	.def	_ZNSolsEPFRSt8ios_baseS0_E;	.scl	2;	.type	32;	.endef
	.def	_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St13_Setprecision;	.scl	2;	.type	32;	.endef
	.def	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc;	.scl	2;	.type	32;	.endef
	.def	_ZNSolsEPFRSoS_E;	.scl	2;	.type	32;	.endef
	.def	_ZNSolsEi;	.scl	2;	.type	32;	.endef
	.def	_ZNSolsEd;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, "dr"
	.p2align	3, 0
	.globl	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	.linkonce	discard
.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_:
	.quad	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	.section	.rdata$.refptr._ZSt4cout, "dr"
	.p2align	3, 0
	.globl	.refptr._ZSt4cout
	.linkonce	discard
.refptr._ZSt4cout:
	.quad	_ZSt4cout

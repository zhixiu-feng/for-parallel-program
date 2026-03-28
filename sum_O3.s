	.file	"sum.cpp"
	.text
	.section	.text$_ZNKSt5ctypeIcE8do_widenEc,"x"
	.linkonce discard
	.align 2
	.p2align 4
	.globl	_ZNKSt5ctypeIcE8do_widenEc
	.def	_ZNKSt5ctypeIcE8do_widenEc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt5ctypeIcE8do_widenEc
_ZNKSt5ctypeIcE8do_widenEc:
.LFB10080:
	.seh_endprologue
	movl	%edx, %eax
	ret
	.seh_endproc
	.text
	.p2align 4
	.def	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0
_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0:
.LFB11188:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	(%rcx), %rax
	movq	-24(%rax), %rax
	movq	%rcx, %rbx
	movq	240(%rcx,%rax), %rcx
	testq	%rcx, %rcx
	je	.L8
	cmpb	$0, 56(%rcx)
	je	.L5
	movsbl	67(%rcx), %edx
.L6:
	movq	%rbx, %rcx
	call	_ZNSo3putEc
	movq	%rax, %rcx
	addq	$48, %rsp
	popq	%rbx
	jmp	_ZNSo5flushEv
	.p2align 4,,10
	.p2align 3
.L5:
	movq	%rcx, 40(%rsp)
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	40(%rsp), %rcx
	movl	$10, %edx
	leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %r8
	movq	(%rcx), %rax
	movq	48(%rax), %rax
	cmpq	%r8, %rax
	je	.L6
	call	*%rax
	movsbl	%al, %edx
	jmp	.L6
.L8:
	call	_ZSt16__throw_bad_castv
	nop
	.seh_endproc
	.p2align 4
	.def	_Z22sum_recursive_pairwisePdi.part.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_Z22sum_recursive_pairwisePdi.part.0
_Z22sum_recursive_pairwisePdi.part.0:
.LFB11186:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	leal	1(%rdx), %edi
	movq	%rcx, %rbx
	movl	%edx, %esi
	shrl	$31, %edi
	leal	1(%rdx,%rdi), %edi
	sarl	%edi
	movslq	%edi, %rcx
	movq	%rcx, %rax
	shrq	$60, %rax
	jne	.L10
	salq	$3, %rcx
	call	_Znay
	movq	%rax, %rcx
	cmpl	$1, %esi
	jle	.L26
	movl	%esi, %r10d
	leal	-2(%rsi), %r8d
	shrl	%r10d
	cmpl	$1, %r8d
	jbe	.L21
	movl	%esi, %r9d
	xorl	%eax, %eax
	shrl	$2, %r9d
	movl	%r9d, %edx
	salq	$4, %rdx
	.p2align 6
	.p2align 4
	.p2align 3
.L14:
	movupd	(%rbx,%rax,2), %xmm1
	movupd	16(%rbx,%rax,2), %xmm0
	movlpd	8(%rbx,%rax,2), %xmm0
	movhpd	16(%rbx,%rax,2), %xmm1
	addpd	%xmm1, %xmm0
	movups	%xmm0, (%rcx,%rax)
	addq	$16, %rax
	cmpq	%rax, %rdx
	jne	.L14
	leal	(%r9,%r9), %eax
	sall	$2, %r9d
	cmpl	%eax, %r10d
	je	.L27
.L13:
	movslq	%r9d, %r9
	andl	$-2, %r8d
	cltq
	movsd	8(%rbx,%r9,8), %xmm0
	addsd	(%rbx,%r9,8), %xmm0
	addl	$2, %r8d
	movsd	%xmm0, (%rcx,%rax,8)
	cmpl	%r8d, %esi
	jle	.L19
.L17:
	movslq	%r8d, %r8
	movsd	(%rbx,%r8,8), %xmm0
	movsd	%xmm0, (%rcx,%r10,8)
.L16:
	movl	%edi, %edx
	movq	%rcx, 40(%rsp)
	call	_Z22sum_recursive_pairwisePdi.part.0
	movq	40(%rsp), %rcx
	movq	%xmm0, %rbx
.L20:
	call	_ZdaPv
	movq	%rbx, %xmm0
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
	.p2align 3
.L27:
	andl	$-2, %r8d
	addl	$2, %r8d
	cmpl	%r8d, %esi
	jg	.L17
	jmp	.L16
	.p2align 4,,10
	.p2align 3
.L19:
	cmpl	$1, %edi
	jne	.L16
	movq	(%rcx), %rbx
	jmp	.L20
	.p2align 4,,10
	.p2align 3
.L26:
	je	.L28
	xorl	%ebx, %ebx
	jmp	.L20
.L21:
	xorl	%eax, %eax
	xorl	%r9d, %r9d
	jmp	.L13
.L28:
	xorl	%r10d, %r10d
	xorl	%r8d, %r8d
	jmp	.L17
.L10:
	call	__cxa_throw_bad_array_new_length
	nop
	.seh_endproc
	.p2align 4
	.globl	_Z9sum_naivePdi
	.def	_Z9sum_naivePdi;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z9sum_naivePdi
_Z9sum_naivePdi:
.LFB10611:
	.seh_endprologue
	testl	%edx, %edx
	jle	.L35
	cmpl	$1, %edx
	je	.L36
	movl	%edx, %r8d
	movq	%rcx, %rax
	pxor	%xmm0, %xmm0
	shrl	%r8d
	salq	$4, %r8
	addq	%rcx, %r8
	.p2align 5
	.p2align 4
	.p2align 3
.L32:
	addsd	(%rax), %xmm0
	addq	$16, %rax
	addsd	-8(%rax), %xmm0
	cmpq	%rax, %r8
	jne	.L32
	movl	%edx, %eax
	andl	$-2, %eax
	andl	$1, %edx
	je	.L29
.L31:
	cltq
	addsd	(%rcx,%rax,8), %xmm0
.L29:
	ret
	.p2align 4,,10
	.p2align 3
.L35:
	pxor	%xmm0, %xmm0
	ret
.L36:
	xorl	%eax, %eax
	pxor	%xmm0, %xmm0
	jmp	.L31
	.seh_endproc
	.p2align 4
	.globl	_Z11sum_unroll2Pdi
	.def	_Z11sum_unroll2Pdi;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z11sum_unroll2Pdi
_Z11sum_unroll2Pdi:
.LFB10612:
	.seh_endprologue
	cmpl	$1, %edx
	jle	.L42
	movl	%edx, %r9d
	xorl	%eax, %eax
	pxor	%xmm0, %xmm0
	shrl	%r9d
	.p2align 5
	.p2align 4
	.p2align 3
.L40:
	movq	%rax, %r8
	addq	$1, %rax
	salq	$4, %r8
	movupd	(%rcx,%r8), %xmm1
	addpd	%xmm1, %xmm0
	cmpl	%r9d, %eax
	jb	.L40
	leal	-2(%rdx), %eax
	movapd	%xmm0, %xmm1
	unpckhpd	%xmm0, %xmm0
	andl	$-2, %eax
	addl	$2, %eax
.L39:
	cmpl	%eax, %edx
	jle	.L41
	cltq
	addsd	(%rcx,%rax,8), %xmm1
.L41:
	addsd	%xmm1, %xmm0
	ret
	.p2align 4,,10
	.p2align 3
.L42:
	pxor	%xmm0, %xmm0
	xorl	%eax, %eax
	movapd	%xmm0, %xmm1
	jmp	.L39
	.seh_endproc
	.p2align 4
	.globl	_Z11sum_unroll4Pdi
	.def	_Z11sum_unroll4Pdi;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z11sum_unroll4Pdi
_Z11sum_unroll4Pdi:
.LFB10613:
	.seh_endprologue
	cmpl	$3, %edx
	jle	.L49
	movl	%edx, %r9d
	pxor	%xmm1, %xmm1
	movq	%rcx, %rax
	xorl	%r8d, %r8d
	shrl	$2, %r9d
	movapd	%xmm1, %xmm2
	.p2align 5
	.p2align 4
	.p2align 3
.L46:
	movupd	(%rax), %xmm4
	movupd	16(%rax), %xmm5
	addl	$1, %r8d
	addq	$32, %rax
	addpd	%xmm4, %xmm2
	addpd	%xmm5, %xmm1
	cmpl	%r9d, %r8d
	jb	.L46
	leal	-4(%rdx), %eax
	movapd	%xmm2, %xmm3
	movapd	%xmm1, %xmm0
	andl	$-4, %eax
	unpckhpd	%xmm2, %xmm2
	unpckhpd	%xmm1, %xmm1
	addl	$4, %eax
.L45:
	cmpl	%eax, %edx
	jle	.L47
	movslq	%eax, %r8
	leal	1(%rax), %r9d
	addsd	(%rcx,%r8,8), %xmm3
	cmpl	%r9d, %edx
	jle	.L47
	addl	$2, %eax
	addsd	8(%rcx,%r8,8), %xmm3
	cmpl	%edx, %eax
	jge	.L47
	addsd	16(%rcx,%r8,8), %xmm3
.L47:
	addsd	%xmm2, %xmm3
	addsd	%xmm0, %xmm3
	movapd	%xmm3, %xmm0
	addsd	%xmm1, %xmm0
	ret
	.p2align 4,,10
	.p2align 3
.L49:
	pxor	%xmm1, %xmm1
	xorl	%eax, %eax
	movapd	%xmm1, %xmm0
	movapd	%xmm1, %xmm2
	movapd	%xmm1, %xmm3
	jmp	.L45
	.seh_endproc
	.p2align 4
	.globl	_Z22sum_recursive_pairwisePdi
	.def	_Z22sum_recursive_pairwisePdi;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z22sum_recursive_pairwisePdi
_Z22sum_recursive_pairwisePdi:
.LFB10614:
	.seh_endprologue
	testl	%edx, %edx
	je	.L54
	cmpl	$1, %edx
	je	.L55
	jmp	_Z22sum_recursive_pairwisePdi.part.0
	.p2align 4,,10
	.p2align 3
.L54:
	pxor	%xmm0, %xmm0
	ret
	.p2align 4,,10
	.p2align 3
.L55:
	movsd	(%rcx), %xmm0
	ret
	.seh_endproc
	.p2align 4
	.globl	_Z11repeat_timei
	.def	_Z11repeat_timei;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z11repeat_timei
_Z11repeat_timei:
.LFB10615:
	.seh_endprologue
	movl	$100000, %eax
	cmpl	$999, %ecx
	jle	.L56
	cmpl	$10000, %ecx
	movl	$10000, %eax
	movl	$2000, %edx
	cmovge	%edx, %eax
.L56:
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC4:
	.ascii "n\0"
.LC5:
	.ascii "\11naive(ms)\0"
.LC6:
	.ascii "\11unroll2(ms)\0"
.LC7:
	.ascii "\11unroll4(ms)\0"
.LC8:
	.ascii "\11recursive(ms)\0"
.LC9:
	.ascii "\11naive_sum\0"
.LC10:
	.ascii "\11unroll2_sum\0"
.LC11:
	.ascii "\11unroll4_sum\0"
.LC12:
	.ascii "\11recursive_sum\0"
.LC16:
	.ascii "\11\0"
.LC17:
	.ascii "guard = \0"
	.section	.text.startup,"x"
	.p2align 4
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB10616:
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
	subq	$296, %rsp
	.seh_stackalloc	296
	movups	%xmm6, 128(%rsp)
	.seh_savexmm	%xmm6, 128
	movups	%xmm7, 144(%rsp)
	.seh_savexmm	%xmm7, 144
	movups	%xmm8, 160(%rsp)
	.seh_savexmm	%xmm8, 160
	movups	%xmm9, 176(%rsp)
	.seh_savexmm	%xmm9, 176
	movups	%xmm10, 192(%rsp)
	.seh_savexmm	%xmm10, 192
	movups	%xmm11, 208(%rsp)
	.seh_savexmm	%xmm11, 208
	movups	%xmm12, 224(%rsp)
	.seh_savexmm	%xmm12, 224
	movups	%xmm13, 240(%rsp)
	.seh_savexmm	%xmm13, 240
	movups	%xmm14, 256(%rsp)
	.seh_savexmm	%xmm14, 256
	movups	%xmm15, 272(%rsp)
	.seh_savexmm	%xmm15, 272
	.seh_endprologue
	movl	$64, %esi
	call	__main
	leaq	48(%rsp), %rcx
	leaq	84(%rsp), %r13
	movdqu	.LC1(%rip), %xmm0
	movq	.LC3(%rip), %rax
	movups	%xmm0, 84(%rsp)
	movdqu	.LC2(%rip), %xmm0
	movq	%rax, 116(%rsp)
	movups	%xmm0, 100(%rsp)
	call	*__imp_QueryPerformanceFrequency(%rip)
	movq	.refptr._ZSt4cout(%rip), %r14
	movl	$1, %r8d
	movq	(%r14), %rax
	movq	%r14, %rcx
	movq	-24(%rax), %rdx
	addq	%r14, %rdx
	movl	24(%rdx), %eax
	movq	$9, 8(%rdx)
	andl	$-261, %eax
	orl	$4, %eax
	movl	%eax, 24(%rdx)
	leaq	.LC4(%rip), %rdx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	$10, %r8d
	leaq	.LC5(%rip), %rdx
	movq	%r14, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	$12, %r8d
	leaq	.LC6(%rip), %rdx
	movq	%r14, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	$12, %r8d
	leaq	.LC7(%rip), %rdx
	movq	%r14, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	$14, %r8d
	leaq	.LC8(%rip), %rdx
	movq	%r14, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	$10, %r8d
	leaq	.LC9(%rip), %rdx
	movq	%r14, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	$12, %r8d
	leaq	.LC10(%rip), %rdx
	movq	%r14, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	$12, %r8d
	leaq	.LC11(%rip), %rdx
	movq	%r14, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	$14, %r8d
	leaq	.LC12(%rip), %rdx
	movq	%r14, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%r14, %rcx
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0
	leaq	124(%rsp), %rax
	movq	$0x000000000, 72(%rsp)
	movddup	.LC14(%rip), %xmm9
	movq	%rax, 40(%rsp)
	movq	__imp_QueryPerformanceCounter(%rip), %rdi
	movslq	%esi, %rax
	movsd	.LC15(%rip), %xmm11
	cmpl	$999, %esi
	jle	.L61
.L131:
	leaq	0(,%rax,8), %rcx
	cmpl	$9999, %esi
	jle	.L128
	call	_Znay
	movl	$2000, %ebp
	movq	%rax, %r15
.L63:
	movl	%esi, %ecx
	movq	%r15, %rax
	shrl	%ecx
	salq	$4, %rcx
	leaq	(%rcx,%r15), %rdx
	andl	$16, %ecx
	je	.L68
	leaq	16(%r15), %rax
	movups	%xmm9, (%r15)
	cmpq	%rdx, %rax
	je	.L123
	.p2align 5
	.p2align 4
	.p2align 3
.L68:
	movups	%xmm9, (%rax)
	addq	$32, %rax
	movups	%xmm9, -16(%rax)
	cmpq	%rdx, %rax
	jne	.L68
.L123:
	testb	$1, %sil
	je	.L66
	movl	%esi, %eax
	andl	$-2, %eax
.L67:
	movq	.LC14(%rip), %rbx
	cltq
	movq	%rbx, (%r15,%rax,8)
.L66:
	leaq	56(%rsp), %rbx
	movq	%rbx, %rcx
	call	*%rdi
	testl	%esi, %esi
	jle	.L102
	movl	%esi, %edx
	movl	%esi, %r9d
	xorl	%ecx, %ecx
	shrl	%edx
	andl	$-2, %r9d
	salq	$4, %rdx
	addq	%r15, %rdx
	.p2align 4
	.p2align 3
.L75:
	cmpl	$1, %esi
	je	.L103
	movq	%r15, %rax
	pxor	%xmm13, %xmm13
	.p2align 5
	.p2align 4
	.p2align 3
.L73:
	addsd	(%rax), %xmm13
	addq	$16, %rax
	addsd	-8(%rax), %xmm13
	cmpq	%rax, %rdx
	jne	.L73
	movslq	%r9d, %rax
	cmpl	%r9d, %esi
	je	.L74
.L72:
	addsd	(%r15,%rax,8), %xmm13
.L74:
	movsd	72(%rsp), %xmm0
	addl	$1, %ecx
	addsd	%xmm13, %xmm0
	movsd	%xmm0, 72(%rsp)
	cmpl	%ecx, %ebp
	jne	.L75
.L76:
	leaq	64(%rsp), %rcx
	pxor	%xmm8, %xmm8
	pxor	%xmm10, %xmm10
	call	*%rdi
	movq	64(%rsp), %rax
	subq	56(%rsp), %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm8
	mulsd	%xmm11, %xmm8
	cvtsi2sdq	48(%rsp), %xmm0
	cvtsi2sdl	%ebp, %xmm10
	movq	%rbx, %rcx
	divsd	%xmm0, %xmm8
	call	*%rdi
	leal	-2(%rsi), %r10d
	movl	%esi, %ecx
	xorl	%r9d, %r9d
	shrl	%ecx
	andl	$-2, %r10d
	divsd	%xmm10, %xmm8
.L77:
	pxor	%xmm0, %xmm0
	xorl	%eax, %eax
	movapd	%xmm0, %xmm14
	cmpl	$1, %esi
	jle	.L83
.L81:
	xorl	%eax, %eax
	pxor	%xmm0, %xmm0
	.p2align 5
	.p2align 4
	.p2align 3
.L78:
	movq	%rax, %rdx
	addq	$1, %rax
	salq	$4, %rdx
	movupd	(%r15,%rdx), %xmm1
	addpd	%xmm1, %xmm0
	cmpl	%ecx, %eax
	jb	.L78
	movapd	%xmm0, %xmm14
	leal	2(%r10), %eax
	unpckhpd	%xmm0, %xmm0
.L83:
	cmpl	%eax, %esi
	jg	.L82
	addsd	%xmm0, %xmm14
	movsd	72(%rsp), %xmm0
	addl	$1, %r9d
	addsd	%xmm14, %xmm0
	movsd	%xmm0, 72(%rsp)
	cmpl	%ebp, %r9d
	jne	.L77
.L80:
	leaq	64(%rsp), %rcx
	pxor	%xmm7, %xmm7
	call	*%rdi
	movq	64(%rsp), %rax
	subq	56(%rsp), %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm7
	mulsd	%xmm11, %xmm7
	cvtsi2sdq	48(%rsp), %xmm0
	movq	%rbx, %rcx
	divsd	%xmm0, %xmm7
	call	*%rdi
	leal	-4(%rsi), %r10d
	movl	%esi, %ecx
	xorl	%r9d, %r9d
	shrl	$2, %ecx
	andl	$-4, %r10d
	divsd	%xmm10, %xmm7
	.p2align 4
	.p2align 3
.L84:
	cmpl	$3, %esi
	jle	.L129
	pxor	%xmm2, %xmm2
	movq	%r15, %rax
	xorl	%edx, %edx
	movapd	%xmm2, %xmm0
	.p2align 5
	.p2align 4
	.p2align 3
.L85:
	movupd	(%rax), %xmm3
	movupd	16(%rax), %xmm4
	addl	$1, %edx
	addq	$32, %rax
	addpd	%xmm3, %xmm0
	addpd	%xmm4, %xmm2
	cmpl	%ecx, %edx
	jb	.L85
	movapd	%xmm0, %xmm1
	unpckhpd	%xmm0, %xmm0
	leal	4(%r10), %eax
	movapd	%xmm0, %xmm6
	movapd	%xmm2, %xmm0
	unpckhpd	%xmm2, %xmm2
.L90:
	cmpl	%eax, %esi
	jle	.L86
	movslq	%eax, %rdx
	leal	1(%rax), %r8d
	addsd	(%r15,%rdx,8), %xmm1
	cmpl	%esi, %r8d
	jge	.L86
	addl	$2, %eax
	addsd	8(%r15,%rdx,8), %xmm1
	cmpl	%esi, %eax
	jge	.L86
	addsd	16(%r15,%rdx,8), %xmm1
.L86:
	addsd	%xmm1, %xmm6
	addl	$1, %r9d
	addsd	%xmm0, %xmm6
	movsd	72(%rsp), %xmm0
	addsd	%xmm2, %xmm6
	addsd	%xmm6, %xmm0
	movsd	%xmm0, 72(%rsp)
	cmpl	%ebp, %r9d
	jne	.L84
	leaq	64(%rsp), %rcx
	pxor	%xmm12, %xmm12
	call	*%rdi
	movq	64(%rsp), %rax
	subq	56(%rsp), %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm12
	mulsd	%xmm11, %xmm12
	cvtsi2sdq	48(%rsp), %xmm0
	movq	%rbx, %rcx
	divsd	%xmm0, %xmm12
	divsd	%xmm10, %xmm12
	call	*%rdi
	testl	%esi, %esi
	je	.L104
	cmpl	$1, %esi
	je	.L92
	xorl	%ebx, %ebx
	.p2align 4
	.p2align 3
.L93:
	movl	%esi, %edx
	movq	%r15, %rcx
	addl	$1, %ebx
	call	_Z22sum_recursive_pairwisePdi.part.0
	movsd	72(%rsp), %xmm1
	addsd	%xmm0, %xmm1
	movsd	%xmm1, 72(%rsp)
	cmpl	%ebx, %ebp
	jne	.L93
.L94:
	movsd	%xmm0, 32(%rsp)
	leaq	64(%rsp), %rcx
	pxor	%xmm15, %xmm15
	call	*%rdi
	movq	64(%rsp), %rax
	subq	56(%rsp), %rax
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rax, %xmm15
	mulsd	%xmm11, %xmm15
	cvtsi2sdq	48(%rsp), %xmm1
	movl	%esi, %edx
	movq	%r14, %rcx
	divsd	%xmm1, %xmm15
	call	_ZNSolsEi
	movl	$1, %r8d
	leaq	.LC16(%rip), %rdx
	movq	%rax, %rbx
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movapd	%xmm8, %xmm1
	movq	%rbx, %rcx
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$1, %r8d
	leaq	.LC16(%rip), %rdx
	movq	%rax, %rbx
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movapd	%xmm7, %xmm1
	movq	%rbx, %rcx
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$1, %r8d
	leaq	.LC16(%rip), %rdx
	movq	%rax, %rbx
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movapd	%xmm12, %xmm1
	movq	%rbx, %rcx
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$1, %r8d
	leaq	.LC16(%rip), %rdx
	movq	%rax, %rbx
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%rbx, %rcx
	divsd	%xmm10, %xmm15
	movapd	%xmm15, %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$1, %r8d
	leaq	.LC16(%rip), %rdx
	movq	%rax, %rbx
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movapd	%xmm13, %xmm1
	movq	%rbx, %rcx
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$1, %r8d
	leaq	.LC16(%rip), %rdx
	movq	%rax, %rbx
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movapd	%xmm14, %xmm1
	movq	%rbx, %rcx
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$1, %r8d
	leaq	.LC16(%rip), %rdx
	movq	%rax, %rbx
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movapd	%xmm6, %xmm1
	movq	%rbx, %rcx
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$1, %r8d
	leaq	.LC16(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %rbx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movsd	32(%rsp), %xmm1
	movq	%rbx, %rcx
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %rsi
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%rsi,%rax), %rbx
	testq	%rbx, %rbx
	je	.L130
	cmpb	$0, 56(%rbx)
	je	.L97
	movsbl	67(%rbx), %edx
.L98:
	movq	%rsi, %rcx
	call	_ZNSo3putEc
	movq	%rax, %rcx
	call	_ZNSo5flushEv
	movq	%r15, %rcx
	call	_ZdaPv
	cmpq	%r13, 40(%rsp)
	je	.L99
	movl	0(%r13), %esi
	addq	$4, %r13
	movslq	%esi, %rax
	cmpl	$999, %esi
	jg	.L131
.L61:
	movabsq	$1152921504606846975, %rbx
	cmpq	%rax, %rbx
	jb	.L64
	leaq	0(,%rax,8), %rcx
	movl	$100000, %ebp
	call	_Znay
	movq	%rax, %r15
	testl	%esi, %esi
	je	.L66
	cmpl	$1, %esi
	jne	.L63
	xorl	%eax, %eax
	jmp	.L67
	.p2align 4,,10
	.p2align 3
.L82:
	cltq
	addl	$1, %r9d
	addsd	(%r15,%rax,8), %xmm14
	addsd	%xmm0, %xmm14
	movsd	72(%rsp), %xmm0
	addsd	%xmm14, %xmm0
	movsd	%xmm0, 72(%rsp)
	cmpl	%r9d, %ebp
	je	.L80
	pxor	%xmm14, %xmm14
	xorl	%eax, %eax
	movapd	%xmm14, %xmm0
	cmpl	$1, %esi
	jne	.L81
	jmp	.L82
	.p2align 4,,10
	.p2align 3
.L129:
	pxor	%xmm2, %xmm2
	xorl	%eax, %eax
	movapd	%xmm2, %xmm0
	movapd	%xmm2, %xmm6
	movapd	%xmm2, %xmm1
	jmp	.L90
.L103:
	pxor	%xmm13, %xmm13
	xorl	%eax, %eax
	jmp	.L72
.L97:
	movq	%rbx, %rcx
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movl	$10, %edx
	leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %rcx
	movq	48(%rax), %rax
	cmpq	%rcx, %rax
	je	.L98
	movq	%rbx, %rcx
	call	*%rax
	movsbl	%al, %edx
	jmp	.L98
.L104:
	xorl	%eax, %eax
	pxor	%xmm1, %xmm1
	.p2align 5
	.p2align 4
	.p2align 3
.L91:
	movsd	72(%rsp), %xmm0
	addl	$1, %eax
	addsd	%xmm1, %xmm0
	movsd	%xmm0, 72(%rsp)
	cmpl	%ebp, %eax
	jne	.L91
	pxor	%xmm0, %xmm0
	jmp	.L94
.L128:
	call	_Znay
	movl	$10000, %ebp
	movq	%rax, %r15
	jmp	.L63
.L92:
	movsd	(%r15), %xmm0
	xorl	%eax, %eax
	.p2align 5
	.p2align 4
	.p2align 3
.L95:
	movsd	72(%rsp), %xmm1
	addl	$1, %eax
	addsd	%xmm0, %xmm1
	movsd	%xmm1, 72(%rsp)
	cmpl	%eax, %ebp
	jne	.L95
	jmp	.L94
.L102:
	xorl	%eax, %eax
	pxor	%xmm1, %xmm1
	.p2align 6
	.p2align 4
	.p2align 3
.L71:
	movsd	72(%rsp), %xmm0
	addl	$2, %eax
	addsd	%xmm1, %xmm0
	movsd	%xmm0, 72(%rsp)
	movsd	72(%rsp), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, 72(%rsp)
	cmpl	%eax, %ebp
	jne	.L71
	pxor	%xmm13, %xmm13
	jmp	.L76
.L99:
	movl	$8, %r8d
	leaq	.LC17(%rip), %rdx
	movq	%r14, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movsd	72(%rsp), %xmm1
	movq	%r14, %rcx
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %rcx
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0
	nop
	movups	128(%rsp), %xmm6
	movups	144(%rsp), %xmm7
	xorl	%eax, %eax
	movups	160(%rsp), %xmm8
	movups	176(%rsp), %xmm9
	movups	192(%rsp), %xmm10
	movups	208(%rsp), %xmm11
	movups	224(%rsp), %xmm12
	movups	240(%rsp), %xmm13
	movups	256(%rsp), %xmm14
	movups	272(%rsp), %xmm15
	addq	$296, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L130:
	call	_ZSt16__throw_bad_castv
.L64:
	call	__cxa_throw_bad_array_new_length
	nop
	.seh_endproc
	.section .rdata,"dr"
	.align 16
.LC1:
	.long	128
	.long	256
	.long	512
	.long	1024
	.align 16
.LC2:
	.long	2048
	.long	4096
	.long	8192
	.long	16384
	.align 8
.LC3:
	.long	32768
	.long	65536
	.align 8
.LC14:
	.long	0
	.long	1072693248
	.align 8
.LC15:
	.long	0
	.long	1083129856
	.def	__main;	.scl	2;	.type	32;	.endef
	.ident	"GCC: (Rev13, Built by MSYS2 project) 15.2.0"
	.def	_ZNSo3putEc;	.scl	2;	.type	32;	.endef
	.def	_ZNSo5flushEv;	.scl	2;	.type	32;	.endef
	.def	_ZNKSt5ctypeIcE13_M_widen_initEv;	.scl	2;	.type	32;	.endef
	.def	_ZSt16__throw_bad_castv;	.scl	2;	.type	32;	.endef
	.def	_Znay;	.scl	2;	.type	32;	.endef
	.def	_ZdaPv;	.scl	2;	.type	32;	.endef
	.def	__cxa_throw_bad_array_new_length;	.scl	2;	.type	32;	.endef
	.def	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x;	.scl	2;	.type	32;	.endef
	.def	_ZNSolsEi;	.scl	2;	.type	32;	.endef
	.def	_ZNSo9_M_insertIdEERSoT_;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr._ZSt4cout, "dr"
	.p2align	3, 0
	.globl	.refptr._ZSt4cout
	.linkonce	discard
.refptr._ZSt4cout:
	.quad	_ZSt4cout

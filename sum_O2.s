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
	movl	$10, %edx
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
	jle	.L21
	movl	%esi, %r9d
	xorl	%eax, %eax
	shrl	%r9d
	leal	(%r9,%r9), %edx
	.p2align 5
	.p2align 4
	.p2align 3
.L13:
	movsd	(%rbx,%rax,8), %xmm0
	addsd	8(%rbx,%rax,8), %xmm0
	movsd	%xmm0, (%rcx,%rax,4)
	addq	$2, %rax
	cmpq	%rdx, %rax
	jne	.L13
	leal	-2(%rsi), %eax
	andl	$-2, %eax
	addl	$2, %eax
	cmpl	%eax, %esi
	jle	.L14
.L15:
	cltq
	movsd	(%rbx,%rax,8), %xmm0
	movsd	%xmm0, (%rcx,%r9,8)
.L17:
	movl	%edi, %edx
	movq	%rcx, 40(%rsp)
	call	_Z22sum_recursive_pairwisePdi.part.0
	movq	40(%rsp), %rcx
	movq	%xmm0, %rbx
.L16:
	call	_ZdaPv
	movq	%rbx, %xmm0
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
	.p2align 3
.L14:
	cmpl	$1, %edi
	jne	.L17
	movq	(%rcx), %rbx
	jmp	.L16
	.p2align 4,,10
	.p2align 3
.L21:
	je	.L22
	xorl	%ebx, %ebx
	jmp	.L16
.L22:
	xorl	%r9d, %r9d
	xorl	%eax, %eax
	jmp	.L15
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
	jle	.L26
	movslq	%edx, %rdx
	pxor	%xmm0, %xmm0
	leaq	(%rcx,%rdx,8), %rax
	andl	$1, %edx
	je	.L25
	addsd	(%rcx), %xmm0
	addq	$8, %rcx
	cmpq	%rax, %rcx
	je	.L23
	.p2align 5
	.p2align 4
	.p2align 3
.L25:
	addsd	(%rcx), %xmm0
	addq	$16, %rcx
	addsd	-8(%rcx), %xmm0
	cmpq	%rax, %rcx
	jne	.L25
.L23:
	ret
	.p2align 4,,10
	.p2align 3
.L26:
	pxor	%xmm0, %xmm0
	ret
	.seh_endproc
	.p2align 4
	.globl	_Z11sum_unroll2Pdi
	.def	_Z11sum_unroll2Pdi;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z11sum_unroll2Pdi
_Z11sum_unroll2Pdi:
.LFB10612:
	.seh_endprologue
	cmpl	$1, %edx
	jle	.L37
	movl	%edx, %r8d
	pxor	%xmm0, %xmm0
	movq	%rcx, %rax
	shrl	%r8d
	movapd	%xmm0, %xmm1
	subl	$1, %r8d
	salq	$4, %r8
	leaq	16(%rcx,%r8), %r8
	.p2align 5
	.p2align 4
	.p2align 3
.L35:
	addsd	(%rax), %xmm1
	addsd	8(%rax), %xmm0
	addq	$16, %rax
	cmpq	%r8, %rax
	jne	.L35
	leal	-2(%rdx), %eax
	andl	$-2, %eax
	addl	$2, %eax
.L34:
	cmpl	%eax, %edx
	jle	.L36
	cltq
	addsd	(%rcx,%rax,8), %xmm1
.L36:
	addsd	%xmm1, %xmm0
	ret
	.p2align 4,,10
	.p2align 3
.L37:
	pxor	%xmm0, %xmm0
	xorl	%eax, %eax
	movapd	%xmm0, %xmm1
	jmp	.L34
	.seh_endproc
	.p2align 4
	.globl	_Z11sum_unroll4Pdi
	.def	_Z11sum_unroll4Pdi;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z11sum_unroll4Pdi
_Z11sum_unroll4Pdi:
.LFB10613:
	.seh_endprologue
	cmpl	$3, %edx
	jle	.L44
	movl	%edx, %r10d
	pxor	%xmm1, %xmm1
	movq	%rcx, %rax
	xorl	%r8d, %r8d
	shrl	$2, %r10d
	movapd	%xmm1, %xmm2
	.p2align 5
	.p2align 4
	.p2align 3
.L41:
	movupd	(%rax), %xmm4
	movupd	16(%rax), %xmm5
	addl	$1, %r8d
	addq	$32, %rax
	addpd	%xmm4, %xmm2
	addpd	%xmm5, %xmm1
	cmpl	%r10d, %r8d
	jb	.L41
	leal	-4(%rdx), %eax
	movapd	%xmm2, %xmm3
	movapd	%xmm1, %xmm0
	andl	$-4, %eax
	unpckhpd	%xmm2, %xmm2
	unpckhpd	%xmm1, %xmm1
	addl	$4, %eax
.L40:
	cmpl	%eax, %edx
	jle	.L42
	cltq
.L43:
	addsd	(%rcx,%rax,8), %xmm3
	addq	$1, %rax
	cmpl	%eax, %edx
	jg	.L43
.L42:
	addsd	%xmm2, %xmm3
	addsd	%xmm0, %xmm3
	movapd	%xmm3, %xmm0
	addsd	%xmm1, %xmm0
	ret
	.p2align 4,,10
	.p2align 3
.L44:
	pxor	%xmm1, %xmm1
	xorl	%eax, %eax
	movapd	%xmm1, %xmm0
	movapd	%xmm1, %xmm2
	movapd	%xmm1, %xmm3
	jmp	.L40
	.seh_endproc
	.p2align 4
	.globl	_Z22sum_recursive_pairwisePdi
	.def	_Z22sum_recursive_pairwisePdi;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z22sum_recursive_pairwisePdi
_Z22sum_recursive_pairwisePdi:
.LFB10614:
	.seh_endprologue
	testl	%edx, %edx
	je	.L50
	cmpl	$1, %edx
	je	.L51
	jmp	_Z22sum_recursive_pairwisePdi.part.0
	.p2align 4,,10
	.p2align 3
.L50:
	pxor	%xmm0, %xmm0
	ret
	.p2align 4,,10
	.p2align 3
.L51:
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
	jle	.L52
	cmpl	$10000, %ecx
	movl	$10000, %eax
	movl	$2000, %edx
	cmovge	%edx, %eax
.L52:
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
.LC15:
	.ascii "\11\0"
.LC16:
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
	subq	$312, %rsp
	.seh_stackalloc	312
	movups	%xmm6, 144(%rsp)
	.seh_savexmm	%xmm6, 144
	movups	%xmm7, 160(%rsp)
	.seh_savexmm	%xmm7, 160
	movups	%xmm8, 176(%rsp)
	.seh_savexmm	%xmm8, 176
	movups	%xmm9, 192(%rsp)
	.seh_savexmm	%xmm9, 192
	movups	%xmm10, 208(%rsp)
	.seh_savexmm	%xmm10, 208
	movups	%xmm11, 224(%rsp)
	.seh_savexmm	%xmm11, 224
	movups	%xmm12, 240(%rsp)
	.seh_savexmm	%xmm12, 240
	movups	%xmm13, 256(%rsp)
	.seh_savexmm	%xmm13, 256
	movups	%xmm14, 272(%rsp)
	.seh_savexmm	%xmm14, 272
	movups	%xmm15, 288(%rsp)
	.seh_savexmm	%xmm15, 288
	.seh_endprologue
	movl	$64, %r15d
	call	__main
	movdqu	.LC1(%rip), %xmm0
	leaq	64(%rsp), %rcx
	movq	.LC3(%rip), %rax
	movups	%xmm0, 100(%rsp)
	movdqu	.LC2(%rip), %xmm0
	movq	%rax, 132(%rsp)
	movups	%xmm0, 116(%rsp)
	call	*__imp_QueryPerformanceFrequency(%rip)
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	.refptr._ZSt4cout(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	movq	(%rax), %rax
	addq	-24(%rax), %rdx
	movl	24(%rdx), %eax
	movq	$9, 8(%rdx)
	andl	$-261, %eax
	orl	$4, %eax
	movl	%eax, 24(%rdx)
	leaq	.LC4(%rip), %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC5(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC6(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC7(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC8(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC9(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC10(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC11(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC12(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0
	leaq	100(%rsp), %rax
	movq	__imp_QueryPerformanceCounter(%rip), %rdi
	movslq	%r15d, %rdx
	movsd	.LC13(%rip), %xmm8
	movq	%rax, 40(%rsp)
	leaq	140(%rsp), %rax
	movsd	.LC14(%rip), %xmm9
	movq	%rax, 48(%rsp)
	leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %rax
	movq	$0x000000000, 88(%rsp)
	movq	%rax, 56(%rsp)
	cmpl	$999, %r15d
	jle	.L57
.L112:
	leaq	0(,%rdx,8), %r14
	movq	%r14, %rcx
	cmpl	$9999, %r15d
	jle	.L108
	call	_Znay
	movl	$2000, %r13d
	movq	%rax, %rbx
.L59:
	leal	-1(%r15), %edx
	movsd	%xmm8, (%rbx)
	movl	$1, %eax
	cmpl	$1, %r15d
	jle	.L61
	andl	$1, %edx
	je	.L62
	movsd	%xmm8, 8(%rbx)
	movl	$2, %eax
	cmpl	$2, %r15d
	jle	.L61
	.p2align 5
	.p2align 4
	.p2align 3
.L62:
	movsd	%xmm8, (%rbx,%rax,8)
	movsd	%xmm8, 8(%rbx,%rax,8)
	addq	$2, %rax
	cmpl	%eax, %r15d
	jg	.L62
.L61:
	leaq	72(%rsp), %rsi
	movq	%rsi, %rcx
	call	*%rdi
	testl	%r15d, %r15d
	je	.L80
.L113:
	leaq	(%rbx,%r14), %rdx
	xorl	%ecx, %ecx
	.p2align 4
	.p2align 3
.L65:
	movq	%rdx, %r8
	movq	%rbx, %rax
	pxor	%xmm6, %xmm6
	subq	%rbx, %r8
	andl	$8, %r8d
	je	.L64
	leaq	8(%rbx), %rax
	addsd	(%rbx), %xmm6
	cmpq	%rax, %rdx
	je	.L105
	.p2align 5
	.p2align 4
	.p2align 3
.L64:
	addsd	(%rax), %xmm6
	addq	$16, %rax
	addsd	-8(%rax), %xmm6
	cmpq	%rax, %rdx
	jne	.L64
.L105:
	movsd	88(%rsp), %xmm0
	addl	$1, %ecx
	addsd	%xmm6, %xmm0
	movsd	%xmm0, 88(%rsp)
	cmpl	%ecx, %r13d
	jne	.L65
.L66:
	leaq	80(%rsp), %r14
	pxor	%xmm14, %xmm14
	pxor	%xmm11, %xmm11
	xorl	%r12d, %r12d
	movq	%r14, %rcx
	call	*%rdi
	movq	80(%rsp), %rax
	subq	72(%rsp), %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm14
	mulsd	%xmm9, %xmm14
	cvtsi2sdq	64(%rsp), %xmm0
	cvtsi2sdl	%r13d, %xmm11
	movq	%rsi, %rcx
	divsd	%xmm0, %xmm14
	call	*%rdi
	divsd	%xmm11, %xmm14
	.p2align 4
	.p2align 3
.L67:
	movl	%r15d, %edx
	movq	%rbx, %rcx
	movl	%r12d, %ebp
	addl	$1, %r12d
	call	_Z11sum_unroll2Pdi
	movapd	%xmm0, %xmm10
	movsd	88(%rsp), %xmm0
	addsd	%xmm10, %xmm0
	movsd	%xmm0, 88(%rsp)
	cmpl	%r12d, %r13d
	jne	.L67
	movq	%r14, %rcx
	pxor	%xmm13, %xmm13
	movl	%r12d, %r13d
	call	*%rdi
	movq	80(%rsp), %rax
	subq	72(%rsp), %rax
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rax, %xmm13
	mulsd	%xmm9, %xmm13
	cvtsi2sdq	64(%rsp), %xmm1
	movq	%rsi, %rcx
	divsd	%xmm1, %xmm13
	call	*%rdi
	xorl	%r9d, %r9d
	divsd	%xmm11, %xmm13
	.p2align 4
	.p2align 3
.L68:
	movl	%r15d, %edx
	movq	%rbx, %rcx
	addl	$1, %r9d
	call	_Z11sum_unroll4Pdi
	movapd	%xmm0, %xmm12
	movsd	88(%rsp), %xmm0
	addsd	%xmm12, %xmm0
	movsd	%xmm0, 88(%rsp)
	cmpl	%r13d, %r9d
	jne	.L68
	movq	%r14, %rcx
	pxor	%xmm15, %xmm15
	call	*%rdi
	movq	80(%rsp), %rax
	subq	72(%rsp), %rax
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rax, %xmm15
	mulsd	%xmm9, %xmm15
	cvtsi2sdq	64(%rsp), %xmm1
	movq	%rsi, %rcx
	xorl	%esi, %esi
	divsd	%xmm1, %xmm15
	call	*%rdi
	divsd	%xmm11, %xmm15
	testl	%r15d, %r15d
	jne	.L73
	jmp	.L109
	.p2align 4,,10
	.p2align 3
.L82:
	addl	$1, %esi
.L73:
	cmpl	$1, %r15d
	je	.L110
	movl	%r15d, %edx
	movq	%rbx, %rcx
	call	_Z22sum_recursive_pairwisePdi.part.0
	movapd	%xmm0, %xmm7
	movsd	88(%rsp), %xmm0
	addsd	%xmm7, %xmm0
	movsd	%xmm0, 88(%rsp)
	cmpl	%esi, %ebp
	jne	.L82
.L72:
	movq	%r14, %rcx
	call	*%rdi
	movq	80(%rsp), %rax
	pxor	%xmm0, %xmm0
	subq	72(%rsp), %rax
	cvtsi2sdq	%rax, %xmm0
	mulsd	%xmm9, %xmm0
	pxor	%xmm1, %xmm1
	cvtsi2sdq	64(%rsp), %xmm1
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	%r15d, %edx
	divsd	%xmm1, %xmm0
	divsd	%xmm11, %xmm0
	movq	%xmm0, %rsi
	call	_ZNSolsEi
	movl	$1, %r8d
	leaq	.LC15(%rip), %rdx
	movq	%rax, %r14
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movapd	%xmm14, %xmm1
	movq	%r14, %rcx
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$1, %r8d
	leaq	.LC15(%rip), %rdx
	movq	%rax, %r14
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movapd	%xmm13, %xmm1
	movq	%r14, %rcx
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$1, %r8d
	leaq	.LC15(%rip), %rdx
	movq	%rax, %r14
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movapd	%xmm15, %xmm1
	movq	%r14, %rcx
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$1, %r8d
	leaq	.LC15(%rip), %rdx
	movq	%rax, %r14
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%rsi, %xmm1
	movq	%r14, %rcx
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$1, %r8d
	leaq	.LC15(%rip), %rdx
	movq	%rax, %rsi
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movapd	%xmm6, %xmm1
	movq	%rsi, %rcx
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$1, %r8d
	leaq	.LC15(%rip), %rdx
	movq	%rax, %rsi
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movapd	%xmm10, %xmm1
	movq	%rsi, %rcx
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$1, %r8d
	leaq	.LC15(%rip), %rdx
	movq	%rax, %rsi
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movapd	%xmm12, %xmm1
	movq	%rsi, %rcx
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$1, %r8d
	leaq	.LC15(%rip), %rdx
	movq	%rax, %rsi
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%rsi, %rcx
	movapd	%xmm7, %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %r14
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%r14,%rax), %rsi
	testq	%rsi, %rsi
	je	.L111
	cmpb	$0, 56(%rsi)
	je	.L75
	movsbl	67(%rsi), %edx
.L76:
	movq	%r14, %rcx
	call	_ZNSo3putEc
	movq	%rax, %rcx
	call	_ZNSo5flushEv
	movq	%rbx, %rcx
	call	_ZdaPv
	movq	40(%rsp), %rax
	cmpq	%rax, 48(%rsp)
	je	.L77
	movl	(%rax), %r15d
	addq	$4, %rax
	movq	%rax, 40(%rsp)
	movslq	%r15d, %rdx
	cmpl	$999, %r15d
	jg	.L112
.L57:
	movabsq	$1152921504606846975, %rax
	cmpq	%rdx, %rax
	jb	.L60
	leaq	0(,%rdx,8), %r14
	movl	$100000, %r13d
	movq	%r14, %rcx
	call	_Znay
	movq	%rax, %rbx
	testl	%r15d, %r15d
	jne	.L59
	leaq	72(%rsp), %rsi
	movq	%rsi, %rcx
	call	*%rdi
	testl	%r15d, %r15d
	jne	.L113
.L80:
	xorl	%eax, %eax
	pxor	%xmm1, %xmm1
	.p2align 6
	.p2align 4
	.p2align 3
.L63:
	movsd	88(%rsp), %xmm0
	addl	$2, %eax
	addsd	%xmm1, %xmm0
	movsd	%xmm0, 88(%rsp)
	movsd	88(%rsp), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, 88(%rsp)
	cmpl	%eax, %r13d
	jne	.L63
	pxor	%xmm6, %xmm6
	jmp	.L66
.L75:
	movq	%rsi, %rcx
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rsi), %rax
	movl	$10, %edx
	movq	48(%rax), %rax
	cmpq	56(%rsp), %rax
	je	.L76
	movq	%rsi, %rcx
	call	*%rax
	movsbl	%al, %edx
	jmp	.L76
.L109:
	xorl	%eax, %eax
	pxor	%xmm2, %xmm2
	.p2align 6
	.p2align 4
	.p2align 3
.L69:
	movsd	88(%rsp), %xmm0
	addl	$2, %eax
	addsd	%xmm2, %xmm0
	movsd	%xmm0, 88(%rsp)
	movsd	88(%rsp), %xmm0
	addsd	%xmm2, %xmm0
	movsd	%xmm0, 88(%rsp)
	cmpl	%r12d, %eax
	jne	.L69
	pxor	%xmm7, %xmm7
	jmp	.L72
.L108:
	call	_Znay
	movl	$10000, %r13d
	movq	%rax, %rbx
	jmp	.L59
.L110:
	movsd	(%rbx), %xmm2
	.p2align 5
	.p2align 4
	.p2align 3
.L70:
	movsd	88(%rsp), %xmm0
	addl	$1, %esi
	movapd	%xmm2, %xmm7
	addsd	%xmm2, %xmm0
	movsd	%xmm0, 88(%rsp)
	cmpl	%esi, %r13d
	jne	.L70
	jmp	.L72
.L77:
	movq	.refptr._ZSt4cout(%rip), %rcx
	leaq	.LC16(%rip), %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movsd	88(%rsp), %xmm1
	movq	%rax, %rcx
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %rcx
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0
	nop
	movups	144(%rsp), %xmm6
	movups	160(%rsp), %xmm7
	xorl	%eax, %eax
	movups	176(%rsp), %xmm8
	movups	192(%rsp), %xmm9
	movups	208(%rsp), %xmm10
	movups	224(%rsp), %xmm11
	movups	240(%rsp), %xmm12
	movups	256(%rsp), %xmm13
	movups	272(%rsp), %xmm14
	movups	288(%rsp), %xmm15
	addq	$312, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L111:
	call	_ZSt16__throw_bad_castv
.L60:
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
.LC13:
	.long	0
	.long	1072693248
	.align 8
.LC14:
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
	.def	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc;	.scl	2;	.type	32;	.endef
	.def	_ZNSolsEi;	.scl	2;	.type	32;	.endef
	.def	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x;	.scl	2;	.type	32;	.endef
	.def	_ZNSo9_M_insertIdEERSoT_;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr._ZSt4cout, "dr"
	.p2align	3, 0
	.globl	.refptr._ZSt4cout
	.linkonce	discard
.refptr._ZSt4cout:
	.quad	_ZSt4cout

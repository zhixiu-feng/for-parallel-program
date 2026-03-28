	.file	"sum.cpp"
	.text
	.globl	_Z9sum_naivePdi
	.def	_Z9sum_naivePdi;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z9sum_naivePdi
_Z9sum_naivePdi:
.LFB10611:
	.seh_endprologue
	testl	%edx, %edx
	jle	.L4
	movq	%rcx, %rax
	movslq	%edx, %rdx
	leaq	(%rcx,%rdx,8), %rdx
	pxor	%xmm0, %xmm0
	.p2align 4
.L3:
	addsd	(%rax), %xmm0
	addq	$8, %rax
	cmpq	%rdx, %rax
	jne	.L3
.L1:
	ret
.L4:
	pxor	%xmm0, %xmm0
	jmp	.L1
	.seh_endproc
	.globl	_Z11sum_unroll2Pdi
	.def	_Z11sum_unroll2Pdi;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z11sum_unroll2Pdi
_Z11sum_unroll2Pdi:
.LFB10612:
	.seh_endprologue
	cmpl	$1, %edx
	jle	.L10
	movq	%rcx, %rax
	leal	-2(%rdx), %r9d
	movl	%edx, %r8d
	shrl	%r8d
	leal	-1(%r8), %r8d
	salq	$4, %r8
	leaq	16(%rcx,%r8), %r8
	pxor	%xmm1, %xmm1
	movapd	%xmm1, %xmm0
	.p2align 5
.L8:
	addsd	(%rax), %xmm0
	addsd	8(%rax), %xmm1
	addq	$16, %rax
	cmpq	%r8, %rax
	jne	.L8
	movl	%r9d, %eax
	andl	$-2, %eax
	addl	$2, %eax
.L7:
	cmpl	%eax, %edx
	jle	.L9
	cltq
	addsd	(%rcx,%rax,8), %xmm0
.L9:
	addsd	%xmm1, %xmm0
	ret
.L10:
	movl	$0, %eax
	pxor	%xmm1, %xmm1
	movapd	%xmm1, %xmm0
	jmp	.L7
	.seh_endproc
	.globl	_Z11sum_unroll4Pdi
	.def	_Z11sum_unroll4Pdi;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z11sum_unroll4Pdi
_Z11sum_unroll4Pdi:
.LFB10613:
	.seh_endprologue
	cmpl	$3, %edx
	jle	.L17
	movq	%rcx, %rax
	leal	-4(%rdx), %r8d
	movl	%edx, %r9d
	shrl	$2, %r9d
	leal	-1(%r9), %r9d
	salq	$5, %r9
	leaq	32(%rcx,%r9), %r9
	pxor	%xmm0, %xmm0
	movapd	%xmm0, %xmm2
	movapd	%xmm0, %xmm3
	movapd	%xmm0, %xmm1
	.p2align 5
.L14:
	addsd	(%rax), %xmm1
	addsd	8(%rax), %xmm3
	addsd	16(%rax), %xmm2
	addsd	24(%rax), %xmm0
	addq	$32, %rax
	cmpq	%r9, %rax
	jne	.L14
	movl	%r8d, %eax
	andl	$-4, %eax
	addl	$4, %eax
.L13:
	cmpl	%eax, %edx
	jle	.L15
	cltq
.L16:
	addsd	(%rcx,%rax,8), %xmm1
	addq	$1, %rax
	cmpl	%eax, %edx
	jg	.L16
.L15:
	addsd	%xmm3, %xmm1
	addsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	ret
.L17:
	movl	$0, %eax
	pxor	%xmm0, %xmm0
	movapd	%xmm0, %xmm2
	movapd	%xmm0, %xmm3
	movapd	%xmm0, %xmm1
	jmp	.L13
	.seh_endproc
	.globl	_Z22sum_recursive_pairwisePdi
	.def	_Z22sum_recursive_pairwisePdi;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z22sum_recursive_pairwisePdi
_Z22sum_recursive_pairwisePdi:
.LFB10614:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	%rcx, %rbx
	movl	%edx, %edi
	testl	%edx, %edx
	je	.L27
	cmpl	$1, %edx
	je	.L29
	leal	1(%rdx), %eax
	movl	%eax, %ebp
	shrl	$31, %ebp
	addl	%eax, %ebp
	sarl	%ebp
	movslq	%ebp, %rcx
	movq	%rcx, %rax
	shrq	$60, %rax
	jne	.L23
	salq	$3, %rcx
	call	_Znay
	movq	%rax, %rsi
	cmpl	$1, %edi
	jle	.L25
	leal	-2(%rdi), %ecx
	movl	%edi, %r8d
	shrl	%r8d
	leal	(%r8,%r8), %edx
	movl	$0, %eax
	.p2align 5
.L26:
	movsd	(%rbx,%rax,8), %xmm0
	addsd	8(%rbx,%rax,8), %xmm0
	movsd	%xmm0, (%rsi,%rax,4)
	addq	$2, %rax
	cmpq	%rdx, %rax
	jne	.L26
	movl	%ecx, %eax
	andl	$-2, %eax
	addl	$2, %eax
	cmpl	%eax, %edi
	jle	.L25
	movslq	%r8d, %r8
	cltq
	movsd	(%rbx,%rax,8), %xmm0
	movsd	%xmm0, (%rsi,%r8,8)
.L25:
	movl	%ebp, %edx
	movq	%rsi, %rcx
	call	_Z22sum_recursive_pairwisePdi
	movq	%xmm0, %rbx
	movq	%rsi, %rcx
	call	_ZdaPv
.L20:
	movq	%rbx, %xmm0
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
.L29:
	movq	(%rcx), %rbx
	jmp	.L20
.L23:
	call	__cxa_throw_bad_array_new_length
.L27:
	movl	$0x000000000, %ebx
	jmp	.L20
	.seh_endproc
	.globl	_Z11repeat_timei
	.def	_Z11repeat_timei;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z11repeat_timei
_Z11repeat_timei:
.LFB10615:
	.seh_endprologue
	movl	$100000, %eax
	cmpl	$999, %ecx
	jle	.L30
	cmpl	$10000, %ecx
	movl	$10000, %eax
	movl	$2000, %edx
	cmovge	%edx, %eax
.L30:
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
	subq	$280, %rsp
	.seh_stackalloc	280
	movups	%xmm6, 112(%rsp)
	.seh_savexmm	%xmm6, 112
	movups	%xmm7, 128(%rsp)
	.seh_savexmm	%xmm7, 128
	movups	%xmm8, 144(%rsp)
	.seh_savexmm	%xmm8, 144
	movups	%xmm9, 160(%rsp)
	.seh_savexmm	%xmm9, 160
	movups	%xmm10, 176(%rsp)
	.seh_savexmm	%xmm10, 176
	movups	%xmm11, 192(%rsp)
	.seh_savexmm	%xmm11, 192
	movups	%xmm12, 208(%rsp)
	.seh_savexmm	%xmm12, 208
	movups	%xmm13, 224(%rsp)
	.seh_savexmm	%xmm13, 224
	movups	%xmm14, 240(%rsp)
	.seh_savexmm	%xmm14, 240
	movups	%xmm15, 256(%rsp)
	.seh_savexmm	%xmm15, 256
	.seh_endprologue
	call	__main
	movl	$64, 64(%rsp)
	movl	$128, 68(%rsp)
	movl	$256, 72(%rsp)
	movl	$512, 76(%rsp)
	movl	$1024, 80(%rsp)
	movl	$2048, 84(%rsp)
	movl	$4096, 88(%rsp)
	movl	$8192, 92(%rsp)
	movl	$16384, 96(%rsp)
	movl	$32768, 100(%rsp)
	movl	$65536, 104(%rsp)
	leaq	56(%rsp), %rcx
	call	*__imp_QueryPerformanceFrequency(%rip)
	movq	.refptr._ZSt4cout(%rip), %rcx
	movq	(%rcx), %rdx
	movq	%rcx, %r8
	addq	-24(%rdx), %r8
	movl	24(%r8), %eax
	andl	$-261, %eax
	orl	$4, %eax
	movl	%eax, 24(%r8)
	movq	-24(%rdx), %rax
	movq	$9, 8(%rax,%rcx)
	leaq	.LC1(%rip), %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	leaq	.LC2(%rip), %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	leaq	.LC3(%rip), %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	leaq	.LC4(%rip), %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	leaq	.LC5(%rip), %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	leaq	.LC6(%rip), %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	leaq	.LC7(%rip), %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	leaq	.LC8(%rip), %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	leaq	.LC9(%rip), %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movq	$0x000000000, 32(%rsp)
	leaq	64(%rsp), %r12
	leaq	108(%rsp), %r15
	movsd	.LC10(%rip), %xmm10
	movq	__imp_QueryPerformanceCounter(%rip), %r13
	jmp	.L47
.L35:
	call	__cxa_throw_bad_array_new_length
.L60:
	call	_ZSt16__throw_bad_castv
.L45:
	movq	%rdi, %rcx
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rdi), %rax
	movl	$10, %edx
	movq	%rdi, %rcx
	call	*48(%rax)
	movl	%eax, %edx
.L46:
	movsbl	%dl, %edx
	movq	%rsi, %rcx
	call	_ZNSo3putEc
	movq	%rax, %rcx
	call	_ZNSo5flushEv
	movq	%rbx, %rcx
	call	_ZdaPv
	addq	$4, %r12
	cmpq	%r15, %r12
	je	.L59
.L47:
	movl	(%r12), %esi
	movl	%esi, %ecx
	call	_Z11repeat_timei
	movl	%eax, %ebp
	movslq	%esi, %rdx
	movq	%rdx, %rax
	shrq	$60, %rax
	jne	.L35
	leaq	0(,%rdx,8), %rdi
	movq	%rdi, %rcx
	call	_Znay
	movq	%rax, %rbx
	leaq	(%rdi,%rax), %rdx
	testl	%esi, %esi
	jle	.L37
	.p2align 4
.L38:
	movsd	%xmm10, (%rax)
	addq	$8, %rax
	cmpq	%rax, %rdx
	jne	.L38
.L37:
	leaq	48(%rsp), %rcx
	call	*__imp_QueryPerformanceCounter(%rip)
	testl	%ebp, %ebp
	jle	.L39
	movl	$0, %edi
.L40:
	movl	%esi, %edx
	movq	%rbx, %rcx
	call	_Z9sum_naivePdi
	movapd	%xmm0, %xmm9
	movsd	32(%rsp), %xmm0
	addsd	%xmm9, %xmm0
	movsd	%xmm0, 32(%rsp)
	movl	%edi, %r14d
	addl	$1, %edi
	cmpl	%edi, %ebp
	jne	.L40
	leaq	40(%rsp), %rcx
	call	*%r13
	pxor	%xmm14, %xmm14
	cvtsi2sdl	%edi, %xmm14
	movq	40(%rsp), %rax
	subq	48(%rsp), %rax
	pxor	%xmm13, %xmm13
	cvtsi2sdq	%rax, %xmm13
	mulsd	.LC11(%rip), %xmm13
	pxor	%xmm0, %xmm0
	cvtsi2sdq	56(%rsp), %xmm0
	divsd	%xmm0, %xmm13
	divsd	%xmm14, %xmm13
	leaq	48(%rsp), %rcx
	call	*%r13
	movl	$0, %edi
	leal	1(%r14), %ebp
.L41:
	movl	%esi, %edx
	movq	%rbx, %rcx
	call	_Z11sum_unroll2Pdi
	movapd	%xmm0, %xmm7
	movsd	32(%rsp), %xmm0
	addsd	%xmm7, %xmm0
	movsd	%xmm0, 32(%rsp)
	addl	$1, %edi
	cmpl	%ebp, %edi
	jne	.L41
	leaq	40(%rsp), %rcx
	movq	__imp_QueryPerformanceCounter(%rip), %rdi
	call	*%rdi
	movq	40(%rsp), %rax
	subq	48(%rsp), %rax
	pxor	%xmm12, %xmm12
	cvtsi2sdq	%rax, %xmm12
	mulsd	.LC11(%rip), %xmm12
	pxor	%xmm0, %xmm0
	cvtsi2sdq	56(%rsp), %xmm0
	divsd	%xmm0, %xmm12
	divsd	%xmm14, %xmm12
	leaq	48(%rsp), %rcx
	call	*%rdi
	movl	$0, %edi
	leal	1(%r14), %ebp
.L42:
	movl	%esi, %edx
	movq	%rbx, %rcx
	call	_Z11sum_unroll4Pdi
	movapd	%xmm0, %xmm8
	movsd	32(%rsp), %xmm0
	addsd	%xmm8, %xmm0
	movsd	%xmm0, 32(%rsp)
	addl	$1, %edi
	cmpl	%ebp, %edi
	jne	.L42
	leaq	40(%rsp), %rcx
	movq	__imp_QueryPerformanceCounter(%rip), %rdi
	call	*%rdi
	movq	40(%rsp), %rax
	subq	48(%rsp), %rax
	pxor	%xmm11, %xmm11
	cvtsi2sdq	%rax, %xmm11
	mulsd	.LC11(%rip), %xmm11
	pxor	%xmm0, %xmm0
	cvtsi2sdq	56(%rsp), %xmm0
	divsd	%xmm0, %xmm11
	divsd	%xmm14, %xmm11
	leaq	48(%rsp), %rcx
	call	*%rdi
	movl	$0, %edi
	addl	$1, %r14d
.L43:
	movl	%esi, %edx
	movq	%rbx, %rcx
	call	_Z22sum_recursive_pairwisePdi
	movapd	%xmm0, %xmm6
	movsd	32(%rsp), %xmm0
	addsd	%xmm6, %xmm0
	movsd	%xmm0, 32(%rsp)
	addl	$1, %edi
	cmpl	%r14d, %edi
	jne	.L43
.L48:
	leaq	40(%rsp), %rcx
	call	*__imp_QueryPerformanceCounter(%rip)
	movq	40(%rsp), %rax
	subq	48(%rsp), %rax
	pxor	%xmm15, %xmm15
	cvtsi2sdq	%rax, %xmm15
	mulsd	.LC11(%rip), %xmm15
	pxor	%xmm0, %xmm0
	cvtsi2sdq	56(%rsp), %xmm0
	divsd	%xmm0, %xmm15
	divsd	%xmm14, %xmm15
	movl	%esi, %edx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	_ZNSolsEi
	movq	%rax, %rdi
	leaq	.LC12(%rip), %rsi
	movl	$1, %r8d
	movq	%rsi, %rdx
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movapd	%xmm13, %xmm1
	movq	%rdi, %rcx
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %rdi
	movl	$1, %r8d
	movq	%rsi, %rdx
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movapd	%xmm12, %xmm1
	movq	%rdi, %rcx
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %rdi
	movl	$1, %r8d
	movq	%rsi, %rdx
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movapd	%xmm11, %xmm1
	movq	%rdi, %rcx
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %rdi
	movl	$1, %r8d
	movq	%rsi, %rdx
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movapd	%xmm15, %xmm1
	movq	%rdi, %rcx
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %rdi
	movl	$1, %r8d
	movq	%rsi, %rdx
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movapd	%xmm9, %xmm1
	movq	%rdi, %rcx
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %rdi
	movl	$1, %r8d
	movq	%rsi, %rdx
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movapd	%xmm7, %xmm1
	movq	%rdi, %rcx
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %rdi
	movl	$1, %r8d
	movq	%rsi, %rdx
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movapd	%xmm8, %xmm1
	movq	%rdi, %rcx
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %rdi
	movl	$1, %r8d
	movq	%rsi, %rdx
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movapd	%xmm6, %xmm1
	movq	%rdi, %rcx
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %rsi
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%rsi,%rax), %rdi
	testq	%rdi, %rdi
	je	.L60
	cmpb	$0, 56(%rdi)
	je	.L45
	movzbl	67(%rdi), %edx
	jmp	.L46
.L39:
	leaq	40(%rsp), %r14
	movq	%r14, %rcx
	call	*__imp_QueryPerformanceCounter(%rip)
	pxor	%xmm14, %xmm14
	cvtsi2sdl	%ebp, %xmm14
	movq	40(%rsp), %rax
	subq	48(%rsp), %rax
	pxor	%xmm13, %xmm13
	cvtsi2sdq	%rax, %xmm13
	mulsd	.LC11(%rip), %xmm13
	pxor	%xmm0, %xmm0
	cvtsi2sdq	56(%rsp), %xmm0
	divsd	%xmm0, %xmm13
	divsd	%xmm14, %xmm13
	leaq	48(%rsp), %rdi
	movq	%rdi, %rcx
	call	*__imp_QueryPerformanceCounter(%rip)
	movq	%r14, %rcx
	call	*__imp_QueryPerformanceCounter(%rip)
	movq	40(%rsp), %rax
	subq	48(%rsp), %rax
	pxor	%xmm12, %xmm12
	cvtsi2sdq	%rax, %xmm12
	mulsd	.LC11(%rip), %xmm12
	pxor	%xmm0, %xmm0
	cvtsi2sdq	56(%rsp), %xmm0
	divsd	%xmm0, %xmm12
	divsd	%xmm14, %xmm12
	movq	%rdi, %rcx
	call	*__imp_QueryPerformanceCounter(%rip)
	movq	%r14, %rcx
	call	*__imp_QueryPerformanceCounter(%rip)
	movq	40(%rsp), %rax
	subq	48(%rsp), %rax
	pxor	%xmm11, %xmm11
	cvtsi2sdq	%rax, %xmm11
	mulsd	.LC11(%rip), %xmm11
	pxor	%xmm0, %xmm0
	cvtsi2sdq	56(%rsp), %xmm0
	divsd	%xmm0, %xmm11
	divsd	%xmm14, %xmm11
	movq	%rdi, %rcx
	call	*__imp_QueryPerformanceCounter(%rip)
	pxor	%xmm9, %xmm9
	movapd	%xmm9, %xmm8
	movapd	%xmm9, %xmm7
	movapd	%xmm9, %xmm6
	jmp	.L48
.L59:
	leaq	.LC13(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movsd	32(%rsp), %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %rcx
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movl	$0, %eax
	movups	112(%rsp), %xmm6
	movups	128(%rsp), %xmm7
	movups	144(%rsp), %xmm8
	movups	160(%rsp), %xmm9
	movups	176(%rsp), %xmm10
	movups	192(%rsp), %xmm11
	movups	208(%rsp), %xmm12
	movups	224(%rsp), %xmm13
	movups	240(%rsp), %xmm14
	movups	256(%rsp), %xmm15
	addq	$280, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
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
	.def	_ZdaPv;	.scl	2;	.type	32;	.endef
	.def	__cxa_throw_bad_array_new_length;	.scl	2;	.type	32;	.endef
	.def	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc;	.scl	2;	.type	32;	.endef
	.def	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_;	.scl	2;	.type	32;	.endef
	.def	_ZSt16__throw_bad_castv;	.scl	2;	.type	32;	.endef
	.def	_ZNKSt5ctypeIcE13_M_widen_initEv;	.scl	2;	.type	32;	.endef
	.def	_ZNSo3putEc;	.scl	2;	.type	32;	.endef
	.def	_ZNSo5flushEv;	.scl	2;	.type	32;	.endef
	.def	_ZNSolsEi;	.scl	2;	.type	32;	.endef
	.def	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x;	.scl	2;	.type	32;	.endef
	.def	_ZNSo9_M_insertIdEERSoT_;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr._ZSt4cout, "dr"
	.p2align	3, 0
	.globl	.refptr._ZSt4cout
	.linkonce	discard
.refptr._ZSt4cout:
	.quad	_ZSt4cout

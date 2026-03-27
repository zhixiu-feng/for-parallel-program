	.file	"matrix.cpp"
	.text
	.section .rdata,"dr"
.LC2:
	.ascii "\346\234\254\346\254\241\350\247\204\346\250\241\345\244\247\345\260\217\344\270\272 \0"
	.align 8
.LC3:
	.ascii " \344\270\244\344\270\252\347\256\227\346\263\225\345\210\206\345\210\253\346\211\200\347\224\250\346\227\266\351\227\264\344\270\272\0"
	.text
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
	subq	$120, %rsp
	.seh_stackalloc	120
	.seh_endprologue
	call	__main
	movl	$65001, %ecx
	call	*__imp_SetConsoleCP(%rip)
	movl	$65001, %ecx
	call	*__imp_SetConsoleOutputCP(%rip)
	leaq	108(%rsp), %rdx
	movq	.refptr._ZSt3cin(%rip), %rcx
	call	_ZNSirsERi
	cmpl	$0, 108(%rsp)
	jle	.L35
	movl	$0, %r12d
	movq	.refptr._ZSt3cin(%rip), %rax
	movq	%rax, 40(%rsp)
	jmp	.L31
.L3:
	call	__cxa_throw_bad_array_new_length
	.p2align 4
.L11:
	movl	$0, (%rax)
	addq	$4, %rax
	cmpq	%rax, %rdx
	jne	.L11
	movl	$0, %r13d
.L12:
	movl	(%rdi,%r13), %ebp
	movl	$0, %eax
	.p2align 5
.L13:
	movq	(%rsi,%rax,8), %r8
	movl	(%r8,%r13), %r8d
	imull	(%rbx,%rax,4), %r8d
	addl	%r8d, %ebp
	addq	$1, %rax
	cmpq	%rax, %r9
	jne	.L13
	movl	%ebp, (%rdi,%r13)
	addq	$4, %r13
	cmpq	%r13, %r10
	jne	.L12
.L14:
	subl	$1, %ecx
	je	.L15
.L10:
	movq	%rdi, %rax
	testl	%r11d, %r11d
	jg	.L11
	jmp	.L14
.L15:
	leaq	64(%rsp), %rcx
	call	*__imp_QueryPerformanceCounter(%rip)
	movq	64(%rsp), %rax
	subq	56(%rsp), %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	mulsd	.LC0(%rip), %xmm0
	pxor	%xmm1, %xmm1
	cvtsi2sdq	72(%rsp), %xmm1
	divsd	%xmm1, %xmm0
	divsd	.LC1(%rip), %xmm0
	movq	%xmm0, %r13
	movslq	52(%rsp), %rax
	movabsq	$2305843009213693950, %rdx
	cmpq	%rax, %rdx
	jb	.L16
	leaq	0(,%rax,4), %rcx
	call	_Znay
	movq	%rax, %rbp
	leaq	96(%rsp), %rcx
	call	*__imp_QueryPerformanceFrequency(%rip)
	leaq	80(%rsp), %rcx
	call	*__imp_QueryPerformanceCounter(%rip)
	movl	52(%rsp), %r8d
	movslq	%r8d, %r11
	leaq	0(,%r11,4), %r9
	leaq	(%r9,%rbp), %rdx
	movl	$100, %ecx
	movq	%rdx, %r10
	jmp	.L17
.L16:
	call	__cxa_throw_bad_array_new_length
	.p2align 4
.L18:
	movl	$0, (%rax)
	addq	$4, %rax
	cmpq	%r10, %rax
	jne	.L18
	movl	$0, %edx
	movl	%ecx, 36(%rsp)
	movq	%rdx, %rcx
.L19:
	movq	(%rsi,%rcx,8), %rdx
	movl	(%rbx,%rcx,4), %r15d
	movl	$0, %eax
	.p2align 5
.L20:
	movl	%r15d, %r14d
	imull	(%rdx,%rax), %r14d
	addl	%r14d, 0(%rbp,%rax)
	addq	$4, %rax
	cmpq	%r9, %rax
	jne	.L20
	addq	$1, %rcx
	cmpq	%rcx, %r11
	jne	.L19
	movl	36(%rsp), %ecx
.L21:
	subl	$1, %ecx
	je	.L22
.L17:
	movq	%rbp, %rax
	testl	%r8d, %r8d
	jg	.L18
	jmp	.L21
.L22:
	leaq	88(%rsp), %rcx
	call	*__imp_QueryPerformanceCounter(%rip)
	movq	88(%rsp), %rax
	subq	80(%rsp), %rax
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rax, %xmm1
	mulsd	.LC0(%rip), %xmm1
	pxor	%xmm0, %xmm0
	cvtsi2sdq	96(%rsp), %xmm0
	divsd	%xmm0, %xmm1
	divsd	.LC1(%rip), %xmm1
	movq	%xmm1, %r14
	movl	$22, %r8d
	leaq	.LC2(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %r15
	movq	%r15, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	52(%rsp), %edx
	movq	%r15, %rcx
	call	_ZNSolsEi
	movq	%rax, %r15
	movl	$34, %r8d
	leaq	.LC3(%rip), %rdx
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%r13, %xmm1
	movq	%r15, %rcx
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %r13
	movb	$32, 51(%rsp)
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	cmpq	$0, 16(%r13,%rax)
	je	.L23
	leaq	51(%rsp), %rdx
	movl	$1, %r8d
	movq	%r13, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	%rax, %r13
.L24:
	movq	%r14, %xmm1
	movq	%r13, %rcx
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %r13
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%r13,%rax), %r14
	testq	%r14, %r14
	je	.L55
	cmpb	$0, 56(%r14)
	je	.L26
	movzbl	67(%r14), %eax
.L27:
	movsbl	%al, %edx
	movq	%r13, %rcx
	call	_ZNSo3putEc
	movq	%rax, %rcx
	call	_ZNSo5flushEv
	movq	%rdi, %rcx
	call	_ZdaPv
	movq	%rbp, %rcx
	call	_ZdaPv
	movq	%rbx, %rcx
	call	_ZdaPv
	movl	52(%rsp), %edi
	testl	%edi, %edi
	jle	.L28
	movl	$0, %ebx
	jmp	.L30
.L23:
	movl	$32, %edx
	movq	%r13, %rcx
	call	_ZNSo3putEc
	jmp	.L24
.L55:
	call	_ZSt16__throw_bad_castv
.L26:
	movq	%r14, %rcx
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%r14), %rax
	movl	$10, %edx
	movq	%r14, %rcx
	call	*48(%rax)
	jmp	.L27
.L29:
	addq	$1, %rbx
	cmpl	%ebx, %edi
	jle	.L28
.L30:
	movq	(%rsi,%rbx,8), %rcx
	testq	%rcx, %rcx
	je	.L29
	call	_ZdaPv
	jmp	.L29
.L28:
	movq	%rsi, %rcx
	call	_ZdaPv
	addl	$1, %r12d
	cmpl	%r12d, 108(%rsp)
	jle	.L35
.L31:
	leaq	52(%rsp), %rdx
	movq	40(%rsp), %rcx
	call	_ZNSirsERi
	movl	52(%rsp), %r14d
	movslq	%r14d, %rdi
	movq	%rdi, %rax
	shrq	$60, %rax
	jne	.L3
	leaq	0(,%rdi,8), %rcx
	call	_Znay
	movq	%rax, %rsi
	leaq	0(,%rdi,4), %r13
	movl	%r14d, %ebx
	movl	$0, %ebp
	testl	%r14d, %r14d
	jle	.L56
.L7:
	movq	%r13, %rcx
	call	_Znay
	movq	%rax, %rdx
	movq	%rax, (%rsi,%rbp,8)
	movl	%ebp, %eax
.L6:
	movl	%eax, (%rdx)
	addl	$1, %eax
	addq	$4, %rdx
	cmpl	%ebx, %eax
	jne	.L6
	addq	$1, %rbp
	addl	$1, %ebx
	cmpq	%rbp, %rdi
	jne	.L7
	leaq	0(,%rdi,4), %rbp
	movq	%rbp, %rcx
	call	_Znay
	movq	%rax, %rbx
	movl	$0, %eax
.L9:
	movl	%eax, (%rbx,%rax,4)
	addq	$1, %rax
	cmpq	%rax, %rdi
	jne	.L9
.L32:
	movq	%rbp, %rcx
	call	_Znay
	movq	%rax, %rdi
	leaq	72(%rsp), %rcx
	call	*__imp_QueryPerformanceFrequency(%rip)
	leaq	56(%rsp), %rcx
	call	*__imp_QueryPerformanceCounter(%rip)
	movl	52(%rsp), %r11d
	movslq	%r11d, %r9
	leaq	0(,%r9,4), %r10
	leaq	(%r10,%rdi), %rdx
	movl	$100, %ecx
	jmp	.L10
.L56:
	leaq	0(,%rdi,4), %rbp
	movq	%rbp, %rcx
	call	_Znay
	movq	%rax, %rbx
	jmp	.L32
.L35:
	movl	$0, %eax
	addq	$120, %rsp
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
	.def	__cxa_throw_bad_array_new_length;	.scl	2;	.type	32;	.endef
	.def	_Znay;	.scl	2;	.type	32;	.endef
	.def	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x;	.scl	2;	.type	32;	.endef
	.def	_ZNSolsEi;	.scl	2;	.type	32;	.endef
	.def	_ZNSo9_M_insertIdEERSoT_;	.scl	2;	.type	32;	.endef
	.def	_ZNSo3putEc;	.scl	2;	.type	32;	.endef
	.def	_ZNSo5flushEv;	.scl	2;	.type	32;	.endef
	.def	_ZdaPv;	.scl	2;	.type	32;	.endef
	.def	_ZSt16__throw_bad_castv;	.scl	2;	.type	32;	.endef
	.def	_ZNKSt5ctypeIcE13_M_widen_initEv;	.scl	2;	.type	32;	.endef
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

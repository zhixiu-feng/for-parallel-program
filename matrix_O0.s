	.file	"matrix.cpp"
	.text
	.section .rdata,"dr"
.LC1:
	.ascii "\346\234\254\346\254\241\350\247\204\346\250\241\345\244\247\345\260\217\344\270\272 \0"
	.align 8
.LC2:
	.ascii " \344\270\244\344\270\252\347\256\227\346\263\225\345\210\206\345\210\253\346\211\200\347\224\250\346\227\266\351\227\264\344\270\272\0"
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB8620:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$200, %rsp
	.seh_stackalloc	200
	leaq	192(%rsp), %rbp
	.seh_setframe	%rbp, 192
	.seh_endprologue
	call	__main
	movl	$65001, %ecx
	movq	__imp_SetConsoleCP(%rip), %rax
	call	*%rax
	movl	$65001, %ecx
	movq	__imp_SetConsoleOutputCP(%rip), %rax
	call	*%rax
	leaq	-108(%rbp), %rdx
	movq	.refptr._ZSt3cin(%rip), %rax
	movq	%rax, %rcx
	call	_ZNSirsERi
	movl	$0, -4(%rbp)
	jmp	.L2
.L42:
	movl	$100, -56(%rbp)
	leaq	-112(%rbp), %rdx
	movq	.refptr._ZSt3cin(%rip), %rax
	movq	%rax, %rcx
	call	_ZNSirsERi
	movl	-112(%rbp), %eax
	cltq
	movabsq	$1152921504606846975, %rdx
	cmpq	%rax, %rdx
	jb	.L3
	salq	$3, %rax
	movq	%rax, %rcx
	call	_Znay
	movq	%rax, -64(%rbp)
	movl	$0, -8(%rbp)
	jmp	.L5
.L3:
	call	__cxa_throw_bad_array_new_length
.L10:
	movl	-112(%rbp), %eax
	cltq
	movabsq	$2305843009213693950, %rdx
	cmpq	%rax, %rdx
	jb	.L6
	salq	$2, %rax
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-64(%rbp), %rdx
	leaq	(%rcx,%rdx), %rbx
	movq	%rax, %rcx
	call	_Znay
	movq	%rax, (%rbx)
	movl	$0, -12(%rbp)
	jmp	.L8
.L6:
	call	__cxa_throw_bad_array_new_length
.L9:
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	-8(%rbp), %ecx
	movl	-12(%rbp), %edx
	addl	%ecx, %edx
	movl	%edx, (%rax)
	addl	$1, -12(%rbp)
.L8:
	movl	-112(%rbp), %eax
	cmpl	%eax, -12(%rbp)
	jl	.L9
	addl	$1, -8(%rbp)
.L5:
	movl	-112(%rbp), %eax
	cmpl	%eax, -8(%rbp)
	jl	.L10
	movl	-112(%rbp), %eax
	cltq
	movabsq	$2305843009213693950, %rdx
	cmpq	%rax, %rdx
	jb	.L11
	salq	$2, %rax
	movq	%rax, %rcx
	call	_Znay
	movq	%rax, -72(%rbp)
	movl	$0, -16(%rbp)
	jmp	.L13
.L11:
	call	__cxa_throw_bad_array_new_length
.L14:
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-72(%rbp), %rax
	addq	%rax, %rdx
	movl	-16(%rbp), %eax
	movl	%eax, (%rdx)
	addl	$1, -16(%rbp)
.L13:
	movl	-112(%rbp), %eax
	cmpl	%eax, -16(%rbp)
	jl	.L14
	movl	-112(%rbp), %eax
	cltq
	movabsq	$2305843009213693950, %rdx
	cmpq	%rax, %rdx
	jb	.L15
	salq	$2, %rax
	movq	%rax, %rcx
	call	_Znay
	movq	%rax, -80(%rbp)
	leaq	-136(%rbp), %rax
	movq	%rax, %rcx
	movq	__imp_QueryPerformanceFrequency(%rip), %rax
	call	*%rax
	leaq	-120(%rbp), %rax
	movq	%rax, %rcx
	movq	__imp_QueryPerformanceCounter(%rip), %rax
	call	*%rax
	movl	$0, -20(%rbp)
	jmp	.L17
.L15:
	call	__cxa_throw_bad_array_new_length
.L24:
	movl	$0, -24(%rbp)
	jmp	.L18
.L19:
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movl	$0, (%rax)
	addl	$1, -24(%rbp)
.L18:
	movl	-112(%rbp), %eax
	cmpl	%eax, -24(%rbp)
	jl	.L19
	movl	$0, -28(%rbp)
	jmp	.L20
.L23:
	movl	$0, -32(%rbp)
	jmp	.L21
.L22:
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %ecx
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %r8
	movq	-72(%rbp), %rax
	addq	%r8, %rax
	movl	(%rax), %eax
	imull	%eax, %edx
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %r8
	movq	-80(%rbp), %rax
	addq	%r8, %rax
	addl	%ecx, %edx
	movl	%edx, (%rax)
	addl	$1, -32(%rbp)
.L21:
	movl	-112(%rbp), %eax
	cmpl	%eax, -32(%rbp)
	jl	.L22
	addl	$1, -28(%rbp)
.L20:
	movl	-112(%rbp), %eax
	cmpl	%eax, -28(%rbp)
	jl	.L23
	addl	$1, -20(%rbp)
.L17:
	movl	-20(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jl	.L24
	leaq	-128(%rbp), %rax
	movq	%rax, %rcx
	movq	__imp_QueryPerformanceCounter(%rip), %rax
	call	*%rax
	movq	-128(%rbp), %rdx
	movq	-120(%rbp), %rax
	subq	%rax, %rdx
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rdx, %xmm1
	movsd	.LC0(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	movq	-136(%rbp), %rax
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rax, %xmm1
	divsd	%xmm1, %xmm0
	pxor	%xmm1, %xmm1
	cvtsi2sdl	-56(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -88(%rbp)
	movl	-112(%rbp), %eax
	cltq
	movabsq	$2305843009213693950, %rdx
	cmpq	%rax, %rdx
	jb	.L25
	salq	$2, %rax
	movq	%rax, %rcx
	call	_Znay
	movq	%rax, -96(%rbp)
	leaq	-160(%rbp), %rax
	movq	%rax, %rcx
	movq	__imp_QueryPerformanceFrequency(%rip), %rax
	call	*%rax
	leaq	-144(%rbp), %rax
	movq	%rax, %rcx
	movq	__imp_QueryPerformanceCounter(%rip), %rax
	call	*%rax
	movl	$0, -36(%rbp)
	jmp	.L27
.L25:
	call	__cxa_throw_bad_array_new_length
.L34:
	movl	$0, -40(%rbp)
	jmp	.L28
.L29:
	movl	-40(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movl	$0, (%rax)
	addl	$1, -40(%rbp)
.L28:
	movl	-112(%rbp), %eax
	cmpl	%eax, -40(%rbp)
	jl	.L29
	movl	$0, -44(%rbp)
	jmp	.L30
.L33:
	movl	$0, -48(%rbp)
	jmp	.L31
.L32:
	movl	-48(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %ecx
	movl	-44(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-48(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-44(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %r8
	movq	-72(%rbp), %rax
	addq	%r8, %rax
	movl	(%rax), %eax
	imull	%eax, %edx
	movl	-48(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %r8
	movq	-96(%rbp), %rax
	addq	%r8, %rax
	addl	%ecx, %edx
	movl	%edx, (%rax)
	addl	$1, -48(%rbp)
.L31:
	movl	-112(%rbp), %eax
	cmpl	%eax, -48(%rbp)
	jl	.L32
	addl	$1, -44(%rbp)
.L30:
	movl	-112(%rbp), %eax
	cmpl	%eax, -44(%rbp)
	jl	.L33
	addl	$1, -36(%rbp)
.L27:
	movl	-36(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jl	.L34
	leaq	-152(%rbp), %rax
	movq	%rax, %rcx
	movq	__imp_QueryPerformanceCounter(%rip), %rax
	call	*%rax
	movq	-152(%rbp), %rdx
	movq	-144(%rbp), %rax
	subq	%rax, %rdx
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rdx, %xmm1
	movsd	.LC0(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	movq	-160(%rbp), %rax
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rax, %xmm1
	divsd	%xmm1, %xmm0
	pxor	%xmm1, %xmm1
	cvtsi2sdl	-56(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -104(%rbp)
	leaq	.LC1(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rax
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movl	-112(%rbp), %eax
	movl	%eax, %edx
	call	_ZNSolsEi
	movq	%rax, %rcx
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movsd	-88(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	movq	%rax, %rcx
	call	_ZNSolsEd
	movl	$32, %edx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c
	movsd	-104(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	movq	%rax, %rcx
	call	_ZNSolsEd
	movq	%rax, %rcx
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rax
	movq	%rax, %rdx
	call	_ZNSolsEPFRSoS_E
	cmpq	$0, -80(%rbp)
	je	.L35
	movq	-80(%rbp), %rax
	movq	%rax, %rcx
	call	_ZdaPv
.L35:
	cmpq	$0, -96(%rbp)
	je	.L36
	movq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZdaPv
.L36:
	cmpq	$0, -72(%rbp)
	je	.L37
	movq	-72(%rbp), %rax
	movq	%rax, %rcx
	call	_ZdaPv
.L37:
	movl	$0, -52(%rbp)
	jmp	.L38
.L40:
	movl	-52(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L39
	movl	-52(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rcx
	call	_ZdaPv
.L39:
	addl	$1, -52(%rbp)
.L38:
	movl	-112(%rbp), %eax
	cmpl	%eax, -52(%rbp)
	jl	.L40
	cmpq	$0, -64(%rbp)
	je	.L41
	movq	-64(%rbp), %rax
	movq	%rax, %rcx
	call	_ZdaPv
.L41:
	addl	$1, -4(%rbp)
.L2:
	movl	-108(%rbp), %eax
	cmpl	%eax, -4(%rbp)
	jl	.L42
	movl	$0, %eax
	addq	$200, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC0:
	.long	0
	.long	1083129856
	.def	__main;	.scl	2;	.type	32;	.endef
	.ident	"GCC: (Rev13, Built by MSYS2 project) 15.2.0"
	.def	_ZNSirsERi;	.scl	2;	.type	32;	.endef
	.def	_Znay;	.scl	2;	.type	32;	.endef
	.def	__cxa_throw_bad_array_new_length;	.scl	2;	.type	32;	.endef
	.def	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc;	.scl	2;	.type	32;	.endef
	.def	_ZNSolsEi;	.scl	2;	.type	32;	.endef
	.def	_ZNSolsEd;	.scl	2;	.type	32;	.endef
	.def	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c;	.scl	2;	.type	32;	.endef
	.def	_ZNSolsEPFRSoS_E;	.scl	2;	.type	32;	.endef
	.def	_ZdaPv;	.scl	2;	.type	32;	.endef
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
	.section	.rdata$.refptr._ZSt3cin, "dr"
	.p2align	3, 0
	.globl	.refptr._ZSt3cin
	.linkonce	discard
.refptr._ZSt3cin:
	.quad	_ZSt3cin

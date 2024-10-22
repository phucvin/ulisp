	.text
	.intel_syntax noprefix
	.file	"prog.ll"
	.globl	print_char              # -- Begin function print_char
	.p2align	4, 0x90
	.type	print_char,@function
print_char:                             # @print_char
	.cfi_startproc
# %bb.0:
	mov	qword ptr [rsp - 8], rdi
	lea	rsi, [rsp - 8]
	mov	eax, 1
	mov	edi, 1
	mov	edx, 1
	#APP
	syscall
	#NO_APP
	ret
.Lfunc_end0:
	.size	print_char, .Lfunc_end0-print_char
	.cfi_endproc
                                        # -- End function
	.globl	print                   # -- Begin function print
	.p2align	4, 0x90
	.type	print,@function
print:                                  # @print
	.cfi_startproc
# %bb.0:
	push	r14
	.cfi_def_cfa_offset 16
	push	rbx
	.cfi_def_cfa_offset 24
	push	rax
	.cfi_def_cfa_offset 32
	.cfi_offset rbx, -24
	.cfi_offset r14, -16
	mov	rbx, rdi
	cmp	rdi, 10
	movabs	r14, -3689348814741910323
	jl	.LBB1_2
# %bb.1:                                # %iftrue13
	mov	rax, rbx
	mul	r14
	mov	rdi, rdx
	shr	rdi, 3
	call	print
	mov	qword ptr [rsp], rax
.LBB1_2:                                # %ifend19
	mov	rax, rbx
	mul	r14
	shr	rdx, 2
	and	rdx, -2
	lea	rax, [rdx + 4*rdx]
	sub	rbx, rax
	or	rbx, 48
	mov	rdi, rbx
	call	print_char
	add	rsp, 8
	.cfi_def_cfa_offset 24
	pop	rbx
	.cfi_def_cfa_offset 16
	pop	r14
	.cfi_def_cfa_offset 8
	ret
.Lfunc_end1:
	.size	print, .Lfunc_end1-print
	.cfi_endproc
                                        # -- End function
	.globl	fib                     # -- Begin function fib
	.p2align	4, 0x90
	.type	fib,@function
fib:                                    # @fib
	.cfi_startproc
# %bb.0:
	cmp	rdi, 1
	jg	.LBB2_2
# %bb.1:                                # %iftrue14
	mov	qword ptr [rsp - 8], rdi
	mov	rax, qword ptr [rsp - 8]
	ret
.LBB2_2:                                # %iffalse15
	dec	rdi
	jmp	fib                     # TAILCALL
.Lfunc_end2:
	.size	fib, .Lfunc_end2-fib
	.cfi_endproc
                                        # -- End function
	.globl	main                    # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	push	rax
	.cfi_def_cfa_offset 16
	mov	edi, 40
	call	fib
	mov	rdi, rax
	call	print
	pop	rcx
	.cfi_def_cfa_offset 8
	ret
.Lfunc_end3:
	.size	main, .Lfunc_end3-main
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits

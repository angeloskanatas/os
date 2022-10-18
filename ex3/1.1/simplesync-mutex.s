	.file	"simplesync.c"
	.text
.Ltext0:
	.file 0 "/home/angelos/Documents/source_code/os/ex3/1.1" "simplesync.c"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"About to increase variable %d times\n"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"pthread_mutex_lock"
.LC2:
	.string	"pthread_mutex_unlock"
.LC3:
	.string	"Done increasing variable.\n"
	.text
	.p2align 4
	.globl	increase_fn
	.type	increase_fn, @function
increase_fn:
.LVL0:
.LFB40:
	.file 1 "simplesync.c"
	.loc 1 29 1 view -0
	.cfi_startproc
	.loc 1 29 1 is_stmt 0 view .LVU1
	endbr64
	.loc 1 30 2 is_stmt 1 view .LVU2
	.loc 1 31 2 view .LVU3
	.loc 1 29 1 is_stmt 0 view .LVU4
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
.LBB12:
.LBB13:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/stdio2.h"
	.loc 2 105 10 view .LVU5
	movl	$1000000, %ecx
	leaq	.LC0(%rip), %rdx
	xorl	%eax, %eax
.LBE13:
.LBE12:
	.loc 1 29 1 view .LVU6
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
.LBB18:
.LBB14:
	.loc 2 105 10 view .LVU7
	movl	$1, %esi
.LBE14:
.LBE18:
	.loc 1 40 5 view .LVU8
	leaq	.LC1(%rip), %r15
	.loc 1 44 5 view .LVU9
	leaq	.LC2(%rip), %r14
	.loc 1 29 1 view .LVU10
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	leaq	mutex(%rip), %r13
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rdi, %r12
.LVL1:
	.loc 1 33 2 is_stmt 1 view .LVU11
.LBB19:
.LBI12:
	.loc 2 103 1 view .LVU12
.LBB15:
	.loc 2 105 3 view .LVU13
.LBE15:
.LBE19:
	.loc 1 29 1 is_stmt 0 view .LVU14
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
.LBB20:
.LBB16:
	.loc 2 105 10 view .LVU15
	movl	$1000000, %ebp
.LBE16:
.LBE20:
	.loc 1 29 1 view .LVU16
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$8, %rsp
	.cfi_def_cfa_offset 64
.LBB21:
.LBB17:
	.loc 2 105 10 view .LVU17
	movq	stderr(%rip), %rdi
.LVL2:
	.loc 2 105 10 view .LVU18
	call	__fprintf_chk@PLT
.LVL3:
	.loc 2 105 10 view .LVU19
.LBE17:
.LBE21:
	.loc 1 34 2 is_stmt 1 view .LVU20
	.loc 1 34 16 view .LVU21
	jmp	.L4
.LVL4:
	.p2align 4,,10
	.p2align 3
.L2:
	.loc 1 40 5 discriminator 1 view .LVU22
	.loc 1 41 4 discriminator 1 view .LVU23
	.loc 1 41 7 is_stmt 0 discriminator 1 view .LVU24
	movl	(%r12), %eax
	.loc 1 42 8 discriminator 1 view .LVU25
	movq	%r13, %rdi
	.loc 1 41 4 discriminator 1 view .LVU26
	addl	$1, %eax
	movl	%eax, (%r12)
	.loc 1 42 4 is_stmt 1 discriminator 1 view .LVU27
	.loc 1 42 8 is_stmt 0 discriminator 1 view .LVU28
	call	pthread_mutex_unlock@PLT
.LVL5:
	movl	%eax, %ebx
.LVL6:
	.loc 1 43 4 is_stmt 1 discriminator 1 view .LVU29
	.loc 1 43 6 is_stmt 0 discriminator 1 view .LVU30
	testl	%eax, %eax
	jne	.L14
	.loc 1 44 5 is_stmt 1 discriminator 1 view .LVU31
	.loc 1 34 22 discriminator 1 view .LVU32
.LVL7:
	.loc 1 34 16 discriminator 1 view .LVU33
	subl	$1, %ebp
.LVL8:
	.loc 1 34 16 is_stmt 0 discriminator 1 view .LVU34
	je	.L15
.LVL9:
.L4:
	.loc 1 35 3 is_stmt 1 view .LVU35
	.loc 1 38 4 view .LVU36
	.loc 1 38 8 is_stmt 0 view .LVU37
	movq	%r13, %rdi
	call	pthread_mutex_lock@PLT
.LVL10:
	movl	%eax, %ebx
.LVL11:
	.loc 1 39 4 is_stmt 1 view .LVU38
	.loc 1 39 6 is_stmt 0 view .LVU39
	testl	%eax, %eax
	je	.L2
	.loc 1 40 5 is_stmt 1 view .LVU40
	.loc 1 40 5 view .LVU41
	call	__errno_location@PLT
.LVL12:
	.loc 1 40 5 is_stmt 0 view .LVU42
	movq	%r15, %rdi
	movl	%ebx, (%rax)
	.loc 1 40 5 is_stmt 1 view .LVU43
	call	perror@PLT
.LVL13:
	jmp	.L2
.LVL14:
	.p2align 4,,10
	.p2align 3
.L14:
	.loc 1 44 5 view .LVU44
	.loc 1 44 5 view .LVU45
	call	__errno_location@PLT
.LVL15:
	.loc 1 44 5 is_stmt 0 view .LVU46
	movq	%r14, %rdi
	movl	%ebx, (%rax)
	.loc 1 44 5 is_stmt 1 view .LVU47
	call	perror@PLT
.LVL16:
	.loc 1 44 5 view .LVU48
	.loc 1 34 22 view .LVU49
	.loc 1 34 16 view .LVU50
	subl	$1, %ebp
.LVL17:
	.loc 1 34 16 is_stmt 0 view .LVU51
	jne	.L4
.LVL18:
.L15:
	.loc 1 47 2 is_stmt 1 view .LVU52
.LBB22:
.LBI22:
	.loc 2 103 1 view .LVU53
.LBB23:
	.loc 2 105 3 view .LVU54
	.loc 2 105 10 is_stmt 0 view .LVU55
	movq	stderr(%rip), %rcx
	movl	$26, %edx
	movl	$1, %esi
	leaq	.LC3(%rip), %rdi
	call	fwrite@PLT
.LVL19:
	.loc 2 105 10 view .LVU56
.LBE23:
.LBE22:
	.loc 1 49 2 is_stmt 1 view .LVU57
	.loc 1 50 1 is_stmt 0 view .LVU58
	addq	$8, %rsp
	.cfi_def_cfa_offset 56
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 48
.LVL20:
	.loc 1 50 1 view .LVU59
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
.LVL21:
	.loc 1 50 1 view .LVU60
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE40:
	.size	increase_fn, .-increase_fn
	.section	.rodata.str1.8
	.align 8
.LC4:
	.string	"About to decrease variable %d times\n"
	.section	.rodata.str1.1
.LC5:
	.string	"Done decreasing variable.\n"
	.text
	.p2align 4
	.globl	decrease_fn
	.type	decrease_fn, @function
decrease_fn:
.LVL22:
.LFB41:
	.loc 1 53 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 53 1 is_stmt 0 view .LVU62
	endbr64
	.loc 1 54 2 is_stmt 1 view .LVU63
	.loc 1 55 2 view .LVU64
	.loc 1 53 1 is_stmt 0 view .LVU65
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
.LBB24:
.LBB25:
	.loc 2 105 10 view .LVU66
	movl	$1000000, %ecx
	leaq	.LC4(%rip), %rdx
	xorl	%eax, %eax
.LBE25:
.LBE24:
	.loc 1 53 1 view .LVU67
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
.LBB30:
.LBB26:
	.loc 2 105 10 view .LVU68
	movl	$1, %esi
.LBE26:
.LBE30:
	.loc 1 64 5 view .LVU69
	leaq	.LC1(%rip), %r15
	.loc 1 68 5 view .LVU70
	leaq	.LC2(%rip), %r14
	.loc 1 53 1 view .LVU71
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	leaq	mutex(%rip), %r13
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rdi, %r12
.LVL23:
	.loc 1 57 2 is_stmt 1 view .LVU72
.LBB31:
.LBI24:
	.loc 2 103 1 view .LVU73
.LBB27:
	.loc 2 105 3 view .LVU74
.LBE27:
.LBE31:
	.loc 1 53 1 is_stmt 0 view .LVU75
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
.LBB32:
.LBB28:
	.loc 2 105 10 view .LVU76
	movl	$1000000, %ebp
.LBE28:
.LBE32:
	.loc 1 53 1 view .LVU77
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$8, %rsp
	.cfi_def_cfa_offset 64
.LBB33:
.LBB29:
	.loc 2 105 10 view .LVU78
	movq	stderr(%rip), %rdi
.LVL24:
	.loc 2 105 10 view .LVU79
	call	__fprintf_chk@PLT
.LVL25:
	.loc 2 105 10 view .LVU80
.LBE29:
.LBE33:
	.loc 1 58 2 is_stmt 1 view .LVU81
	.loc 1 58 16 view .LVU82
	jmp	.L19
.LVL26:
	.p2align 4,,10
	.p2align 3
.L17:
	.loc 1 64 5 discriminator 1 view .LVU83
	.loc 1 65 4 discriminator 1 view .LVU84
	.loc 1 65 7 is_stmt 0 discriminator 1 view .LVU85
	movl	(%r12), %eax
	.loc 1 66 8 discriminator 1 view .LVU86
	movq	%r13, %rdi
	.loc 1 65 4 discriminator 1 view .LVU87
	subl	$1, %eax
	movl	%eax, (%r12)
	.loc 1 66 4 is_stmt 1 discriminator 1 view .LVU88
	.loc 1 66 8 is_stmt 0 discriminator 1 view .LVU89
	call	pthread_mutex_unlock@PLT
.LVL27:
	movl	%eax, %ebx
.LVL28:
	.loc 1 67 4 is_stmt 1 discriminator 1 view .LVU90
	.loc 1 67 6 is_stmt 0 discriminator 1 view .LVU91
	testl	%eax, %eax
	jne	.L28
	.loc 1 68 5 is_stmt 1 discriminator 1 view .LVU92
	.loc 1 58 22 discriminator 1 view .LVU93
.LVL29:
	.loc 1 58 16 discriminator 1 view .LVU94
	subl	$1, %ebp
.LVL30:
	.loc 1 58 16 is_stmt 0 discriminator 1 view .LVU95
	je	.L29
.LVL31:
.L19:
	.loc 1 59 3 is_stmt 1 view .LVU96
	.loc 1 62 4 view .LVU97
	.loc 1 62 8 is_stmt 0 view .LVU98
	movq	%r13, %rdi
	call	pthread_mutex_lock@PLT
.LVL32:
	movl	%eax, %ebx
.LVL33:
	.loc 1 63 4 is_stmt 1 view .LVU99
	.loc 1 63 6 is_stmt 0 view .LVU100
	testl	%eax, %eax
	je	.L17
	.loc 1 64 5 is_stmt 1 view .LVU101
	.loc 1 64 5 view .LVU102
	call	__errno_location@PLT
.LVL34:
	.loc 1 64 5 is_stmt 0 view .LVU103
	movq	%r15, %rdi
	movl	%ebx, (%rax)
	.loc 1 64 5 is_stmt 1 view .LVU104
	call	perror@PLT
.LVL35:
	jmp	.L17
.LVL36:
	.p2align 4,,10
	.p2align 3
.L28:
	.loc 1 68 5 view .LVU105
	.loc 1 68 5 view .LVU106
	call	__errno_location@PLT
.LVL37:
	.loc 1 68 5 is_stmt 0 view .LVU107
	movq	%r14, %rdi
	movl	%ebx, (%rax)
	.loc 1 68 5 is_stmt 1 view .LVU108
	call	perror@PLT
.LVL38:
	.loc 1 68 5 view .LVU109
	.loc 1 58 22 view .LVU110
	.loc 1 58 16 view .LVU111
	subl	$1, %ebp
.LVL39:
	.loc 1 58 16 is_stmt 0 view .LVU112
	jne	.L19
.LVL40:
.L29:
	.loc 1 71 2 is_stmt 1 view .LVU113
.LBB34:
.LBI34:
	.loc 2 103 1 view .LVU114
.LBB35:
	.loc 2 105 3 view .LVU115
	.loc 2 105 10 is_stmt 0 view .LVU116
	movq	stderr(%rip), %rcx
	movl	$26, %edx
	movl	$1, %esi
	leaq	.LC5(%rip), %rdi
	call	fwrite@PLT
.LVL41:
	.loc 2 105 10 view .LVU117
.LBE35:
.LBE34:
	.loc 1 73 2 is_stmt 1 view .LVU118
	.loc 1 74 1 is_stmt 0 view .LVU119
	addq	$8, %rsp
	.cfi_def_cfa_offset 56
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 48
.LVL42:
	.loc 1 74 1 view .LVU120
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
.LVL43:
	.loc 1 74 1 view .LVU121
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE41:
	.size	decrease_fn, .-decrease_fn
	.section	.rodata.str1.1
.LC6:
	.string	""
.LC7:
	.string	"NOT "
.LC8:
	.string	"pthread_create"
.LC9:
	.string	"pthread_join"
.LC10:
	.string	"pthread_mutex_destroy"
.LC11:
	.string	"%sOK, val = %d.\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LVL44:
.LFB42:
	.loc 1 78 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 78 1 is_stmt 0 view .LVU123
	endbr64
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	.loc 1 90 6 view .LVU124
	xorl	%esi, %esi
.LVL45:
	.loc 1 90 6 view .LVU125
	leaq	increase_fn(%rip), %rdx
	.loc 1 78 1 view .LVU126
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	subq	$32, %rsp
	.cfi_def_cfa_offset 64
	.loc 1 78 1 view .LVU127
	movq	%fs:40, %rax
	movq	%rax, 24(%rsp)
	xorl	%eax, %eax
	.loc 1 79 2 is_stmt 1 view .LVU128
	.loc 1 80 2 view .LVU129
	.loc 1 85 2 view .LVU130
	.loc 1 90 6 is_stmt 0 view .LVU131
	leaq	4(%rsp), %r12
	leaq	8(%rsp), %rdi
.LVL46:
	.loc 1 85 5 view .LVU132
	movl	$0, 4(%rsp)
	.loc 1 90 2 is_stmt 1 view .LVU133
	.loc 1 90 6 is_stmt 0 view .LVU134
	movq	%r12, %rcx
	call	pthread_create@PLT
.LVL47:
	.loc 1 91 2 is_stmt 1 view .LVU135
	.loc 1 91 4 is_stmt 0 view .LVU136
	testl	%eax, %eax
	jne	.L50
	.loc 1 95 2 is_stmt 1 view .LVU137
	.loc 1 95 6 is_stmt 0 view .LVU138
	leaq	16(%rsp), %rdi
	movq	%r12, %rcx
	leaq	decrease_fn(%rip), %rdx
	xorl	%esi, %esi
	call	pthread_create@PLT
.LVL48:
	.loc 1 95 6 view .LVU139
	movl	%eax, %ebx
.LVL49:
	.loc 1 96 2 is_stmt 1 view .LVU140
	.loc 1 96 4 is_stmt 0 view .LVU141
	testl	%eax, %eax
	jne	.L49
	.loc 1 104 2 is_stmt 1 view .LVU142
	.loc 1 104 6 is_stmt 0 view .LVU143
	movq	8(%rsp), %rdi
	xorl	%esi, %esi
	call	pthread_join@PLT
.LVL50:
	.loc 1 104 6 view .LVU144
	movl	%eax, %ebx
.LVL51:
	.loc 1 105 2 is_stmt 1 view .LVU145
	.loc 1 105 4 is_stmt 0 view .LVU146
	testl	%eax, %eax
	jne	.L51
.LVL52:
.L33:
	.loc 1 106 3 is_stmt 1 discriminator 1 view .LVU147
	.loc 1 107 2 discriminator 1 view .LVU148
	.loc 1 107 6 is_stmt 0 discriminator 1 view .LVU149
	movq	16(%rsp), %rdi
	xorl	%esi, %esi
	call	pthread_join@PLT
.LVL53:
	movl	%eax, %ebx
.LVL54:
	.loc 1 108 2 is_stmt 1 discriminator 1 view .LVU150
	.loc 1 108 4 is_stmt 0 discriminator 1 view .LVU151
	testl	%eax, %eax
	jne	.L52
.LVL55:
.L34:
	.loc 1 109 3 is_stmt 1 discriminator 1 view .LVU152
	.loc 1 114 2 discriminator 1 view .LVU153
	.loc 1 114 9 is_stmt 0 discriminator 1 view .LVU154
	movl	4(%rsp), %r12d
	xorl	%r13d, %r13d
	.loc 1 116 6 discriminator 1 view .LVU155
	leaq	mutex(%rip), %rdi
	.loc 1 114 9 discriminator 1 view .LVU156
	testl	%r12d, %r12d
	sete	%r13b
.LVL56:
	.loc 1 116 2 is_stmt 1 discriminator 1 view .LVU157
	.loc 1 116 6 is_stmt 0 discriminator 1 view .LVU158
	call	pthread_mutex_destroy@PLT
.LVL57:
	movl	%eax, %ebx
.LVL58:
	.loc 1 117 2 is_stmt 1 discriminator 1 view .LVU159
	.loc 1 117 4 is_stmt 0 discriminator 1 view .LVU160
	testl	%eax, %eax
	jne	.L53
.LVL59:
.L35:
	.loc 1 118 3 is_stmt 1 discriminator 1 view .LVU161
	.loc 1 120 2 discriminator 1 view .LVU162
	testl	%r12d, %r12d
	leaq	.LC6(%rip), %rax
.LBB36:
.LBB37:
	.loc 2 112 10 is_stmt 0 discriminator 1 view .LVU163
	movl	4(%rsp), %ecx
.LBE37:
.LBE36:
	.loc 1 120 2 discriminator 1 view .LVU164
	leaq	.LC7(%rip), %rdx
	cmove	%rax, %rdx
.LVL60:
.LBB39:
.LBI36:
	.loc 2 110 1 is_stmt 1 discriminator 1 view .LVU165
.LBB38:
	.loc 2 112 3 discriminator 1 view .LVU166
	.loc 2 112 10 is_stmt 0 discriminator 1 view .LVU167
	leaq	.LC11(%rip), %rsi
	xorl	%eax, %eax
	movl	$1, %edi
	call	__printf_chk@PLT
.LVL61:
	.loc 2 112 10 discriminator 1 view .LVU168
.LBE38:
.LBE39:
	.loc 1 122 2 is_stmt 1 discriminator 1 view .LVU169
	.loc 1 123 1 is_stmt 0 discriminator 1 view .LVU170
	movq	24(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L54
	.loc 1 123 1 view .LVU171
	addq	$32, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	movl	%r13d, %eax
	popq	%rbx
	.cfi_def_cfa_offset 24
.LVL62:
	.loc 1 123 1 view .LVU172
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
.LVL63:
	.loc 1 123 1 view .LVU173
	ret
.LVL64:
.L51:
	.cfi_restore_state
	.loc 1 106 3 is_stmt 1 view .LVU174
	.loc 1 106 3 view .LVU175
	call	__errno_location@PLT
.LVL65:
	.loc 1 106 3 is_stmt 0 view .LVU176
	leaq	.LC9(%rip), %rdi
	movl	%ebx, (%rax)
	.loc 1 106 3 is_stmt 1 view .LVU177
	call	perror@PLT
.LVL66:
	jmp	.L33
.LVL67:
.L53:
	.loc 1 118 3 view .LVU178
	.loc 1 118 3 view .LVU179
	call	__errno_location@PLT
.LVL68:
	.loc 1 118 3 is_stmt 0 view .LVU180
	leaq	.LC10(%rip), %rdi
	movl	%ebx, (%rax)
	.loc 1 118 3 is_stmt 1 view .LVU181
	call	perror@PLT
.LVL69:
	jmp	.L35
.LVL70:
.L52:
	.loc 1 109 3 view .LVU182
	.loc 1 109 3 view .LVU183
	call	__errno_location@PLT
.LVL71:
	.loc 1 109 3 is_stmt 0 view .LVU184
	leaq	.LC9(%rip), %rdi
	movl	%ebx, (%rax)
	.loc 1 109 3 is_stmt 1 view .LVU185
	call	perror@PLT
.LVL72:
	jmp	.L34
.LVL73:
.L50:
	.loc 1 109 3 is_stmt 0 view .LVU186
	movl	%eax, %ebx
	.loc 1 92 3 is_stmt 1 view .LVU187
	.loc 1 92 3 view .LVU188
.LVL74:
.L49:
	.loc 1 97 3 view .LVU189
	.loc 1 97 3 view .LVU190
	call	__errno_location@PLT
.LVL75:
	leaq	.LC8(%rip), %rdi
	movl	%ebx, (%rax)
	.loc 1 97 3 view .LVU191
	call	perror@PLT
.LVL76:
	.loc 1 97 3 view .LVU192
	.loc 1 98 3 view .LVU193
	movl	$1, %edi
	call	exit@PLT
.LVL77:
.L54:
	.loc 1 123 1 is_stmt 0 view .LVU194
	call	__stack_chk_fail@PLT
.LVL78:
	.cfi_endproc
.LFE42:
	.size	main, .-main
	.globl	mutex
	.bss
	.align 32
	.type	mutex, @object
	.size	mutex, 40
mutex:
	.zero	40
	.text
.Letext0:
	.file 3 "/usr/lib/gcc/x86_64-linux-gnu/11/include/stddef.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 6 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 7 "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h"
	.file 8 "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h"
	.file 9 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h"
	.file 10 "/usr/include/stdio.h"
	.file 11 "/usr/include/pthread.h"
	.file 12 "/usr/include/stdlib.h"
	.file 13 "/usr/include/errno.h"
	.file 14 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xb60
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x20
	.long	.LASF95
	.byte	0x1d
	.long	.LASF0
	.long	.LASF1
	.long	.LLRL20
	.quad	0
	.long	.Ldebug_line0
	.uleb128 0x8
	.long	.LASF9
	.byte	0x3
	.byte	0xd1
	.byte	0x17
	.long	0x36
	.uleb128 0x6
	.byte	0x8
	.byte	0x7
	.long	.LASF2
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.long	.LASF3
	.uleb128 0x21
	.byte	0x8
	.uleb128 0xc
	.long	0x44
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.long	.LASF4
	.uleb128 0x6
	.byte	0x2
	.byte	0x7
	.long	.LASF5
	.uleb128 0x6
	.byte	0x1
	.byte	0x6
	.long	.LASF6
	.uleb128 0x6
	.byte	0x2
	.byte	0x5
	.long	.LASF7
	.uleb128 0x22
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x23
	.long	0x67
	.uleb128 0x6
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0x8
	.long	.LASF10
	.byte	0x4
	.byte	0x98
	.byte	0x19
	.long	0x73
	.uleb128 0x8
	.long	.LASF11
	.byte	0x4
	.byte	0x99
	.byte	0x1b
	.long	0x73
	.uleb128 0x3
	.long	0x97
	.uleb128 0x6
	.byte	0x1
	.byte	0x6
	.long	.LASF12
	.uleb128 0x1b
	.long	0x97
	.uleb128 0x14
	.long	.LASF48
	.byte	0xd8
	.byte	0x5
	.byte	0x31
	.byte	0x8
	.long	0x22a
	.uleb128 0x1
	.long	.LASF13
	.byte	0x5
	.byte	0x33
	.byte	0x7
	.long	0x67
	.byte	0
	.uleb128 0x1
	.long	.LASF14
	.byte	0x5
	.byte	0x36
	.byte	0x9
	.long	0x92
	.byte	0x8
	.uleb128 0x1
	.long	.LASF15
	.byte	0x5
	.byte	0x37
	.byte	0x9
	.long	0x92
	.byte	0x10
	.uleb128 0x1
	.long	.LASF16
	.byte	0x5
	.byte	0x38
	.byte	0x9
	.long	0x92
	.byte	0x18
	.uleb128 0x1
	.long	.LASF17
	.byte	0x5
	.byte	0x39
	.byte	0x9
	.long	0x92
	.byte	0x20
	.uleb128 0x1
	.long	.LASF18
	.byte	0x5
	.byte	0x3a
	.byte	0x9
	.long	0x92
	.byte	0x28
	.uleb128 0x1
	.long	.LASF19
	.byte	0x5
	.byte	0x3b
	.byte	0x9
	.long	0x92
	.byte	0x30
	.uleb128 0x1
	.long	.LASF20
	.byte	0x5
	.byte	0x3c
	.byte	0x9
	.long	0x92
	.byte	0x38
	.uleb128 0x1
	.long	.LASF21
	.byte	0x5
	.byte	0x3d
	.byte	0x9
	.long	0x92
	.byte	0x40
	.uleb128 0x1
	.long	.LASF22
	.byte	0x5
	.byte	0x40
	.byte	0x9
	.long	0x92
	.byte	0x48
	.uleb128 0x1
	.long	.LASF23
	.byte	0x5
	.byte	0x41
	.byte	0x9
	.long	0x92
	.byte	0x50
	.uleb128 0x1
	.long	.LASF24
	.byte	0x5
	.byte	0x42
	.byte	0x9
	.long	0x92
	.byte	0x58
	.uleb128 0x1
	.long	.LASF25
	.byte	0x5
	.byte	0x44
	.byte	0x16
	.long	0x243
	.byte	0x60
	.uleb128 0x1
	.long	.LASF26
	.byte	0x5
	.byte	0x46
	.byte	0x14
	.long	0x248
	.byte	0x68
	.uleb128 0x1
	.long	.LASF27
	.byte	0x5
	.byte	0x48
	.byte	0x7
	.long	0x67
	.byte	0x70
	.uleb128 0x1
	.long	.LASF28
	.byte	0x5
	.byte	0x49
	.byte	0x7
	.long	0x67
	.byte	0x74
	.uleb128 0x1
	.long	.LASF29
	.byte	0x5
	.byte	0x4a
	.byte	0xb
	.long	0x7a
	.byte	0x78
	.uleb128 0x1
	.long	.LASF30
	.byte	0x5
	.byte	0x4d
	.byte	0x12
	.long	0x52
	.byte	0x80
	.uleb128 0x1
	.long	.LASF31
	.byte	0x5
	.byte	0x4e
	.byte	0xf
	.long	0x59
	.byte	0x82
	.uleb128 0x1
	.long	.LASF32
	.byte	0x5
	.byte	0x4f
	.byte	0x8
	.long	0x24d
	.byte	0x83
	.uleb128 0x1
	.long	.LASF33
	.byte	0x5
	.byte	0x51
	.byte	0xf
	.long	0x25d
	.byte	0x88
	.uleb128 0x1
	.long	.LASF34
	.byte	0x5
	.byte	0x59
	.byte	0xd
	.long	0x86
	.byte	0x90
	.uleb128 0x1
	.long	.LASF35
	.byte	0x5
	.byte	0x5b
	.byte	0x17
	.long	0x267
	.byte	0x98
	.uleb128 0x1
	.long	.LASF36
	.byte	0x5
	.byte	0x5c
	.byte	0x19
	.long	0x271
	.byte	0xa0
	.uleb128 0x1
	.long	.LASF37
	.byte	0x5
	.byte	0x5d
	.byte	0x14
	.long	0x248
	.byte	0xa8
	.uleb128 0x1
	.long	.LASF38
	.byte	0x5
	.byte	0x5e
	.byte	0x9
	.long	0x44
	.byte	0xb0
	.uleb128 0x1
	.long	.LASF39
	.byte	0x5
	.byte	0x5f
	.byte	0xa
	.long	0x2a
	.byte	0xb8
	.uleb128 0x1
	.long	.LASF40
	.byte	0x5
	.byte	0x60
	.byte	0x7
	.long	0x67
	.byte	0xc0
	.uleb128 0x1
	.long	.LASF41
	.byte	0x5
	.byte	0x62
	.byte	0x8
	.long	0x276
	.byte	0xc4
	.byte	0
	.uleb128 0x8
	.long	.LASF42
	.byte	0x6
	.byte	0x7
	.byte	0x19
	.long	0xa3
	.uleb128 0x24
	.long	.LASF96
	.byte	0x5
	.byte	0x2b
	.byte	0xe
	.uleb128 0x15
	.long	.LASF43
	.uleb128 0x3
	.long	0x23e
	.uleb128 0x3
	.long	0xa3
	.uleb128 0xf
	.long	0x97
	.long	0x25d
	.uleb128 0x10
	.long	0x36
	.byte	0
	.byte	0
	.uleb128 0x3
	.long	0x236
	.uleb128 0x15
	.long	.LASF44
	.uleb128 0x3
	.long	0x262
	.uleb128 0x15
	.long	.LASF45
	.uleb128 0x3
	.long	0x26c
	.uleb128 0xf
	.long	0x97
	.long	0x286
	.uleb128 0x10
	.long	0x36
	.byte	0x13
	.byte	0
	.uleb128 0x3
	.long	0x22a
	.uleb128 0xc
	.long	0x286
	.uleb128 0x25
	.long	.LASF76
	.byte	0xa
	.byte	0x91
	.byte	0xe
	.long	0x286
	.uleb128 0x6
	.byte	0x8
	.byte	0x5
	.long	.LASF46
	.uleb128 0x6
	.byte	0x8
	.byte	0x7
	.long	.LASF47
	.uleb128 0x14
	.long	.LASF49
	.byte	0x10
	.byte	0x7
	.byte	0x33
	.byte	0x10
	.long	0x2d2
	.uleb128 0x1
	.long	.LASF50
	.byte	0x7
	.byte	0x35
	.byte	0x23
	.long	0x2d2
	.byte	0
	.uleb128 0x1
	.long	.LASF51
	.byte	0x7
	.byte	0x36
	.byte	0x23
	.long	0x2d2
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.long	0x2aa
	.uleb128 0x8
	.long	.LASF52
	.byte	0x7
	.byte	0x37
	.byte	0x3
	.long	0x2aa
	.uleb128 0x14
	.long	.LASF53
	.byte	0x28
	.byte	0x8
	.byte	0x16
	.byte	0x8
	.long	0x359
	.uleb128 0x1
	.long	.LASF54
	.byte	0x8
	.byte	0x18
	.byte	0x7
	.long	0x67
	.byte	0
	.uleb128 0x1
	.long	.LASF55
	.byte	0x8
	.byte	0x19
	.byte	0x10
	.long	0x3d
	.byte	0x4
	.uleb128 0x1
	.long	.LASF56
	.byte	0x8
	.byte	0x1a
	.byte	0x7
	.long	0x67
	.byte	0x8
	.uleb128 0x1
	.long	.LASF57
	.byte	0x8
	.byte	0x1c
	.byte	0x10
	.long	0x3d
	.byte	0xc
	.uleb128 0x1
	.long	.LASF58
	.byte	0x8
	.byte	0x20
	.byte	0x7
	.long	0x67
	.byte	0x10
	.uleb128 0x1
	.long	.LASF59
	.byte	0x8
	.byte	0x22
	.byte	0x9
	.long	0x60
	.byte	0x14
	.uleb128 0x1
	.long	.LASF60
	.byte	0x8
	.byte	0x23
	.byte	0x9
	.long	0x60
	.byte	0x16
	.uleb128 0x1
	.long	.LASF61
	.byte	0x8
	.byte	0x24
	.byte	0x14
	.long	0x2d7
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.long	.LASF62
	.byte	0x9
	.byte	0x1b
	.byte	0x1b
	.long	0x36
	.uleb128 0x26
	.long	.LASF65
	.byte	0x38
	.byte	0x9
	.byte	0x38
	.byte	0x7
	.long	0x389
	.uleb128 0xd
	.long	.LASF63
	.byte	0x3a
	.byte	0x8
	.long	0x389
	.uleb128 0xd
	.long	.LASF64
	.byte	0x3b
	.byte	0xc
	.long	0x73
	.byte	0
	.uleb128 0xf
	.long	0x97
	.long	0x399
	.uleb128 0x10
	.long	0x36
	.byte	0x37
	.byte	0
	.uleb128 0x8
	.long	.LASF65
	.byte	0x9
	.byte	0x3e
	.byte	0x1e
	.long	0x365
	.uleb128 0x1b
	.long	0x399
	.uleb128 0x27
	.byte	0x28
	.byte	0x9
	.byte	0x43
	.byte	0x9
	.long	0x3d5
	.uleb128 0xd
	.long	.LASF66
	.byte	0x45
	.byte	0x1c
	.long	0x2e3
	.uleb128 0xd
	.long	.LASF63
	.byte	0x46
	.byte	0x8
	.long	0x3d5
	.uleb128 0xd
	.long	.LASF64
	.byte	0x47
	.byte	0xc
	.long	0x73
	.byte	0
	.uleb128 0xf
	.long	0x97
	.long	0x3e5
	.uleb128 0x10
	.long	0x36
	.byte	0x27
	.byte	0
	.uleb128 0x8
	.long	.LASF67
	.byte	0x9
	.byte	0x48
	.byte	0x3
	.long	0x3aa
	.uleb128 0x3
	.long	0x9e
	.uleb128 0xc
	.long	0x3f1
	.uleb128 0x28
	.byte	0x7
	.byte	0x4
	.long	0x3d
	.byte	0xb
	.byte	0x30
	.byte	0x1
	.long	0x43a
	.uleb128 0x9
	.long	.LASF68
	.byte	0
	.uleb128 0x9
	.long	.LASF69
	.byte	0x1
	.uleb128 0x9
	.long	.LASF70
	.byte	0x2
	.uleb128 0x9
	.long	.LASF71
	.byte	0x3
	.uleb128 0x9
	.long	.LASF72
	.byte	0
	.uleb128 0x9
	.long	.LASF73
	.byte	0x1
	.uleb128 0x9
	.long	.LASF74
	.byte	0x2
	.uleb128 0x9
	.long	.LASF75
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	.LASF77
	.byte	0x1
	.byte	0x1a
	.byte	0x11
	.long	0x3e5
	.uleb128 0x9
	.byte	0x3
	.quad	mutex
	.uleb128 0x11
	.long	.LASF78
	.byte	0x2
	.byte	0x5f
	.long	0x67
	.long	0x46b
	.uleb128 0x4
	.long	0x67
	.uleb128 0x4
	.long	0x3f1
	.uleb128 0x12
	.byte	0
	.uleb128 0x16
	.long	.LASF79
	.value	0x312
	.long	0x67
	.long	0x480
	.uleb128 0x4
	.long	0x480
	.byte	0
	.uleb128 0x3
	.long	0x3e5
	.uleb128 0x11
	.long	.LASF80
	.byte	0xb
	.byte	0xdb
	.long	0x67
	.long	0x49f
	.uleb128 0x4
	.long	0x359
	.uleb128 0x4
	.long	0x49f
	.byte	0
	.uleb128 0x3
	.long	0x44
	.uleb128 0x2a
	.long	.LASF81
	.byte	0xc
	.value	0x270
	.byte	0xd
	.long	0x4b7
	.uleb128 0x4
	.long	0x67
	.byte	0
	.uleb128 0x11
	.long	.LASF82
	.byte	0xb
	.byte	0xca
	.long	0x67
	.long	0x4db
	.uleb128 0x4
	.long	0x4e0
	.uleb128 0x4
	.long	0x4ea
	.uleb128 0x4
	.long	0x4ef
	.uleb128 0x4
	.long	0x46
	.byte	0
	.uleb128 0x3
	.long	0x359
	.uleb128 0xc
	.long	0x4db
	.uleb128 0x3
	.long	0x3a5
	.uleb128 0xc
	.long	0x4e5
	.uleb128 0x3
	.long	0x4f4
	.uleb128 0x2b
	.long	0x44
	.long	0x503
	.uleb128 0x4
	.long	0x44
	.byte	0
	.uleb128 0x11
	.long	.LASF83
	.byte	0x2
	.byte	0x5d
	.long	0x67
	.long	0x523
	.uleb128 0x4
	.long	0x28b
	.uleb128 0x4
	.long	0x67
	.uleb128 0x4
	.long	0x3f6
	.uleb128 0x12
	.byte	0
	.uleb128 0x16
	.long	.LASF84
	.value	0x343
	.long	0x67
	.long	0x538
	.uleb128 0x4
	.long	0x480
	.byte	0
	.uleb128 0x2c
	.long	.LASF97
	.byte	0xa
	.value	0x324
	.byte	0xd
	.long	0x54b
	.uleb128 0x4
	.long	0x3f1
	.byte	0
	.uleb128 0x2d
	.long	.LASF98
	.byte	0xd
	.byte	0x25
	.byte	0xd
	.long	0x557
	.uleb128 0x3
	.long	0x67
	.uleb128 0x16
	.long	.LASF85
	.value	0x31a
	.long	0x67
	.long	0x571
	.uleb128 0x4
	.long	0x480
	.byte	0
	.uleb128 0x17
	.long	.LASF88
	.byte	0x4d
	.byte	0x5
	.long	0x67
	.quad	.LFB42
	.quad	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.long	0x7ee
	.uleb128 0x1c
	.long	.LASF86
	.byte	0x4d
	.byte	0xe
	.long	0x67
	.long	.LLST14
	.long	.LVUS14
	.uleb128 0x1c
	.long	.LASF87
	.byte	0x4d
	.byte	0x1a
	.long	0x7ee
	.long	.LLST15
	.long	.LVUS15
	.uleb128 0x18
	.string	"val"
	.byte	0x4f
	.byte	0x6
	.long	0x67
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0xa
	.string	"ret"
	.byte	0x4f
	.byte	0xb
	.long	0x67
	.long	.LLST16
	.long	.LVUS16
	.uleb128 0xa
	.string	"ok"
	.byte	0x4f
	.byte	0x10
	.long	0x67
	.long	.LLST17
	.long	.LVUS17
	.uleb128 0x18
	.string	"t1"
	.byte	0x50
	.byte	0xc
	.long	0x359
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x18
	.string	"t2"
	.byte	0x50
	.byte	0x10
	.long	0x359
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x19
	.long	0xb0e
	.quad	.LBI36
	.byte	.LVU165
	.long	.LLRL18
	.byte	0x78
	.long	0x66c
	.uleb128 0xe
	.long	0xb1c
	.long	.LLST19
	.long	.LVUS19
	.uleb128 0xb
	.quad	.LVL61
	.long	0x450
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC11
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1e
	.byte	0x3
	.quad	.LC7
	.byte	0x3
	.quad	.LC6
	.byte	0x7c
	.sleb128 0
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x30
	.byte	0x2e
	.byte	0x28
	.value	0x1
	.byte	0x16
	.byte	0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.quad	.LVL47
	.long	0x4b7
	.long	0x69c
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	increase_fn
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x5
	.quad	.LVL48
	.long	0x4b7
	.long	0x6cc
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	decrease_fn
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x5
	.quad	.LVL50
	.long	0x485
	.long	0x6e3
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x5
	.quad	.LVL53
	.long	0x485
	.long	0x6fa
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x5
	.quad	.LVL57
	.long	0x46b
	.long	0x719
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	mutex
	.byte	0
	.uleb128 0x7
	.quad	.LVL65
	.long	0x54b
	.uleb128 0x5
	.quad	.LVL66
	.long	0x538
	.long	0x745
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC9
	.byte	0
	.uleb128 0x7
	.quad	.LVL68
	.long	0x54b
	.uleb128 0x5
	.quad	.LVL69
	.long	0x538
	.long	0x771
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC10
	.byte	0
	.uleb128 0x7
	.quad	.LVL71
	.long	0x54b
	.uleb128 0x5
	.quad	.LVL72
	.long	0x538
	.long	0x79d
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC9
	.byte	0
	.uleb128 0x7
	.quad	.LVL75
	.long	0x54b
	.uleb128 0x5
	.quad	.LVL76
	.long	0x538
	.long	0x7c9
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC8
	.byte	0
	.uleb128 0x5
	.quad	.LVL77
	.long	0x4a4
	.long	0x7e0
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x7
	.quad	.LVL78
	.long	0xb4f
	.byte	0
	.uleb128 0x3
	.long	0x92
	.uleb128 0x17
	.long	.LASF89
	.byte	0x34
	.byte	0x7
	.long	0x44
	.quad	.LFB41
	.quad	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.long	0x97e
	.uleb128 0x1d
	.string	"arg"
	.byte	0x34
	.long	0x44
	.long	.LLST7
	.long	.LVUS7
	.uleb128 0xa
	.string	"i"
	.byte	0x36
	.byte	0x6
	.long	0x67
	.long	.LLST8
	.long	.LVUS8
	.uleb128 0xa
	.string	"ret"
	.byte	0x36
	.byte	0x9
	.long	0x67
	.long	.LLST9
	.long	.LVUS9
	.uleb128 0xa
	.string	"ip"
	.byte	0x37
	.byte	0x10
	.long	0x97e
	.long	.LLST10
	.long	.LVUS10
	.uleb128 0x19
	.long	0xb29
	.quad	.LBI24
	.byte	.LVU73
	.long	.LLRL11
	.byte	0x39
	.long	0x8ac
	.uleb128 0xe
	.long	0xb42
	.long	.LLST12
	.long	.LVUS12
	.uleb128 0x13
	.long	0xb37
	.uleb128 0xb
	.quad	.LVL25
	.long	0x503
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC4
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.long	0xb29
	.quad	.LBI34
	.byte	.LVU114
	.quad	.LBB34
	.quad	.LBE34-.LBB34
	.byte	0x47
	.long	0x907
	.uleb128 0xe
	.long	0xb42
	.long	.LLST13
	.long	.LVUS13
	.uleb128 0x13
	.long	0xb37
	.uleb128 0xb
	.quad	.LVL41
	.long	0xb58
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC5
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x4a
	.byte	0
	.byte	0
	.uleb128 0x5
	.quad	.LVL27
	.long	0x523
	.long	0x91f
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x5
	.quad	.LVL32
	.long	0x55c
	.long	0x937
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x7
	.quad	.LVL34
	.long	0x54b
	.uleb128 0x5
	.quad	.LVL35
	.long	0x538
	.long	0x95c
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x7
	.quad	.LVL37
	.long	0x54b
	.uleb128 0xb
	.quad	.LVL38
	.long	0x538
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3
	.long	0x6e
	.uleb128 0x17
	.long	.LASF90
	.byte	0x1c
	.byte	0x7
	.long	0x44
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0xb0e
	.uleb128 0x1d
	.string	"arg"
	.byte	0x1c
	.long	0x44
	.long	.LLST0
	.long	.LVUS0
	.uleb128 0xa
	.string	"i"
	.byte	0x1e
	.byte	0x6
	.long	0x67
	.long	.LLST1
	.long	.LVUS1
	.uleb128 0xa
	.string	"ret"
	.byte	0x1e
	.byte	0x9
	.long	0x67
	.long	.LLST2
	.long	.LVUS2
	.uleb128 0xa
	.string	"ip"
	.byte	0x1f
	.byte	0x10
	.long	0x97e
	.long	.LLST3
	.long	.LVUS3
	.uleb128 0x19
	.long	0xb29
	.quad	.LBI12
	.byte	.LVU12
	.long	.LLRL4
	.byte	0x21
	.long	0xa3c
	.uleb128 0xe
	.long	0xb42
	.long	.LLST5
	.long	.LVUS5
	.uleb128 0x13
	.long	0xb37
	.uleb128 0xb
	.quad	.LVL3
	.long	0x503
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.long	0xb29
	.quad	.LBI22
	.byte	.LVU53
	.quad	.LBB22
	.quad	.LBE22-.LBB22
	.byte	0x2f
	.long	0xa97
	.uleb128 0xe
	.long	0xb42
	.long	.LLST6
	.long	.LVUS6
	.uleb128 0x13
	.long	0xb37
	.uleb128 0xb
	.quad	.LVL19
	.long	0xb58
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC3
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x4a
	.byte	0
	.byte	0
	.uleb128 0x5
	.quad	.LVL5
	.long	0x523
	.long	0xaaf
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x5
	.quad	.LVL10
	.long	0x55c
	.long	0xac7
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x7
	.quad	.LVL12
	.long	0x54b
	.uleb128 0x5
	.quad	.LVL13
	.long	0x538
	.long	0xaec
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x7
	.quad	.LVL15
	.long	0x54b
	.uleb128 0xb
	.quad	.LVL16
	.long	0x538
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.long	.LASF91
	.byte	0x6e
	.long	0x67
	.long	0xb29
	.uleb128 0x1a
	.long	.LASF93
	.byte	0x6e
	.byte	0x20
	.long	0x3f6
	.uleb128 0x12
	.byte	0
	.uleb128 0x1f
	.long	.LASF92
	.byte	0x67
	.long	0x67
	.long	0xb4f
	.uleb128 0x1a
	.long	.LASF94
	.byte	0x67
	.byte	0x1b
	.long	0x28b
	.uleb128 0x1a
	.long	.LASF93
	.byte	0x67
	.byte	0x3c
	.long	0x3f6
	.uleb128 0x12
	.byte	0
	.uleb128 0x2e
	.long	.LASF99
	.long	.LASF99
	.uleb128 0x2f
	.long	.LASF100
	.long	.LASF101
	.byte	0xe
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x49
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x7e
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 9
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 12
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 11
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 12
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 25
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x58
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x1f
	.uleb128 0x1b
	.uleb128 0x1f
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x17
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x87
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loclists,"",@progbits
	.long	.Ldebug_loc3-.Ldebug_loc2
.Ldebug_loc2:
	.value	0x5
	.byte	0x8
	.byte	0
	.long	0
.Ldebug_loc0:
.LVUS14:
	.uleb128 0
	.uleb128 .LVU132
	.uleb128 .LVU132
	.uleb128 0
.LLST14:
	.byte	0x6
	.quad	.LVL44
	.byte	0x4
	.uleb128 .LVL44-.LVL44
	.uleb128 .LVL46-.LVL44
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL46-.LVL44
	.uleb128 .LFE42-.LVL44
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.LVUS15:
	.uleb128 0
	.uleb128 .LVU125
	.uleb128 .LVU125
	.uleb128 0
.LLST15:
	.byte	0x6
	.quad	.LVL44
	.byte	0x4
	.uleb128 .LVL44-.LVL44
	.uleb128 .LVL45-.LVL44
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL45-.LVL44
	.uleb128 .LFE42-.LVL44
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0
.LVUS16:
	.uleb128 .LVU135
	.uleb128 .LVU139
	.uleb128 .LVU140
	.uleb128 .LVU144
	.uleb128 .LVU144
	.uleb128 .LVU145
	.uleb128 .LVU145
	.uleb128 .LVU147
	.uleb128 .LVU147
	.uleb128 .LVU150
	.uleb128 .LVU150
	.uleb128 .LVU152
	.uleb128 .LVU152
	.uleb128 .LVU159
	.uleb128 .LVU159
	.uleb128 .LVU161
	.uleb128 .LVU161
	.uleb128 .LVU172
	.uleb128 .LVU174
	.uleb128 .LVU176
	.uleb128 .LVU176
	.uleb128 .LVU178
	.uleb128 .LVU178
	.uleb128 .LVU180
	.uleb128 .LVU180
	.uleb128 .LVU182
	.uleb128 .LVU182
	.uleb128 .LVU184
	.uleb128 .LVU184
	.uleb128 .LVU186
	.uleb128 .LVU186
	.uleb128 .LVU189
	.uleb128 .LVU194
	.uleb128 0
.LLST16:
	.byte	0x6
	.quad	.LVL47
	.byte	0x4
	.uleb128 .LVL47-.LVL47
	.uleb128 .LVL48-1-.LVL47
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL49-.LVL47
	.uleb128 .LVL50-1-.LVL47
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL50-1-.LVL47
	.uleb128 .LVL51-.LVL47
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL51-.LVL47
	.uleb128 .LVL52-.LVL47
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL52-.LVL47
	.uleb128 .LVL54-.LVL47
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL54-.LVL47
	.uleb128 .LVL55-.LVL47
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL55-.LVL47
	.uleb128 .LVL58-.LVL47
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL58-.LVL47
	.uleb128 .LVL59-.LVL47
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL59-.LVL47
	.uleb128 .LVL62-.LVL47
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL64-.LVL47
	.uleb128 .LVL65-1-.LVL47
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL65-1-.LVL47
	.uleb128 .LVL67-.LVL47
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL67-.LVL47
	.uleb128 .LVL68-1-.LVL47
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL68-1-.LVL47
	.uleb128 .LVL70-.LVL47
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL70-.LVL47
	.uleb128 .LVL71-1-.LVL47
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL71-1-.LVL47
	.uleb128 .LVL73-.LVL47
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL73-.LVL47
	.uleb128 .LVL74-.LVL47
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL77-.LVL47
	.uleb128 .LFE42-.LVL47
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS17:
	.uleb128 .LVU157
	.uleb128 .LVU173
	.uleb128 .LVU178
	.uleb128 .LVU182
	.uleb128 .LVU194
	.uleb128 0
.LLST17:
	.byte	0x6
	.quad	.LVL56
	.byte	0x4
	.uleb128 .LVL56-.LVL56
	.uleb128 .LVL63-.LVL56
	.uleb128 0x6
	.byte	0x7d
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL67-.LVL56
	.uleb128 .LVL70-.LVL56
	.uleb128 0x6
	.byte	0x7d
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL77-.LVL56
	.uleb128 .LFE42-.LVL56
	.uleb128 0x6
	.byte	0x7d
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.byte	0
.LVUS19:
	.uleb128 .LVU165
	.uleb128 .LVU168
.LLST19:
	.byte	0x8
	.quad	.LVL60
	.uleb128 .LVL61-.LVL60
	.uleb128 0xa
	.byte	0x3
	.quad	.LC11
	.byte	0x9f
	.byte	0
.LVUS7:
	.uleb128 0
	.uleb128 .LVU79
	.uleb128 .LVU79
	.uleb128 .LVU121
	.uleb128 .LVU121
	.uleb128 0
.LLST7:
	.byte	0x6
	.quad	.LVL22
	.byte	0x4
	.uleb128 .LVL22-.LVL22
	.uleb128 .LVL24-.LVL22
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL24-.LVL22
	.uleb128 .LVL43-.LVL22
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL43-.LVL22
	.uleb128 .LFE41-.LVL22
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.LVUS8:
	.uleb128 .LVU82
	.uleb128 .LVU83
	.uleb128 .LVU83
	.uleb128 .LVU94
	.uleb128 .LVU94
	.uleb128 .LVU95
	.uleb128 .LVU95
	.uleb128 .LVU111
	.uleb128 .LVU111
	.uleb128 .LVU112
	.uleb128 .LVU112
	.uleb128 .LVU113
.LLST8:
	.byte	0x6
	.quad	.LVL25
	.byte	0x4
	.uleb128 .LVL25-.LVL25
	.uleb128 .LVL26-.LVL25
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL26-.LVL25
	.uleb128 .LVL29-.LVL25
	.uleb128 0x9
	.byte	0xc
	.long	0xf4240
	.byte	0x76
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL29-.LVL25
	.uleb128 .LVL30-.LVL25
	.uleb128 0x9
	.byte	0xc
	.long	0xf4241
	.byte	0x76
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL30-.LVL25
	.uleb128 .LVL38-.LVL25
	.uleb128 0x9
	.byte	0xc
	.long	0xf4240
	.byte	0x76
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL38-.LVL25
	.uleb128 .LVL39-.LVL25
	.uleb128 0x9
	.byte	0xc
	.long	0xf4241
	.byte	0x76
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL39-.LVL25
	.uleb128 .LVL40-.LVL25
	.uleb128 0x9
	.byte	0xc
	.long	0xf4240
	.byte	0x76
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.byte	0
.LVUS9:
	.uleb128 .LVU83
	.uleb128 .LVU90
	.uleb128 .LVU90
	.uleb128 .LVU96
	.uleb128 .LVU99
	.uleb128 .LVU103
	.uleb128 .LVU103
	.uleb128 .LVU105
	.uleb128 .LVU105
	.uleb128 .LVU107
	.uleb128 .LVU107
	.uleb128 .LVU120
.LLST9:
	.byte	0x6
	.quad	.LVL26
	.byte	0x4
	.uleb128 .LVL26-.LVL26
	.uleb128 .LVL28-.LVL26
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL28-.LVL26
	.uleb128 .LVL31-.LVL26
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL33-.LVL26
	.uleb128 .LVL34-1-.LVL26
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL34-1-.LVL26
	.uleb128 .LVL36-.LVL26
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL36-.LVL26
	.uleb128 .LVL37-1-.LVL26
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL37-1-.LVL26
	.uleb128 .LVL42-.LVL26
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS10:
	.uleb128 .LVU72
	.uleb128 .LVU79
	.uleb128 .LVU79
	.uleb128 .LVU121
	.uleb128 .LVU121
	.uleb128 0
.LLST10:
	.byte	0x6
	.quad	.LVL23
	.byte	0x4
	.uleb128 .LVL23-.LVL23
	.uleb128 .LVL24-.LVL23
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL24-.LVL23
	.uleb128 .LVL43-.LVL23
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL43-.LVL23
	.uleb128 .LFE41-.LVL23
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.LVUS12:
	.uleb128 .LVU73
	.uleb128 .LVU80
.LLST12:
	.byte	0x8
	.quad	.LVL23
	.uleb128 .LVL25-.LVL23
	.uleb128 0xa
	.byte	0x3
	.quad	.LC4
	.byte	0x9f
	.byte	0
.LVUS13:
	.uleb128 .LVU114
	.uleb128 .LVU117
.LLST13:
	.byte	0x8
	.quad	.LVL40
	.uleb128 .LVL41-.LVL40
	.uleb128 0xa
	.byte	0x3
	.quad	.LC5
	.byte	0x9f
	.byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU18
	.uleb128 .LVU18
	.uleb128 .LVU60
	.uleb128 .LVU60
	.uleb128 0
.LLST0:
	.byte	0x6
	.quad	.LVL0
	.byte	0x4
	.uleb128 .LVL0-.LVL0
	.uleb128 .LVL2-.LVL0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL2-.LVL0
	.uleb128 .LVL21-.LVL0
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL21-.LVL0
	.uleb128 .LFE40-.LVL0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.LVUS1:
	.uleb128 .LVU21
	.uleb128 .LVU22
	.uleb128 .LVU22
	.uleb128 .LVU33
	.uleb128 .LVU33
	.uleb128 .LVU34
	.uleb128 .LVU34
	.uleb128 .LVU50
	.uleb128 .LVU50
	.uleb128 .LVU51
	.uleb128 .LVU51
	.uleb128 .LVU52
.LLST1:
	.byte	0x6
	.quad	.LVL3
	.byte	0x4
	.uleb128 .LVL3-.LVL3
	.uleb128 .LVL4-.LVL3
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL4-.LVL3
	.uleb128 .LVL7-.LVL3
	.uleb128 0x9
	.byte	0xc
	.long	0xf4240
	.byte	0x76
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL7-.LVL3
	.uleb128 .LVL8-.LVL3
	.uleb128 0x9
	.byte	0xc
	.long	0xf4241
	.byte	0x76
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL8-.LVL3
	.uleb128 .LVL16-.LVL3
	.uleb128 0x9
	.byte	0xc
	.long	0xf4240
	.byte	0x76
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL16-.LVL3
	.uleb128 .LVL17-.LVL3
	.uleb128 0x9
	.byte	0xc
	.long	0xf4241
	.byte	0x76
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL17-.LVL3
	.uleb128 .LVL18-.LVL3
	.uleb128 0x9
	.byte	0xc
	.long	0xf4240
	.byte	0x76
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.byte	0
.LVUS2:
	.uleb128 .LVU22
	.uleb128 .LVU29
	.uleb128 .LVU29
	.uleb128 .LVU35
	.uleb128 .LVU38
	.uleb128 .LVU42
	.uleb128 .LVU42
	.uleb128 .LVU44
	.uleb128 .LVU44
	.uleb128 .LVU46
	.uleb128 .LVU46
	.uleb128 .LVU59
.LLST2:
	.byte	0x6
	.quad	.LVL4
	.byte	0x4
	.uleb128 .LVL4-.LVL4
	.uleb128 .LVL6-.LVL4
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL6-.LVL4
	.uleb128 .LVL9-.LVL4
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL11-.LVL4
	.uleb128 .LVL12-1-.LVL4
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL12-1-.LVL4
	.uleb128 .LVL14-.LVL4
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL14-.LVL4
	.uleb128 .LVL15-1-.LVL4
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL15-1-.LVL4
	.uleb128 .LVL20-.LVL4
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS3:
	.uleb128 .LVU11
	.uleb128 .LVU18
	.uleb128 .LVU18
	.uleb128 .LVU60
	.uleb128 .LVU60
	.uleb128 0
.LLST3:
	.byte	0x6
	.quad	.LVL1
	.byte	0x4
	.uleb128 .LVL1-.LVL1
	.uleb128 .LVL2-.LVL1
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL2-.LVL1
	.uleb128 .LVL21-.LVL1
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL21-.LVL1
	.uleb128 .LFE40-.LVL1
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.LVUS5:
	.uleb128 .LVU12
	.uleb128 .LVU19
.LLST5:
	.byte	0x8
	.quad	.LVL1
	.uleb128 .LVL3-.LVL1
	.uleb128 0xa
	.byte	0x3
	.quad	.LC0
	.byte	0x9f
	.byte	0
.LVUS6:
	.uleb128 .LVU53
	.uleb128 .LVU56
.LLST6:
	.byte	0x8
	.quad	.LVL18
	.uleb128 .LVL19-.LVL18
	.uleb128 0xa
	.byte	0x3
	.quad	.LC3
	.byte	0x9f
	.byte	0
.Ldebug_loc3:
	.section	.debug_aranges,"",@progbits
	.long	0x3c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	.LFB42
	.quad	.LFE42-.LFB42
	.quad	0
	.quad	0
	.section	.debug_rnglists,"",@progbits
.Ldebug_ranges0:
	.long	.Ldebug_ranges3-.Ldebug_ranges2
.Ldebug_ranges2:
	.value	0x5
	.byte	0x8
	.byte	0
	.long	0
.LLRL4:
	.byte	0x5
	.quad	.LBB12
	.byte	0x4
	.uleb128 .LBB12-.LBB12
	.uleb128 .LBE12-.LBB12
	.byte	0x4
	.uleb128 .LBB18-.LBB12
	.uleb128 .LBE18-.LBB12
	.byte	0x4
	.uleb128 .LBB19-.LBB12
	.uleb128 .LBE19-.LBB12
	.byte	0x4
	.uleb128 .LBB20-.LBB12
	.uleb128 .LBE20-.LBB12
	.byte	0x4
	.uleb128 .LBB21-.LBB12
	.uleb128 .LBE21-.LBB12
	.byte	0
.LLRL11:
	.byte	0x5
	.quad	.LBB24
	.byte	0x4
	.uleb128 .LBB24-.LBB24
	.uleb128 .LBE24-.LBB24
	.byte	0x4
	.uleb128 .LBB30-.LBB24
	.uleb128 .LBE30-.LBB24
	.byte	0x4
	.uleb128 .LBB31-.LBB24
	.uleb128 .LBE31-.LBB24
	.byte	0x4
	.uleb128 .LBB32-.LBB24
	.uleb128 .LBE32-.LBB24
	.byte	0x4
	.uleb128 .LBB33-.LBB24
	.uleb128 .LBE33-.LBB24
	.byte	0
.LLRL18:
	.byte	0x5
	.quad	.LBB36
	.byte	0x4
	.uleb128 .LBB36-.LBB36
	.uleb128 .LBE36-.LBB36
	.byte	0x4
	.uleb128 .LBB39-.LBB36
	.uleb128 .LBE39-.LBB36
	.byte	0
.LLRL20:
	.byte	0x7
	.quad	.Ltext0
	.uleb128 .Letext0-.Ltext0
	.byte	0x7
	.quad	.LFB42
	.uleb128 .LFE42-.LFB42
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF91:
	.string	"printf"
.LASF10:
	.string	"__off_t"
.LASF14:
	.string	"_IO_read_ptr"
.LASF26:
	.string	"_chain"
.LASF9:
	.string	"size_t"
.LASF50:
	.string	"__prev"
.LASF64:
	.string	"__align"
.LASF32:
	.string	"_shortbuf"
.LASF63:
	.string	"__size"
.LASF20:
	.string	"_IO_buf_base"
.LASF47:
	.string	"long long unsigned int"
.LASF51:
	.string	"__next"
.LASF35:
	.string	"_codecvt"
.LASF85:
	.string	"pthread_mutex_lock"
.LASF65:
	.string	"pthread_attr_t"
.LASF46:
	.string	"long long int"
.LASF6:
	.string	"signed char"
.LASF80:
	.string	"pthread_join"
.LASF27:
	.string	"_fileno"
.LASF15:
	.string	"_IO_read_end"
.LASF8:
	.string	"long int"
.LASF13:
	.string	"_flags"
.LASF21:
	.string	"_IO_buf_end"
.LASF30:
	.string	"_cur_column"
.LASF44:
	.string	"_IO_codecvt"
.LASF78:
	.string	"__printf_chk"
.LASF29:
	.string	"_old_offset"
.LASF34:
	.string	"_offset"
.LASF52:
	.string	"__pthread_list_t"
.LASF89:
	.string	"decrease_fn"
.LASF53:
	.string	"__pthread_mutex_s"
.LASF77:
	.string	"mutex"
.LASF43:
	.string	"_IO_marker"
.LASF74:
	.string	"PTHREAD_MUTEX_ERRORCHECK"
.LASF3:
	.string	"unsigned int"
.LASF38:
	.string	"_freeres_buf"
.LASF92:
	.string	"fprintf"
.LASF94:
	.string	"__stream"
.LASF2:
	.string	"long unsigned int"
.LASF58:
	.string	"__kind"
.LASF18:
	.string	"_IO_write_ptr"
.LASF66:
	.string	"__data"
.LASF60:
	.string	"__elision"
.LASF5:
	.string	"short unsigned int"
.LASF22:
	.string	"_IO_save_base"
.LASF33:
	.string	"_lock"
.LASF28:
	.string	"_flags2"
.LASF40:
	.string	"_mode"
.LASF56:
	.string	"__owner"
.LASF97:
	.string	"perror"
.LASF72:
	.string	"PTHREAD_MUTEX_NORMAL"
.LASF19:
	.string	"_IO_write_end"
.LASF96:
	.string	"_IO_lock_t"
.LASF48:
	.string	"_IO_FILE"
.LASF69:
	.string	"PTHREAD_MUTEX_RECURSIVE_NP"
.LASF49:
	.string	"__pthread_internal_list"
.LASF25:
	.string	"_markers"
.LASF70:
	.string	"PTHREAD_MUTEX_ERRORCHECK_NP"
.LASF62:
	.string	"pthread_t"
.LASF4:
	.string	"unsigned char"
.LASF71:
	.string	"PTHREAD_MUTEX_ADAPTIVE_NP"
.LASF7:
	.string	"short int"
.LASF45:
	.string	"_IO_wide_data"
.LASF31:
	.string	"_vtable_offset"
.LASF42:
	.string	"FILE"
.LASF81:
	.string	"exit"
.LASF83:
	.string	"__fprintf_chk"
.LASF99:
	.string	"__stack_chk_fail"
.LASF79:
	.string	"pthread_mutex_destroy"
.LASF55:
	.string	"__count"
.LASF54:
	.string	"__lock"
.LASF12:
	.string	"char"
.LASF101:
	.string	"__builtin_fwrite"
.LASF98:
	.string	"__errno_location"
.LASF11:
	.string	"__off64_t"
.LASF16:
	.string	"_IO_read_base"
.LASF24:
	.string	"_IO_save_end"
.LASF82:
	.string	"pthread_create"
.LASF93:
	.string	"__fmt"
.LASF75:
	.string	"PTHREAD_MUTEX_DEFAULT"
.LASF67:
	.string	"pthread_mutex_t"
.LASF90:
	.string	"increase_fn"
.LASF59:
	.string	"__spins"
.LASF39:
	.string	"__pad5"
.LASF95:
	.string	"GNU C17 11.2.0 -mtune=generic -march=x86-64 -g -O2 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF41:
	.string	"_unused2"
.LASF76:
	.string	"stderr"
.LASF87:
	.string	"argv"
.LASF73:
	.string	"PTHREAD_MUTEX_RECURSIVE"
.LASF57:
	.string	"__nusers"
.LASF23:
	.string	"_IO_backup_base"
.LASF68:
	.string	"PTHREAD_MUTEX_TIMED_NP"
.LASF100:
	.string	"fwrite"
.LASF86:
	.string	"argc"
.LASF37:
	.string	"_freeres_list"
.LASF61:
	.string	"__list"
.LASF36:
	.string	"_wide_data"
.LASF84:
	.string	"pthread_mutex_unlock"
.LASF88:
	.string	"main"
.LASF17:
	.string	"_IO_write_base"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"simplesync.c"
.LASF1:
	.string	"/home/angelos/Documents/source_code/os/ex3/1.1"
	.ident	"GCC: (Ubuntu 11.2.0-19ubuntu1) 11.2.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:

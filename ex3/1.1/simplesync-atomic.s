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
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
.LBB12:
.LBB13:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/stdio2.h"
	.loc 2 105 10 view .LVU2
	movl	$1000000, %ecx
	movl	$1, %esi
.LBE13:
.LBE12:
	.loc 1 29 1 view .LVU3
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
	.loc 1 30 2 is_stmt 1 view .LVU4
	.loc 1 31 2 view .LVU5
	.loc 1 31 16 is_stmt 0 view .LVU6
	movq	%rdi, (%rsp)
	.loc 1 33 2 is_stmt 1 view .LVU7
.LVL1:
.LBB16:
.LBI12:
	.loc 2 103 1 view .LVU8
.LBB14:
	.loc 2 105 3 view .LVU9
	.loc 2 105 10 is_stmt 0 view .LVU10
	movq	stderr(%rip), %rdi
.LVL2:
	.loc 2 105 10 view .LVU11
	leaq	.LC0(%rip), %rdx
	call	__fprintf_chk@PLT
.LVL3:
	.loc 2 105 10 view .LVU12
.LBE14:
.LBE16:
	.loc 1 34 2 is_stmt 1 view .LVU13
	.loc 1 34 16 view .LVU14
.LBB17:
.LBB15:
	.loc 2 105 10 is_stmt 0 view .LVU15
	movl	$1000000, %eax
.LVL4:
	.p2align 4,,10
	.p2align 3
.L2:
	.loc 2 105 10 view .LVU16
.LBE15:
.LBE17:
	.loc 1 35 3 is_stmt 1 view .LVU17
	.loc 1 36 4 view .LVU18
	lock addq	$1, (%rsp)
	.loc 1 44 5 view .LVU19
	.loc 1 34 22 view .LVU20
.LVL5:
	.loc 1 34 16 view .LVU21
	subl	$1, %eax
.LVL6:
	.loc 1 34 16 is_stmt 0 view .LVU22
	jne	.L2
	.loc 1 47 2 is_stmt 1 view .LVU23
.LVL7:
.LBB18:
.LBI18:
	.loc 2 103 1 view .LVU24
.LBB19:
	.loc 2 105 3 view .LVU25
	.loc 2 105 10 is_stmt 0 view .LVU26
	movq	stderr(%rip), %rcx
	movl	$26, %edx
	movl	$1, %esi
	leaq	.LC1(%rip), %rdi
	call	fwrite@PLT
.LVL8:
	.loc 2 105 10 view .LVU27
.LBE19:
.LBE18:
	.loc 1 49 2 is_stmt 1 view .LVU28
	.loc 1 50 1 is_stmt 0 view .LVU29
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L7
	xorl	%eax, %eax
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L7:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
.LVL9:
	.cfi_endproc
.LFE40:
	.size	increase_fn, .-increase_fn
	.section	.rodata.str1.8
	.align 8
.LC2:
	.string	"About to decrease variable %d times\n"
	.section	.rodata.str1.1
.LC3:
	.string	"Done decreasing variable.\n"
	.text
	.p2align 4
	.globl	decrease_fn
	.type	decrease_fn, @function
decrease_fn:
.LVL10:
.LFB41:
	.loc 1 53 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 53 1 is_stmt 0 view .LVU31
	endbr64
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
.LBB20:
.LBB21:
	.loc 2 105 10 view .LVU32
	movl	$1000000, %ecx
	movl	$1, %esi
.LBE21:
.LBE20:
	.loc 1 53 1 view .LVU33
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
	.loc 1 54 2 is_stmt 1 view .LVU34
	.loc 1 55 2 view .LVU35
	.loc 1 55 16 is_stmt 0 view .LVU36
	movq	%rdi, (%rsp)
	.loc 1 57 2 is_stmt 1 view .LVU37
.LVL11:
.LBB24:
.LBI20:
	.loc 2 103 1 view .LVU38
.LBB22:
	.loc 2 105 3 view .LVU39
	.loc 2 105 10 is_stmt 0 view .LVU40
	movq	stderr(%rip), %rdi
.LVL12:
	.loc 2 105 10 view .LVU41
	leaq	.LC2(%rip), %rdx
	call	__fprintf_chk@PLT
.LVL13:
	.loc 2 105 10 view .LVU42
.LBE22:
.LBE24:
	.loc 1 58 2 is_stmt 1 view .LVU43
	.loc 1 58 16 view .LVU44
.LBB25:
.LBB23:
	.loc 2 105 10 is_stmt 0 view .LVU45
	movl	$1000000, %eax
.LVL14:
	.p2align 4,,10
	.p2align 3
.L9:
	.loc 2 105 10 view .LVU46
.LBE23:
.LBE25:
	.loc 1 59 3 is_stmt 1 view .LVU47
	.loc 1 60 4 view .LVU48
	lock subq	$1, (%rsp)
	.loc 1 68 5 view .LVU49
	.loc 1 58 22 view .LVU50
.LVL15:
	.loc 1 58 16 view .LVU51
	subl	$1, %eax
.LVL16:
	.loc 1 58 16 is_stmt 0 view .LVU52
	jne	.L9
	.loc 1 71 2 is_stmt 1 view .LVU53
.LVL17:
.LBB26:
.LBI26:
	.loc 2 103 1 view .LVU54
.LBB27:
	.loc 2 105 3 view .LVU55
	.loc 2 105 10 is_stmt 0 view .LVU56
	movq	stderr(%rip), %rcx
	movl	$26, %edx
	movl	$1, %esi
	leaq	.LC3(%rip), %rdi
	call	fwrite@PLT
.LVL18:
	.loc 2 105 10 view .LVU57
.LBE27:
.LBE26:
	.loc 1 73 2 is_stmt 1 view .LVU58
	.loc 1 74 1 is_stmt 0 view .LVU59
	movq	8(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L13
	xorl	%eax, %eax
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L13:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
.LVL19:
	.cfi_endproc
.LFE41:
	.size	decrease_fn, .-decrease_fn
	.section	.rodata.str1.1
.LC4:
	.string	""
.LC5:
	.string	"NOT "
.LC6:
	.string	"pthread_create"
.LC7:
	.string	"pthread_join"
.LC8:
	.string	"pthread_mutex_destroy"
.LC9:
	.string	"%sOK, val = %d.\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LVL20:
.LFB42:
	.loc 1 78 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 78 1 is_stmt 0 view .LVU61
	endbr64
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	.loc 1 90 6 view .LVU62
	xorl	%esi, %esi
.LVL21:
	.loc 1 90 6 view .LVU63
	leaq	increase_fn(%rip), %rdx
	.loc 1 78 1 view .LVU64
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	subq	$32, %rsp
	.cfi_def_cfa_offset 64
	.loc 1 78 1 view .LVU65
	movq	%fs:40, %rax
	movq	%rax, 24(%rsp)
	xorl	%eax, %eax
	.loc 1 79 2 is_stmt 1 view .LVU66
	.loc 1 80 2 view .LVU67
	.loc 1 85 2 view .LVU68
	.loc 1 90 6 is_stmt 0 view .LVU69
	leaq	4(%rsp), %r12
	leaq	8(%rsp), %rdi
.LVL22:
	.loc 1 85 5 view .LVU70
	movl	$0, 4(%rsp)
	.loc 1 90 2 is_stmt 1 view .LVU71
	.loc 1 90 6 is_stmt 0 view .LVU72
	movq	%r12, %rcx
	call	pthread_create@PLT
.LVL23:
	.loc 1 91 2 is_stmt 1 view .LVU73
	.loc 1 91 4 is_stmt 0 view .LVU74
	testl	%eax, %eax
	jne	.L34
	.loc 1 95 2 is_stmt 1 view .LVU75
	.loc 1 95 6 is_stmt 0 view .LVU76
	leaq	16(%rsp), %rdi
	movq	%r12, %rcx
	leaq	decrease_fn(%rip), %rdx
	xorl	%esi, %esi
	call	pthread_create@PLT
.LVL24:
	.loc 1 95 6 view .LVU77
	movl	%eax, %ebx
.LVL25:
	.loc 1 96 2 is_stmt 1 view .LVU78
	.loc 1 96 4 is_stmt 0 view .LVU79
	testl	%eax, %eax
	jne	.L33
	.loc 1 104 2 is_stmt 1 view .LVU80
	.loc 1 104 6 is_stmt 0 view .LVU81
	movq	8(%rsp), %rdi
	xorl	%esi, %esi
	call	pthread_join@PLT
.LVL26:
	.loc 1 104 6 view .LVU82
	movl	%eax, %ebx
.LVL27:
	.loc 1 105 2 is_stmt 1 view .LVU83
	.loc 1 105 4 is_stmt 0 view .LVU84
	testl	%eax, %eax
	jne	.L35
.LVL28:
.L17:
	.loc 1 106 3 is_stmt 1 discriminator 1 view .LVU85
	.loc 1 107 2 discriminator 1 view .LVU86
	.loc 1 107 6 is_stmt 0 discriminator 1 view .LVU87
	movq	16(%rsp), %rdi
	xorl	%esi, %esi
	call	pthread_join@PLT
.LVL29:
	movl	%eax, %ebx
.LVL30:
	.loc 1 108 2 is_stmt 1 discriminator 1 view .LVU88
	.loc 1 108 4 is_stmt 0 discriminator 1 view .LVU89
	testl	%eax, %eax
	jne	.L36
.LVL31:
.L18:
	.loc 1 109 3 is_stmt 1 discriminator 1 view .LVU90
	.loc 1 114 2 discriminator 1 view .LVU91
	.loc 1 114 9 is_stmt 0 discriminator 1 view .LVU92
	movl	4(%rsp), %r12d
	xorl	%r13d, %r13d
	.loc 1 116 6 discriminator 1 view .LVU93
	leaq	mutex(%rip), %rdi
	.loc 1 114 9 discriminator 1 view .LVU94
	testl	%r12d, %r12d
	sete	%r13b
.LVL32:
	.loc 1 116 2 is_stmt 1 discriminator 1 view .LVU95
	.loc 1 116 6 is_stmt 0 discriminator 1 view .LVU96
	call	pthread_mutex_destroy@PLT
.LVL33:
	movl	%eax, %ebx
.LVL34:
	.loc 1 117 2 is_stmt 1 discriminator 1 view .LVU97
	.loc 1 117 4 is_stmt 0 discriminator 1 view .LVU98
	testl	%eax, %eax
	jne	.L37
.LVL35:
.L19:
	.loc 1 118 3 is_stmt 1 discriminator 1 view .LVU99
	.loc 1 120 2 discriminator 1 view .LVU100
	testl	%r12d, %r12d
	leaq	.LC4(%rip), %rax
.LBB28:
.LBB29:
	.loc 2 112 10 is_stmt 0 discriminator 1 view .LVU101
	movl	4(%rsp), %ecx
.LBE29:
.LBE28:
	.loc 1 120 2 discriminator 1 view .LVU102
	leaq	.LC5(%rip), %rdx
	cmove	%rax, %rdx
.LVL36:
.LBB31:
.LBI28:
	.loc 2 110 1 is_stmt 1 discriminator 1 view .LVU103
.LBB30:
	.loc 2 112 3 discriminator 1 view .LVU104
	.loc 2 112 10 is_stmt 0 discriminator 1 view .LVU105
	leaq	.LC9(%rip), %rsi
	xorl	%eax, %eax
	movl	$1, %edi
	call	__printf_chk@PLT
.LVL37:
	.loc 2 112 10 discriminator 1 view .LVU106
.LBE30:
.LBE31:
	.loc 1 122 2 is_stmt 1 discriminator 1 view .LVU107
	.loc 1 123 1 is_stmt 0 discriminator 1 view .LVU108
	movq	24(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L38
	.loc 1 123 1 view .LVU109
	addq	$32, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	movl	%r13d, %eax
	popq	%rbx
	.cfi_def_cfa_offset 24
.LVL38:
	.loc 1 123 1 view .LVU110
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
.LVL39:
	.loc 1 123 1 view .LVU111
	ret
.LVL40:
.L35:
	.cfi_restore_state
	.loc 1 106 3 is_stmt 1 view .LVU112
	.loc 1 106 3 view .LVU113
	call	__errno_location@PLT
.LVL41:
	.loc 1 106 3 is_stmt 0 view .LVU114
	leaq	.LC7(%rip), %rdi
	movl	%ebx, (%rax)
	.loc 1 106 3 is_stmt 1 view .LVU115
	call	perror@PLT
.LVL42:
	jmp	.L17
.LVL43:
.L37:
	.loc 1 118 3 view .LVU116
	.loc 1 118 3 view .LVU117
	call	__errno_location@PLT
.LVL44:
	.loc 1 118 3 is_stmt 0 view .LVU118
	leaq	.LC8(%rip), %rdi
	movl	%ebx, (%rax)
	.loc 1 118 3 is_stmt 1 view .LVU119
	call	perror@PLT
.LVL45:
	jmp	.L19
.LVL46:
.L36:
	.loc 1 109 3 view .LVU120
	.loc 1 109 3 view .LVU121
	call	__errno_location@PLT
.LVL47:
	.loc 1 109 3 is_stmt 0 view .LVU122
	leaq	.LC7(%rip), %rdi
	movl	%ebx, (%rax)
	.loc 1 109 3 is_stmt 1 view .LVU123
	call	perror@PLT
.LVL48:
	jmp	.L18
.LVL49:
.L34:
	.loc 1 109 3 is_stmt 0 view .LVU124
	movl	%eax, %ebx
	.loc 1 92 3 is_stmt 1 view .LVU125
	.loc 1 92 3 view .LVU126
.LVL50:
.L33:
	.loc 1 97 3 view .LVU127
	.loc 1 97 3 view .LVU128
	call	__errno_location@PLT
.LVL51:
	leaq	.LC6(%rip), %rdi
	movl	%ebx, (%rax)
	.loc 1 97 3 view .LVU129
	call	perror@PLT
.LVL52:
	.loc 1 97 3 view .LVU130
	.loc 1 98 3 view .LVU131
	movl	$1, %edi
	call	exit@PLT
.LVL53:
.L38:
	.loc 1 123 1 is_stmt 0 view .LVU132
	call	__stack_chk_fail@PLT
.LVL54:
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
	.long	0xa50
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x20
	.long	.LASF93
	.byte	0x1d
	.long	.LASF0
	.long	.LASF1
	.long	.LLRL16
	.quad	0
	.long	.Ldebug_line0
	.uleb128 0x7
	.long	.LASF9
	.byte	0x3
	.byte	0xd1
	.byte	0x17
	.long	0x36
	.uleb128 0x5
	.byte	0x8
	.byte	0x7
	.long	.LASF2
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.long	.LASF3
	.uleb128 0x21
	.byte	0x8
	.uleb128 0xa
	.long	0x44
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.long	.LASF4
	.uleb128 0x5
	.byte	0x2
	.byte	0x7
	.long	.LASF5
	.uleb128 0x5
	.byte	0x1
	.byte	0x6
	.long	.LASF6
	.uleb128 0x5
	.byte	0x2
	.byte	0x5
	.long	.LASF7
	.uleb128 0x22
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x23
	.long	0x67
	.uleb128 0x5
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0x7
	.long	.LASF10
	.byte	0x4
	.byte	0x98
	.byte	0x19
	.long	0x73
	.uleb128 0x7
	.long	.LASF11
	.byte	0x4
	.byte	0x99
	.byte	0x1b
	.long	0x73
	.uleb128 0x3
	.long	0x97
	.uleb128 0x5
	.byte	0x1
	.byte	0x6
	.long	.LASF12
	.uleb128 0x1a
	.long	0x97
	.uleb128 0x15
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
	.uleb128 0x7
	.long	.LASF42
	.byte	0x6
	.byte	0x7
	.byte	0x19
	.long	0xa3
	.uleb128 0x24
	.long	.LASF94
	.byte	0x5
	.byte	0x2b
	.byte	0xe
	.uleb128 0x16
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
	.uleb128 0x16
	.long	.LASF44
	.uleb128 0x3
	.long	0x262
	.uleb128 0x16
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
	.uleb128 0xa
	.long	0x286
	.uleb128 0x25
	.long	.LASF76
	.byte	0xa
	.byte	0x91
	.byte	0xe
	.long	0x286
	.uleb128 0x5
	.byte	0x8
	.byte	0x5
	.long	.LASF46
	.uleb128 0x5
	.byte	0x8
	.byte	0x7
	.long	.LASF47
	.uleb128 0x15
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
	.uleb128 0x7
	.long	.LASF52
	.byte	0x7
	.byte	0x37
	.byte	0x3
	.long	0x2aa
	.uleb128 0x15
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
	.uleb128 0x7
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
	.uleb128 0xb
	.long	.LASF63
	.byte	0x3a
	.byte	0x8
	.long	0x389
	.uleb128 0xb
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
	.uleb128 0x7
	.long	.LASF65
	.byte	0x9
	.byte	0x3e
	.byte	0x1e
	.long	0x365
	.uleb128 0x1a
	.long	0x399
	.uleb128 0x27
	.byte	0x28
	.byte	0x9
	.byte	0x43
	.byte	0x9
	.long	0x3d5
	.uleb128 0xb
	.long	.LASF66
	.byte	0x45
	.byte	0x1c
	.long	0x2e3
	.uleb128 0xb
	.long	.LASF63
	.byte	0x46
	.byte	0x8
	.long	0x3d5
	.uleb128 0xb
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
	.uleb128 0x7
	.long	.LASF67
	.byte	0x9
	.byte	0x48
	.byte	0x3
	.long	0x3aa
	.uleb128 0x3
	.long	0x9e
	.uleb128 0xa
	.long	0x3f1
	.uleb128 0x28
	.byte	0x7
	.byte	0x4
	.long	0x3d
	.byte	0xb
	.byte	0x30
	.byte	0x1
	.long	0x43a
	.uleb128 0x8
	.long	.LASF68
	.byte	0
	.uleb128 0x8
	.long	.LASF69
	.byte	0x1
	.uleb128 0x8
	.long	.LASF70
	.byte	0x2
	.uleb128 0x8
	.long	.LASF71
	.byte	0x3
	.uleb128 0x8
	.long	.LASF72
	.byte	0
	.uleb128 0x8
	.long	.LASF73
	.byte	0x1
	.uleb128 0x8
	.long	.LASF74
	.byte	0x2
	.uleb128 0x8
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
	.uleb128 0x2a
	.long	.LASF79
	.byte	0xb
	.value	0x312
	.byte	0xc
	.long	0x67
	.long	0x482
	.uleb128 0x4
	.long	0x482
	.byte	0
	.uleb128 0x3
	.long	0x3e5
	.uleb128 0x11
	.long	.LASF80
	.byte	0xb
	.byte	0xdb
	.long	0x67
	.long	0x4a1
	.uleb128 0x4
	.long	0x359
	.uleb128 0x4
	.long	0x4a1
	.byte	0
	.uleb128 0x3
	.long	0x44
	.uleb128 0x2b
	.long	.LASF81
	.byte	0xc
	.value	0x270
	.byte	0xd
	.long	0x4b9
	.uleb128 0x4
	.long	0x67
	.byte	0
	.uleb128 0x2c
	.long	.LASF95
	.byte	0xa
	.value	0x324
	.byte	0xd
	.long	0x4cc
	.uleb128 0x4
	.long	0x3f1
	.byte	0
	.uleb128 0x2d
	.long	.LASF96
	.byte	0xd
	.byte	0x25
	.byte	0xd
	.long	0x4d8
	.uleb128 0x3
	.long	0x67
	.uleb128 0x11
	.long	.LASF82
	.byte	0xb
	.byte	0xca
	.long	0x67
	.long	0x501
	.uleb128 0x4
	.long	0x506
	.uleb128 0x4
	.long	0x510
	.uleb128 0x4
	.long	0x515
	.uleb128 0x4
	.long	0x46
	.byte	0
	.uleb128 0x3
	.long	0x359
	.uleb128 0xa
	.long	0x501
	.uleb128 0x3
	.long	0x3a5
	.uleb128 0xa
	.long	0x50b
	.uleb128 0x3
	.long	0x51a
	.uleb128 0x2e
	.long	0x44
	.long	0x529
	.uleb128 0x4
	.long	0x44
	.byte	0
	.uleb128 0x11
	.long	.LASF83
	.byte	0x2
	.byte	0x5d
	.long	0x67
	.long	0x549
	.uleb128 0x4
	.long	0x28b
	.uleb128 0x4
	.long	0x67
	.uleb128 0x4
	.long	0x3f6
	.uleb128 0x12
	.byte	0
	.uleb128 0x17
	.long	.LASF86
	.byte	0x4d
	.byte	0x5
	.long	0x67
	.quad	.LFB42
	.quad	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.long	0x7c6
	.uleb128 0x1b
	.long	.LASF84
	.byte	0x4d
	.byte	0xe
	.long	0x67
	.long	.LLST10
	.long	.LVUS10
	.uleb128 0x1b
	.long	.LASF85
	.byte	0x4d
	.byte	0x1a
	.long	0x7c6
	.long	.LLST11
	.long	.LVUS11
	.uleb128 0xc
	.string	"val"
	.byte	0x4f
	.byte	0x6
	.long	0x67
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x13
	.string	"ret"
	.byte	0x4f
	.byte	0xb
	.long	0x67
	.long	.LLST12
	.long	.LVUS12
	.uleb128 0x13
	.string	"ok"
	.byte	0x4f
	.byte	0x10
	.long	0x67
	.long	.LLST13
	.long	.LVUS13
	.uleb128 0xc
	.string	"t1"
	.byte	0x50
	.byte	0xc
	.long	0x359
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xc
	.string	"t2"
	.byte	0x50
	.byte	0x10
	.long	0x359
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x18
	.long	0x9fe
	.quad	.LBI28
	.byte	.LVU103
	.long	.LLRL14
	.byte	0x78
	.long	0x644
	.uleb128 0xd
	.long	0xa0c
	.long	.LLST15
	.long	.LVUS15
	.uleb128 0xe
	.quad	.LVL37
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
	.quad	.LC9
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1e
	.byte	0x3
	.quad	.LC5
	.byte	0x3
	.quad	.LC4
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
	.uleb128 0x6
	.quad	.LVL23
	.long	0x4dd
	.long	0x674
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
	.uleb128 0x6
	.quad	.LVL24
	.long	0x4dd
	.long	0x6a4
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
	.uleb128 0x6
	.quad	.LVL26
	.long	0x487
	.long	0x6bb
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x6
	.quad	.LVL29
	.long	0x487
	.long	0x6d2
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x6
	.quad	.LVL33
	.long	0x46b
	.long	0x6f1
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	mutex
	.byte	0
	.uleb128 0x9
	.quad	.LVL41
	.long	0x4cc
	.uleb128 0x6
	.quad	.LVL42
	.long	0x4b9
	.long	0x71d
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC7
	.byte	0
	.uleb128 0x9
	.quad	.LVL44
	.long	0x4cc
	.uleb128 0x6
	.quad	.LVL45
	.long	0x4b9
	.long	0x749
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC8
	.byte	0
	.uleb128 0x9
	.quad	.LVL47
	.long	0x4cc
	.uleb128 0x6
	.quad	.LVL48
	.long	0x4b9
	.long	0x775
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC7
	.byte	0
	.uleb128 0x9
	.quad	.LVL51
	.long	0x4cc
	.uleb128 0x6
	.quad	.LVL52
	.long	0x4b9
	.long	0x7a1
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC6
	.byte	0
	.uleb128 0x6
	.quad	.LVL53
	.long	0x4a6
	.long	0x7b8
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x9
	.quad	.LVL54
	.long	0xa3f
	.byte	0
	.uleb128 0x3
	.long	0x92
	.uleb128 0x17
	.long	.LASF87
	.byte	0x34
	.byte	0x7
	.long	0x44
	.quad	.LFB41
	.quad	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.long	0x8e2
	.uleb128 0x1c
	.string	"arg"
	.byte	0x34
	.long	0x44
	.long	.LLST5
	.long	.LVUS5
	.uleb128 0x13
	.string	"i"
	.byte	0x36
	.byte	0x6
	.long	0x67
	.long	.LLST6
	.long	.LVUS6
	.uleb128 0x1d
	.string	"ret"
	.byte	0x36
	.long	0x67
	.uleb128 0xc
	.string	"ip"
	.byte	0x37
	.byte	0x10
	.long	0x8e2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x18
	.long	0xa19
	.quad	.LBI20
	.byte	.LVU38
	.long	.LLRL7
	.byte	0x39
	.long	0x879
	.uleb128 0xd
	.long	0xa32
	.long	.LLST8
	.long	.LVUS8
	.uleb128 0x14
	.long	0xa27
	.uleb128 0xe
	.quad	.LVL13
	.long	0x529
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
	.quad	.LC2
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0xc
	.long	0xf4240
	.byte	0
	.byte	0
	.uleb128 0x1e
	.long	0xa19
	.quad	.LBI26
	.byte	.LVU54
	.quad	.LBB26
	.quad	.LBE26-.LBB26
	.byte	0x47
	.long	0x8d4
	.uleb128 0xd
	.long	0xa32
	.long	.LLST9
	.long	.LVUS9
	.uleb128 0x14
	.long	0xa27
	.uleb128 0xe
	.quad	.LVL18
	.long	0xa48
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
	.uleb128 0x9
	.quad	.LVL19
	.long	0xa3f
	.byte	0
	.uleb128 0x3
	.long	0x6e
	.uleb128 0x17
	.long	.LASF88
	.byte	0x1c
	.byte	0x7
	.long	0x44
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0x9fe
	.uleb128 0x1c
	.string	"arg"
	.byte	0x1c
	.long	0x44
	.long	.LLST0
	.long	.LVUS0
	.uleb128 0x13
	.string	"i"
	.byte	0x1e
	.byte	0x6
	.long	0x67
	.long	.LLST1
	.long	.LVUS1
	.uleb128 0x1d
	.string	"ret"
	.byte	0x1e
	.long	0x67
	.uleb128 0xc
	.string	"ip"
	.byte	0x1f
	.byte	0x10
	.long	0x8e2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x18
	.long	0xa19
	.quad	.LBI12
	.byte	.LVU8
	.long	.LLRL2
	.byte	0x21
	.long	0x995
	.uleb128 0xd
	.long	0xa32
	.long	.LLST3
	.long	.LVUS3
	.uleb128 0x14
	.long	0xa27
	.uleb128 0xe
	.quad	.LVL3
	.long	0x529
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
	.uleb128 0x5
	.byte	0xc
	.long	0xf4240
	.byte	0
	.byte	0
	.uleb128 0x1e
	.long	0xa19
	.quad	.LBI18
	.byte	.LVU24
	.quad	.LBB18
	.quad	.LBE18-.LBB18
	.byte	0x2f
	.long	0x9f0
	.uleb128 0xd
	.long	0xa32
	.long	.LLST4
	.long	.LVUS4
	.uleb128 0x14
	.long	0xa27
	.uleb128 0xe
	.quad	.LVL8
	.long	0xa48
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC1
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
	.uleb128 0x9
	.quad	.LVL9
	.long	0xa3f
	.byte	0
	.uleb128 0x1f
	.long	.LASF89
	.byte	0x6e
	.long	0x67
	.long	0xa19
	.uleb128 0x19
	.long	.LASF91
	.byte	0x6e
	.byte	0x20
	.long	0x3f6
	.uleb128 0x12
	.byte	0
	.uleb128 0x1f
	.long	.LASF90
	.byte	0x67
	.long	0x67
	.long	0xa3f
	.uleb128 0x19
	.long	.LASF92
	.byte	0x67
	.byte	0x1b
	.long	0x28b
	.uleb128 0x19
	.long	.LASF91
	.byte	0x67
	.byte	0x3c
	.long	0x3f6
	.uleb128 0x12
	.byte	0
	.uleb128 0x2f
	.long	.LASF97
	.long	.LASF97
	.uleb128 0x30
	.long	.LASF98
	.long	.LASF99
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x21
	.sleb128 9
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.byte	0
	.byte	0
	.uleb128 0x30
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
.LVUS10:
	.uleb128 0
	.uleb128 .LVU70
	.uleb128 .LVU70
	.uleb128 0
.LLST10:
	.byte	0x6
	.quad	.LVL20
	.byte	0x4
	.uleb128 .LVL20-.LVL20
	.uleb128 .LVL22-.LVL20
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL22-.LVL20
	.uleb128 .LFE42-.LVL20
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.LVUS11:
	.uleb128 0
	.uleb128 .LVU63
	.uleb128 .LVU63
	.uleb128 0
.LLST11:
	.byte	0x6
	.quad	.LVL20
	.byte	0x4
	.uleb128 .LVL20-.LVL20
	.uleb128 .LVL21-.LVL20
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL21-.LVL20
	.uleb128 .LFE42-.LVL20
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0
.LVUS12:
	.uleb128 .LVU73
	.uleb128 .LVU77
	.uleb128 .LVU78
	.uleb128 .LVU82
	.uleb128 .LVU82
	.uleb128 .LVU83
	.uleb128 .LVU83
	.uleb128 .LVU85
	.uleb128 .LVU85
	.uleb128 .LVU88
	.uleb128 .LVU88
	.uleb128 .LVU90
	.uleb128 .LVU90
	.uleb128 .LVU97
	.uleb128 .LVU97
	.uleb128 .LVU99
	.uleb128 .LVU99
	.uleb128 .LVU110
	.uleb128 .LVU112
	.uleb128 .LVU114
	.uleb128 .LVU114
	.uleb128 .LVU116
	.uleb128 .LVU116
	.uleb128 .LVU118
	.uleb128 .LVU118
	.uleb128 .LVU120
	.uleb128 .LVU120
	.uleb128 .LVU122
	.uleb128 .LVU122
	.uleb128 .LVU124
	.uleb128 .LVU124
	.uleb128 .LVU127
	.uleb128 .LVU132
	.uleb128 0
.LLST12:
	.byte	0x6
	.quad	.LVL23
	.byte	0x4
	.uleb128 .LVL23-.LVL23
	.uleb128 .LVL24-1-.LVL23
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL25-.LVL23
	.uleb128 .LVL26-1-.LVL23
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL26-1-.LVL23
	.uleb128 .LVL27-.LVL23
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL27-.LVL23
	.uleb128 .LVL28-.LVL23
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL28-.LVL23
	.uleb128 .LVL30-.LVL23
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL30-.LVL23
	.uleb128 .LVL31-.LVL23
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL31-.LVL23
	.uleb128 .LVL34-.LVL23
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL34-.LVL23
	.uleb128 .LVL35-.LVL23
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL35-.LVL23
	.uleb128 .LVL38-.LVL23
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL40-.LVL23
	.uleb128 .LVL41-1-.LVL23
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL41-1-.LVL23
	.uleb128 .LVL43-.LVL23
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL43-.LVL23
	.uleb128 .LVL44-1-.LVL23
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL44-1-.LVL23
	.uleb128 .LVL46-.LVL23
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL46-.LVL23
	.uleb128 .LVL47-1-.LVL23
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL47-1-.LVL23
	.uleb128 .LVL49-.LVL23
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL49-.LVL23
	.uleb128 .LVL50-.LVL23
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL53-.LVL23
	.uleb128 .LFE42-.LVL23
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS13:
	.uleb128 .LVU95
	.uleb128 .LVU111
	.uleb128 .LVU116
	.uleb128 .LVU120
	.uleb128 .LVU132
	.uleb128 0
.LLST13:
	.byte	0x6
	.quad	.LVL32
	.byte	0x4
	.uleb128 .LVL32-.LVL32
	.uleb128 .LVL39-.LVL32
	.uleb128 0x6
	.byte	0x7d
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL43-.LVL32
	.uleb128 .LVL46-.LVL32
	.uleb128 0x6
	.byte	0x7d
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL53-.LVL32
	.uleb128 .LFE42-.LVL32
	.uleb128 0x6
	.byte	0x7d
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.byte	0
.LVUS15:
	.uleb128 .LVU103
	.uleb128 .LVU106
.LLST15:
	.byte	0x8
	.quad	.LVL36
	.uleb128 .LVL37-.LVL36
	.uleb128 0xa
	.byte	0x3
	.quad	.LC9
	.byte	0x9f
	.byte	0
.LVUS5:
	.uleb128 0
	.uleb128 .LVU41
	.uleb128 .LVU41
	.uleb128 .LVU42
	.uleb128 .LVU42
	.uleb128 0
.LLST5:
	.byte	0x6
	.quad	.LVL10
	.byte	0x4
	.uleb128 .LVL10-.LVL10
	.uleb128 .LVL12-.LVL10
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL12-.LVL10
	.uleb128 .LVL13-1-.LVL10
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x4
	.uleb128 .LVL13-1-.LVL10
	.uleb128 .LFE41-.LVL10
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.LVUS6:
	.uleb128 .LVU44
	.uleb128 .LVU46
	.uleb128 .LVU46
	.uleb128 .LVU51
	.uleb128 .LVU51
	.uleb128 .LVU52
	.uleb128 .LVU52
	.uleb128 .LVU57
.LLST6:
	.byte	0x6
	.quad	.LVL13
	.byte	0x4
	.uleb128 .LVL13-.LVL13
	.uleb128 .LVL14-.LVL13
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL14-.LVL13
	.uleb128 .LVL15-.LVL13
	.uleb128 0x9
	.byte	0xc
	.long	0xf4240
	.byte	0x70
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL15-.LVL13
	.uleb128 .LVL16-.LVL13
	.uleb128 0x9
	.byte	0xc
	.long	0xf4241
	.byte	0x70
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL16-.LVL13
	.uleb128 .LVL18-1-.LVL13
	.uleb128 0x9
	.byte	0xc
	.long	0xf4240
	.byte	0x70
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.byte	0
.LVUS8:
	.uleb128 .LVU38
	.uleb128 .LVU42
.LLST8:
	.byte	0x8
	.quad	.LVL11
	.uleb128 .LVL13-.LVL11
	.uleb128 0xa
	.byte	0x3
	.quad	.LC2
	.byte	0x9f
	.byte	0
.LVUS9:
	.uleb128 .LVU54
	.uleb128 .LVU57
.LLST9:
	.byte	0x8
	.quad	.LVL17
	.uleb128 .LVL18-.LVL17
	.uleb128 0xa
	.byte	0x3
	.quad	.LC3
	.byte	0x9f
	.byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU11
	.uleb128 .LVU11
	.uleb128 .LVU12
	.uleb128 .LVU12
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
	.uleb128 .LVL3-1-.LVL0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x4
	.uleb128 .LVL3-1-.LVL0
	.uleb128 .LFE40-.LVL0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.LVUS1:
	.uleb128 .LVU14
	.uleb128 .LVU16
	.uleb128 .LVU16
	.uleb128 .LVU21
	.uleb128 .LVU21
	.uleb128 .LVU22
	.uleb128 .LVU22
	.uleb128 .LVU27
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
	.uleb128 .LVL5-.LVL3
	.uleb128 0x9
	.byte	0xc
	.long	0xf4240
	.byte	0x70
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL5-.LVL3
	.uleb128 .LVL6-.LVL3
	.uleb128 0x9
	.byte	0xc
	.long	0xf4241
	.byte	0x70
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL6-.LVL3
	.uleb128 .LVL8-1-.LVL3
	.uleb128 0x9
	.byte	0xc
	.long	0xf4240
	.byte	0x70
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.byte	0
.LVUS3:
	.uleb128 .LVU8
	.uleb128 .LVU12
.LLST3:
	.byte	0x8
	.quad	.LVL1
	.uleb128 .LVL3-.LVL1
	.uleb128 0xa
	.byte	0x3
	.quad	.LC0
	.byte	0x9f
	.byte	0
.LVUS4:
	.uleb128 .LVU24
	.uleb128 .LVU27
.LLST4:
	.byte	0x8
	.quad	.LVL7
	.uleb128 .LVL8-.LVL7
	.uleb128 0xa
	.byte	0x3
	.quad	.LC1
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
.LLRL2:
	.byte	0x5
	.quad	.LBB12
	.byte	0x4
	.uleb128 .LBB12-.LBB12
	.uleb128 .LBE12-.LBB12
	.byte	0x4
	.uleb128 .LBB16-.LBB12
	.uleb128 .LBE16-.LBB12
	.byte	0x4
	.uleb128 .LBB17-.LBB12
	.uleb128 .LBE17-.LBB12
	.byte	0
.LLRL7:
	.byte	0x5
	.quad	.LBB20
	.byte	0x4
	.uleb128 .LBB20-.LBB20
	.uleb128 .LBE20-.LBB20
	.byte	0x4
	.uleb128 .LBB24-.LBB20
	.uleb128 .LBE24-.LBB20
	.byte	0x4
	.uleb128 .LBB25-.LBB20
	.uleb128 .LBE25-.LBB20
	.byte	0
.LLRL14:
	.byte	0x5
	.quad	.LBB28
	.byte	0x4
	.uleb128 .LBB28-.LBB28
	.uleb128 .LBE28-.LBB28
	.byte	0x4
	.uleb128 .LBB31-.LBB28
	.uleb128 .LBE31-.LBB28
	.byte	0
.LLRL16:
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
.LASF89:
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
.LASF87:
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
.LASF90:
	.string	"fprintf"
.LASF92:
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
.LASF95:
	.string	"perror"
.LASF72:
	.string	"PTHREAD_MUTEX_NORMAL"
.LASF19:
	.string	"_IO_write_end"
.LASF94:
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
.LASF97:
	.string	"__stack_chk_fail"
.LASF79:
	.string	"pthread_mutex_destroy"
.LASF55:
	.string	"__count"
.LASF54:
	.string	"__lock"
.LASF12:
	.string	"char"
.LASF99:
	.string	"__builtin_fwrite"
.LASF96:
	.string	"__errno_location"
.LASF11:
	.string	"__off64_t"
.LASF16:
	.string	"_IO_read_base"
.LASF24:
	.string	"_IO_save_end"
.LASF82:
	.string	"pthread_create"
.LASF91:
	.string	"__fmt"
.LASF75:
	.string	"PTHREAD_MUTEX_DEFAULT"
.LASF67:
	.string	"pthread_mutex_t"
.LASF88:
	.string	"increase_fn"
.LASF59:
	.string	"__spins"
.LASF39:
	.string	"__pad5"
.LASF93:
	.string	"GNU C17 11.2.0 -mtune=generic -march=x86-64 -g -O2 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF41:
	.string	"_unused2"
.LASF76:
	.string	"stderr"
.LASF85:
	.string	"argv"
.LASF73:
	.string	"PTHREAD_MUTEX_RECURSIVE"
.LASF57:
	.string	"__nusers"
.LASF23:
	.string	"_IO_backup_base"
.LASF68:
	.string	"PTHREAD_MUTEX_TIMED_NP"
.LASF98:
	.string	"fwrite"
.LASF84:
	.string	"argc"
.LASF37:
	.string	"_freeres_list"
.LASF61:
	.string	"__list"
.LASF36:
	.string	"_wide_data"
.LASF86:
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

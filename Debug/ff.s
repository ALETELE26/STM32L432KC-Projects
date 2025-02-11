	.cpu cortex-m4
	.arch armv7e-m
	.fpu fpv4-sp-d16
	.eabi_attribute 27, 1
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"ff.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.bss.FatFs,"aw",%nobits
	.align	2
	.type	FatFs, %object
	.size	FatFs, 4
FatFs:
	.space	4
	.section	.bss.Fsid,"aw",%nobits
	.align	1
	.type	Fsid, %object
	.size	Fsid, 2
Fsid:
	.space	2
	.section	.rodata.LfnOfs,"a"
	.align	2
	.type	LfnOfs, %object
	.size	LfnOfs, 13
LfnOfs:
	.ascii	"\001\003\005\007\011\016\020\022\024\026\030\034\036"
	.section	.bss.DirBuf,"aw",%nobits
	.align	2
	.type	DirBuf, %object
	.size	DirBuf, 608
DirBuf:
	.space	608
	.section	.bss.LfnBuf,"aw",%nobits
	.align	2
	.type	LfnBuf, %object
	.size	LfnBuf, 512
LfnBuf:
	.space	512
	.section	.rodata.ExCvt,"a"
	.align	2
	.type	ExCvt, %object
	.size	ExCvt, 128
ExCvt:
	.ascii	"\200\201\202\203\204\205\206\207\210\211\212\213\214"
	.ascii	"\215\216\217\220\221\222\223\224\225\226\227\230\231"
	.ascii	"\232\233\234\235\236\237\200\201\202\203\204\205\206"
	.ascii	"\207\210\211\212\213\214\215\216\217\260\261\262\263"
	.ascii	"\264\265\266\267\270\271\272\273\274\275\276\277\300"
	.ascii	"\301\302\303\304\305\306\307\310\311\312\313\314\315"
	.ascii	"\316\317\320\321\322\323\324\325\326\327\330\331\332"
	.ascii	"\333\334\335\336\337\220\221\222\223\224\225\226\227"
	.ascii	"\230\231\232\233\234\235\236\237\360\360\362\362\364"
	.ascii	"\364\366\366\370\371\372\373\374\375\376\377"
	.section	.text.ld_word,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	ld_word, %function
ld_word:
.LFB0:
	.file 1 "../Middleware/FatFs/ff.c"
	.loc 1 614 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #20
	.cfi_def_cfa_offset 24
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 1 617 10
	ldr	r3, [r7, #4]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 617 5
	strh	r3, [r7, #14]	@ movhi
	.loc 1 618 10
	ldrh	r3, [r7, #14]
	lsls	r3, r3, #8
	.loc 1 618 15
	sxth	r2, r3
	.loc 1 618 20
	ldr	r3, [r7, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	sxth	r3, r3
	.loc 1 618 15
	orrs	r3, r3, r2
	sxth	r3, r3
	.loc 1 618 5
	strh	r3, [r7, #14]	@ movhi
	.loc 1 619 9
	ldrh	r3, [r7, #14]
	.loc 1 620 1
	mov	r0, r3
	adds	r7, r7, #20
	.cfi_def_cfa_offset 4
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	ldr	r7, [sp], #4
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE0:
	.size	ld_word, .-ld_word
	.section	.text.ld_dword,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	ld_dword, %function
ld_dword:
.LFB1:
	.loc 1 623 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #20
	.cfi_def_cfa_offset 24
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 1 626 10
	ldr	r3, [r7, #4]
	adds	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 626 5
	str	r3, [r7, #12]
	.loc 1 627 10
	ldr	r3, [r7, #12]
	lsls	r3, r3, #8
	.loc 1 627 20
	ldr	r2, [r7, #4]
	adds	r2, r2, #2
	ldrb	r2, [r2]	@ zero_extendqisi2
	.loc 1 627 5
	orrs	r3, r3, r2
	str	r3, [r7, #12]
	.loc 1 628 10
	ldr	r3, [r7, #12]
	lsls	r3, r3, #8
	.loc 1 628 20
	ldr	r2, [r7, #4]
	adds	r2, r2, #1
	ldrb	r2, [r2]	@ zero_extendqisi2
	.loc 1 628 5
	orrs	r3, r3, r2
	str	r3, [r7, #12]
	.loc 1 629 10
	ldr	r3, [r7, #12]
	lsls	r3, r3, #8
	.loc 1 629 20
	ldr	r2, [r7, #4]
	ldrb	r2, [r2]	@ zero_extendqisi2
	.loc 1 629 5
	orrs	r3, r3, r2
	str	r3, [r7, #12]
	.loc 1 630 9
	ldr	r3, [r7, #12]
	.loc 1 631 1
	mov	r0, r3
	adds	r7, r7, #20
	.cfi_def_cfa_offset 4
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	ldr	r7, [sp], #4
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE1:
	.size	ld_dword, .-ld_dword
	.section	.text.ld_qword,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	ld_qword, %function
ld_qword:
.LFB2:
	.loc 1 635 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 112
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4, r5, r7, r8, r9, r10, fp}
	.cfi_def_cfa_offset 28
	.cfi_offset 4, -28
	.cfi_offset 5, -24
	.cfi_offset 7, -20
	.cfi_offset 8, -16
	.cfi_offset 9, -12
	.cfi_offset 10, -8
	.cfi_offset 11, -4
	sub	sp, sp, #116
	.cfi_def_cfa_offset 144
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #100]
	.loc 1 638 10
	ldr	r3, [r7, #100]
	adds	r3, r3, #7
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 638 5
	uxtb	r3, r3
	movs	r2, #0
	mov	r10, r3
	mov	fp, r2
	strd	r10, [r7, #104]
	.loc 1 639 10
	ldrd	r2, [r7, #104]
	mov	r0, #0
	mov	r1, #0
	lsls	r1, r3, #8
	orr	r1, r1, r2, lsr #24
	lsls	r0, r2, #8
	.loc 1 639 20
	ldr	r3, [r7, #100]
	adds	r3, r3, #6
	ldrb	r3, [r3]	@ zero_extendqisi2
	uxtb	r3, r3
	movs	r2, #0
	mov	r4, r3
	mov	r5, r2
	.loc 1 639 5
	orr	r8, r0, r4
	orr	r9, r1, r5
	strd	r8, [r7, #104]
	.loc 1 640 10
	ldrd	r2, [r7, #104]
	mov	r0, #0
	mov	r1, #0
	lsls	r1, r3, #8
	orr	r1, r1, r2, lsr #24
	lsls	r0, r2, #8
	.loc 1 640 20
	ldr	r3, [r7, #100]
	adds	r3, r3, #5
	ldrb	r3, [r3]	@ zero_extendqisi2
	uxtb	r3, r3
	movs	r2, #0
	str	r3, [r7, #88]
	str	r2, [r7, #92]
	.loc 1 640 5
	ldrd	r4, [r7, #88]
	mov	r3, r4
	orrs	r3, r3, r0
	str	r3, [r7, #40]
	mov	r3, r5
	orrs	r3, r3, r1
	str	r3, [r7, #44]
	ldrd	r3, [r7, #40]
	strd	r3, [r7, #104]
	.loc 1 641 10
	ldrd	r2, [r7, #104]
	mov	r0, #0
	mov	r1, #0
	lsls	r1, r3, #8
	orr	r1, r1, r2, lsr #24
	lsls	r0, r2, #8
	.loc 1 641 20
	ldr	r3, [r7, #100]
	adds	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	uxtb	r3, r3
	movs	r2, #0
	str	r3, [r7, #80]
	str	r2, [r7, #84]
	.loc 1 641 5
	ldrd	r4, [r7, #80]
	mov	r3, r4
	orrs	r3, r3, r0
	str	r3, [r7, #32]
	mov	r3, r5
	orrs	r3, r3, r1
	str	r3, [r7, #36]
	ldrd	r3, [r7, #32]
	strd	r3, [r7, #104]
	.loc 1 642 10
	ldrd	r2, [r7, #104]
	mov	r0, #0
	mov	r1, #0
	lsls	r1, r3, #8
	orr	r1, r1, r2, lsr #24
	lsls	r0, r2, #8
	.loc 1 642 20
	ldr	r3, [r7, #100]
	adds	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	uxtb	r3, r3
	movs	r2, #0
	str	r3, [r7, #72]
	str	r2, [r7, #76]
	.loc 1 642 5
	ldrd	r4, [r7, #72]
	mov	r3, r4
	orrs	r3, r3, r0
	str	r3, [r7, #24]
	mov	r3, r5
	orrs	r3, r3, r1
	str	r3, [r7, #28]
	ldrd	r3, [r7, #24]
	strd	r3, [r7, #104]
	.loc 1 643 10
	ldrd	r2, [r7, #104]
	mov	r0, #0
	mov	r1, #0
	lsls	r1, r3, #8
	orr	r1, r1, r2, lsr #24
	lsls	r0, r2, #8
	.loc 1 643 20
	ldr	r3, [r7, #100]
	adds	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	uxtb	r3, r3
	movs	r2, #0
	str	r3, [r7, #64]
	str	r2, [r7, #68]
	.loc 1 643 5
	ldrd	r4, [r7, #64]
	mov	r3, r4
	orrs	r3, r3, r0
	str	r3, [r7, #16]
	mov	r3, r5
	orrs	r3, r3, r1
	str	r3, [r7, #20]
	ldrd	r3, [r7, #16]
	strd	r3, [r7, #104]
	.loc 1 644 10
	ldrd	r0, [r7, #104]
	mov	r2, #0
	mov	r3, #0
	lsls	r3, r1, #8
	orr	r3, r3, r0, lsr #24
	lsls	r2, r0, #8
	.loc 1 644 20
	ldr	r1, [r7, #100]
	adds	r1, r1, #1
	ldrb	r1, [r1]	@ zero_extendqisi2
	uxtb	r1, r1
	movs	r0, #0
	str	r1, [r7, #56]
	str	r0, [r7, #60]
	.loc 1 644 5
	ldrd	r4, [r7, #56]
	mov	r1, r4
	orrs	r1, r1, r2
	str	r1, [r7, #8]
	mov	r1, r5
	orrs	r1, r1, r3
	str	r1, [r7, #12]
	ldrd	r3, [r7, #8]
	strd	r3, [r7, #104]
	.loc 1 645 10
	ldrd	r0, [r7, #104]
	mov	r2, #0
	mov	r3, #0
	lsls	r3, r1, #8
	orr	r3, r3, r0, lsr #24
	lsls	r2, r0, #8
	.loc 1 645 20
	ldr	r1, [r7, #100]
	ldrb	r1, [r1]	@ zero_extendqisi2
	uxtb	r1, r1
	movs	r0, #0
	str	r1, [r7, #48]
	str	r0, [r7, #52]
	.loc 1 645 5
	ldrd	r4, [r7, #48]
	mov	r1, r4
	orrs	r1, r1, r2
	str	r1, [r7]
	mov	r1, r5
	orrs	r1, r1, r3
	str	r1, [r7, #4]
	ldrd	r3, [r7]
	strd	r3, [r7, #104]
	.loc 1 646 9
	ldrd	r2, [r7, #104]
	.loc 1 647 1
	mov	r0, r2
	mov	r1, r3
	adds	r7, r7, #116
	.cfi_def_cfa_offset 28
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r4, r5, r7, r8, r9, r10, fp}
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE2:
	.size	ld_qword, .-ld_qword
	.section	.text.st_word,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	st_word, %function
st_word:
.LFB3:
	.loc 1 652 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	mov	r3, r1
	strh	r3, [r7, #2]	@ movhi
	.loc 1 653 6
	ldr	r3, [r7, #4]
	adds	r2, r3, #1
	str	r2, [r7, #4]
	.loc 1 653 11
	ldrh	r2, [r7, #2]	@ movhi
	uxtb	r2, r2
	.loc 1 653 9
	strb	r2, [r3]
	.loc 1 653 26
	ldrh	r3, [r7, #2]
	lsrs	r3, r3, #8
	strh	r3, [r7, #2]	@ movhi
	.loc 1 654 6
	ldr	r3, [r7, #4]
	adds	r2, r3, #1
	str	r2, [r7, #4]
	.loc 1 654 11
	ldrh	r2, [r7, #2]	@ movhi
	uxtb	r2, r2
	.loc 1 654 9
	strb	r2, [r3]
	.loc 1 655 1
	nop
	adds	r7, r7, #12
	.cfi_def_cfa_offset 4
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	ldr	r7, [sp], #4
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE3:
	.size	st_word, .-st_word
	.section	.text.st_dword,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	st_dword, %function
st_dword:
.LFB4:
	.loc 1 658 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	str	r1, [r7]
	.loc 1 659 6
	ldr	r3, [r7, #4]
	adds	r2, r3, #1
	str	r2, [r7, #4]
	.loc 1 659 11
	ldr	r2, [r7]
	uxtb	r2, r2
	.loc 1 659 9
	strb	r2, [r3]
	.loc 1 659 26
	ldr	r3, [r7]
	lsrs	r3, r3, #8
	str	r3, [r7]
	.loc 1 660 6
	ldr	r3, [r7, #4]
	adds	r2, r3, #1
	str	r2, [r7, #4]
	.loc 1 660 11
	ldr	r2, [r7]
	uxtb	r2, r2
	.loc 1 660 9
	strb	r2, [r3]
	.loc 1 660 26
	ldr	r3, [r7]
	lsrs	r3, r3, #8
	str	r3, [r7]
	.loc 1 661 6
	ldr	r3, [r7, #4]
	adds	r2, r3, #1
	str	r2, [r7, #4]
	.loc 1 661 11
	ldr	r2, [r7]
	uxtb	r2, r2
	.loc 1 661 9
	strb	r2, [r3]
	.loc 1 661 26
	ldr	r3, [r7]
	lsrs	r3, r3, #8
	str	r3, [r7]
	.loc 1 662 6
	ldr	r3, [r7, #4]
	adds	r2, r3, #1
	str	r2, [r7, #4]
	.loc 1 662 11
	ldr	r2, [r7]
	uxtb	r2, r2
	.loc 1 662 9
	strb	r2, [r3]
	.loc 1 663 1
	nop
	adds	r7, r7, #12
	.cfi_def_cfa_offset 4
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	ldr	r7, [sp], #4
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE4:
	.size	st_dword, .-st_dword
	.section	.text.st_qword,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	st_qword, %function
st_qword:
.LFB5:
	.loc 1 667 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #20
	.cfi_def_cfa_offset 24
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #12]
	strd	r2, [r7]
	.loc 1 668 6
	ldr	r3, [r7, #12]
	adds	r2, r3, #1
	str	r2, [r7, #12]
	.loc 1 668 11
	ldrb	r2, [r7]	@ zero_extendqisi2
	.loc 1 668 9
	strb	r2, [r3]
	.loc 1 668 26
	ldrd	r0, [r7]
	mov	r2, #0
	mov	r3, #0
	lsrs	r2, r0, #8
	orr	r2, r2, r1, lsl #24
	lsrs	r3, r1, #8
	strd	r2, [r7]
	.loc 1 669 6
	ldr	r3, [r7, #12]
	adds	r2, r3, #1
	str	r2, [r7, #12]
	.loc 1 669 11
	ldrb	r2, [r7]	@ zero_extendqisi2
	.loc 1 669 9
	strb	r2, [r3]
	.loc 1 669 26
	ldrd	r0, [r7]
	mov	r2, #0
	mov	r3, #0
	lsrs	r2, r0, #8
	orr	r2, r2, r1, lsl #24
	lsrs	r3, r1, #8
	strd	r2, [r7]
	.loc 1 670 6
	ldr	r3, [r7, #12]
	adds	r2, r3, #1
	str	r2, [r7, #12]
	.loc 1 670 11
	ldrb	r2, [r7]	@ zero_extendqisi2
	.loc 1 670 9
	strb	r2, [r3]
	.loc 1 670 26
	ldrd	r0, [r7]
	mov	r2, #0
	mov	r3, #0
	lsrs	r2, r0, #8
	orr	r2, r2, r1, lsl #24
	lsrs	r3, r1, #8
	strd	r2, [r7]
	.loc 1 671 6
	ldr	r3, [r7, #12]
	adds	r2, r3, #1
	str	r2, [r7, #12]
	.loc 1 671 11
	ldrb	r2, [r7]	@ zero_extendqisi2
	.loc 1 671 9
	strb	r2, [r3]
	.loc 1 671 26
	ldrd	r0, [r7]
	mov	r2, #0
	mov	r3, #0
	lsrs	r2, r0, #8
	orr	r2, r2, r1, lsl #24
	lsrs	r3, r1, #8
	strd	r2, [r7]
	.loc 1 672 6
	ldr	r3, [r7, #12]
	adds	r2, r3, #1
	str	r2, [r7, #12]
	.loc 1 672 11
	ldrb	r2, [r7]	@ zero_extendqisi2
	.loc 1 672 9
	strb	r2, [r3]
	.loc 1 672 26
	ldrd	r0, [r7]
	mov	r2, #0
	mov	r3, #0
	lsrs	r2, r0, #8
	orr	r2, r2, r1, lsl #24
	lsrs	r3, r1, #8
	strd	r2, [r7]
	.loc 1 673 6
	ldr	r3, [r7, #12]
	adds	r2, r3, #1
	str	r2, [r7, #12]
	.loc 1 673 11
	ldrb	r2, [r7]	@ zero_extendqisi2
	.loc 1 673 9
	strb	r2, [r3]
	.loc 1 673 26
	ldrd	r0, [r7]
	mov	r2, #0
	mov	r3, #0
	lsrs	r2, r0, #8
	orr	r2, r2, r1, lsl #24
	lsrs	r3, r1, #8
	strd	r2, [r7]
	.loc 1 674 6
	ldr	r3, [r7, #12]
	adds	r2, r3, #1
	str	r2, [r7, #12]
	.loc 1 674 11
	ldrb	r2, [r7]	@ zero_extendqisi2
	.loc 1 674 9
	strb	r2, [r3]
	.loc 1 674 26
	ldrd	r0, [r7]
	mov	r2, #0
	mov	r3, #0
	lsrs	r2, r0, #8
	orr	r2, r2, r1, lsl #24
	lsrs	r3, r1, #8
	strd	r2, [r7]
	.loc 1 675 6
	ldr	r3, [r7, #12]
	adds	r2, r3, #1
	str	r2, [r7, #12]
	.loc 1 675 11
	ldrb	r2, [r7]	@ zero_extendqisi2
	.loc 1 675 9
	strb	r2, [r3]
	.loc 1 676 1
	nop
	adds	r7, r7, #20
	.cfi_def_cfa_offset 4
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	ldr	r7, [sp], #4
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE5:
	.size	st_qword, .-st_qword
	.section	.text.memset_32,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	memset_32, %function
memset_32:
.LFB6:
	.loc 1 691 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #20
	.cfi_def_cfa_offset 24
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	.loc 1 692 2
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #4]
	.syntax unified
@ 692 "../Middleware/FatFs/ff.c" 1
	orrs	r3, r3
	beq	2f
	1:
	str	r1, [r2], #4
	subs	r3, #1
	bne	1b
	2:
	
@ 0 "" 2
	.thumb
	.syntax unified
	str	r2, [r7, #12]
	str	r3, [r7, #4]
	.loc 1 701 1
	nop
	adds	r7, r7, #20
	.cfi_def_cfa_offset 4
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	ldr	r7, [sp], #4
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE6:
	.size	memset_32, .-memset_32
	.section	.text.mem_set,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	mem_set, %function
mem_set:
.LFB7:
	.loc 1 707 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #20
	.cfi_def_cfa_offset 24
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	.loc 1 708 2
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #4]
	.syntax unified
@ 708 "../Middleware/FatFs/ff.c" 1
	orrs	r3, r3
	beq	2f
	1:
	strb	r1, [r2], #1
	subs	r3, #1
	bne	1b
	2:
	
@ 0 "" 2
	.thumb
	.syntax unified
	str	r2, [r7, #12]
	str	r3, [r7, #4]
	.loc 1 717 1
	nop
	adds	r7, r7, #20
	.cfi_def_cfa_offset 4
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	ldr	r7, [sp], #4
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE7:
	.size	mem_set, .-mem_set
	.section	.text.mem_cpy,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	mem_cpy, %function
mem_cpy:
.LFB8:
	.loc 1 723 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #20
	.cfi_def_cfa_offset 24
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	.loc 1 724 2
	ldr	r1, [r7, #12]
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #4]
	.syntax unified
@ 724 "../Middleware/FatFs/ff.c" 1
	orrs	r3, r3
	beq	2f
	1:
	ldrb	r0, [r2], #1
	strb	r0, [r1], #1
	subs	r3, #1
	bne	1b
	2:
	
@ 0 "" 2
	.thumb
	.syntax unified
	str	r1, [r7, #12]
	str	r2, [r7, #8]
	str	r3, [r7, #4]
	.loc 1 735 1
	nop
	adds	r7, r7, #20
	.cfi_def_cfa_offset 4
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	ldr	r7, [sp], #4
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE8:
	.size	mem_cpy, .-mem_cpy
	.section	.text.str_chr,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	str_chr, %function
str_chr:
.LFB9:
	.loc 1 741 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	str	r1, [r7]
	.loc 1 742 2
	ldr	r2, [r7]
	ldr	r3, [r7, #4]
	.syntax unified
@ 742 "../Middleware/FatFs/ff.c" 1
	1:
	ldrb	r0, [r3], #1
	cbz	r0, 2f
	cmp	r0, r2
	bne	1b
	2:
	subs	r3, #1
	
@ 0 "" 2
	.thumb
	.syntax unified
	str	r3, [r7, #4]
	.loc 1 752 9
	ldr	r3, [r7, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 753 1
	mov	r0, r3
	adds	r7, r7, #12
	.cfi_def_cfa_offset 4
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	ldr	r7, [sp], #4
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE9:
	.size	str_chr, .-str_chr
	.section	.text.mem_cmp,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	mem_cmp, %function
mem_cmp:
.LFB10:
	.loc 1 759 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4, r5, r7}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 7, -4
	sub	sp, sp, #28
	.cfi_def_cfa_offset 40
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	.loc 1 760 6
	movs	r3, #0
	str	r3, [r7, #20]
	.loc 1 761 2
	ldr	r1, [r7, #12]
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #4]
	mov	r4, r1
	.syntax unified
@ 761 "../Middleware/FatFs/ff.c" 1
	1:
	ldrb	r0, [r4], #1
	ldrb	r1, [r2], #1
	subs	r5, r0, r1
	bne	2f
	subs	r3, #1
	bne	1b
	2:
	
@ 0 "" 2
	.thumb
	.syntax unified
	str	r4, [r7, #12]
	str	r2, [r7, #8]
	str	r3, [r7, #4]
	str	r5, [r7, #20]
	.loc 1 772 9
	ldr	r3, [r7, #20]
	.loc 1 773 1
	mov	r0, r3
	adds	r7, r7, #28
	.cfi_def_cfa_offset 12
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r4, r5, r7}
	.cfi_restore 7
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE10:
	.size	mem_cmp, .-mem_cmp
	.section	.text.dbc_1st,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	dbc_1st, %function
dbc_1st:
.LFB11:
	.loc 1 785 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	mov	r3, r0
	strb	r3, [r7, #7]
	.loc 1 797 5
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L18
	.loc 1 797 21 discriminator 1
	movs	r3, #0
	b	.L19
.L18:
	.loc 1 799 9
	movs	r3, #0
.L19:
	.loc 1 800 1
	mov	r0, r3
	adds	r7, r7, #12
	.cfi_def_cfa_offset 4
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	ldr	r7, [sp], #4
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE11:
	.size	dbc_1st, .-dbc_1st
	.section	.text.dbc_2nd,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	dbc_2nd, %function
dbc_2nd:
.LFB12:
	.loc 1 805 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	mov	r3, r0
	strb	r3, [r7, #7]
	.loc 1 819 5
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L21
	.loc 1 819 21 discriminator 1
	movs	r3, #0
	b	.L22
.L21:
	.loc 1 821 9
	movs	r3, #0
.L22:
	.loc 1 822 1
	mov	r0, r3
	adds	r7, r7, #12
	.cfi_def_cfa_offset 4
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	ldr	r7, [sp], #4
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE12:
	.size	dbc_2nd, .-dbc_2nd
	.section	.text.tchar2uni,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	tchar2uni, %function
tchar2uni:
.LFB13:
	.loc 1 831 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #24
	.cfi_def_cfa_offset 32
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 1 833 15
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #20]
	.loc 1 878 15
	ldr	r3, [r7, #20]
	adds	r2, r3, #1
	str	r2, [r7, #20]
	.loc 1 878 13
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 878 5
	strh	r3, [r7, #18]	@ movhi
	.loc 1 879 6
	ldrh	r3, [r7, #18]	@ movhi
	uxtb	r3, r3
	mov	r0, r3
	bl	dbc_1st
	mov	r3, r0
	.loc 1 879 5
	cmp	r3, #0
	beq	.L24
	.loc 1 880 15
	ldr	r3, [r7, #20]
	adds	r2, r3, #1
	str	r2, [r7, #20]
	.loc 1 880 5
	ldrb	r3, [r3]
	strb	r3, [r7, #17]
	.loc 1 881 8
	ldrb	r3, [r7, #17]	@ zero_extendqisi2
	mov	r0, r3
	bl	dbc_2nd
	mov	r3, r0
	.loc 1 881 6
	cmp	r3, #0
	bne	.L25
	.loc 1 881 27 discriminator 1
	mov	r3, #-1
	b	.L26
.L25:
	.loc 1 882 12
	ldrh	r3, [r7, #18]	@ movhi
	lsls	r3, r3, #8
	uxth	r2, r3
	.loc 1 882 18
	ldrb	r3, [r7, #17]	@ zero_extendqisi2
	uxth	r3, r3
	.loc 1 882 6
	add	r3, r3, r2
	strh	r3, [r7, #18]	@ movhi
.L24:
	.loc 1 884 5
	ldrh	r3, [r7, #18]
	cmp	r3, #0
	beq	.L27
	.loc 1 885 8
	ldrh	r3, [r7, #18]
	movw	r1, #866
	mov	r0, r3
	bl	ff_oem2uni
	mov	r3, r0
	strh	r3, [r7, #18]	@ movhi
	.loc 1 886 6
	ldrh	r3, [r7, #18]
	cmp	r3, #0
	bne	.L27
	.loc 1 886 23 discriminator 1
	mov	r3, #-1
	b	.L26
.L27:
	.loc 1 888 5
	ldrh	r3, [r7, #18]
	str	r3, [r7, #12]
	.loc 1 891 7
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #20]
	str	r2, [r3]
	.loc 1 892 9
	ldr	r3, [r7, #12]
.L26:
	.loc 1 893 1
	mov	r0, r3
	adds	r7, r7, #24
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE13:
	.size	tchar2uni, .-tchar2uni
	.section	.text.put_utf,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	put_utf, %function
put_utf:
.LFB14:
	.loc 1 902 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #24
	.cfi_def_cfa_offset 32
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	.loc 1 967 7
	movw	r1, #866
	ldr	r0, [r7, #12]
	bl	ff_uni2oem
	mov	r3, r0
	strh	r3, [r7, #22]	@ movhi
	.loc 1 968 5
	ldrh	r3, [r7, #22]
	cmp	r3, #255
	bls	.L29
	.loc 1 969 6
	ldr	r3, [r7, #4]
	cmp	r3, #1
	bhi	.L30
	.loc 1 969 23 discriminator 1
	movs	r3, #0
	b	.L31
.L30:
	.loc 1 970 12
	ldrh	r3, [r7, #22]
	lsrs	r3, r3, #8
	uxth	r1, r3
	.loc 1 970 7
	ldr	r3, [r7, #8]
	adds	r2, r3, #1
	str	r2, [r7, #8]
	.loc 1 970 12
	uxtb	r2, r1
	.loc 1 970 10
	strb	r2, [r3]
	.loc 1 971 7
	ldr	r3, [r7, #8]
	adds	r2, r3, #1
	str	r2, [r7, #8]
	.loc 1 971 12
	ldrh	r2, [r7, #22]	@ movhi
	uxtb	r2, r2
	.loc 1 971 10
	strb	r2, [r3]
	.loc 1 972 10
	movs	r3, #2
	b	.L31
.L29:
	.loc 1 974 5
	ldrh	r3, [r7, #22]
	cmp	r3, #0
	beq	.L32
	.loc 1 974 14 discriminator 2
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L33
.L32:
	.loc 1 974 33 discriminator 3
	movs	r3, #0
	b	.L31
.L33:
	.loc 1 975 6
	ldr	r3, [r7, #8]
	adds	r2, r3, #1
	str	r2, [r7, #8]
	.loc 1 975 11
	ldrh	r2, [r7, #22]	@ movhi
	uxtb	r2, r2
	.loc 1 975 9
	strb	r2, [r3]
	.loc 1 976 9
	movs	r3, #1
.L31:
	.loc 1 978 1
	mov	r0, r3
	adds	r7, r7, #24
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE14:
	.size	put_utf, .-put_utf
	.section	.text.sync_window,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sync_window, %function
sync_window:
.LFB15:
	.loc 1 1150 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #16
	.cfi_def_cfa_offset 24
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 1 1151 10
	movs	r3, #0
	strb	r3, [r7, #15]
	.loc 1 1154 8
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	.loc 1 1154 5
	cmp	r3, #0
	beq	.L35
	.loc 1 1155 7
	ldr	r3, [r7, #4]
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	.loc 1 1155 30
	ldr	r3, [r7, #4]
	add	r1, r3, #60
	.loc 1 1155 7
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #56]
	movs	r3, #1
	bl	disk_write
	mov	r3, r0
	.loc 1 1155 6
	cmp	r3, #0
	bne	.L36
	.loc 1 1156 14
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #4]
	.loc 1 1157 10
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #56]
	.loc 1 1157 24
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #40]
	.loc 1 1157 20
	subs	r2, r2, r3
	.loc 1 1157 38
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #32]
	.loc 1 1157 7
	cmp	r2, r3
	bcs	.L35
	.loc 1 1158 11
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #3]	@ zero_extendqisi2
	.loc 1 1158 8
	cmp	r3, #2
	bne	.L35
	.loc 1 1158 26 discriminator 1
	ldr	r3, [r7, #4]
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	.loc 1 1158 49 discriminator 1
	ldr	r3, [r7, #4]
	add	r1, r3, #60
	.loc 1 1158 58 discriminator 1
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #56]
	.loc 1 1158 72 discriminator 1
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #32]
	.loc 1 1158 26 discriminator 1
	add	r2, r2, r3
	movs	r3, #1
	bl	disk_write
	b	.L35
.L36:
	.loc 1 1161 8
	movs	r3, #1
	strb	r3, [r7, #15]
.L35:
	.loc 1 1164 9
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	.loc 1 1165 1
	mov	r0, r3
	adds	r7, r7, #16
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE15:
	.size	sync_window, .-sync_window
	.section	.text.move_window,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	move_window, %function
move_window:
.LFB16:
	.loc 1 1173 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #16
	.cfi_def_cfa_offset 24
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	str	r1, [r7]
	.loc 1 1174 10
	movs	r3, #0
	strb	r3, [r7, #15]
	.loc 1 1177 16
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #56]
	.loc 1 1177 5
	ldr	r2, [r7]
	cmp	r2, r3
	beq	.L39
	.loc 1 1179 9
	ldr	r0, [r7, #4]
	bl	sync_window
	mov	r3, r0
	strb	r3, [r7, #15]
	.loc 1 1181 6
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L39
	.loc 1 1182 8
	ldr	r3, [r7, #4]
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	.loc 1 1182 30
	ldr	r3, [r7, #4]
	add	r1, r3, #60
	.loc 1 1182 8
	movs	r3, #1
	ldr	r2, [r7]
	bl	disk_read
	mov	r3, r0
	.loc 1 1182 7
	cmp	r3, #0
	beq	.L40
	.loc 1 1183 10
	mov	r3, #-1
	str	r3, [r7]
	.loc 1 1184 9
	movs	r3, #1
	strb	r3, [r7, #15]
.L40:
	.loc 1 1186 16
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	str	r2, [r3, #56]
.L39:
	.loc 1 1189 9
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	.loc 1 1190 1
	mov	r0, r3
	adds	r7, r7, #16
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE16:
	.size	move_window, .-move_window
	.section	.text.sync_fs,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sync_fs, %function
sync_fs:
.LFB17:
	.loc 1 1203 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #16
	.cfi_def_cfa_offset 24
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 1 1207 8
	ldr	r0, [r7, #4]
	bl	sync_window
	mov	r3, r0
	strb	r3, [r7, #15]
	.loc 1 1208 5
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L43
	.loc 1 1209 9
	ldr	r3, [r7, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 1209 6
	cmp	r3, #3
	bne	.L44
	.loc 1 1209 29 discriminator 1
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	.loc 1 1209 24 discriminator 1
	cmp	r3, #1
	bne	.L44
	.loc 1 1214 16
	ldr	r3, [r7, #4]
	adds	r3, r3, #60
	.loc 1 1214 4
	movs	r2, #128
	movs	r1, #0
	mov	r0, r3
	bl	memset_32
	.loc 1 1216 12
	ldr	r3, [r7, #4]
	adds	r3, r3, #60
	.loc 1 1216 4
	add	r3, r3, #510
	movw	r1, #43605
	mov	r0, r3
	bl	st_word
	.loc 1 1217 13
	ldr	r3, [r7, #4]
	adds	r3, r3, #60
	.loc 1 1217 4
	ldr	r1, .L46
	mov	r0, r3
	bl	st_dword
	.loc 1 1218 13
	ldr	r3, [r7, #4]
	adds	r3, r3, #60
	.loc 1 1218 4
	add	r3, r3, #484
	ldr	r1, .L46+4
	mov	r0, r3
	bl	st_dword
	.loc 1 1219 13
	ldr	r3, [r7, #4]
	adds	r3, r3, #60
	.loc 1 1219 4
	add	r2, r3, #488
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	mov	r1, r3
	mov	r0, r2
	bl	st_dword
	.loc 1 1220 13
	ldr	r3, [r7, #4]
	adds	r3, r3, #60
	.loc 1 1220 4
	add	r2, r3, #492
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	mov	r1, r3
	mov	r0, r2
	bl	st_dword
	.loc 1 1221 20
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #36]
	.loc 1 1221 30
	adds	r2, r3, #1
	.loc 1 1221 16
	ldr	r3, [r7, #4]
	str	r2, [r3, #56]
	.loc 1 1222 4
	ldr	r3, [r7, #4]
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	.loc 1 1222 27
	ldr	r3, [r7, #4]
	add	r1, r3, #60
	.loc 1 1222 4
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #56]
	movs	r3, #1
	bl	disk_write
	.loc 1 1223 17
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #5]
.L44:
	.loc 1 1226 7
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	movs	r2, #0
	movs	r1, #0
	mov	r0, r3
	bl	disk_ioctl
	mov	r3, r0
	.loc 1 1226 6
	cmp	r3, #0
	beq	.L43
	.loc 1 1226 49 discriminator 1
	movs	r3, #1
	strb	r3, [r7, #15]
.L43:
	.loc 1 1229 9
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	.loc 1 1230 1
	mov	r0, r3
	adds	r7, r7, #16
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
.L47:
	.align	2
.L46:
	.word	1096897106
	.word	1631679090
	.cfi_endproc
.LFE17:
	.size	sync_fs, .-sync_fs
	.section	.text.clst2sect,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	clst2sect, %function
clst2sect:
.LFB18:
	.loc 1 1244 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	str	r1, [r7]
	.loc 1 1245 7
	ldr	r3, [r7]
	subs	r3, r3, #2
	str	r3, [r7]
	.loc 1 1246 16
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	.loc 1 1246 27
	subs	r3, r3, #2
	.loc 1 1246 5
	ldr	r2, [r7]
	cmp	r2, r3
	bcc	.L49
	.loc 1 1246 39 discriminator 1
	movs	r3, #0
	b	.L50
.L49:
	.loc 1 1247 11
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #48]
	.loc 1 1247 33
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #10]
	.loc 1 1247 24
	mov	r1, r3
	.loc 1 1247 41
	ldr	r3, [r7]
	mul	r3, r1, r3
	.loc 1 1247 22
	add	r3, r3, r2
.L50:
	.loc 1 1248 1
	mov	r0, r3
	adds	r7, r7, #12
	.cfi_def_cfa_offset 4
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	ldr	r7, [sp], #4
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE18:
	.size	clst2sect, .-clst2sect
	.section	.text.get_fat,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	get_fat, %function
get_fat:
.LFB19:
	.loc 1 1261 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #32
	.cfi_def_cfa_offset 40
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	str	r1, [r7]
	.loc 1 1264 9
	ldr	r1, [r7, #4]
	ldr	r1, [r1]
	str	r1, [r7, #24]
	.loc 1 1267 5
	ldr	r1, [r7]
	cmp	r1, #1
	bls	.L52
	.loc 1 1267 28 discriminator 1
	ldr	r1, [r7, #24]
	ldr	r1, [r1, #28]
	.loc 1 1267 15 discriminator 1
	ldr	r0, [r7]
	cmp	r0, r1
	bcc	.L53
.L52:
	.loc 1 1268 7
	movs	r3, #1
	str	r3, [r7, #28]
	b	.L54
.L53:
	.loc 1 1271 7
	mov	r1, #-1
	str	r1, [r7, #28]
	.loc 1 1273 13
	ldr	r1, [r7, #24]
	ldrb	r1, [r1]	@ zero_extendqisi2
	.loc 1 1273 3
	subs	r1, r1, #1
	cmp	r1, #3
	bhi	.L55
	adr	r0, .L57
	ldr	pc, [r0, r1, lsl #2]
	.p2align 2
.L57:
	.word	.L60+1
	.word	.L59+1
	.word	.L58+1
	.word	.L56+1
	.p2align 1
.L60:
	.loc 1 1275 7
	ldr	r3, [r7]
	str	r3, [r7, #12]
	.loc 1 1275 30
	ldr	r3, [r7, #12]
	lsrs	r3, r3, #1
	.loc 1 1275 24
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	str	r3, [r7, #12]
	.loc 1 1276 26
	ldr	r3, [r7, #24]
	ldr	r2, [r3, #40]
	.loc 1 1276 42
	ldr	r3, [r7, #12]
	lsrs	r3, r3, #9
	.loc 1 1276 8
	add	r3, r3, r2
	mov	r1, r3
	ldr	r0, [r7, #24]
	bl	move_window
	mov	r3, r0
	.loc 1 1276 7
	cmp	r3, #0
	bne	.L78
	.loc 1 1277 19
	ldr	r3, [r7, #12]
	adds	r2, r3, #1
	str	r2, [r7, #12]
	.loc 1 1277 22
	ubfx	r3, r3, #0, #9
	.loc 1 1277 16
	ldr	r2, [r7, #24]
	add	r3, r3, r2
	ldrb	r3, [r3, #60]	@ zero_extendqisi2
	.loc 1 1277 7
	str	r3, [r7, #8]
	.loc 1 1278 26
	ldr	r3, [r7, #24]
	ldr	r2, [r3, #40]
	.loc 1 1278 42
	ldr	r3, [r7, #12]
	lsrs	r3, r3, #9
	.loc 1 1278 8
	add	r3, r3, r2
	mov	r1, r3
	ldr	r0, [r7, #24]
	bl	move_window
	mov	r3, r0
	.loc 1 1278 7
	cmp	r3, #0
	bne	.L79
	.loc 1 1279 21
	ldr	r3, [r7, #12]
	ubfx	r3, r3, #0, #9
	.loc 1 1279 17
	ldr	r2, [r7, #24]
	add	r3, r3, r2
	ldrb	r3, [r3, #60]	@ zero_extendqisi2
	.loc 1 1279 36
	lsls	r3, r3, #8
	mov	r2, r3
	.loc 1 1279 7
	ldr	r3, [r7, #8]
	orrs	r3, r3, r2
	str	r3, [r7, #8]
	.loc 1 1280 16
	ldr	r3, [r7]
	and	r3, r3, #1
	.loc 1 1280 33
	cmp	r3, #0
	beq	.L63
	.loc 1 1280 33 is_stmt 0 discriminator 1
	ldr	r3, [r7, #8]
	lsrs	r3, r3, #4
	b	.L64
.L63:
	.loc 1 1280 33 discriminator 2
	ldr	r3, [r7, #8]
	ubfx	r3, r3, #0, #12
.L64:
	.loc 1 1280 8 is_stmt 1 discriminator 4
	str	r3, [r7, #28]
	.loc 1 1281 4 discriminator 4
	b	.L54
.L59:
	.loc 1 1284 26
	ldr	r3, [r7, #24]
	ldr	r2, [r3, #40]
	.loc 1 1284 44
	ldr	r3, [r7]
	lsrs	r3, r3, #8
	.loc 1 1284 8
	add	r3, r3, r2
	mov	r1, r3
	ldr	r0, [r7, #24]
	bl	move_window
	mov	r3, r0
	.loc 1 1284 7
	cmp	r3, #0
	bne	.L80
	.loc 1 1285 18
	ldr	r3, [r7, #24]
	add	r2, r3, #60
	.loc 1 1285 33
	ldr	r3, [r7]
	lsls	r3, r3, #1
	.loc 1 1285 37
	and	r3, r3, #510
	.loc 1 1285 10
	add	r3, r3, r2
	mov	r0, r3
	bl	ld_word
	mov	r3, r0
	.loc 1 1285 8
	str	r3, [r7, #28]
	.loc 1 1286 4
	b	.L54
.L58:
	.loc 1 1289 26
	ldr	r3, [r7, #24]
	ldr	r2, [r3, #40]
	.loc 1 1289 44
	ldr	r3, [r7]
	lsrs	r3, r3, #7
	.loc 1 1289 8
	add	r3, r3, r2
	mov	r1, r3
	ldr	r0, [r7, #24]
	bl	move_window
	mov	r3, r0
	.loc 1 1289 7
	cmp	r3, #0
	bne	.L81
	.loc 1 1290 19
	ldr	r3, [r7, #24]
	add	r2, r3, #60
	.loc 1 1290 34
	ldr	r3, [r7]
	lsls	r3, r3, #2
	.loc 1 1290 38
	and	r3, r3, #508
	.loc 1 1290 10
	add	r3, r3, r2
	mov	r0, r3
	bl	ld_dword
	mov	r3, r0
	.loc 1 1290 8
	bic	r3, r3, #-268435456
	str	r3, [r7, #28]
	.loc 1 1291 4
	b	.L54
.L56:
	.loc 1 1294 12
	ldr	r1, [r7, #4]
	ldrd	r0, [r1, #16]
	.loc 1 1294 7
	orrs	r1, r0, r1
	beq	.L67
	.loc 1 1294 33 discriminator 1
	ldr	r1, [r7, #4]
	ldr	r1, [r1, #8]
	.loc 1 1294 27 discriminator 1
	cmp	r1, #0
	bne	.L68
.L67:
	.loc 1 1294 54 discriminator 3
	ldr	r1, [r7, #4]
	ldrb	r1, [r1, #7]	@ zero_extendqisi2
	.loc 1 1294 48 discriminator 3
	cmp	r1, #0
	bne	.L69
.L68:
.LBB2:
	.loc 1 1295 28
	ldr	r1, [r7, #4]
	ldr	r1, [r1, #8]
	.loc 1 1295 11
	ldr	r0, [r7]
	subs	r1, r0, r1
	str	r1, [r7, #20]
	.loc 1 1296 38
	ldr	r1, [r7, #4]
	ldrd	r0, [r1, #16]
	.loc 1 1296 48
	subs	r2, r0, #1
	adc	r3, r1, #-1
	.loc 1 1296 53
	mov	r0, #0
	mov	r1, #0
	lsrs	r0, r2, #9
	orr	r0, r0, r3, lsl #23
	lsrs	r1, r3, #9
	.loc 1 1296 26
	mov	r2, r0
	.loc 1 1296 72
	ldr	r3, [r7, #24]
	ldrh	r3, [r3, #10]
	.loc 1 1296 11
	udiv	r3, r2, r3
	str	r3, [r7, #16]
	.loc 1 1298 12
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #7]	@ zero_extendqisi2
	.loc 1 1298 8
	cmp	r3, #2
	bne	.L70
	.loc 1 1298 24 discriminator 1
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	bhi	.L70
	.loc 1 1299 40
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	beq	.L71
	.loc 1 1299 40 is_stmt 0 discriminator 1
	ldr	r3, [r7]
	adds	r3, r3, #1
	b	.L72
.L71:
	.loc 1 1299 40 discriminator 2
	mvn	r3, #-2147483648
.L72:
	.loc 1 1299 10 is_stmt 1 discriminator 4
	str	r3, [r7, #28]
	.loc 1 1300 6 discriminator 4
	b	.L54
.L70:
	.loc 1 1302 12
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #7]	@ zero_extendqisi2
	.loc 1 1302 8
	cmp	r3, #3
	bne	.L73
	.loc 1 1302 37 discriminator 1
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	.loc 1 1302 24 discriminator 1
	ldr	r2, [r7, #20]
	cmp	r2, r3
	bcs	.L73
	.loc 1 1303 10
	ldr	r3, [r7]
	adds	r3, r3, #1
	str	r3, [r7, #28]
	.loc 1 1304 6
	b	.L54
.L73:
	.loc 1 1306 12
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #7]	@ zero_extendqisi2
	.loc 1 1306 8
	cmp	r3, #2
	beq	.L69
	.loc 1 1307 13
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	.loc 1 1307 9
	cmp	r3, #0
	beq	.L74
	.loc 1 1308 11
	mvn	r3, #-2147483648
	str	r3, [r7, #28]
	.loc 1 1313 6
	b	.L54
.L74:
	.loc 1 1310 29
	ldr	r3, [r7, #24]
	ldr	r2, [r3, #40]
	.loc 1 1310 47
	ldr	r3, [r7]
	lsrs	r3, r3, #7
	.loc 1 1310 11
	add	r3, r3, r2
	mov	r1, r3
	ldr	r0, [r7, #24]
	bl	move_window
	mov	r3, r0
	.loc 1 1310 10
	cmp	r3, #0
	bne	.L82
	.loc 1 1311 22
	ldr	r3, [r7, #24]
	add	r2, r3, #60
	.loc 1 1311 37
	ldr	r3, [r7]
	lsls	r3, r3, #2
	.loc 1 1311 41
	and	r3, r3, #508
	.loc 1 1311 13
	add	r3, r3, r2
	mov	r0, r3
	bl	ld_dword
	mov	r3, r0
	.loc 1 1311 11
	bic	r3, r3, #-2147483648
	str	r3, [r7, #28]
	.loc 1 1313 6
	b	.L54
.L69:
.LBE2:
	.loc 1 1316 8
	movs	r3, #1
	str	r3, [r7, #28]
	.loc 1 1317 4
	b	.L54
.L55:
	.loc 1 1320 8
	movs	r3, #1
	str	r3, [r7, #28]
	b	.L54
.L78:
	.loc 1 1276 4
	nop
	b	.L54
.L79:
	.loc 1 1278 4
	nop
	b	.L54
.L80:
	.loc 1 1284 4
	nop
	b	.L54
.L81:
	.loc 1 1289 4
	nop
	b	.L54
.L82:
.LBB3:
	.loc 1 1310 7
	nop
.L54:
.LBE3:
	.loc 1 1324 9
	ldr	r3, [r7, #28]
	.loc 1 1325 1
	mov	r0, r3
	adds	r7, r7, #32
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE19:
	.size	get_fat, .-get_fat
	.section	.text.put_fat,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	put_fat, %function
put_fat:
.LFB20:
	.loc 1 1340 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #36
	.cfi_def_cfa_offset 48
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	.loc 1 1343 10
	movs	r3, #2
	strb	r3, [r7, #31]
	.loc 1 1346 5
	ldr	r3, [r7, #8]
	cmp	r3, #1
	bls	.L98
	.loc 1 1346 28 discriminator 1
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #28]
	.loc 1 1346 16 discriminator 1
	ldr	r2, [r7, #8]
	cmp	r2, r3
	bcs	.L98
	.loc 1 1347 13
	ldr	r3, [r7, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 1347 3
	cmp	r3, #4
	bgt	.L84
	cmp	r3, #3
	bge	.L85
	cmp	r3, #1
	beq	.L86
	cmp	r3, #2
	beq	.L87
	b	.L84
.L86:
	.loc 1 1349 7
	ldr	r3, [r7, #8]
	str	r3, [r7, #24]
	.loc 1 1349 30
	ldr	r3, [r7, #24]
	lsrs	r3, r3, #1
	.loc 1 1349 24
	ldr	r2, [r7, #24]
	add	r3, r3, r2
	str	r3, [r7, #24]
	.loc 1 1350 28
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #40]
	.loc 1 1350 44
	ldr	r3, [r7, #24]
	lsrs	r3, r3, #9
	.loc 1 1350 10
	add	r3, r3, r2
	mov	r1, r3
	ldr	r0, [r7, #12]
	bl	move_window
	mov	r3, r0
	strb	r3, [r7, #31]
	.loc 1 1351 7
	ldrb	r3, [r7, #31]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L99
	.loc 1 1352 8
	ldr	r3, [r7, #12]
	add	r2, r3, #60
	.loc 1 1352 23
	ldr	r3, [r7, #24]
	adds	r1, r3, #1
	str	r1, [r7, #24]
	ubfx	r3, r3, #0, #9
	.loc 1 1352 6
	add	r3, r3, r2
	str	r3, [r7, #20]
	.loc 1 1353 15
	ldr	r3, [r7, #8]
	and	r3, r3, #1
	.loc 1 1353 7
	cmp	r3, #0
	beq	.L89
	.loc 1 1353 24 discriminator 1
	ldr	r3, [r7, #20]
	ldrb	r3, [r3]	@ zero_extendqisi2
	sxtb	r3, r3
	.loc 1 1353 27 discriminator 1
	and	r3, r3, #15
	sxtb	r2, r3
	.loc 1 1353 38 discriminator 1
	ldr	r3, [r7, #4]
	uxtb	r3, r3
	.loc 1 1353 48 discriminator 1
	lsls	r3, r3, #4
	.loc 1 1353 35 discriminator 1
	sxtb	r3, r3
	orrs	r3, r3, r2
	sxtb	r3, r3
	.loc 1 1353 7 discriminator 1
	uxtb	r3, r3
	b	.L90
.L89:
	.loc 1 1353 7 is_stmt 0 discriminator 2
	ldr	r3, [r7, #4]
	uxtb	r3, r3
.L90:
	.loc 1 1353 7 discriminator 4
	ldr	r2, [r7, #20]
	strb	r3, [r2]
	.loc 1 1354 14 is_stmt 1 discriminator 4
	ldr	r3, [r7, #12]
	movs	r2, #1
	strb	r2, [r3, #4]
	.loc 1 1355 28 discriminator 4
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #40]
	.loc 1 1355 44 discriminator 4
	ldr	r3, [r7, #24]
	lsrs	r3, r3, #9
	.loc 1 1355 10 discriminator 4
	add	r3, r3, r2
	mov	r1, r3
	ldr	r0, [r7, #12]
	bl	move_window
	mov	r3, r0
	strb	r3, [r7, #31]
	.loc 1 1356 7 discriminator 4
	ldrb	r3, [r7, #31]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L100
	.loc 1 1357 8
	ldr	r3, [r7, #12]
	add	r2, r3, #60
	.loc 1 1357 21
	ldr	r3, [r7, #24]
	ubfx	r3, r3, #0, #9
	.loc 1 1357 6
	add	r3, r3, r2
	str	r3, [r7, #20]
	.loc 1 1358 15
	ldr	r3, [r7, #8]
	and	r3, r3, #1
	.loc 1 1358 7
	cmp	r3, #0
	beq	.L92
	.loc 1 1358 33 discriminator 1
	ldr	r3, [r7, #4]
	lsrs	r3, r3, #4
	.loc 1 1358 7 discriminator 1
	uxtb	r3, r3
	b	.L93
.L92:
	.loc 1 1358 43 discriminator 2
	ldr	r3, [r7, #20]
	ldrb	r3, [r3]	@ zero_extendqisi2
	sxtb	r3, r3
	.loc 1 1358 46 discriminator 2
	bic	r3, r3, #15
	sxtb	r2, r3
	.loc 1 1358 68 discriminator 2
	ldr	r3, [r7, #4]
	lsrs	r3, r3, #8
	.loc 1 1358 57 discriminator 2
	sxtb	r3, r3
	.loc 1 1358 74 discriminator 2
	and	r3, r3, #15
	sxtb	r3, r3
	.loc 1 1358 54 discriminator 2
	orrs	r3, r3, r2
	sxtb	r3, r3
	.loc 1 1358 7 discriminator 2
	uxtb	r3, r3
.L93:
	.loc 1 1358 7 is_stmt 0 discriminator 4
	ldr	r2, [r7, #20]
	strb	r3, [r2]
	.loc 1 1359 14 is_stmt 1 discriminator 4
	ldr	r3, [r7, #12]
	movs	r2, #1
	strb	r2, [r3, #4]
	.loc 1 1360 4 discriminator 4
	b	.L84
.L87:
	.loc 1 1363 28
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #40]
	.loc 1 1363 46
	ldr	r3, [r7, #8]
	lsrs	r3, r3, #8
	.loc 1 1363 10
	add	r3, r3, r2
	mov	r1, r3
	ldr	r0, [r7, #12]
	bl	move_window
	mov	r3, r0
	strb	r3, [r7, #31]
	.loc 1 1364 7
	ldrb	r3, [r7, #31]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L101
	.loc 1 1365 12
	ldr	r3, [r7, #12]
	add	r2, r3, #60
	.loc 1 1365 27
	ldr	r3, [r7, #8]
	lsls	r3, r3, #1
	.loc 1 1365 31
	and	r3, r3, #510
	.loc 1 1365 4
	add	r3, r3, r2
	ldr	r2, [r7, #4]
	uxth	r2, r2
	mov	r1, r2
	mov	r0, r3
	bl	st_word
	.loc 1 1366 14
	ldr	r3, [r7, #12]
	movs	r2, #1
	strb	r2, [r3, #4]
	.loc 1 1367 4
	b	.L84
.L85:
	.loc 1 1373 28
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #40]
	.loc 1 1373 46
	ldr	r3, [r7, #8]
	lsrs	r3, r3, #7
	.loc 1 1373 10
	add	r3, r3, r2
	mov	r1, r3
	ldr	r0, [r7, #12]
	bl	move_window
	mov	r3, r0
	strb	r3, [r7, #31]
	.loc 1 1374 7
	ldrb	r3, [r7, #31]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L102
	.loc 1 1375 16
	ldr	r3, [r7, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 1375 7
	cmp	r3, #4
	beq	.L96
	.loc 1 1376 16
	ldr	r3, [r7, #4]
	bic	r4, r3, #-268435456
	.loc 1 1376 42
	ldr	r3, [r7, #12]
	add	r2, r3, #60
	.loc 1 1376 57
	ldr	r3, [r7, #8]
	lsls	r3, r3, #2
	.loc 1 1376 61
	and	r3, r3, #508
	.loc 1 1376 33
	add	r3, r3, r2
	mov	r0, r3
	bl	ld_dword
	mov	r3, r0
	.loc 1 1376 76
	and	r3, r3, #-268435456
	.loc 1 1376 9
	orrs	r3, r3, r4
	str	r3, [r7, #4]
.L96:
	.loc 1 1378 13
	ldr	r3, [r7, #12]
	add	r2, r3, #60
	.loc 1 1378 28
	ldr	r3, [r7, #8]
	lsls	r3, r3, #2
	.loc 1 1378 32
	and	r3, r3, #508
	.loc 1 1378 4
	add	r3, r3, r2
	ldr	r1, [r7, #4]
	mov	r0, r3
	bl	st_dword
	.loc 1 1379 14
	ldr	r3, [r7, #12]
	movs	r2, #1
	strb	r2, [r3, #4]
	.loc 1 1380 4
	b	.L84
.L98:
	.loc 1 1382 2
	nop
	b	.L84
.L99:
	.loc 1 1351 4
	nop
	b	.L84
.L100:
	.loc 1 1356 4
	nop
	b	.L84
.L101:
	.loc 1 1364 4
	nop
	b	.L84
.L102:
	.loc 1 1374 4
	nop
.L84:
	.loc 1 1383 9
	ldrb	r3, [r7, #31]	@ zero_extendqisi2
	.loc 1 1384 1
	mov	r0, r3
	adds	r7, r7, #36
	.cfi_def_cfa_offset 12
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r4, r7, pc}
	.cfi_endproc
.LFE20:
	.size	put_fat, .-put_fat
	.section	.text.find_bitmap,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	find_bitmap, %function
find_bitmap:
.LFB21:
	.loc 1 1405 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #40
	.cfi_def_cfa_offset 48
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	.loc 1 1411 7
	ldr	r3, [r7, #8]
	subs	r3, r3, #2
	str	r3, [r7, #8]
	.loc 1 1412 16
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #28]
	.loc 1 1412 27
	subs	r3, r3, #2
	.loc 1 1412 5
	ldr	r2, [r7, #8]
	cmp	r2, r3
	bcc	.L104
	.loc 1 1412 37 discriminator 1
	movs	r3, #0
	str	r3, [r7, #8]
.L104:
	.loc 1 1413 12
	ldr	r3, [r7, #8]
	str	r3, [r7, #28]
	.loc 1 1413 6
	ldr	r3, [r7, #28]
	str	r3, [r7, #24]
	.loc 1 1413 24
	movs	r3, #0
	str	r3, [r7, #20]
.L112:
	.loc 1 1415 25
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #52]
	.loc 1 1415 45
	ldr	r3, [r7, #28]
	lsrs	r3, r3, #12
	.loc 1 1415 7
	add	r3, r3, r2
	mov	r1, r3
	ldr	r0, [r7, #12]
	bl	move_window
	mov	r3, r0
	.loc 1 1415 6
	cmp	r3, #0
	beq	.L105
	.loc 1 1415 77 discriminator 1
	mov	r3, #-1
	b	.L106
.L105:
	.loc 1 1416 11
	ldr	r3, [r7, #28]
	lsrs	r3, r3, #3
	.loc 1 1416 5
	ubfx	r3, r3, #0, #9
	str	r3, [r7, #32]
	.loc 1 1416 45
	ldr	r3, [r7, #28]
	and	r3, r3, #7
	.loc 1 1416 37
	movs	r2, #1
	lsl	r3, r2, r3
	.loc 1 1416 33
	strb	r3, [r7, #39]
.L111:
	.loc 1 1419 17
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	adds	r3, r3, #60
	ldrb	r2, [r3]	@ zero_extendqisi2
	.loc 1 1419 8
	ldrb	r3, [r7, #39]
	ands	r3, r3, r2
	strb	r3, [r7, #19]
	.loc 1 1419 30
	ldrb	r3, [r7, #39]
	lsls	r3, r3, #1
	strb	r3, [r7, #39]
	.loc 1 1420 8
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
	.loc 1 1420 20
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #28]
	.loc 1 1420 31
	subs	r3, r3, #2
	.loc 1 1420 8
	ldr	r2, [r7, #28]
	cmp	r2, r3
	bcc	.L107
	.loc 1 1421 10
	movs	r3, #0
	str	r3, [r7, #28]
	.loc 1 1421 18
	movs	r3, #0
	strb	r3, [r7, #39]
	.loc 1 1421 25
	mov	r3, #512
	str	r3, [r7, #32]
.L107:
	.loc 1 1423 8
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L108
	.loc 1 1424 9
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bne	.L109
	.loc 1 1424 35 discriminator 1
	ldr	r3, [r7, #24]
	adds	r3, r3, #2
	b	.L106
.L108:
	.loc 1 1426 10
	ldr	r3, [r7, #28]
	str	r3, [r7, #24]
	.loc 1 1426 21
	movs	r3, #0
	str	r3, [r7, #20]
.L109:
	.loc 1 1428 8
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bne	.L110
	.loc 1 1428 29 discriminator 1
	movs	r3, #0
	b	.L106
.L110:
	.loc 1 1429 4
	ldrb	r3, [r7, #39]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L111
	.loc 1 1430 7
	movs	r3, #1
	strb	r3, [r7, #39]
	.loc 1 1431 3
	ldr	r3, [r7, #32]
	adds	r3, r3, #1
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	cmp	r3, #512
	bcc	.L111
	.loc 1 1415 6
	b	.L112
.L106:
	.loc 1 1433 1
	mov	r0, r3
	adds	r7, r7, #40
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE21:
	.size	find_bitmap, .-find_bitmap
	.section	.text.change_bitmap,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	change_bitmap, %function
change_bitmap:
.LFB22:
	.loc 1 1446 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #32
	.cfi_def_cfa_offset 40
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	.loc 1 1452 7
	ldr	r3, [r7, #8]
	subs	r3, r3, #2
	str	r3, [r7, #8]
	.loc 1 1453 11
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #52]
	.loc 1 1453 32
	ldr	r3, [r7, #8]
	lsrs	r3, r3, #12
	.loc 1 1453 7
	add	r3, r3, r2
	str	r3, [r7, #20]
	.loc 1 1454 11
	ldr	r3, [r7, #8]
	lsrs	r3, r3, #3
	.loc 1 1454 4
	ubfx	r3, r3, #0, #9
	str	r3, [r7, #24]
	.loc 1 1455 18
	ldr	r3, [r7, #8]
	and	r3, r3, #7
	.loc 1 1455 9
	movs	r2, #1
	lsl	r3, r2, r3
	.loc 1 1455 5
	strb	r3, [r7, #31]
.L118:
	.loc 1 1457 7
	ldr	r3, [r7, #20]
	adds	r2, r3, #1
	str	r2, [r7, #20]
	mov	r1, r3
	ldr	r0, [r7, #12]
	bl	move_window
	mov	r3, r0
	.loc 1 1457 6
	cmp	r3, #0
	beq	.L114
	.loc 1 1457 48 discriminator 1
	movs	r3, #1
	b	.L115
.L114:
	.loc 1 1460 29
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #24]
	add	r3, r3, r2
	adds	r3, r3, #60
	ldrb	r2, [r3]	@ zero_extendqisi2
	.loc 1 1460 15
	ldrb	r3, [r7, #31]
	ands	r3, r3, r2
	uxtb	r3, r3
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	mov	r2, r3
	.loc 1 1460 8
	ldr	r3, [r7]
	cmp	r3, r2
	bne	.L116
	.loc 1 1460 53 discriminator 1
	movs	r3, #2
	b	.L115
.L116:
	.loc 1 1461 16
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #24]
	add	r3, r3, r2
	adds	r3, r3, #60
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldrb	r3, [r7, #31]
	eors	r3, r3, r2
	uxtb	r1, r3
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #24]
	add	r3, r3, r2
	adds	r3, r3, #60
	mov	r2, r1
	strb	r2, [r3]
	.loc 1 1462 15
	ldr	r3, [r7, #12]
	movs	r2, #1
	strb	r2, [r3, #4]
	.loc 1 1463 8
	ldr	r3, [r7, #4]
	subs	r3, r3, #1
	str	r3, [r7, #4]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L117
	.loc 1 1463 28 discriminator 1
	movs	r3, #0
	b	.L115
.L117:
	.loc 1 1464 16
	ldrb	r3, [r7, #31]
	lsls	r3, r3, #1
	strb	r3, [r7, #31]
	.loc 1 1464 4
	ldrb	r3, [r7, #31]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L114
	.loc 1 1465 7
	movs	r3, #1
	strb	r3, [r7, #31]
	.loc 1 1466 3
	ldr	r3, [r7, #24]
	adds	r3, r3, #1
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	cmp	r3, #512
	bcc	.L114
	.loc 1 1467 5
	movs	r3, #0
	str	r3, [r7, #24]
	.loc 1 1457 6
	b	.L118
.L115:
	.loc 1 1469 1
	mov	r0, r3
	adds	r7, r7, #32
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE22:
	.size	change_bitmap, .-change_bitmap
	.section	.text.fill_first_frag,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	fill_first_frag, %function
fill_first_frag:
.LFB23:
	.loc 1 1479 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #24
	.cfi_def_cfa_offset 32
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 1 1484 9
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #7]	@ zero_extendqisi2
	.loc 1 1484 5
	cmp	r3, #3
	bne	.L120
	.loc 1 1485 11
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	str	r3, [r7, #20]
	.loc 1 1485 28
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	str	r3, [r7, #16]
	.loc 1 1485 3
	b	.L121
.L124:
	.loc 1 1486 10
	ldr	r3, [r7, #4]
	ldr	r0, [r3]
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	mov	r2, r3
	ldr	r1, [r7, #20]
	bl	put_fat
	mov	r3, r0
	strb	r3, [r7, #15]
	.loc 1 1487 7
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L122
	.loc 1 1487 29 discriminator 1
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	b	.L123
.L122:
	.loc 1 1485 48 discriminator 2
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
	.loc 1 1485 53 discriminator 2
	ldr	r3, [r7, #16]
	subs	r3, r3, #1
	str	r3, [r7, #16]
.L121:
	.loc 1 1485 3 discriminator 1
	ldr	r3, [r7, #16]
	cmp	r3, #0
	bne	.L124
	.loc 1 1489 13
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #7]
.L120:
	.loc 1 1491 9
	movs	r3, #0
.L123:
	.loc 1 1492 1
	mov	r0, r3
	adds	r7, r7, #24
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE23:
	.size	fill_first_frag, .-fill_first_frag
	.section	.text.fill_last_frag,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	fill_last_frag, %function
fill_last_frag:
.LFB24:
	.loc 1 1504 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #24
	.cfi_def_cfa_offset 32
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	.loc 1 1508 8
	b	.L126
.L131:
	.loc 1 1509 9
	ldr	r3, [r7, #12]
	ldr	r0, [r3]
	.loc 1 1509 35
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #28]
	.loc 1 1509 30
	ldr	r2, [r7, #8]
	subs	r3, r2, r3
	.loc 1 1509 9
	adds	r1, r3, #1
	.loc 1 1509 53
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #28]
	.loc 1 1509 9
	cmp	r3, #1
	bls	.L127
	.loc 1 1509 78 discriminator 1
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #28]
	.loc 1 1509 73 discriminator 1
	ldr	r2, [r7, #8]
	subs	r3, r2, r3
	.loc 1 1509 9 discriminator 1
	adds	r3, r3, #2
	b	.L128
.L127:
	.loc 1 1509 9 is_stmt 0 discriminator 2
	ldr	r3, [r7, #4]
.L128:
	.loc 1 1509 9 discriminator 4
	mov	r2, r3
	bl	put_fat
	mov	r3, r0
	strb	r3, [r7, #23]
	.loc 1 1510 6 is_stmt 1 discriminator 4
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L129
	.loc 1 1510 28 discriminator 1
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	b	.L130
.L129:
	.loc 1 1511 6
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #28]
	.loc 1 1511 14
	subs	r2, r3, #1
	ldr	r3, [r7, #12]
	str	r2, [r3, #28]
.L126:
	.loc 1 1508 12
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #28]
	.loc 1 1508 8
	cmp	r3, #0
	bne	.L131
	.loc 1 1513 9
	movs	r3, #0
.L130:
	.loc 1 1514 1
	mov	r0, r3
	adds	r7, r7, #24
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE24:
	.size	fill_last_frag, .-fill_last_frag
	.section	.text.remove_chain,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	remove_chain, %function
remove_chain:
.LFB25:
	.loc 1 1530 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #40
	.cfi_def_cfa_offset 48
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	.loc 1 1531 10
	movs	r3, #0
	strb	r3, [r7, #31]
	.loc 1 1533 9
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	str	r3, [r7, #24]
	.loc 1 1535 8
	ldr	r3, [r7, #8]
	str	r3, [r7, #36]
	.loc 1 1535 20
	ldr	r3, [r7, #8]
	str	r3, [r7, #32]
	.loc 1 1541 5
	ldr	r3, [r7, #8]
	cmp	r3, #1
	bls	.L133
	.loc 1 1541 28 discriminator 2
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #28]
	.loc 1 1541 15 discriminator 2
	ldr	r2, [r7, #8]
	cmp	r2, r3
	bcc	.L134
.L133:
	.loc 1 1541 47 discriminator 3
	movs	r3, #2
	b	.L135
.L134:
	.loc 1 1544 5
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L147
	.loc 1 1544 29 discriminator 1
	ldr	r3, [r7, #24]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 1544 17 discriminator 1
	cmp	r3, #4
	bne	.L137
	.loc 1 1544 50 discriminator 2
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #7]	@ zero_extendqisi2
	.loc 1 1544 44 discriminator 2
	cmp	r3, #2
	beq	.L147
.L137:
	.loc 1 1545 9
	mov	r2, #-1
	ldr	r1, [r7, #4]
	ldr	r0, [r7, #24]
	bl	put_fat
	mov	r3, r0
	strb	r3, [r7, #31]
	.loc 1 1546 6
	ldrb	r3, [r7, #31]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L147
	.loc 1 1546 28 discriminator 1
	ldrb	r3, [r7, #31]	@ zero_extendqisi2
	b	.L135
.L147:
	.loc 1 1551 9
	ldr	r1, [r7, #8]
	ldr	r0, [r7, #12]
	bl	get_fat
	str	r0, [r7, #20]
	.loc 1 1552 6
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L157
	.loc 1 1553 6
	ldr	r3, [r7, #20]
	cmp	r3, #1
	bne	.L140
	.loc 1 1553 24 discriminator 1
	movs	r3, #2
	b	.L135
.L140:
	.loc 1 1554 6
	ldr	r3, [r7, #20]
	cmp	r3, #-1
	bne	.L141
	.loc 1 1554 33 discriminator 1
	movs	r3, #1
	b	.L135
.L141:
	.loc 1 1555 15
	ldr	r3, [r7, #24]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 1555 6
	cmp	r3, #4
	beq	.L142
	.loc 1 1556 10
	movs	r2, #0
	ldr	r1, [r7, #8]
	ldr	r0, [r7, #24]
	bl	put_fat
	mov	r3, r0
	strb	r3, [r7, #31]
	.loc 1 1557 7
	ldrb	r3, [r7, #31]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L142
	.loc 1 1557 29 discriminator 1
	ldrb	r3, [r7, #31]	@ zero_extendqisi2
	b	.L135
.L142:
	.loc 1 1559 9
	ldr	r3, [r7, #24]
	ldr	r2, [r3, #24]
	.loc 1 1559 25
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #28]
	.loc 1 1559 36
	subs	r3, r3, #2
	.loc 1 1559 6
	cmp	r2, r3
	bcs	.L143
	.loc 1 1560 6
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #24]
	.loc 1 1560 17
	adds	r2, r3, #1
	ldr	r3, [r7, #24]
	str	r2, [r3, #24]
	.loc 1 1561 17
	ldr	r3, [r7, #24]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	orr	r3, r3, #1
	uxtb	r2, r3
	ldr	r3, [r7, #24]
	strb	r2, [r3, #5]
.L143:
	.loc 1 1564 11
	ldr	r3, [r7, #32]
	adds	r3, r3, #1
	.loc 1 1564 6
	ldr	r2, [r7, #20]
	cmp	r2, r3
	bne	.L144
	.loc 1 1565 8
	ldr	r3, [r7, #20]
	str	r3, [r7, #32]
	b	.L145
.L144:
	.loc 1 1568 10
	ldr	r3, [r7, #24]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 1568 7
	cmp	r3, #4
	bne	.L146
	.loc 1 1569 38
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #36]
	subs	r3, r2, r3
	.loc 1 1569 11
	adds	r2, r3, #1
	movs	r3, #0
	ldr	r1, [r7, #36]
	ldr	r0, [r7, #24]
	bl	change_bitmap
	mov	r3, r0
	strb	r3, [r7, #31]
	.loc 1 1570 8
	ldrb	r3, [r7, #31]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L146
	.loc 1 1570 30 discriminator 1
	ldrb	r3, [r7, #31]	@ zero_extendqisi2
	b	.L135
.L146:
	.loc 1 1578 14
	ldr	r3, [r7, #20]
	str	r3, [r7, #32]
	.loc 1 1578 8
	ldr	r3, [r7, #32]
	str	r3, [r7, #36]
.L145:
	.loc 1 1581 8
	ldr	r3, [r7, #20]
	str	r3, [r7, #8]
	.loc 1 1582 20
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #28]
	.loc 1 1582 2
	ldr	r2, [r7, #8]
	cmp	r2, r3
	bcc	.L147
	b	.L139
.L157:
	.loc 1 1552 3
	nop
.L139:
	.loc 1 1586 8
	ldr	r3, [r7, #24]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 1586 5
	cmp	r3, #4
	bne	.L148
	.loc 1 1587 6
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L149
	.loc 1 1588 14
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #7]
	b	.L148
.L149:
	.loc 1 1590 11
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #7]	@ zero_extendqisi2
	.loc 1 1590 7
	cmp	r3, #0
	bne	.L150
	.loc 1 1591 10
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	str	r3, [r7, #8]
	.loc 1 1592 11
	b	.L151
.L156:
	.loc 1 1593 12
	ldr	r1, [r7, #8]
	ldr	r0, [r7, #12]
	bl	get_fat
	str	r0, [r7, #20]
	.loc 1 1594 9
	ldr	r3, [r7, #20]
	cmp	r3, #1
	bhi	.L152
	.loc 1 1594 26 discriminator 1
	movs	r3, #2
	b	.L135
.L152:
	.loc 1 1595 9
	ldr	r3, [r7, #20]
	cmp	r3, #-1
	bne	.L153
	.loc 1 1595 36 discriminator 1
	movs	r3, #1
	b	.L135
.L153:
	.loc 1 1596 22
	ldr	r3, [r7, #8]
	adds	r3, r3, #1
	.loc 1 1596 9
	ldr	r2, [r7, #20]
	cmp	r2, r3
	bne	.L158
	.loc 1 1597 10
	ldr	r3, [r7, #8]
	adds	r3, r3, #1
	str	r3, [r7, #8]
.L151:
	.loc 1 1592 11
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bne	.L156
	b	.L155
.L158:
	.loc 1 1596 6
	nop
.L155:
	.loc 1 1599 8
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bne	.L148
	.loc 1 1600 16
	ldr	r3, [r7, #12]
	movs	r2, #2
	strb	r2, [r3, #7]
	b	.L148
.L150:
	.loc 1 1603 12
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #7]	@ zero_extendqisi2
	.loc 1 1603 8
	cmp	r3, #3
	bne	.L148
	.loc 1 1603 39 discriminator 1
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	.loc 1 1603 24 discriminator 1
	ldr	r2, [r7, #4]
	cmp	r2, r3
	bcc	.L148
	.loc 1 1603 63 discriminator 2
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #8]
	.loc 1 1603 77 discriminator 2
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #24]
	.loc 1 1603 72 discriminator 2
	add	r3, r3, r2
	.loc 1 1603 48 discriminator 2
	ldr	r2, [r7, #4]
	cmp	r2, r3
	bhi	.L148
	.loc 1 1604 16
	ldr	r3, [r7, #12]
	movs	r2, #2
	strb	r2, [r3, #7]
.L148:
	.loc 1 1610 9
	movs	r3, #0
.L135:
	.loc 1 1611 1
	mov	r0, r3
	adds	r7, r7, #40
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE25:
	.size	remove_chain, .-remove_chain
	.section	.text.create_chain,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	create_chain, %function
create_chain:
.LFB26:
	.loc 1 1624 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #32
	.cfi_def_cfa_offset 40
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	str	r1, [r7]
	.loc 1 1627 9
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #16]
	.loc 1 1630 5
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L160
	.loc 1 1631 7
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #20]
	str	r3, [r7, #24]
	.loc 1 1632 6
	ldr	r3, [r7, #24]
	cmp	r3, #0
	beq	.L161
	.loc 1 1632 28 discriminator 2
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #28]
	.loc 1 1632 16 discriminator 2
	ldr	r2, [r7, #24]
	cmp	r2, r3
	bcc	.L162
.L161:
	.loc 1 1632 44 discriminator 3
	movs	r3, #1
	str	r3, [r7, #24]
	b	.L162
.L160:
	.loc 1 1635 8
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	bl	get_fat
	str	r0, [r7, #12]
	.loc 1 1636 6
	ldr	r3, [r7, #12]
	cmp	r3, #1
	bhi	.L163
	.loc 1 1636 22 discriminator 1
	movs	r3, #1
	b	.L164
.L163:
	.loc 1 1637 6
	ldr	r3, [r7, #12]
	cmp	r3, #-1
	bne	.L165
	.loc 1 1637 32 discriminator 1
	ldr	r3, [r7, #12]
	b	.L164
.L165:
	.loc 1 1638 14
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #28]
	.loc 1 1638 6
	ldr	r2, [r7, #12]
	cmp	r2, r3
	bcs	.L166
	.loc 1 1638 33 discriminator 1
	ldr	r3, [r7, #12]
	b	.L164
.L166:
	.loc 1 1639 7
	ldr	r3, [r7]
	str	r3, [r7, #24]
.L162:
	.loc 1 1641 8
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #24]
	.loc 1 1641 5
	cmp	r3, #0
	bne	.L167
	.loc 1 1641 33 discriminator 1
	movs	r3, #0
	b	.L164
.L167:
	.loc 1 1644 8
	ldr	r3, [r7, #16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 1644 5
	cmp	r3, #4
	bne	.L168
	.loc 1 1645 9
	movs	r2, #1
	ldr	r1, [r7, #24]
	ldr	r0, [r7, #16]
	bl	find_bitmap
	str	r0, [r7, #28]
	.loc 1 1646 6
	ldr	r3, [r7, #28]
	cmp	r3, #0
	beq	.L169
	.loc 1 1646 16 discriminator 2
	ldr	r3, [r7, #28]
	cmp	r3, #-1
	bne	.L170
.L169:
	.loc 1 1646 45 discriminator 3
	ldr	r3, [r7, #28]
	b	.L164
.L170:
	.loc 1 1647 9
	movs	r3, #1
	movs	r2, #1
	ldr	r1, [r7, #28]
	ldr	r0, [r7, #16]
	bl	change_bitmap
	mov	r3, r0
	strb	r3, [r7, #23]
	.loc 1 1648 6
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	cmp	r3, #2
	bne	.L171
	.loc 1 1648 33 discriminator 1
	movs	r3, #1
	b	.L164
.L171:
	.loc 1 1649 6
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L172
	.loc 1 1649 34 discriminator 1
	mov	r3, #-1
	b	.L164
.L172:
	.loc 1 1650 6
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L173
	.loc 1 1651 14
	ldr	r3, [r7, #4]
	movs	r2, #2
	strb	r2, [r3, #7]
	b	.L174
.L173:
	.loc 1 1653 11
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #7]	@ zero_extendqisi2
	.loc 1 1653 7
	cmp	r3, #2
	bne	.L174
	.loc 1 1653 37 discriminator 1
	ldr	r3, [r7, #24]
	adds	r3, r3, #1
	.loc 1 1653 23 discriminator 1
	ldr	r2, [r7, #28]
	cmp	r2, r3
	beq	.L174
	.loc 1 1654 28
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	.loc 1 1654 23
	ldr	r2, [r7, #24]
	subs	r2, r2, r3
	.loc 1 1654 17
	ldr	r3, [r7, #4]
	str	r2, [r3, #24]
	.loc 1 1655 15
	ldr	r3, [r7, #4]
	movs	r2, #3
	strb	r2, [r3, #7]
.L174:
	.loc 1 1658 10
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #7]	@ zero_extendqisi2
	.loc 1 1658 6
	cmp	r3, #2
	beq	.L175
	.loc 1 1659 20
	ldr	r3, [r7]
	adds	r3, r3, #1
	.loc 1 1659 7
	ldr	r2, [r7, #28]
	cmp	r2, r3
	bne	.L176
	.loc 1 1660 22
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	.loc 1 1660 49
	cmp	r3, #0
	beq	.L177
	.loc 1 1660 36 discriminator 1
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	.loc 1 1660 49 discriminator 1
	adds	r3, r3, #1
	b	.L178
.L177:
	.loc 1 1660 49 is_stmt 0 discriminator 2
	movs	r3, #2
.L178:
	.loc 1 1660 17 is_stmt 1 discriminator 4
	ldr	r2, [r7, #4]
	str	r3, [r2, #28]
	b	.L175
.L176:
	.loc 1 1662 12
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	.loc 1 1662 8
	cmp	r3, #0
	bne	.L179
	.loc 1 1662 39 discriminator 1
	ldr	r3, [r7, #4]
	movs	r2, #1
	str	r2, [r3, #28]
.L179:
	.loc 1 1663 11
	ldr	r2, [r7, #28]
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	bl	fill_last_frag
	mov	r3, r0
	strb	r3, [r7, #23]
	.loc 1 1664 8
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L175
	.loc 1 1664 35 discriminator 1
	ldr	r3, [r7, #4]
	movs	r2, #1
	str	r2, [r3, #28]
	b	.L175
.L168:
	.loc 1 1670 7
	movs	r3, #0
	str	r3, [r7, #28]
	.loc 1 1671 6
	ldr	r2, [r7, #24]
	ldr	r3, [r7]
	cmp	r2, r3
	bne	.L180
	.loc 1 1672 8
	ldr	r3, [r7, #24]
	adds	r3, r3, #1
	str	r3, [r7, #28]
	.loc 1 1673 17
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #28]
	.loc 1 1673 7
	ldr	r2, [r7, #28]
	cmp	r2, r3
	bcc	.L181
	.loc 1 1673 33 discriminator 1
	movs	r3, #2
	str	r3, [r7, #28]
.L181:
	.loc 1 1674 9
	ldr	r1, [r7, #28]
	ldr	r0, [r7, #4]
	bl	get_fat
	str	r0, [r7, #12]
	.loc 1 1675 7
	ldr	r3, [r7, #12]
	cmp	r3, #1
	beq	.L182
	.loc 1 1675 16 discriminator 2
	ldr	r3, [r7, #12]
	cmp	r3, #-1
	bne	.L183
.L182:
	.loc 1 1675 44 discriminator 3
	ldr	r3, [r7, #12]
	b	.L164
.L183:
	.loc 1 1676 7
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L180
	.loc 1 1677 8
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #20]
	str	r3, [r7, #12]
	.loc 1 1678 8
	ldr	r3, [r7, #12]
	cmp	r3, #1
	bls	.L184
	.loc 1 1678 27 discriminator 1
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #28]
	.loc 1 1678 17 discriminator 1
	ldr	r2, [r7, #12]
	cmp	r2, r3
	bcs	.L184
	.loc 1 1678 43 discriminator 2
	ldr	r3, [r7, #12]
	str	r3, [r7, #24]
.L184:
	.loc 1 1679 9
	movs	r3, #0
	str	r3, [r7, #28]
.L180:
	.loc 1 1682 6
	ldr	r3, [r7, #28]
	cmp	r3, #0
	bne	.L185
	.loc 1 1683 8
	ldr	r3, [r7, #24]
	str	r3, [r7, #28]
.L191:
	.loc 1 1685 8
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
	.loc 1 1686 18
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #28]
	.loc 1 1686 8
	ldr	r2, [r7, #28]
	cmp	r2, r3
	bcc	.L186
	.loc 1 1687 10
	movs	r3, #2
	str	r3, [r7, #28]
	.loc 1 1688 9
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #24]
	cmp	r2, r3
	bls	.L186
	.loc 1 1688 28 discriminator 1
	movs	r3, #0
	b	.L164
.L186:
	.loc 1 1690 10
	ldr	r1, [r7, #28]
	ldr	r0, [r7, #4]
	bl	get_fat
	str	r0, [r7, #12]
	.loc 1 1691 8
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L197
	.loc 1 1692 8
	ldr	r3, [r7, #12]
	cmp	r3, #1
	beq	.L188
	.loc 1 1692 17 discriminator 2
	ldr	r3, [r7, #12]
	cmp	r3, #-1
	bne	.L189
.L188:
	.loc 1 1692 45 discriminator 3
	ldr	r3, [r7, #12]
	b	.L164
.L189:
	.loc 1 1693 8
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #24]
	cmp	r2, r3
	bne	.L191
	.loc 1 1693 28 discriminator 1
	movs	r3, #0
	b	.L164
.L197:
	.loc 1 1691 5
	nop
.L185:
	.loc 1 1696 9
	mov	r2, #-1
	ldr	r1, [r7, #28]
	ldr	r0, [r7, #16]
	bl	put_fat
	mov	r3, r0
	strb	r3, [r7, #23]
	.loc 1 1697 6
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L175
	.loc 1 1697 20 discriminator 1
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L175
	.loc 1 1698 10
	ldr	r2, [r7, #28]
	ldr	r1, [r7]
	ldr	r0, [r7, #16]
	bl	put_fat
	mov	r3, r0
	strb	r3, [r7, #23]
.L175:
	.loc 1 1702 5
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L192
	.loc 1 1703 17
	ldr	r3, [r7, #16]
	ldr	r2, [r7, #28]
	str	r2, [r3, #20]
	.loc 1 1704 9
	ldr	r3, [r7, #16]
	ldr	r2, [r3, #24]
	.loc 1 1704 26
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #28]
	.loc 1 1704 37
	subs	r3, r3, #2
	.loc 1 1704 6
	cmp	r2, r3
	bhi	.L193
	.loc 1 1704 44 discriminator 1
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #24]
	.loc 1 1704 55 discriminator 1
	subs	r2, r3, #1
	ldr	r3, [r7, #16]
	str	r2, [r3, #24]
.L193:
	.loc 1 1705 16
	ldr	r3, [r7, #16]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	orr	r3, r3, #1
	uxtb	r2, r3
	ldr	r3, [r7, #16]
	strb	r2, [r3, #5]
	b	.L194
.L192:
	.loc 1 1707 43
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L195
	.loc 1 1707 43 is_stmt 0 discriminator 1
	mov	r3, #-1
	b	.L196
.L195:
	.loc 1 1707 43 discriminator 2
	movs	r3, #1
.L196:
	.loc 1 1707 7 is_stmt 1 discriminator 4
	str	r3, [r7, #28]
.L194:
	.loc 1 1710 9
	ldr	r3, [r7, #28]
.L164:
	.loc 1 1711 1
	mov	r0, r3
	adds	r7, r7, #32
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE26:
	.size	create_chain, .-create_chain
	.section	.text.dir_clear,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	dir_clear, %function
dir_clear:
.LFB27:
	.loc 1 1758 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #24
	.cfi_def_cfa_offset 32
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	str	r1, [r7]
	.loc 1 1764 6
	ldr	r0, [r7, #4]
	bl	sync_window
	mov	r3, r0
	.loc 1 1764 5
	cmp	r3, #0
	beq	.L199
	.loc 1 1764 39 discriminator 1
	movs	r3, #1
	b	.L200
.L199:
	.loc 1 1765 9
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	bl	clst2sect
	str	r0, [r7, #16]
	.loc 1 1766 14
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #16]
	str	r2, [r3, #56]
	.loc 1 1770 14
	ldr	r3, [r7, #4]
	adds	r3, r3, #60
	.loc 1 1770 2
	movs	r2, #128
	movs	r1, #0
	mov	r0, r3
	bl	memset_32
	.loc 1 1783 8
	ldr	r3, [r7, #4]
	adds	r3, r3, #60
	str	r3, [r7, #12]
	.loc 1 1783 23
	movs	r3, #1
	str	r3, [r7, #8]
	.loc 1 1784 10
	movs	r3, #0
	str	r3, [r7, #20]
	.loc 1 1784 3
	b	.L201
.L203:
	.loc 1 1784 87 discriminator 4
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #8]
	add	r3, r3, r2
	str	r3, [r7, #20]
.L201:
	.loc 1 1784 21 discriminator 1
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #10]
	mov	r2, r3
	.loc 1 1784 3 discriminator 1
	ldr	r3, [r7, #20]
	cmp	r3, r2
	bcs	.L202
	.loc 1 1784 32 discriminator 3
	ldr	r3, [r7, #4]
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #20]
	add	r2, r2, r3
	ldr	r3, [r7, #8]
	ldr	r1, [r7, #12]
	bl	disk_write
	mov	r3, r0
	.loc 1 1784 29 discriminator 3
	cmp	r3, #0
	beq	.L203
.L202:
	.loc 1 1786 17
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #10]
	mov	r2, r3
	.loc 1 1786 34
	ldr	r3, [r7, #20]
	cmp	r3, r2
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
.L200:
	.loc 1 1787 1
	mov	r0, r3
	adds	r7, r7, #24
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE27:
	.size	dir_clear, .-dir_clear
	.section	.text.dir_sdi,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	dir_sdi, %function
dir_sdi:
.LFB28:
	.loc 1 1801 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #24
	.cfi_def_cfa_offset 32
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	str	r1, [r7]
	.loc 1 1803 9
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #16]
	.loc 1 1806 29
	ldr	r3, [r7, #16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 1806 13
	cmp	r3, #4
	bne	.L205
	.loc 1 1806 13 is_stmt 0 discriminator 1
	mov	r2, #268435456
	b	.L206
.L205:
	.loc 1 1806 13 discriminator 2
	mov	r2, #2097152
.L206:
	.loc 1 1806 5 is_stmt 1 discriminator 4
	ldr	r3, [r7]
	cmp	r2, r3
	bls	.L207
	.loc 1 1806 77 discriminator 5
	ldr	r3, [r7]
	and	r3, r3, #31
	.loc 1 1806 70 discriminator 5
	cmp	r3, #0
	beq	.L208
.L207:
	.loc 1 1807 10
	movs	r3, #2
	b	.L209
.L208:
	.loc 1 1809 11
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	str	r2, [r3, #48]
	.loc 1 1810 7
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	str	r3, [r7, #20]
	.loc 1 1811 5
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L210
	.loc 1 1811 21 discriminator 1
	ldr	r3, [r7, #16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 1811 16 discriminator 1
	cmp	r3, #2
	bls	.L210
	.loc 1 1812 8
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #44]
	str	r3, [r7, #20]
	.loc 1 1813 23
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #7]
.L210:
	.loc 1 1816 5
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L211
	.loc 1 1817 11
	ldr	r3, [r7]
	lsrs	r3, r3, #5
	.loc 1 1817 21
	ldr	r2, [r7, #16]
	ldrh	r2, [r2, #8]
	.loc 1 1817 6
	cmp	r3, r2
	bcc	.L212
	.loc 1 1817 41 discriminator 1
	movs	r3, #2
	b	.L209
.L212:
	.loc 1 1818 16
	ldr	r3, [r7, #16]
	ldr	r2, [r3, #44]
	.loc 1 1818 12
	ldr	r3, [r7, #4]
	str	r2, [r3, #56]
	b	.L213
.L211:
	.loc 1 1821 18
	ldr	r3, [r7, #16]
	ldrh	r3, [r3, #10]
	.loc 1 1821 7
	lsls	r3, r3, #9
	str	r3, [r7, #12]
	.loc 1 1822 9
	b	.L214
.L218:
	.loc 1 1823 11
	ldr	r3, [r7, #4]
	ldr	r1, [r7, #20]
	mov	r0, r3
	bl	get_fat
	str	r0, [r7, #20]
	.loc 1 1824 7
	ldr	r3, [r7, #20]
	cmp	r3, #-1
	bne	.L215
	.loc 1 1824 35 discriminator 1
	movs	r3, #1
	b	.L209
.L215:
	.loc 1 1825 7
	ldr	r3, [r7, #20]
	cmp	r3, #1
	bls	.L216
	.loc 1 1825 30 discriminator 2
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #28]
	.loc 1 1825 17 discriminator 2
	ldr	r2, [r7, #20]
	cmp	r2, r3
	bcc	.L217
.L216:
	.loc 1 1825 49 discriminator 3
	movs	r3, #2
	b	.L209
.L217:
	.loc 1 1826 8
	ldr	r2, [r7]
	ldr	r3, [r7, #12]
	subs	r3, r2, r3
	str	r3, [r7]
.L214:
	.loc 1 1822 9
	ldr	r2, [r7]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bcs	.L218
	.loc 1 1828 14
	ldr	r1, [r7, #20]
	ldr	r0, [r7, #16]
	bl	clst2sect
	mov	r2, r0
	.loc 1 1828 12
	ldr	r3, [r7, #4]
	str	r2, [r3, #56]
.L213:
	.loc 1 1830 12
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #20]
	str	r2, [r3, #52]
	.loc 1 1831 8
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #56]
	.loc 1 1831 5
	cmp	r3, #0
	bne	.L219
	.loc 1 1831 28 discriminator 1
	movs	r3, #2
	b	.L209
.L219:
	.loc 1 1832 11
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #56]
	.loc 1 1832 18
	ldr	r3, [r7]
	lsrs	r3, r3, #9
	.loc 1 1832 11
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #56]
	.loc 1 1833 12
	ldr	r3, [r7, #16]
	add	r2, r3, #60
	.loc 1 1833 27
	ldr	r3, [r7]
	ubfx	r3, r3, #0, #9
	.loc 1 1833 20
	add	r2, r2, r3
	.loc 1 1833 10
	ldr	r3, [r7, #4]
	str	r2, [r3, #60]
	.loc 1 1835 9
	movs	r3, #0
.L209:
	.loc 1 1836 1
	mov	r0, r3
	adds	r7, r7, #24
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE28:
	.size	dir_sdi, .-dir_sdi
	.section	.text.dir_next,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	dir_next, %function
dir_next:
.LFB29:
	.loc 1 1849 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #24
	.cfi_def_cfa_offset 32
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	str	r1, [r7]
	.loc 1 1851 9
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #16]
	.loc 1 1854 10
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #48]
	.loc 1 1854 6
	adds	r3, r3, #32
	str	r3, [r7, #12]
	.loc 1 1855 29
	ldr	r3, [r7, #16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 1855 13
	cmp	r3, #4
	bne	.L221
	.loc 1 1855 13 is_stmt 0 discriminator 1
	mov	r2, #268435456
	b	.L222
.L221:
	.loc 1 1855 13 discriminator 2
	mov	r2, #2097152
.L222:
	.loc 1 1855 5 is_stmt 1 discriminator 4
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bhi	.L223
	.loc 1 1855 80 discriminator 5
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #56]
.L223:
	.loc 1 1856 8
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #56]
	.loc 1 1856 5
	cmp	r3, #0
	bne	.L224
	.loc 1 1856 28 discriminator 1
	movs	r3, #4
	b	.L225
.L224:
	.loc 1 1858 10
	ldr	r3, [r7, #12]
	ubfx	r3, r3, #0, #9
	.loc 1 1858 5
	cmp	r3, #0
	bne	.L226
	.loc 1 1859 5
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #56]
	.loc 1 1859 11
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #56]
	.loc 1 1861 9
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #52]
	.loc 1 1861 6
	cmp	r3, #0
	bne	.L227
	.loc 1 1862 12
	ldr	r3, [r7, #12]
	lsrs	r3, r3, #5
	.loc 1 1862 22
	ldr	r2, [r7, #16]
	ldrh	r2, [r2, #8]
	.loc 1 1862 7
	cmp	r3, r2
	bcc	.L226
	.loc 1 1863 14
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #56]
	.loc 1 1863 26
	movs	r3, #4
	b	.L225
.L227:
	.loc 1 1867 13
	ldr	r3, [r7, #12]
	lsrs	r3, r3, #9
	.loc 1 1867 32
	ldr	r2, [r7, #16]
	ldrh	r2, [r2, #10]
	.loc 1 1867 40
	subs	r2, r2, #1
	.loc 1 1867 27
	ands	r3, r3, r2
	.loc 1 1867 7
	cmp	r3, #0
	bne	.L226
	.loc 1 1868 12
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #52]
	mov	r1, r3
	mov	r0, r2
	bl	get_fat
	str	r0, [r7, #20]
	.loc 1 1869 8
	ldr	r3, [r7, #20]
	cmp	r3, #1
	bhi	.L228
	.loc 1 1869 27 discriminator 1
	movs	r3, #2
	b	.L225
.L228:
	.loc 1 1870 8
	ldr	r3, [r7, #20]
	cmp	r3, #-1
	bne	.L229
	.loc 1 1870 36 discriminator 1
	movs	r3, #1
	b	.L225
.L229:
	.loc 1 1871 19
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #28]
	.loc 1 1871 8
	ldr	r2, [r7, #20]
	cmp	r2, r3
	bcc	.L230
	.loc 1 1873 9
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L231
	.loc 1 1874 16
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #56]
	.loc 1 1874 28
	movs	r3, #4
	b	.L225
.L231:
	.loc 1 1876 13
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #52]
	mov	r1, r3
	mov	r0, r2
	bl	create_chain
	str	r0, [r7, #20]
	.loc 1 1877 9
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L232
	.loc 1 1877 28 discriminator 1
	movs	r3, #7
	b	.L225
.L232:
	.loc 1 1878 9
	ldr	r3, [r7, #20]
	cmp	r3, #1
	bne	.L233
	.loc 1 1878 28 discriminator 1
	movs	r3, #2
	b	.L225
.L233:
	.loc 1 1879 9
	ldr	r3, [r7, #20]
	cmp	r3, #-1
	bne	.L234
	.loc 1 1879 37 discriminator 1
	movs	r3, #1
	b	.L225
.L234:
	.loc 1 1880 10
	ldr	r1, [r7, #20]
	ldr	r0, [r7, #16]
	bl	dir_clear
	mov	r3, r0
	.loc 1 1880 9
	cmp	r3, #0
	beq	.L235
	.loc 1 1880 47 discriminator 1
	movs	r3, #1
	b	.L225
.L235:
	.loc 1 1881 26 discriminator 1
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #7]	@ zero_extendqisi2
	orr	r3, r3, #4
	uxtb	r2, r3
	ldr	r3, [r7, #4]
	strb	r2, [r3, #7]
.L230:
	.loc 1 1887 15
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #20]
	str	r2, [r3, #52]
	.loc 1 1888 16
	ldr	r1, [r7, #20]
	ldr	r0, [r7, #16]
	bl	clst2sect
	mov	r2, r0
	.loc 1 1888 14
	ldr	r3, [r7, #4]
	str	r2, [r3, #56]
.L226:
	.loc 1 1892 11
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #12]
	str	r2, [r3, #48]
	.loc 1 1893 12
	ldr	r3, [r7, #16]
	add	r2, r3, #60
	.loc 1 1893 26
	ldr	r3, [r7, #12]
	ubfx	r3, r3, #0, #9
	.loc 1 1893 20
	add	r2, r2, r3
	.loc 1 1893 10
	ldr	r3, [r7, #4]
	str	r2, [r3, #60]
	.loc 1 1895 9
	movs	r3, #0
.L225:
	.loc 1 1896 1
	mov	r0, r3
	adds	r7, r7, #24
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE29:
	.size	dir_next, .-dir_next
	.section	.text.dir_alloc,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	dir_alloc, %function
dir_alloc:
.LFB30:
	.loc 1 1910 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #24
	.cfi_def_cfa_offset 32
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	str	r1, [r7]
	.loc 1 1913 9
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #12]
	.loc 1 1916 8
	movs	r1, #0
	ldr	r0, [r7, #4]
	bl	dir_sdi
	mov	r3, r0
	strb	r3, [r7, #23]
	.loc 1 1917 5
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L237
	.loc 1 1918 5
	movs	r3, #0
	str	r3, [r7, #16]
.L246:
	.loc 1 1920 10
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #56]
	mov	r1, r3
	ldr	r0, [r7, #12]
	bl	move_window
	mov	r3, r0
	strb	r3, [r7, #23]
	.loc 1 1921 7
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L249
	.loc 1 1923 11
	ldr	r3, [r7, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 1923 8
	cmp	r3, #4
	bne	.L239
	.loc 1 1923 38 discriminator 1
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #60]
	.loc 1 1923 43 discriminator 1
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 1923 29 discriminator 1
	sxtb	r3, r3
	.loc 1 1923 8 discriminator 1
	mvns	r3, r3
	uxtb	r3, r3
	lsrs	r3, r3, #7
	uxtb	r3, r3
	b	.L240
.L239:
	.loc 1 1923 71 discriminator 2
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #60]
	.loc 1 1923 76 discriminator 2
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 1923 63 discriminator 2
	cmp	r3, #229
	beq	.L241
	.loc 1 1923 93 discriminator 5
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #60]
	.loc 1 1923 98 discriminator 5
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 1923 63 discriminator 5
	cmp	r3, #0
	bne	.L242
.L241:
	.loc 1 1923 63 is_stmt 0 discriminator 6
	movs	r3, #1
	b	.L243
.L242:
	.loc 1 1923 63 discriminator 7
	movs	r3, #0
.L243:
	.loc 1 1923 8 is_stmt 1 discriminator 9
	and	r3, r3, #1
	uxtb	r3, r3
.L240:
	.loc 1 1923 7 discriminator 10
	cmp	r3, #0
	beq	.L244
	.loc 1 1927 8
	ldr	r3, [r7, #16]
	adds	r3, r3, #1
	str	r3, [r7, #16]
	ldr	r2, [r7, #16]
	ldr	r3, [r7]
	cmp	r2, r3
	bne	.L245
	.loc 1 1927 5
	b	.L237
.L244:
	.loc 1 1929 7
	movs	r3, #0
	str	r3, [r7, #16]
.L245:
	.loc 1 1931 10
	movs	r1, #1
	ldr	r0, [r7, #4]
	bl	dir_next
	mov	r3, r0
	strb	r3, [r7, #23]
	.loc 1 1932 3
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L246
	b	.L237
.L249:
	.loc 1 1921 4
	nop
.L237:
	.loc 1 1935 5
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	cmp	r3, #4
	bne	.L247
	.loc 1 1935 29 discriminator 1
	movs	r3, #7
	strb	r3, [r7, #23]
.L247:
	.loc 1 1936 9
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	.loc 1 1937 1
	mov	r0, r3
	adds	r7, r7, #24
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE30:
	.size	dir_alloc, .-dir_alloc
	.section	.text.ld_clust,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	ld_clust, %function
ld_clust:
.LFB31:
	.loc 1 1952 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #16
	.cfi_def_cfa_offset 24
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	str	r1, [r7]
	.loc 1 1955 7
	ldr	r3, [r7]
	adds	r3, r3, #26
	mov	r0, r3
	bl	ld_word
	mov	r3, r0
	.loc 1 1955 5
	str	r3, [r7, #12]
	.loc 1 1956 8
	ldr	r3, [r7, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 1956 5
	cmp	r3, #3
	bne	.L251
	.loc 1 1957 16
	ldr	r3, [r7]
	adds	r3, r3, #20
	mov	r0, r3
	bl	ld_word
	mov	r3, r0
	.loc 1 1957 34
	lsls	r3, r3, #16
	.loc 1 1957 6
	ldr	r2, [r7, #12]
	orrs	r3, r3, r2
	str	r3, [r7, #12]
.L251:
	.loc 1 1960 9
	ldr	r3, [r7, #12]
	.loc 1 1961 1
	mov	r0, r3
	adds	r7, r7, #16
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE31:
	.size	ld_clust, .-ld_clust
	.section	.text.st_clust,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	st_clust, %function
st_clust:
.LFB32:
	.loc 1 1970 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #16
	.cfi_def_cfa_offset 24
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	.loc 1 1971 2
	ldr	r3, [r7, #8]
	adds	r3, r3, #26
	ldr	r2, [r7, #4]
	uxth	r2, r2
	mov	r1, r2
	mov	r0, r3
	bl	st_word
	.loc 1 1972 8
	ldr	r3, [r7, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 1972 5
	cmp	r3, #3
	bne	.L255
	.loc 1 1973 3
	ldr	r3, [r7, #8]
	add	r2, r3, #20
	.loc 1 1973 31
	ldr	r3, [r7, #4]
	lsrs	r3, r3, #16
	.loc 1 1973 3
	uxth	r3, r3
	mov	r1, r3
	mov	r0, r2
	bl	st_word
.L255:
	.loc 1 1975 1
	nop
	adds	r7, r7, #16
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE32:
	.size	st_clust, .-st_clust
	.section	.text.cmp_lfn,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	cmp_lfn, %function
cmp_lfn:
.LFB33:
	.loc 1 1989 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #28
	.cfi_def_cfa_offset 40
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	str	r1, [r7]
	.loc 1 1994 18
	ldr	r3, [r7]
	adds	r3, r3, #26
	.loc 1 1994 6
	mov	r0, r3
	bl	ld_word
	mov	r3, r0
	.loc 1 1994 5
	cmp	r3, #0
	beq	.L257
	.loc 1 1994 37 discriminator 1
	movs	r3, #0
	b	.L258
.L257:
	.loc 1 1996 11
	ldr	r3, [r7]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 1996 15
	and	r3, r3, #63
	.loc 1 1996 23
	subs	r2, r3, #1
	.loc 1 1996 28
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	.loc 1 1996 4
	str	r3, [r7, #20]
	.loc 1 1998 10
	movs	r3, #1
	strh	r3, [r7, #14]	@ movhi
	.loc 1 1998 17
	movs	r3, #0
	str	r3, [r7, #16]
	.loc 1 1998 2
	b	.L259
.L264:
	.loc 1 1999 28
	ldr	r2, .L266
	ldr	r3, [r7, #16]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	.loc 1 1999 20
	ldr	r3, [r7]
	add	r3, r3, r2
	.loc 1 1999 8
	mov	r0, r3
	bl	ld_word
	mov	r3, r0
	strh	r3, [r7, #12]	@ movhi
	.loc 1 2000 6
	ldrh	r3, [r7, #14]
	cmp	r3, #0
	beq	.L260
	.loc 1 2001 7
	ldr	r3, [r7, #20]
	cmp	r3, #255
	bhi	.L261
	.loc 1 2001 24 discriminator 1
	ldrh	r3, [r7, #12]
	mov	r0, r3
	bl	ff_wtoupper
	mov	r4, r0
	.loc 1 2001 63 discriminator 1
	ldr	r3, [r7, #20]
	adds	r2, r3, #1
	str	r2, [r7, #20]
	.loc 1 2001 61 discriminator 1
	lsls	r3, r3, #1
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	ldrh	r3, [r3]
	.loc 1 2001 43 discriminator 1
	mov	r0, r3
	bl	ff_wtoupper
	mov	r3, r0
	.loc 1 2001 21 discriminator 1
	cmp	r4, r3
	beq	.L262
.L261:
	.loc 1 2002 12
	movs	r3, #0
	b	.L258
.L262:
	.loc 1 2004 7
	ldrh	r3, [r7, #12]	@ movhi
	strh	r3, [r7, #14]	@ movhi
	b	.L263
.L260:
	.loc 1 2006 7
	ldrh	r3, [r7, #12]
	movw	r2, #65535
	cmp	r3, r2
	beq	.L263
	.loc 1 2006 29 discriminator 1
	movs	r3, #0
	b	.L258
.L263:
	.loc 1 1998 31 discriminator 2
	ldr	r3, [r7, #16]
	adds	r3, r3, #1
	str	r3, [r7, #16]
.L259:
	.loc 1 1998 2 discriminator 1
	ldr	r3, [r7, #16]
	cmp	r3, #12
	bls	.L264
	.loc 1 2010 10
	ldr	r3, [r7]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 2010 14
	and	r3, r3, #64
	.loc 1 2010 5
	cmp	r3, #0
	beq	.L265
	.loc 1 2010 22 discriminator 1
	ldrh	r3, [r7, #14]
	cmp	r3, #0
	beq	.L265
	.loc 1 2010 37 discriminator 2
	ldr	r3, [r7, #20]
	lsls	r3, r3, #1
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	ldrh	r3, [r3]
	.loc 1 2010 28 discriminator 2
	cmp	r3, #0
	beq	.L265
	.loc 1 2010 49 discriminator 3
	movs	r3, #0
	b	.L258
.L265:
	.loc 1 2012 9
	movs	r3, #1
.L258:
	.loc 1 2013 1
	mov	r0, r3
	adds	r7, r7, #28
	.cfi_def_cfa_offset 12
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r4, r7, pc}
.L267:
	.align	2
.L266:
	.word	LfnOfs
	.cfi_endproc
.LFE33:
	.size	cmp_lfn, .-cmp_lfn
	.section	.text.pick_lfn,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	pick_lfn, %function
pick_lfn:
.LFB34:
	.loc 1 2025 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #24
	.cfi_def_cfa_offset 32
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	str	r1, [r7]
	.loc 1 2030 18
	ldr	r3, [r7]
	adds	r3, r3, #26
	.loc 1 2030 6
	mov	r0, r3
	bl	ld_word
	mov	r3, r0
	.loc 1 2030 5
	cmp	r3, #0
	beq	.L269
	.loc 1 2030 37 discriminator 1
	movs	r3, #0
	b	.L270
.L269:
	.loc 1 2032 11
	ldr	r3, [r7]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 2032 15
	bic	r3, r3, #64
	.loc 1 2032 24
	subs	r2, r3, #1
	.loc 1 2032 29
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	.loc 1 2032 4
	str	r3, [r7, #20]
	.loc 1 2034 10
	movs	r3, #1
	strh	r3, [r7, #14]	@ movhi
	.loc 1 2034 17
	movs	r3, #0
	str	r3, [r7, #16]
	.loc 1 2034 2
	b	.L271
.L275:
	.loc 1 2035 28
	ldr	r2, .L278
	ldr	r3, [r7, #16]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	.loc 1 2035 20
	ldr	r3, [r7]
	add	r3, r3, r2
	.loc 1 2035 8
	mov	r0, r3
	bl	ld_word
	mov	r3, r0
	strh	r3, [r7, #12]	@ movhi
	.loc 1 2036 6
	ldrh	r3, [r7, #14]
	cmp	r3, #0
	beq	.L272
	.loc 1 2037 7
	ldr	r3, [r7, #20]
	cmp	r3, #255
	bls	.L273
	.loc 1 2037 29 discriminator 1
	movs	r3, #0
	b	.L270
.L273:
	.loc 1 2038 21
	ldrh	r3, [r7, #12]	@ movhi
	strh	r3, [r7, #14]	@ movhi
	.loc 1 2038 12
	ldr	r3, [r7, #20]
	adds	r2, r3, #1
	str	r2, [r7, #20]
	.loc 1 2038 10
	lsls	r3, r3, #1
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	.loc 1 2038 16
	ldrh	r2, [r7, #14]	@ movhi
	strh	r2, [r3]	@ movhi
	b	.L274
.L272:
	.loc 1 2040 7
	ldrh	r3, [r7, #12]
	movw	r2, #65535
	cmp	r3, r2
	beq	.L274
	.loc 1 2040 29 discriminator 1
	movs	r3, #0
	b	.L270
.L274:
	.loc 1 2034 31 discriminator 2
	ldr	r3, [r7, #16]
	adds	r3, r3, #1
	str	r3, [r7, #16]
.L271:
	.loc 1 2034 2 discriminator 1
	ldr	r3, [r7, #16]
	cmp	r3, #12
	bls	.L275
	.loc 1 2044 9
	ldr	r3, [r7]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 2044 13
	and	r3, r3, #64
	.loc 1 2044 5
	cmp	r3, #0
	beq	.L276
	.loc 1 2044 20 discriminator 1
	ldrh	r3, [r7, #14]
	cmp	r3, #0
	beq	.L276
	.loc 1 2045 6
	ldr	r3, [r7, #20]
	cmp	r3, #255
	bls	.L277
	.loc 1 2045 28 discriminator 1
	movs	r3, #0
	b	.L270
.L277:
	.loc 1 2046 9
	ldr	r3, [r7, #20]
	lsls	r3, r3, #1
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	.loc 1 2046 13
	movs	r2, #0
	strh	r2, [r3]	@ movhi
.L276:
	.loc 1 2049 9
	movs	r3, #1
.L270:
	.loc 1 2050 1
	mov	r0, r3
	adds	r7, r7, #24
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
.L279:
	.align	2
.L278:
	.word	LfnOfs
	.cfi_endproc
.LFE34:
	.size	pick_lfn, .-pick_lfn
	.section	.text.put_lfn,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	put_lfn, %function
put_lfn:
.LFB35:
	.loc 1 2065 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #32
	.cfi_def_cfa_offset 40
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	mov	r1, r2
	mov	r2, r3
	mov	r3, r1
	strb	r3, [r7, #7]
	mov	r3, r2
	strb	r3, [r7, #6]
	.loc 1 2070 5
	ldr	r3, [r7, #8]
	adds	r3, r3, #13
	.loc 1 2070 10
	ldrb	r2, [r7, #6]
	strb	r2, [r3]
	.loc 1 2071 5
	ldr	r3, [r7, #8]
	adds	r3, r3, #11
	.loc 1 2071 10
	movs	r2, #15
	strb	r2, [r3]
	.loc 1 2072 5
	ldr	r3, [r7, #8]
	adds	r3, r3, #12
	.loc 1 2072 10
	movs	r2, #0
	strb	r2, [r3]
	.loc 1 2073 2
	ldr	r3, [r7, #8]
	adds	r3, r3, #26
	movs	r1, #0
	mov	r0, r3
	bl	st_word
	.loc 1 2075 11
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	subs	r2, r3, #1
	.loc 1 2075 16
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	.loc 1 2075 4
	str	r3, [r7, #28]
	.loc 1 2076 9
	movs	r3, #0
	strh	r3, [r7, #22]	@ movhi
	.loc 1 2076 4
	movs	r3, #0
	str	r3, [r7, #24]
.L283:
	.loc 1 2078 6
	ldrh	r3, [r7, #22]
	movw	r2, #65535
	cmp	r3, r2
	beq	.L281
	.loc 1 2078 31 discriminator 1
	ldr	r3, [r7, #28]
	adds	r2, r3, #1
	str	r2, [r7, #28]
	.loc 1 2078 29 discriminator 1
	lsls	r3, r3, #1
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	.loc 1 2078 24 discriminator 1
	ldrh	r3, [r3]	@ movhi
	strh	r3, [r7, #22]	@ movhi
.L281:
	.loc 1 2079 23
	ldr	r2, .L286
	ldr	r3, [r7, #24]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	.loc 1 2079 3
	ldr	r3, [r7, #8]
	add	r3, r3, r2
	ldrh	r2, [r7, #22]
	mov	r1, r2
	mov	r0, r3
	bl	st_word
	.loc 1 2080 6
	ldrh	r3, [r7, #22]
	cmp	r3, #0
	bne	.L282
	.loc 1 2080 19 discriminator 1
	movw	r3, #65535
	strh	r3, [r7, #22]	@ movhi
.L282:
	.loc 1 2081 2
	ldr	r3, [r7, #24]
	adds	r3, r3, #1
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	cmp	r3, #12
	bls	.L283
	.loc 1 2082 5
	ldrh	r3, [r7, #22]
	movw	r2, #65535
	cmp	r3, r2
	beq	.L284
	.loc 1 2082 26 discriminator 2
	ldr	r3, [r7, #28]
	lsls	r3, r3, #1
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	ldrh	r3, [r3]
	.loc 1 2082 19 discriminator 2
	cmp	r3, #0
	bne	.L285
.L284:
	.loc 1 2082 35 discriminator 3
	ldrb	r3, [r7, #7]
	orr	r3, r3, #64
	strb	r3, [r7, #7]
.L285:
	.loc 1 2083 9
	ldr	r3, [r7, #8]
	ldrb	r2, [r7, #7]
	strb	r2, [r3]
	.loc 1 2084 1
	nop
	adds	r7, r7, #32
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
.L287:
	.align	2
.L286:
	.word	LfnOfs
	.cfi_endproc
.LFE35:
	.size	put_lfn, .-put_lfn
	.section	.text.gen_numname,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	gen_numname, %function
gen_numname:
.LFB36:
	.loc 1 2102 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #48
	.cfi_def_cfa_offset 56
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	.loc 1 2109 2
	movs	r2, #11
	ldr	r1, [r7, #8]
	ldr	r0, [r7, #12]
	bl	mem_cpy
	.loc 1 2111 5
	ldr	r3, [r7]
	cmp	r3, #5
	bls	.L289
	.loc 1 2112 8
	ldr	r3, [r7]
	str	r3, [r7, #28]
	.loc 1 2113 9
	b	.L290
.L294:
	.loc 1 2114 13
	ldr	r3, [r7, #4]
	adds	r2, r3, #2
	str	r2, [r7, #4]
	.loc 1 2114 7
	ldrh	r3, [r3]	@ movhi
	strh	r3, [r7, #34]	@ movhi
	.loc 1 2115 11
	movs	r3, #0
	str	r3, [r7, #40]
	.loc 1 2115 4
	b	.L291
.L293:
	.loc 1 2116 18
	ldr	r3, [r7, #28]
	lsls	r2, r3, #1
	.loc 1 2116 30
	ldrh	r3, [r7, #34]
	and	r3, r3, #1
	.loc 1 2116 10
	add	r3, r3, r2
	str	r3, [r7, #28]
	.loc 1 2117 8
	ldrh	r3, [r7, #34]
	lsrs	r3, r3, #1
	strh	r3, [r7, #34]	@ movhi
	.loc 1 2118 14
	ldr	r3, [r7, #28]
	and	r3, r3, #65536
	.loc 1 2118 8
	cmp	r3, #0
	beq	.L292
	.loc 1 2118 30 discriminator 1
	ldr	r3, [r7, #28]
	eor	r3, r3, #69632
	eor	r3, r3, #33
	str	r3, [r7, #28]
.L292:
	.loc 1 2115 25 discriminator 2
	ldr	r3, [r7, #40]
	adds	r3, r3, #1
	str	r3, [r7, #40]
.L291:
	.loc 1 2115 4 discriminator 1
	ldr	r3, [r7, #40]
	cmp	r3, #15
	bls	.L293
.L290:
	.loc 1 2113 10
	ldr	r3, [r7, #4]
	ldrh	r3, [r3]
	.loc 1 2113 9
	cmp	r3, #0
	bne	.L294
	.loc 1 2121 7
	ldr	r3, [r7, #28]
	str	r3, [r7]
.L289:
	.loc 1 2125 4
	movs	r3, #7
	str	r3, [r7, #40]
.L297:
	.loc 1 2127 7
	ldr	r3, [r7]
	uxtb	r3, r3
	and	r3, r3, #15
	uxtb	r3, r3
	.loc 1 2127 5
	adds	r3, r3, #48
	strb	r3, [r7, #47]
	.loc 1 2127 37
	ldr	r3, [r7]
	lsrs	r3, r3, #4
	str	r3, [r7]
	.loc 1 2128 6
	ldrb	r3, [r7, #47]	@ zero_extendqisi2
	cmp	r3, #57
	bls	.L295
	.loc 1 2128 18 discriminator 1
	ldrb	r3, [r7, #47]
	adds	r3, r3, #7
	strb	r3, [r7, #47]
.L295:
	.loc 1 2129 7
	ldr	r3, [r7, #40]
	subs	r2, r3, #1
	str	r2, [r7, #40]
	.loc 1 2129 11
	adds	r3, r3, #48
	add	r3, r3, r7
	ldrb	r2, [r7, #47]
	strb	r2, [r3, #-28]
	.loc 1 2130 2
	ldr	r3, [r7, #40]
	cmp	r3, #0
	beq	.L296
	.loc 1 2130 13 discriminator 1
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L297
.L296:
	.loc 1 2131 8
	add	r2, r7, #20
	ldr	r3, [r7, #40]
	add	r3, r3, r2
	movs	r2, #126
	strb	r2, [r3]
	.loc 1 2134 9
	movs	r3, #0
	str	r3, [r7, #36]
	.loc 1 2134 2
	b	.L298
.L302:
	.loc 1 2135 18
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #36]
	add	r3, r3, r2
	.loc 1 2135 7
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	bl	dbc_1st
	mov	r3, r0
	.loc 1 2135 6
	cmp	r3, #0
	beq	.L299
	.loc 1 2136 15
	ldr	r3, [r7, #40]
	subs	r3, r3, #1
	.loc 1 2136 7
	ldr	r2, [r7, #36]
	cmp	r2, r3
	beq	.L306
	.loc 1 2137 5
	ldr	r3, [r7, #36]
	adds	r3, r3, #1
	str	r3, [r7, #36]
.L299:
	.loc 1 2134 39 discriminator 2
	ldr	r3, [r7, #36]
	adds	r3, r3, #1
	str	r3, [r7, #36]
.L298:
	.loc 1 2134 2 discriminator 1
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #40]
	cmp	r2, r3
	bcs	.L305
	.loc 1 2134 26 discriminator 3
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #36]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 2134 20 discriminator 3
	cmp	r3, #32
	bne	.L302
	b	.L305
.L306:
	.loc 1 2136 4
	nop
.L305:
	.loc 1 2141 12
	ldr	r3, [r7, #40]
	cmp	r3, #7
	bhi	.L303
	.loc 1 2141 28 discriminator 1
	ldr	r3, [r7, #40]
	adds	r2, r3, #1
	str	r2, [r7, #40]
	.loc 1 2141 12 discriminator 1
	adds	r3, r3, #48
	add	r3, r3, r7
	ldrb	r1, [r3, #-28]	@ zero_extendqisi2
	b	.L304
.L303:
	.loc 1 2141 12 is_stmt 0 discriminator 2
	movs	r1, #32
.L304:
	.loc 1 2141 8 is_stmt 1 discriminator 4
	ldr	r3, [r7, #36]
	adds	r2, r3, #1
	str	r2, [r7, #36]
	.loc 1 2141 6 discriminator 4
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	.loc 1 2141 12 discriminator 4
	mov	r2, r1
	strb	r2, [r3]
	.loc 1 2142 2 discriminator 4
	ldr	r3, [r7, #36]
	cmp	r3, #7
	bls	.L305
	.loc 1 2143 1
	nop
	nop
	adds	r7, r7, #48
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE36:
	.size	gen_numname, .-gen_numname
	.section	.text.sum_sfn,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	sum_sfn, %function
sum_sfn:
.LFB37:
	.loc 1 2156 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #20
	.cfi_def_cfa_offset 24
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 1 2157 7
	movs	r3, #0
	strb	r3, [r7, #15]
	.loc 1 2158 7
	movs	r3, #11
	str	r3, [r7, #8]
.L308:
	.loc 1 2161 20 discriminator 1
	ldrb	r3, [r7, #15]
	uxtb	r2, r3
	lsrs	r2, r2, #1
	lsls	r3, r3, #7
	orrs	r3, r3, r2
	uxtb	r2, r3
	.loc 1 2161 39 discriminator 1
	ldr	r3, [r7, #4]
	adds	r1, r3, #1
	str	r1, [r7, #4]
	.loc 1 2161 35 discriminator 1
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 2161 7 discriminator 1
	add	r3, r3, r2
	strb	r3, [r7, #15]
	.loc 1 2162 2 discriminator 1
	ldr	r3, [r7, #8]
	subs	r3, r3, #1
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bne	.L308
	.loc 1 2163 9
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	.loc 1 2164 1
	mov	r0, r3
	adds	r7, r7, #20
	.cfi_def_cfa_offset 4
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	ldr	r7, [sp], #4
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE37:
	.size	sum_sfn, .-sum_sfn
	.section	.text.xdir_sum,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	xdir_sum, %function
xdir_sum:
.LFB38:
	.loc 1 2178 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #28
	.cfi_def_cfa_offset 32
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 1 2183 14
	ldr	r3, [r7, #4]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 2183 18
	adds	r3, r3, #1
	.loc 1 2183 23
	lsls	r3, r3, #5
	.loc 1 2183 8
	str	r3, [r7, #12]
	.loc 1 2184 15
	movs	r3, #0
	strh	r3, [r7, #18]	@ movhi
	.loc 1 2184 9
	movs	r3, #0
	str	r3, [r7, #20]
	.loc 1 2184 2
	b	.L311
.L314:
	.loc 1 2185 6
	ldr	r3, [r7, #20]
	cmp	r3, #2
	bne	.L312
	.loc 1 2186 5
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
	b	.L313
.L312:
	.loc 1 2188 30
	ldrh	r3, [r7, #18]
	lsls	r3, r3, #15
	.loc 1 2188 35
	uxth	r2, r3
	ldrh	r3, [r7, #18]
	lsrs	r3, r3, #1
	uxth	r3, r3
	add	r3, r3, r2
	uxth	r2, r3
	.loc 1 2188 53
	ldr	r1, [r7, #4]
	ldr	r3, [r7, #20]
	add	r3, r3, r1
	ldrb	r3, [r3]	@ zero_extendqisi2
	uxth	r3, r3
	.loc 1 2188 8
	add	r3, r3, r2
	strh	r3, [r7, #18]	@ movhi
.L313:
	.loc 1 2184 32 discriminator 2
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L311:
	.loc 1 2184 2 discriminator 1
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bcc	.L314
	.loc 1 2191 9
	ldrh	r3, [r7, #18]
	.loc 1 2192 1
	mov	r0, r3
	adds	r7, r7, #28
	.cfi_def_cfa_offset 4
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	ldr	r7, [sp], #4
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE38:
	.size	xdir_sum, .-xdir_sum
	.section	.text.xname_sum,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	xname_sum, %function
xname_sum:
.LFB39:
	.loc 1 2199 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #16
	.cfi_def_cfa_offset 24
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 1 2201 7
	movs	r3, #0
	strh	r3, [r7, #14]	@ movhi
	.loc 1 2204 8
	b	.L317
.L318:
	.loc 1 2205 16
	ldrh	r3, [r7, #12]
	mov	r0, r3
	bl	ff_wtoupper
	mov	r3, r0
	.loc 1 2205 7
	strh	r3, [r7, #12]	@ movhi
	.loc 1 2206 29
	ldrh	r3, [r7, #14]
	lsls	r3, r3, #15
	.loc 1 2206 34
	uxth	r2, r3
	ldrh	r3, [r7, #14]
	lsrs	r3, r3, #1
	uxth	r3, r3
	add	r3, r3, r2
	uxth	r2, r3
	.loc 1 2206 54
	ldrh	r3, [r7, #12]	@ movhi
	uxtb	r3, r3
	uxth	r3, r3
	.loc 1 2206 7
	add	r3, r3, r2
	strh	r3, [r7, #14]	@ movhi
	.loc 1 2207 29
	ldrh	r3, [r7, #14]
	lsls	r3, r3, #15
	.loc 1 2207 34
	uxth	r2, r3
	ldrh	r3, [r7, #14]
	lsrs	r3, r3, #1
	uxth	r3, r3
	add	r3, r3, r2
	uxth	r2, r3
	.loc 1 2207 47
	ldrh	r3, [r7, #12]
	lsrs	r3, r3, #8
	uxth	r3, r3
	.loc 1 2207 7
	add	r3, r3, r2
	strh	r3, [r7, #14]	@ movhi
.L317:
	.loc 1 2204 21
	ldr	r3, [r7, #4]
	adds	r2, r3, #2
	str	r2, [r7, #4]
	.loc 1 2204 14
	ldrh	r3, [r3]	@ movhi
	strh	r3, [r7, #12]	@ movhi
	.loc 1 2204 8
	ldrh	r3, [r7, #12]
	cmp	r3, #0
	bne	.L318
	.loc 1 2209 9
	ldrh	r3, [r7, #14]
	.loc 1 2210 1
	mov	r0, r3
	adds	r7, r7, #16
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE39:
	.size	xname_sum, .-xname_sum
	.section	.text.load_xdir,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	load_xdir, %function
load_xdir:
.LFB40:
	.loc 1 2233 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #28
	.cfi_def_cfa_offset 40
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 1 2236 22
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	.loc 1 2236 8
	ldr	r3, [r3, #16]
	str	r3, [r7, #12]
	.loc 1 2240 8
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #56]
	mov	r1, r3
	mov	r0, r2
	bl	move_window
	mov	r3, r0
	strb	r3, [r7, #23]
	.loc 1 2241 5
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L321
	.loc 1 2241 27 discriminator 1
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	b	.L322
.L321:
	.loc 1 2242 8
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #60]
	.loc 1 2242 13
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 2242 5
	cmp	r3, #133
	beq	.L323
	.loc 1 2242 33 discriminator 1
	movs	r3, #2
	b	.L322
.L323:
	.loc 1 2243 27
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #60]
	.loc 1 2243 2
	movs	r2, #32
	mov	r1, r3
	ldr	r0, [r7, #12]
	bl	mem_cpy
	.loc 1 2244 16
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 2244 20
	adds	r3, r3, #1
	.loc 1 2244 25
	lsls	r3, r3, #5
	.loc 1 2244 9
	str	r3, [r7, #8]
	.loc 1 2245 5
	ldr	r3, [r7, #8]
	cmp	r3, #95
	bls	.L324
	.loc 1 2245 22 discriminator 2
	ldr	r3, [r7, #8]
	cmp	r3, #608
	bls	.L325
.L324:
	.loc 1 2245 50 discriminator 3
	movs	r3, #2
	b	.L322
.L325:
	.loc 1 2248 8
	movs	r1, #0
	ldr	r0, [r7, #4]
	bl	dir_next
	mov	r3, r0
	strb	r3, [r7, #23]
	.loc 1 2249 5
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	cmp	r3, #4
	bne	.L326
	.loc 1 2249 29 discriminator 1
	movs	r3, #2
	strb	r3, [r7, #23]
.L326:
	.loc 1 2250 5
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L327
	.loc 1 2250 27 discriminator 1
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	b	.L322
.L327:
	.loc 1 2251 8
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #56]
	mov	r1, r3
	mov	r0, r2
	bl	move_window
	mov	r3, r0
	strb	r3, [r7, #23]
	.loc 1 2252 5
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L328
	.loc 1 2252 27 discriminator 1
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	b	.L322
.L328:
	.loc 1 2253 8
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #60]
	.loc 1 2253 13
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 2253 5
	cmp	r3, #192
	beq	.L329
	.loc 1 2253 33 discriminator 1
	movs	r3, #2
	b	.L322
.L329:
	.loc 1 2254 15
	ldr	r3, [r7, #12]
	add	r0, r3, #32
	.loc 1 2254 27
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #60]
	.loc 1 2254 2
	movs	r2, #32
	mov	r1, r3
	bl	mem_cpy
	.loc 1 2255 12
	ldr	r3, [r7, #12]
	adds	r3, r3, #35
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 2255 17
	adds	r3, r3, #44
	.loc 1 2255 24
	ldr	r2, .L338
	umull	r2, r3, r2, r3
	lsrs	r3, r3, #3
	.loc 1 2255 29
	lsls	r3, r3, #5
	.loc 1 2255 5
	ldr	r2, [r7, #8]
	cmp	r2, r3
	bcs	.L330
	.loc 1 2255 52 discriminator 1
	movs	r3, #2
	b	.L322
.L330:
	.loc 1 2258 4
	movs	r3, #64
	str	r3, [r7, #16]
.L336:
	.loc 1 2260 9
	movs	r1, #0
	ldr	r0, [r7, #4]
	bl	dir_next
	mov	r3, r0
	strb	r3, [r7, #23]
	.loc 1 2261 6
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	cmp	r3, #4
	bne	.L331
	.loc 1 2261 30 discriminator 1
	movs	r3, #2
	strb	r3, [r7, #23]
.L331:
	.loc 1 2262 6
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L332
	.loc 1 2262 28 discriminator 1
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	b	.L322
.L332:
	.loc 1 2263 9
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #56]
	mov	r1, r3
	mov	r0, r2
	bl	move_window
	mov	r3, r0
	strb	r3, [r7, #23]
	.loc 1 2264 6
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L333
	.loc 1 2264 28 discriminator 1
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	b	.L322
.L333:
	.loc 1 2265 9
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #60]
	.loc 1 2265 14
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 2265 6
	cmp	r3, #193
	beq	.L334
	.loc 1 2265 34 discriminator 1
	movs	r3, #2
	b	.L322
.L334:
	.loc 1 2266 6
	ldr	r3, [r7, #16]
	cmp	r3, #608
	bcs	.L335
	.loc 1 2266 49 discriminator 1
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #16]
	adds	r0, r2, r3
	.loc 1 2266 56 discriminator 1
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #60]
	.loc 1 2266 36 discriminator 1
	movs	r2, #32
	mov	r1, r3
	bl	mem_cpy
.L335:
	.loc 1 2267 14
	ldr	r3, [r7, #16]
	adds	r3, r3, #32
	str	r3, [r7, #16]
	.loc 1 2267 2
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bcc	.L336
	.loc 1 2270 5
	ldr	r3, [r7, #16]
	cmp	r3, #608
	bhi	.L337
	.loc 1 2271 7
	ldr	r0, [r7, #12]
	bl	xdir_sum
	mov	r3, r0
	mov	r4, r3
	.loc 1 2271 38
	ldr	r3, [r7, #12]
	adds	r3, r3, #2
	.loc 1 2271 25
	mov	r0, r3
	bl	ld_word
	mov	r3, r0
	.loc 1 2271 6
	cmp	r4, r3
	beq	.L337
	.loc 1 2271 51 discriminator 1
	movs	r3, #2
	b	.L322
.L337:
	.loc 1 2273 9
	movs	r3, #0
.L322:
	.loc 1 2274 1
	mov	r0, r3
	adds	r7, r7, #28
	.cfi_def_cfa_offset 12
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r4, r7, pc}
.L339:
	.align	2
.L338:
	.word	-2004318071
	.cfi_endproc
.LFE40:
	.size	load_xdir, .-load_xdir
	.section	.text.init_alloc_info,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	init_alloc_info, %function
init_alloc_info:
.LFB41:
	.loc 1 2285 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #8
	.cfi_def_cfa_offset 16
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	str	r1, [r7]
	.loc 1 2286 27
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	.loc 1 2286 36
	adds	r3, r3, #52
	.loc 1 2286 16
	mov	r0, r3
	bl	ld_dword
	mov	r2, r0
	.loc 1 2286 14
	ldr	r3, [r7]
	str	r2, [r3, #8]
	.loc 1 2287 28
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	.loc 1 2287 37
	adds	r3, r3, #56
	.loc 1 2287 17
	mov	r0, r3
	bl	ld_qword
	mov	r2, r0
	mov	r3, r1
	.loc 1 2287 15
	ldr	r1, [r7]
	strd	r2, [r1, #16]
	.loc 1 2288 16
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	.loc 1 2288 24
	adds	r3, r3, #33
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 2288 29
	and	r3, r3, #2
	uxtb	r2, r3
	.loc 1 2288 12
	ldr	r3, [r7]
	strb	r2, [r3, #7]
	.loc 1 2289 14
	ldr	r3, [r7]
	movs	r2, #0
	str	r2, [r3, #28]
	.loc 1 2290 1
	nop
	adds	r7, r7, #8
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE41:
	.size	init_alloc_info, .-init_alloc_info
	.section	.text.load_obj_xdir,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	load_obj_xdir, %function
load_obj_xdir:
.LFB42:
	.loc 1 2303 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #16
	.cfi_def_cfa_offset 32
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	str	r1, [r7]
	.loc 1 2307 18
	ldr	r1, [r7]
	ldr	r0, [r1]
	.loc 1 2307 13
	ldr	r1, [r7, #4]
	str	r0, [r1]
	.loc 1 2308 22
	ldr	r1, [r7]
	ldr	r0, [r1, #32]
	.loc 1 2308 17
	ldr	r1, [r7, #4]
	str	r0, [r1, #8]
	.loc 1 2309 26
	ldr	r1, [r7]
	ldr	r1, [r1, #36]
	.loc 1 2309 17
	uxtb	r0, r1
	.loc 1 2309 15
	ldr	r1, [r7, #4]
	strb	r0, [r1, #7]
	.loc 1 2310 23
	ldr	r1, [r7]
	ldr	r1, [r1, #36]
	.loc 1 2310 32
	movs	r0, #0
	mov	r4, r1
	mov	r5, r0
	bic	r2, r4, #255
	movs	r3, #0
	.loc 1 2310 18
	ldr	r1, [r7, #4]
	strd	r2, [r1, #16]
	.loc 1 2311 17
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #28]
	.loc 1 2312 19
	ldr	r3, [r7]
	ldr	r2, [r3, #40]
	.loc 1 2312 14
	ldr	r3, [r7, #4]
	str	r2, [r3, #76]
	.loc 1 2314 8
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #76]
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	dir_sdi
	mov	r3, r0
	strb	r3, [r7, #15]
	.loc 1 2315 5
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L342
	.loc 1 2316 9
	ldr	r0, [r7, #4]
	bl	load_xdir
	mov	r3, r0
	strb	r3, [r7, #15]
.L342:
	.loc 1 2318 9
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	.loc 1 2319 1
	mov	r0, r3
	adds	r7, r7, #16
	.cfi_def_cfa_offset 16
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r4, r5, r7, pc}
	.cfi_endproc
.LFE42:
	.size	load_obj_xdir, .-load_obj_xdir
	.section	.text.store_xdir,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	store_xdir, %function
store_xdir:
.LFB43:
	.loc 1 2331 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #28
	.cfi_def_cfa_offset 40
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 1 2334 22
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	.loc 1 2334 8
	ldr	r3, [r3, #16]
	str	r3, [r7, #12]
	.loc 1 2337 2
	ldr	r3, [r7, #12]
	adds	r4, r3, #2
	ldr	r0, [r7, #12]
	bl	xdir_sum
	mov	r3, r0
	mov	r1, r3
	mov	r0, r4
	bl	st_word
	.loc 1 2338 13
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 2338 17
	adds	r3, r3, #1
	.loc 1 2338 7
	str	r3, [r7, #16]
	.loc 1 2341 8
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #76]
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	dir_sdi
	mov	r3, r0
	strb	r3, [r7, #23]
	.loc 1 2342 8
	b	.L345
.L349:
	.loc 1 2343 9
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #56]
	mov	r1, r3
	mov	r0, r2
	bl	move_window
	mov	r3, r0
	strb	r3, [r7, #23]
	.loc 1 2344 6
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L354
	.loc 1 2345 13
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #60]
	.loc 1 2345 3
	movs	r2, #32
	ldr	r1, [r7, #12]
	mov	r0, r3
	bl	mem_cpy
	.loc 1 2346 10
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	.loc 1 2346 21
	movs	r2, #1
	strb	r2, [r3, #4]
	.loc 1 2347 6
	ldr	r3, [r7, #16]
	subs	r3, r3, #1
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L355
	.loc 1 2348 8
	ldr	r3, [r7, #12]
	adds	r3, r3, #32
	str	r3, [r7, #12]
	.loc 1 2349 9
	movs	r1, #0
	ldr	r0, [r7, #4]
	bl	dir_next
	mov	r3, r0
	strb	r3, [r7, #23]
.L345:
	.loc 1 2342 8
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L349
	b	.L347
.L354:
	.loc 1 2344 3
	nop
	b	.L347
.L355:
	.loc 1 2347 3
	nop
.L347:
	.loc 1 2351 52
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L350
	.loc 1 2351 23 discriminator 2
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L351
.L350:
	.loc 1 2351 52 discriminator 3
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	b	.L352
.L351:
	.loc 1 2351 52 is_stmt 0 discriminator 4
	movs	r3, #2
.L352:
	.loc 1 2352 1 is_stmt 1 discriminator 6
	mov	r0, r3
	adds	r7, r7, #28
	.cfi_def_cfa_offset 12
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r4, r7, pc}
	.cfi_endproc
.LFE43:
	.size	store_xdir, .-store_xdir
	.section	.text.create_xdir,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	create_xdir, %function
create_xdir:
.LFB44:
	.loc 1 2364 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #20
	.cfi_def_cfa_offset 32
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	str	r1, [r7]
	.loc 1 2371 2
	movs	r2, #64
	movs	r1, #0
	ldr	r0, [r7, #4]
	bl	mem_set
	.loc 1 2372 19
	ldr	r3, [r7, #4]
	movs	r2, #133
	strb	r2, [r3]
	.loc 1 2373 6
	ldr	r3, [r7, #4]
	adds	r3, r3, #32
	.loc 1 2373 19
	movs	r2, #192
	strb	r2, [r3]
	.loc 1 2376 4
	movs	r3, #64
	str	r3, [r7, #12]
	.loc 1 2377 13
	movs	r3, #0
	strb	r3, [r7, #11]
	.loc 1 2377 7
	ldrb	r3, [r7, #11]
	strb	r3, [r7, #10]
	.loc 1 2377 21
	movs	r3, #1
	strh	r3, [r7, #8]	@ movhi
.L359:
	.loc 1 2379 9
	ldr	r3, [r7, #12]
	adds	r2, r3, #1
	str	r2, [r7, #12]
	.loc 1 2379 7
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	.loc 1 2379 13
	movs	r2, #193
	strb	r2, [r3]
	.loc 1 2379 27
	ldr	r3, [r7, #12]
	adds	r2, r3, #1
	str	r2, [r7, #12]
	.loc 1 2379 25
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	.loc 1 2379 31
	movs	r2, #0
	strb	r2, [r3]
.L358:
	.loc 1 2381 7
	ldrh	r3, [r7, #8]
	cmp	r3, #0
	beq	.L357
	.loc 1 2381 28 discriminator 1
	ldrb	r3, [r7, #10]	@ zero_extendqisi2
	lsls	r3, r3, #1
	ldr	r2, [r7]
	add	r3, r3, r2
	.loc 1 2381 23 discriminator 1
	ldrh	r3, [r3]	@ movhi
	strh	r3, [r7, #8]	@ movhi
	.loc 1 2381 16 discriminator 1
	ldrh	r3, [r7, #8]
	cmp	r3, #0
	beq	.L357
	.loc 1 2381 46 discriminator 2
	ldrb	r3, [r7, #10]	@ zero_extendqisi2
	adds	r3, r3, #1
	strb	r3, [r7, #10]
.L357:
	.loc 1 2382 4
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	ldrh	r2, [r7, #8]
	mov	r1, r2
	mov	r0, r3
	bl	st_word
	.loc 1 2383 6
	ldr	r3, [r7, #12]
	adds	r3, r3, #2
	str	r3, [r7, #12]
	.loc 1 2384 14
	ldr	r3, [r7, #12]
	and	r3, r3, #31
	.loc 1 2384 3
	cmp	r3, #0
	bne	.L358
	.loc 1 2385 6
	ldrb	r3, [r7, #11]	@ zero_extendqisi2
	adds	r3, r3, #1
	strb	r3, [r7, #11]
	.loc 1 2386 14
	ldrb	r3, [r7, #10]	@ zero_extendqisi2
	lsls	r3, r3, #1
	ldr	r2, [r7]
	add	r3, r3, r2
	ldrh	r3, [r3]
	.loc 1 2386 2
	cmp	r3, #0
	bne	.L359
	.loc 1 2388 6
	ldr	r3, [r7, #4]
	adds	r3, r3, #35
	.loc 1 2388 11
	ldrb	r2, [r7, #10]
	strb	r2, [r3]
	.loc 1 2389 6
	ldr	r3, [r7, #4]
	adds	r3, r3, #1
	.loc 1 2389 14
	ldrb	r2, [r7, #11]
	adds	r2, r2, #1
	uxtb	r2, r2
	.loc 1 2389 10
	strb	r2, [r3]
	.loc 1 2390 2
	ldr	r3, [r7, #4]
	add	r4, r3, #36
	ldr	r0, [r7]
	bl	xname_sum
	mov	r3, r0
	mov	r1, r3
	mov	r0, r4
	bl	st_word
	.loc 1 2391 1
	nop
	adds	r7, r7, #20
	.cfi_def_cfa_offset 12
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r4, r7, pc}
	.cfi_endproc
.LFE44:
	.size	create_xdir, .-create_xdir
	.section	.text.dir_read,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	dir_read, %function
dir_read:
.LFB45:
	.loc 1 2410 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #24
	.cfi_def_cfa_offset 32
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	str	r1, [r7]
	.loc 1 2411 10
	movs	r3, #4
	strb	r3, [r7, #23]
	.loc 1 2412 9
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #16]
	.loc 1 2415 7
	movs	r3, #255
	strb	r3, [r7, #21]
	.loc 1 2415 19
	movs	r3, #255
	strb	r3, [r7, #20]
	.loc 1 2418 8
	b	.L361
.L376:
	.loc 1 2419 9
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #56]
	mov	r1, r3
	ldr	r0, [r7, #16]
	bl	move_window
	mov	r3, r0
	strb	r3, [r7, #23]
	.loc 1 2420 6
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L379
	.loc 1 2421 9
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #60]
	.loc 1 2421 5
	ldrb	r3, [r3]
	strb	r3, [r7, #22]
	.loc 1 2422 6
	ldrb	r3, [r7, #22]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L364
	.loc 1 2423 8
	movs	r3, #4
	strb	r3, [r7, #23]
	.loc 1 2423 4
	b	.L363
.L364:
	.loc 1 2426 9
	ldr	r3, [r7, #16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 2426 6
	cmp	r3, #4
	bne	.L365
	.loc 1 2430 8
	ldrb	r3, [r7, #22]	@ zero_extendqisi2
	cmp	r3, #133
	bne	.L366
	.loc 1 2431 22
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #48]
	.loc 1 2431 18
	ldr	r3, [r7, #4]
	str	r2, [r3, #76]
	.loc 1 2432 12
	ldr	r0, [r7, #4]
	bl	load_xdir
	mov	r3, r0
	strb	r3, [r7, #23]
	.loc 1 2433 9
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L380
	.loc 1 2434 24
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #16]
	.loc 1 2434 32
	adds	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 2434 36
	and	r3, r3, #63
	uxtb	r2, r3
	.loc 1 2434 20
	ldr	r3, [r7, #4]
	strb	r2, [r3, #6]
	.loc 1 2436 6
	b	.L380
.L365:
	.loc 1 2442 28
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #60]
	.loc 1 2442 33
	adds	r3, r3, #11
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 2442 24
	and	r3, r3, #63
	strb	r3, [r7, #15]
	.loc 1 2442 17
	ldr	r3, [r7, #4]
	ldrb	r2, [r7, #15]
	strb	r2, [r3, #6]
	.loc 1 2444 7
	ldrb	r3, [r7, #22]	@ zero_extendqisi2
	cmp	r3, #229
	beq	.L368
	.loc 1 2444 18 discriminator 1
	ldrb	r3, [r7, #22]	@ zero_extendqisi2
	cmp	r3, #46
	beq	.L368
	.loc 1 2444 45 discriminator 2
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	bic	r3, r3, #32
	.loc 1 2444 33 discriminator 2
	cmp	r3, #8
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	mov	r2, r3
	.loc 1 2444 30 discriminator 2
	ldr	r3, [r7]
	cmp	r3, r2
	beq	.L369
.L368:
	.loc 1 2445 9
	movs	r3, #255
	strb	r3, [r7, #21]
	b	.L366
.L369:
	.loc 1 2447 8
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	cmp	r3, #15
	bne	.L370
	.loc 1 2448 12
	ldrb	r3, [r7, #22]	@ zero_extendqisi2
	and	r3, r3, #64
	.loc 1 2448 9
	cmp	r3, #0
	beq	.L371
	.loc 1 2449 15
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #60]
	.loc 1 2449 11
	ldrb	r3, [r3, #13]
	strb	r3, [r7, #20]
	.loc 1 2450 9
	ldrb	r3, [r7, #22]
	bic	r3, r3, #64
	strb	r3, [r7, #22]
	.loc 1 2450 29
	ldrb	r3, [r7, #22]
	strb	r3, [r7, #21]
	.loc 1 2451 23
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #48]
	.loc 1 2451 19
	ldr	r3, [r7, #4]
	str	r2, [r3, #76]
.L371:
	.loc 1 2454 10
	ldrb	r2, [r7, #22]	@ zero_extendqisi2
	ldrb	r3, [r7, #21]	@ zero_extendqisi2
	cmp	r2, r3
	bne	.L372
	.loc 1 2454 34 discriminator 1
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #60]
	.loc 1 2454 39 discriminator 1
	adds	r3, r3, #13
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 2454 22 discriminator 1
	ldrb	r2, [r7, #20]	@ zero_extendqisi2
	cmp	r2, r3
	bne	.L372
	.loc 1 2454 47 discriminator 3
	ldr	r3, [r7, #16]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #60]
	mov	r1, r3
	mov	r0, r2
	bl	pick_lfn
	mov	r3, r0
	.loc 1 2454 44 discriminator 3
	cmp	r3, #0
	beq	.L372
	.loc 1 2454 10 discriminator 5
	ldrb	r3, [r7, #21]
	subs	r3, r3, #1
	uxtb	r3, r3
	b	.L373
.L372:
	.loc 1 2454 10 is_stmt 0 discriminator 6
	movs	r3, #255
.L373:
	.loc 1 2454 10 discriminator 8
	strb	r3, [r7, #21]
	b	.L366
.L370:
	.loc 1 2456 9 is_stmt 1
	ldrb	r3, [r7, #21]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L374
	.loc 1 2456 39 discriminator 1
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #60]
	.loc 1 2456 29 discriminator 1
	mov	r0, r3
	bl	sum_sfn
	mov	r3, r0
	mov	r2, r3
	.loc 1 2456 19 discriminator 1
	ldrb	r3, [r7, #20]	@ zero_extendqisi2
	cmp	r3, r2
	beq	.L381
.L374:
	.loc 1 2457 19
	ldr	r3, [r7, #4]
	mov	r2, #-1
	str	r2, [r3, #76]
	.loc 1 2459 6
	b	.L381
.L366:
	.loc 1 2468 9
	movs	r1, #0
	ldr	r0, [r7, #4]
	bl	dir_next
	mov	r3, r0
	strb	r3, [r7, #23]
	.loc 1 2469 6
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L382
.L361:
	.loc 1 2418 11
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #56]
	.loc 1 2418 8
	cmp	r3, #0
	bne	.L376
	b	.L363
.L379:
	.loc 1 2420 3
	nop
	b	.L363
.L380:
	.loc 1 2436 6
	nop
	b	.L363
.L381:
	.loc 1 2459 6
	nop
	b	.L363
.L382:
	.loc 1 2469 3
	nop
.L363:
	.loc 1 2472 5
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L377
	.loc 1 2472 29 discriminator 1
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #56]
.L377:
	.loc 1 2473 9
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	.loc 1 2474 1
	mov	r0, r3
	adds	r7, r7, #24
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE45:
	.size	dir_read, .-dir_read
	.section	.text.dir_find,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	dir_find, %function
dir_find:
.LFB46:
	.loc 1 2487 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #36
	.cfi_def_cfa_offset 48
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 1 2489 9
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #12]
	.loc 1 2495 8
	movs	r1, #0
	ldr	r0, [r7, #4]
	bl	dir_sdi
	mov	r3, r0
	strb	r3, [r7, #31]
	.loc 1 2496 5
	ldrb	r3, [r7, #31]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L384
	.loc 1 2496 27 discriminator 1
	ldrb	r3, [r7, #31]	@ zero_extendqisi2
	b	.L385
.L384:
	.loc 1 2498 8
	ldr	r3, [r7, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 2498 5
	cmp	r3, #4
	bne	.L386
.LBB4:
	.loc 1 2501 27
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #12]
	.loc 1 2501 15
	mov	r0, r3
	bl	xname_sum
	mov	r3, r0
	strh	r3, [r7, #8]	@ movhi
	.loc 1 2503 9
	b	.L387
.L395:
	.loc 1 2507 18
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #16]
	.loc 1 2507 27
	adds	r3, r3, #36
	.loc 1 2507 8
	mov	r0, r3
	bl	ld_word
	mov	r3, r0
	mov	r2, r3
	.loc 1 2507 7
	ldrh	r3, [r7, #8]
	cmp	r3, r2
	beq	.L388
	.loc 1 2507 4 discriminator 1
	b	.L387
.L388:
	.loc 1 2508 16
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #16]
	.loc 1 2508 12
	ldrb	r3, [r3, #35]
	strb	r3, [r7, #27]
	.loc 1 2508 33
	movs	r3, #64
	str	r3, [r7, #20]
	.loc 1 2508 46
	movs	r3, #0
	str	r3, [r7, #16]
	.loc 1 2508 4
	b	.L389
.L393:
	.loc 1 2509 13
	ldr	r3, [r7, #20]
	and	r3, r3, #31
	.loc 1 2509 8
	cmp	r3, #0
	bne	.L390
	.loc 1 2509 28 discriminator 1
	ldr	r3, [r7, #20]
	adds	r3, r3, #2
	str	r3, [r7, #20]
.L390:
	.loc 1 2510 31
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #16]
	.loc 1 2510 40
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	.loc 1 2510 21
	mov	r0, r3
	bl	ld_word
	mov	r3, r0
	.loc 1 2510 9
	mov	r0, r3
	bl	ff_wtoupper
	mov	r4, r0
	.loc 1 2510 64
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #12]
	.loc 1 2510 72
	ldr	r3, [r7, #16]
	lsls	r3, r3, #1
	add	r3, r3, r2
	ldrh	r3, [r3]
	.loc 1 2510 50
	mov	r0, r3
	bl	ff_wtoupper
	mov	r3, r0
	.loc 1 2510 8
	cmp	r4, r3
	bne	.L409
	.loc 1 2508 57 discriminator 2
	ldrb	r3, [r7, #27]	@ zero_extendqisi2
	subs	r3, r3, #1
	strb	r3, [r7, #27]
	.loc 1 2508 64 discriminator 2
	ldr	r3, [r7, #20]
	adds	r3, r3, #2
	str	r3, [r7, #20]
	.loc 1 2508 72 discriminator 2
	ldr	r3, [r7, #16]
	adds	r3, r3, #1
	str	r3, [r7, #16]
.L389:
	.loc 1 2508 4 discriminator 1
	ldrb	r3, [r7, #27]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L393
	b	.L392
.L409:
	.loc 1 2510 5
	nop
.L392:
	.loc 1 2512 7
	ldrb	r3, [r7, #27]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L387
	.loc 1 2512 22 discriminator 1
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #12]
	.loc 1 2512 30 discriminator 1
	ldr	r3, [r7, #16]
	lsls	r3, r3, #1
	add	r3, r3, r2
	ldrh	r3, [r3]
	.loc 1 2512 16 discriminator 1
	cmp	r3, #0
	beq	.L410
.L387:
	.loc 1 2503 17
	movs	r1, #0
	ldr	r0, [r7, #4]
	bl	dir_read
	mov	r3, r0
	strb	r3, [r7, #31]
	.loc 1 2503 9
	ldrb	r3, [r7, #31]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L395
	b	.L394
.L410:
	.loc 1 2512 4
	nop
.L394:
	.loc 1 2514 10
	ldrb	r3, [r7, #31]	@ zero_extendqisi2
	b	.L385
.L386:
.LBE4:
	.loc 1 2519 12
	movs	r3, #255
	strb	r3, [r7, #28]
	.loc 1 2519 6
	ldrb	r3, [r7, #28]
	strb	r3, [r7, #29]
	.loc 1 2519 32
	ldr	r3, [r7, #4]
	mov	r2, #-1
	str	r2, [r3, #76]
.L408:
	.loc 1 2522 9
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #56]
	mov	r1, r3
	ldr	r0, [r7, #12]
	bl	move_window
	mov	r3, r0
	strb	r3, [r7, #31]
	.loc 1 2523 6
	ldrb	r3, [r7, #31]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L411
	.loc 1 2524 9
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #60]
	.loc 1 2524 5
	ldrb	r3, [r3]
	strb	r3, [r7, #30]
	.loc 1 2525 6
	ldrb	r3, [r7, #30]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L398
	.loc 1 2525 21 discriminator 1
	movs	r3, #4
	strb	r3, [r7, #31]
	.loc 1 2525 3 discriminator 1
	b	.L397
.L398:
	.loc 1 2527 24
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #60]
	.loc 1 2527 29
	adds	r3, r3, #11
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 2527 20
	and	r3, r3, #63
	strb	r3, [r7, #11]
	.loc 1 2527 16
	ldr	r3, [r7, #4]
	ldrb	r2, [r7, #11]
	strb	r2, [r3, #6]
	.loc 1 2528 6
	ldrb	r3, [r7, #30]	@ zero_extendqisi2
	cmp	r3, #229
	beq	.L399
	.loc 1 2528 24 discriminator 1
	ldrb	r3, [r7, #11]	@ zero_extendqisi2
	and	r3, r3, #8
	.loc 1 2528 17 discriminator 1
	cmp	r3, #0
	beq	.L400
	.loc 1 2528 32 discriminator 2
	ldrb	r3, [r7, #11]	@ zero_extendqisi2
	cmp	r3, #15
	beq	.L400
.L399:
	.loc 1 2529 8
	movs	r3, #255
	strb	r3, [r7, #29]
	.loc 1 2529 28
	ldr	r3, [r7, #4]
	mov	r2, #-1
	str	r2, [r3, #76]
	b	.L401
.L400:
	.loc 1 2531 7
	ldrb	r3, [r7, #11]	@ zero_extendqisi2
	cmp	r3, #15
	bne	.L402
	.loc 1 2532 17
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #75]	@ zero_extendqisi2
	.loc 1 2532 22
	and	r3, r3, #64
	.loc 1 2532 8
	cmp	r3, #0
	bne	.L401
	.loc 1 2533 12
	ldrb	r3, [r7, #30]	@ zero_extendqisi2
	and	r3, r3, #64
	.loc 1 2533 9
	cmp	r3, #0
	beq	.L403
	.loc 1 2534 15
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #60]
	.loc 1 2534 11
	ldrb	r3, [r3, #13]
	strb	r3, [r7, #28]
	.loc 1 2535 9
	ldrb	r3, [r7, #30]
	bic	r3, r3, #64
	strb	r3, [r7, #30]
	.loc 1 2535 29
	ldrb	r3, [r7, #30]
	strb	r3, [r7, #29]
	.loc 1 2536 23
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #48]
	.loc 1 2536 19
	ldr	r3, [r7, #4]
	str	r2, [r3, #76]
.L403:
	.loc 1 2539 10
	ldrb	r2, [r7, #30]	@ zero_extendqisi2
	ldrb	r3, [r7, #29]	@ zero_extendqisi2
	cmp	r2, r3
	bne	.L404
	.loc 1 2539 34 discriminator 1
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #60]
	.loc 1 2539 39 discriminator 1
	adds	r3, r3, #13
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 2539 22 discriminator 1
	ldrb	r2, [r7, #28]	@ zero_extendqisi2
	cmp	r2, r3
	bne	.L404
	.loc 1 2539 57 discriminator 3
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #12]
	.loc 1 2539 47 discriminator 3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #60]
	mov	r1, r3
	mov	r0, r2
	bl	cmp_lfn
	mov	r3, r0
	.loc 1 2539 44 discriminator 3
	cmp	r3, #0
	beq	.L404
	.loc 1 2539 10 discriminator 5
	ldrb	r3, [r7, #29]
	subs	r3, r3, #1
	uxtb	r3, r3
	b	.L405
.L404:
	.loc 1 2539 10 is_stmt 0 discriminator 6
	movs	r3, #255
.L405:
	.loc 1 2539 10 discriminator 8
	strb	r3, [r7, #29]
	b	.L401
.L402:
	.loc 1 2542 8 is_stmt 1
	ldrb	r3, [r7, #29]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L406
	.loc 1 2542 38 discriminator 1
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #60]
	.loc 1 2542 28 discriminator 1
	mov	r0, r3
	bl	sum_sfn
	mov	r3, r0
	mov	r2, r3
	.loc 1 2542 18 discriminator 1
	ldrb	r3, [r7, #28]	@ zero_extendqisi2
	cmp	r3, r2
	beq	.L412
.L406:
	.loc 1 2543 17
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #75]	@ zero_extendqisi2
	.loc 1 2543 22
	and	r3, r3, #1
	.loc 1 2543 8
	cmp	r3, #0
	bne	.L407
	.loc 1 2543 44 discriminator 1
	ldr	r3, [r7, #4]
	ldr	r0, [r3, #60]
	.loc 1 2543 53 discriminator 1
	ldr	r3, [r7, #4]
	adds	r3, r3, #64
	.loc 1 2543 34 discriminator 1
	movs	r2, #11
	mov	r1, r3
	bl	mem_cmp
	mov	r3, r0
	.loc 1 2543 30 discriminator 1
	cmp	r3, #0
	beq	.L413
.L407:
	.loc 1 2544 9
	movs	r3, #255
	strb	r3, [r7, #29]
	.loc 1 2544 29
	ldr	r3, [r7, #4]
	mov	r2, #-1
	str	r2, [r3, #76]
.L401:
	.loc 1 2551 9
	movs	r1, #0
	ldr	r0, [r7, #4]
	bl	dir_next
	mov	r3, r0
	strb	r3, [r7, #31]
	.loc 1 2552 2
	ldrb	r3, [r7, #31]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L408
	b	.L397
.L411:
	.loc 1 2523 3
	nop
	b	.L397
.L412:
	.loc 1 2542 5
	nop
	b	.L397
.L413:
	.loc 1 2543 5
	nop
.L397:
	.loc 1 2554 9
	ldrb	r3, [r7, #31]	@ zero_extendqisi2
.L385:
	.loc 1 2555 1
	mov	r0, r3
	adds	r7, r7, #36
	.cfi_def_cfa_offset 12
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r4, r7, pc}
	.cfi_endproc
.LFE46:
	.size	dir_find, .-dir_find
	.section	.text.dir_register,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	dir_register, %function
dir_register:
.LFB47:
	.loc 1 2568 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 128
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, r8, r9, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	.cfi_offset 5, -20
	.cfi_offset 7, -16
	.cfi_offset 8, -12
	.cfi_offset 9, -8
	.cfi_offset 14, -4
	sub	sp, sp, #128
	.cfi_def_cfa_offset 152
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 1 2570 9
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #108]
	.loc 1 2576 12
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #75]	@ zero_extendqisi2
	.loc 1 2576 17
	and	r3, r3, #160
	.loc 1 2576 5
	cmp	r3, #0
	beq	.L415
	.loc 1 2576 41 discriminator 1
	movs	r3, #6
	b	.L440
.L415:
	.loc 1 2577 11
	movs	r3, #0
	str	r3, [r7, #116]
	.loc 1 2577 2
	b	.L417
.L418:
	.loc 1 2577 36 discriminator 3
	ldr	r3, [r7, #116]
	adds	r3, r3, #1
	str	r3, [r7, #116]
.L417:
	.loc 1 2577 18 discriminator 1
	ldr	r3, [r7, #108]
	ldr	r2, [r3, #12]
	.loc 1 2577 26 discriminator 1
	ldr	r3, [r7, #116]
	lsls	r3, r3, #1
	add	r3, r3, r2
	ldrh	r3, [r3]
	.loc 1 2577 2 discriminator 1
	cmp	r3, #0
	bne	.L418
	.loc 1 2580 8
	ldr	r3, [r7, #108]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 2580 5
	cmp	r3, #4
	bne	.L419
	.loc 1 2581 16
	ldr	r3, [r7, #116]
	adds	r3, r3, #14
	.loc 1 2581 22
	ldr	r2, .L443
	umull	r2, r3, r2, r3
	lsrs	r3, r3, #3
	.loc 1 2581 9
	adds	r3, r3, #2
	str	r3, [r7, #112]
	.loc 1 2582 9
	ldr	r1, [r7, #112]
	ldr	r0, [r7, #4]
	bl	dir_alloc
	mov	r3, r0
	strb	r3, [r7, #127]
	.loc 1 2583 6
	ldrb	r3, [r7, #127]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L420
	.loc 1 2583 28 discriminator 1
	ldrb	r3, [r7, #127]	@ zero_extendqisi2
	b	.L440
.L420:
	.loc 1 2584 19
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #48]
	.loc 1 2584 40
	ldr	r3, [r7, #112]
	subs	r3, r3, #1
	.loc 1 2584 31
	lsls	r3, r3, #5
	.loc 1 2584 26
	subs	r2, r2, r3
	.loc 1 2584 15
	ldr	r3, [r7, #4]
	str	r2, [r3, #76]
	.loc 1 2586 14
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #7]	@ zero_extendqisi2
	.loc 1 2586 20
	and	r3, r3, #4
	.loc 1 2586 6
	cmp	r3, #0
	beq	.L421
	.loc 1 2587 17
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #7]	@ zero_extendqisi2
	bic	r3, r3, #4
	uxtb	r2, r3
	ldr	r3, [r7, #4]
	strb	r2, [r3, #7]
	.loc 1 2588 10
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	fill_first_frag
	mov	r3, r0
	strb	r3, [r7, #127]
	.loc 1 2589 7
	ldrb	r3, [r7, #127]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L422
	.loc 1 2589 29 discriminator 1
	ldrb	r3, [r7, #127]	@ zero_extendqisi2
	b	.L440
.L422:
	.loc 1 2590 10
	ldr	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #52]
	mov	r2, #-1
	mov	r1, r3
	bl	fill_last_frag
	mov	r3, r0
	strb	r3, [r7, #127]
	.loc 1 2591 7
	ldrb	r3, [r7, #127]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L423
	.loc 1 2591 29 discriminator 1
	ldrb	r3, [r7, #127]	@ zero_extendqisi2
	b	.L440
.L423:
	.loc 1 2592 15
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	.loc 1 2592 7
	cmp	r3, #0
	beq	.L421
.LBB5:
	.loc 1 2595 30
	ldr	r2, [r7, #4]
	.loc 1 2595 11
	add	r3, r7, #8
	mov	r1, r2
	mov	r0, r3
	bl	load_obj_xdir
	mov	r3, r0
	strb	r3, [r7, #127]
	.loc 1 2596 8
	ldrb	r3, [r7, #127]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L424
	.loc 1 2596 30 discriminator 1
	ldrb	r3, [r7, #127]	@ zero_extendqisi2
	b	.L440
.L424:
	.loc 1 2597 21
	ldr	r3, [r7, #4]
	ldrd	r2, [r3, #16]
	.loc 1 2597 33
	ldr	r1, [r7, #108]
	ldrh	r1, [r1, #10]
	.loc 1 2597 41
	lsls	r1, r1, #9
	movs	r0, #0
	mov	r4, r1
	mov	r5, r0
	.loc 1 2597 21
	adds	r8, r2, r4
	adc	r9, r3, r5
	ldr	r3, [r7, #4]
	strd	r8, [r3, #16]
	.loc 1 2598 16
	ldr	r3, [r7, #108]
	ldr	r3, [r3, #16]
	.loc 1 2598 5
	add	r1, r3, #56
	ldr	r3, [r7, #4]
	ldrd	r2, [r3, #16]
	mov	r0, r1
	bl	st_qword
	.loc 1 2599 16
	ldr	r3, [r7, #108]
	ldr	r3, [r3, #16]
	.loc 1 2599 5
	add	r1, r3, #40
	ldr	r3, [r7, #4]
	ldrd	r2, [r3, #16]
	mov	r0, r1
	bl	st_qword
	.loc 1 2600 29
	ldr	r3, [r7, #4]
	ldrb	r2, [r3, #7]	@ zero_extendqisi2
	.loc 1 2600 7
	ldr	r3, [r7, #108]
	ldr	r3, [r3, #16]
	.loc 1 2600 15
	adds	r3, r3, #33
	.loc 1 2600 20
	orr	r2, r2, #1
	uxtb	r2, r2
	strb	r2, [r3]
	.loc 1 2601 11
	add	r3, r7, #8
	mov	r0, r3
	bl	store_xdir
	mov	r3, r0
	strb	r3, [r7, #127]
	.loc 1 2602 8
	ldrb	r3, [r7, #127]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L421
	.loc 1 2602 30 discriminator 1
	ldrb	r3, [r7, #127]	@ zero_extendqisi2
	b	.L440
.L421:
.LBE5:
	.loc 1 2606 3
	ldr	r3, [r7, #108]
	ldr	r2, [r3, #16]
	.loc 1 2606 29
	ldr	r3, [r7, #108]
	ldr	r3, [r3, #12]
	.loc 1 2606 3
	mov	r1, r3
	mov	r0, r2
	bl	create_xdir
	.loc 1 2607 10
	movs	r3, #0
	b	.L440
.L419:
	.loc 1 2611 16
	ldr	r3, [r7, #4]
	add	r1, r3, #64
	.loc 1 2611 2
	add	r3, r7, #92
	movs	r2, #12
	mov	r0, r3
	bl	mem_cpy
	.loc 1 2612 8
	ldrb	r3, [r7, #103]	@ zero_extendqisi2
	.loc 1 2612 13
	and	r3, r3, #1
	.loc 1 2612 5
	cmp	r3, #0
	beq	.L427
	.loc 1 2613 14
	ldr	r3, [r7, #4]
	movs	r2, #64
	strb	r2, [r3, #75]
	.loc 1 2614 10
	movs	r3, #1
	str	r3, [r7, #120]
	.loc 1 2614 3
	b	.L428
.L431:
	.loc 1 2615 18
	ldr	r3, [r7, #4]
	add	r0, r3, #64
	.loc 1 2615 30
	ldr	r3, [r7, #108]
	ldr	r2, [r3, #12]
	.loc 1 2615 4
	add	r1, r7, #92
	ldr	r3, [r7, #120]
	bl	gen_numname
	.loc 1 2616 10
	ldr	r0, [r7, #4]
	bl	dir_find
	mov	r3, r0
	strb	r3, [r7, #127]
	.loc 1 2617 7
	ldrb	r3, [r7, #127]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L441
	.loc 1 2614 25 discriminator 2
	ldr	r3, [r7, #120]
	adds	r3, r3, #1
	str	r3, [r7, #120]
.L428:
	.loc 1 2614 3 discriminator 1
	ldr	r3, [r7, #120]
	cmp	r3, #99
	bls	.L431
	b	.L430
.L441:
	.loc 1 2617 4
	nop
.L430:
	.loc 1 2619 6
	ldr	r3, [r7, #120]
	cmp	r3, #100
	bne	.L432
	.loc 1 2619 24 discriminator 1
	movs	r3, #7
	b	.L440
.L432:
	.loc 1 2620 6
	ldrb	r3, [r7, #127]	@ zero_extendqisi2
	cmp	r3, #4
	beq	.L433
	.loc 1 2620 33 discriminator 1
	ldrb	r3, [r7, #127]	@ zero_extendqisi2
	b	.L440
.L433:
	.loc 1 2621 18
	ldrb	r2, [r7, #103]	@ zero_extendqisi2
	.loc 1 2621 14
	ldr	r3, [r7, #4]
	strb	r2, [r3, #75]
.L427:
	.loc 1 2625 13
	ldrb	r3, [r7, #103]	@ zero_extendqisi2
	.loc 1 2625 18
	and	r3, r3, #2
	.loc 1 2625 48
	cmp	r3, #0
	beq	.L434
	.loc 1 2625 33 discriminator 1
	ldr	r3, [r7, #116]
	adds	r3, r3, #12
	.loc 1 2625 39 discriminator 1
	ldr	r2, .L443+4
	umull	r2, r3, r2, r3
	lsrs	r3, r3, #2
	.loc 1 2625 48 discriminator 1
	adds	r3, r3, #1
	b	.L435
.L434:
	.loc 1 2625 48 is_stmt 0 discriminator 2
	movs	r3, #1
.L435:
	.loc 1 2625 8 is_stmt 1 discriminator 4
	str	r3, [r7, #112]
	.loc 1 2626 8 discriminator 4
	ldr	r1, [r7, #112]
	ldr	r0, [r7, #4]
	bl	dir_alloc
	mov	r3, r0
	strb	r3, [r7, #127]
	.loc 1 2627 5 discriminator 4
	ldrb	r3, [r7, #127]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L436
	.loc 1 2627 19 discriminator 1
	ldr	r3, [r7, #112]
	subs	r3, r3, #1
	str	r3, [r7, #112]
	ldr	r3, [r7, #112]
	cmp	r3, #0
	beq	.L436
	.loc 1 2628 23
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #48]
	.loc 1 2628 38
	ldr	r3, [r7, #112]
	lsls	r3, r3, #5
	.loc 1 2628 9
	subs	r3, r2, r3
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	dir_sdi
	mov	r3, r0
	strb	r3, [r7, #127]
	.loc 1 2629 6
	ldrb	r3, [r7, #127]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L436
	.loc 1 2630 20
	ldr	r3, [r7, #4]
	adds	r3, r3, #64
	.loc 1 2630 10
	mov	r0, r3
	bl	sum_sfn
	mov	r3, r0
	strb	r3, [r7, #107]
.L438:
	.loc 1 2632 11
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #56]
	mov	r1, r3
	ldr	r0, [r7, #108]
	bl	move_window
	mov	r3, r0
	strb	r3, [r7, #127]
	.loc 1 2633 8
	ldrb	r3, [r7, #127]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L442
	.loc 1 2634 15
	ldr	r3, [r7, #108]
	ldr	r0, [r3, #12]
	.loc 1 2634 5
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #60]
	ldr	r3, [r7, #112]
	uxtb	r2, r3
	ldrb	r3, [r7, #107]	@ zero_extendqisi2
	bl	put_lfn
	.loc 1 2635 15
	ldr	r3, [r7, #108]
	movs	r2, #1
	strb	r2, [r3, #4]
	.loc 1 2636 11
	movs	r1, #0
	ldr	r0, [r7, #4]
	bl	dir_next
	mov	r3, r0
	strb	r3, [r7, #127]
	.loc 1 2637 4
	ldrb	r3, [r7, #127]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L436
	.loc 1 2637 26 discriminator 1
	ldr	r3, [r7, #112]
	subs	r3, r3, #1
	str	r3, [r7, #112]
	ldr	r3, [r7, #112]
	cmp	r3, #0
	bne	.L438
	b	.L436
.L444:
	.align	2
.L443:
	.word	-2004318071
	.word	1321528399
.L442:
	.loc 1 2633 5
	nop
.L436:
	.loc 1 2647 5
	ldrb	r3, [r7, #127]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L439
	.loc 1 2648 9
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #56]
	mov	r1, r3
	ldr	r0, [r7, #108]
	bl	move_window
	mov	r3, r0
	strb	r3, [r7, #127]
	.loc 1 2649 6
	ldrb	r3, [r7, #127]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L439
	.loc 1 2653 16
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #60]
	.loc 1 2653 4
	movs	r2, #8
	movs	r1, #0
	mov	r0, r3
	bl	memset_32
	.loc 1 2655 20
	ldr	r3, [r7, #4]
	ldr	r0, [r3, #60]
	.loc 1 2655 27
	ldr	r3, [r7, #4]
	adds	r3, r3, #64
	.loc 1 2655 4
	movs	r2, #11
	mov	r1, r3
	bl	mem_cpy
	.loc 1 2657 24
	ldr	r3, [r7, #4]
	ldrb	r2, [r3, #75]	@ zero_extendqisi2
	.loc 1 2657 6
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #60]
	.loc 1 2657 11
	adds	r3, r3, #12
	.loc 1 2657 29
	and	r2, r2, #24
	uxtb	r2, r2
	.loc 1 2657 16
	strb	r2, [r3]
	.loc 1 2659 14
	ldr	r3, [r7, #108]
	movs	r2, #1
	strb	r2, [r3, #4]
.L439:
	.loc 1 2663 9
	ldrb	r3, [r7, #127]	@ zero_extendqisi2
.L440:
	.loc 1 2664 1 discriminator 1
	mov	r0, r3
	adds	r7, r7, #128
	.cfi_def_cfa_offset 24
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r4, r5, r7, r8, r9, pc}
	.cfi_endproc
.LFE47:
	.size	dir_register, .-dir_register
	.section	.text.dir_remove,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	dir_remove, %function
dir_remove:
.LFB48:
	.loc 1 2678 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #24
	.cfi_def_cfa_offset 32
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 1 2680 9
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #16]
	.loc 1 2682 8
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #48]
	str	r3, [r7, #12]
	.loc 1 2684 11
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #76]
	.loc 1 2684 44
	cmp	r3, #-1
	beq	.L446
	.loc 1 2684 46 discriminator 1
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #76]
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	dir_sdi
	mov	r3, r0
	b	.L447
.L446:
	.loc 1 2684 44 discriminator 2
	movs	r3, #0
.L447:
	.loc 1 2684 6 discriminator 4
	strb	r3, [r7, #23]
	.loc 1 2685 5 discriminator 4
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L448
.L454:
	.loc 1 2687 10
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #56]
	mov	r1, r3
	ldr	r0, [r7, #16]
	bl	move_window
	mov	r3, r0
	strb	r3, [r7, #23]
	.loc 1 2688 7
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L456
	.loc 1 2689 15
	ldr	r3, [r7, #16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 2689 7
	cmp	r3, #4
	bne	.L451
	.loc 1 2690 7
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #60]
	.loc 1 2690 16
	ldrb	r2, [r3]	@ zero_extendqisi2
	.loc 1 2690 7
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #60]
	.loc 1 2690 16
	and	r2, r2, #127
	uxtb	r2, r2
	strb	r2, [r3]
	b	.L452
.L451:
	.loc 1 2692 7
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #60]
	.loc 1 2692 16
	movs	r2, #229
	strb	r2, [r3]
.L452:
	.loc 1 2694 14
	ldr	r3, [r7, #16]
	movs	r2, #1
	strb	r2, [r3, #4]
	.loc 1 2695 10
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #48]
	.loc 1 2695 7
	ldr	r2, [r7, #12]
	cmp	r2, r3
	bls	.L457
	.loc 1 2696 10
	movs	r1, #0
	ldr	r0, [r7, #4]
	bl	dir_next
	mov	r3, r0
	strb	r3, [r7, #23]
	.loc 1 2697 3
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L454
	b	.L450
.L456:
	.loc 1 2688 4
	nop
	b	.L450
.L457:
	.loc 1 2695 4
	nop
.L450:
	.loc 1 2698 6
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	cmp	r3, #4
	bne	.L448
	.loc 1 2698 30 discriminator 1
	movs	r3, #2
	strb	r3, [r7, #23]
.L448:
	.loc 1 2709 9
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	.loc 1 2710 1
	mov	r0, r3
	adds	r7, r7, #24
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE48:
	.size	dir_remove, .-dir_remove
	.section	.text.get_fileinfo,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	get_fileinfo, %function
get_fileinfo:
.LFB49:
	.loc 1 2725 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #40
	.cfi_def_cfa_offset 56
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	str	r1, [r7]
	.loc 1 2730 9
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #16]
	.loc 1 2737 16
	ldr	r3, [r7]
	movs	r2, #0
	strb	r2, [r3, #26]
	.loc 1 2738 8
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #56]
	.loc 1 2738 5
	cmp	r3, #0
	beq	.L492
	.loc 1 2742 8
	ldr	r3, [r7, #16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 2742 5
	cmp	r3, #4
	bne	.L461
.LBB6:
	.loc 1 2743 8
	movs	r3, #0
	str	r3, [r7, #20]
	.loc 1 2745 6
	movs	r3, #64
	str	r3, [r7, #36]
	.loc 1 2745 19
	movs	r3, #0
	str	r3, [r7, #32]
	.loc 1 2746 6
	movs	r3, #0
	strh	r3, [r7, #26]	@ movhi
	.loc 1 2747 9
	b	.L462
.L468:
	.loc 1 2748 7
	ldr	r3, [r7, #36]
	cmp	r3, #608
	bcc	.L463
	.loc 1 2749 8
	movs	r3, #0
	str	r3, [r7, #32]
	.loc 1 2749 5
	b	.L464
.L463:
	.loc 1 2751 12
	ldr	r3, [r7, #36]
	and	r3, r3, #31
	.loc 1 2751 7
	cmp	r3, #0
	bne	.L465
	.loc 1 2751 27 discriminator 1
	ldr	r3, [r7, #36]
	adds	r3, r3, #2
	str	r3, [r7, #36]
.L465:
	.loc 1 2752 19
	ldr	r3, [r7, #16]
	ldr	r2, [r3, #16]
	.loc 1 2752 28
	ldr	r3, [r7, #36]
	add	r3, r3, r2
	.loc 1 2752 9
	mov	r0, r3
	bl	ld_word
	mov	r3, r0
	strh	r3, [r7, #28]	@ movhi
	.loc 1 2752 38
	ldr	r3, [r7, #36]
	adds	r3, r3, #2
	str	r3, [r7, #36]
	.loc 1 2752 46
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
	.loc 1 2753 7
	ldrh	r3, [r7, #26]
	cmp	r3, #0
	bne	.L466
	.loc 1 2753 16 discriminator 1
	ldrh	r3, [r7, #28]
	cmp	r3, #55296
	bcc	.L466
	.loc 1 2753 35 discriminator 2
	ldrh	r3, [r7, #28]
	cmp	r3, #57344
	bcs	.L466
	.loc 1 2754 8
	ldrh	r3, [r7, #28]	@ movhi
	strh	r3, [r7, #26]	@ movhi
	.loc 1 2754 5
	b	.L462
.L466:
	.loc 1 2756 17
	ldrh	r3, [r7, #26]
	.loc 1 2756 27
	lsls	r2, r3, #16
	.loc 1 2756 9
	ldrh	r3, [r7, #28]
	orr	r0, r2, r3
	ldr	r3, [r7, #32]
	adds	r3, r3, #24
	ldr	r2, [r7]
	add	r3, r3, r2
	adds	r1, r3, #2
	ldr	r3, [r7, #32]
	rsb	r3, r3, #255
	mov	r2, r3
	bl	put_utf
	str	r0, [r7, #12]
	.loc 1 2757 7
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L467
	.loc 1 2758 8
	movs	r3, #0
	str	r3, [r7, #32]
	.loc 1 2758 5
	b	.L464
.L467:
	.loc 1 2760 7
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	str	r3, [r7, #32]
	.loc 1 2761 7
	movs	r3, #0
	strh	r3, [r7, #26]	@ movhi
.L462:
	.loc 1 2747 17
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #16]
	.loc 1 2747 25
	adds	r3, r3, #35
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	.loc 1 2747 9
	ldr	r3, [r7, #20]
	cmp	r3, r2
	bcc	.L468
.L464:
	.loc 1 2763 6
	ldrh	r3, [r7, #26]
	cmp	r3, #0
	beq	.L469
	.loc 1 2763 19 discriminator 1
	movs	r3, #0
	str	r3, [r7, #32]
.L469:
	.loc 1 2764 6
	ldr	r3, [r7, #32]
	cmp	r3, #0
	bne	.L470
	.loc 1 2764 29 discriminator 1
	ldr	r3, [r7, #32]
	adds	r2, r3, #1
	str	r2, [r7, #32]
	.loc 1 2764 33 discriminator 1
	ldr	r2, [r7]
	add	r3, r3, r2
	movs	r2, #63
	strb	r2, [r3, #26]
.L470:
	.loc 1 2765 18
	ldr	r2, [r7]
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	adds	r3, r3, #26
	movs	r2, #0
	strb	r2, [r3]
	.loc 1 2766 19
	ldr	r3, [r7]
	movs	r2, #0
	strb	r2, [r3, #13]
	.loc 1 2768 20
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #16]
	.loc 1 2768 28
	adds	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 2768 32
	and	r3, r3, #55
	uxtb	r2, r3
	.loc 1 2768 16
	ldr	r3, [r7]
	strb	r2, [r3, #12]
	.loc 1 2769 20
	ldr	r3, [r7]
	ldrb	r3, [r3, #12]	@ zero_extendqisi2
	.loc 1 2769 30
	and	r3, r3, #16
	.loc 1 2769 42
	cmp	r3, #0
	bne	.L471
	.loc 1 2769 55 discriminator 1
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #16]
	.loc 1 2769 64 discriminator 1
	adds	r3, r3, #56
	.loc 1 2769 44 discriminator 1
	mov	r0, r3
	bl	ld_qword
	mov	r2, r0
	mov	r3, r1
	b	.L472
.L471:
	.loc 1 2769 42 discriminator 2
	mov	r2, #0
	mov	r3, #0
.L472:
	.loc 1 2769 14 discriminator 4
	ldr	r1, [r7]
	strd	r2, [r1]
	.loc 1 2770 26 discriminator 4
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #16]
	.loc 1 2770 40 discriminator 4
	adds	r3, r3, #12
	.loc 1 2770 16 discriminator 4
	mov	r0, r3
	bl	ld_word
	mov	r3, r0
	mov	r2, r3
	.loc 1 2770 14 discriminator 4
	ldr	r3, [r7]
	strh	r2, [r3, #10]	@ movhi
	.loc 1 2771 26 discriminator 4
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #16]
	.loc 1 2771 40 discriminator 4
	adds	r3, r3, #14
	.loc 1 2771 16 discriminator 4
	mov	r0, r3
	bl	ld_word
	mov	r3, r0
	mov	r2, r3
	.loc 1 2771 14 discriminator 4
	ldr	r3, [r7]
	strh	r2, [r3, #8]	@ movhi
	.loc 1 2772 3 discriminator 4
	b	.L458
.L461:
.LBE6:
	.loc 1 2776 9
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #76]
	.loc 1 2776 6
	cmp	r3, #-1
	beq	.L473
	.loc 1 2777 12
	movs	r3, #0
	str	r3, [r7, #32]
	.loc 1 2777 7
	ldr	r3, [r7, #32]
	str	r3, [r7, #36]
	.loc 1 2778 7
	movs	r3, #0
	strh	r3, [r7, #26]	@ movhi
	.loc 1 2779 10
	b	.L474
.L478:
	.loc 1 2780 12
	ldr	r3, [r7, #16]
	ldr	r2, [r3, #12]
	.loc 1 2780 23
	ldr	r3, [r7, #36]
	adds	r1, r3, #1
	str	r1, [r7, #36]
	.loc 1 2780 20
	lsls	r3, r3, #1
	add	r3, r3, r2
	.loc 1 2780 8
	ldrh	r3, [r3]	@ movhi
	strh	r3, [r7, #28]	@ movhi
	.loc 1 2781 8
	ldrh	r3, [r7, #26]
	cmp	r3, #0
	bne	.L475
	.loc 1 2781 17 discriminator 1
	ldrh	r3, [r7, #28]
	cmp	r3, #55296
	bcc	.L475
	.loc 1 2781 36 discriminator 2
	ldrh	r3, [r7, #28]
	cmp	r3, #57344
	bcs	.L475
	.loc 1 2782 9
	ldrh	r3, [r7, #28]	@ movhi
	strh	r3, [r7, #26]	@ movhi
	.loc 1 2782 6
	b	.L474
.L475:
	.loc 1 2784 18
	ldrh	r3, [r7, #26]
	.loc 1 2784 28
	lsls	r2, r3, #16
	.loc 1 2784 10
	ldrh	r3, [r7, #28]
	orr	r0, r2, r3
	ldr	r3, [r7, #32]
	adds	r3, r3, #24
	ldr	r2, [r7]
	add	r3, r3, r2
	adds	r1, r3, #2
	ldr	r3, [r7, #32]
	rsb	r3, r3, #255
	mov	r2, r3
	bl	put_utf
	str	r0, [r7, #12]
	.loc 1 2785 8
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L476
	.loc 1 2786 9
	movs	r3, #0
	str	r3, [r7, #32]
	.loc 1 2786 6
	b	.L477
.L476:
	.loc 1 2788 8
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	str	r3, [r7, #32]
	.loc 1 2789 8
	movs	r3, #0
	strh	r3, [r7, #26]	@ movhi
.L474:
	.loc 1 2779 13
	ldr	r3, [r7, #16]
	ldr	r2, [r3, #12]
	.loc 1 2779 21
	ldr	r3, [r7, #36]
	lsls	r3, r3, #1
	add	r3, r3, r2
	ldrh	r3, [r3]
	.loc 1 2779 10
	cmp	r3, #0
	bne	.L478
.L477:
	.loc 1 2791 7
	ldrh	r3, [r7, #26]
	cmp	r3, #0
	beq	.L479
	.loc 1 2791 20 discriminator 1
	movs	r3, #0
	str	r3, [r7, #32]
.L479:
	.loc 1 2792 19
	ldr	r2, [r7]
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	adds	r3, r3, #26
	movs	r2, #0
	strb	r2, [r3]
.L473:
	.loc 1 2796 10
	movs	r3, #0
	str	r3, [r7, #32]
	.loc 1 2796 5
	ldr	r3, [r7, #32]
	str	r3, [r7, #36]
	.loc 1 2797 8
	b	.L480
.L484:
	.loc 1 2798 10
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #60]
	.loc 1 2798 18
	ldr	r3, [r7, #36]
	adds	r1, r3, #1
	str	r1, [r7, #36]
	.loc 1 2798 15
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 2798 6
	strh	r3, [r7, #28]	@ movhi
	.loc 1 2799 6
	ldrh	r3, [r7, #28]
	cmp	r3, #32
	bne	.L481
	.loc 1 2799 3 discriminator 1
	b	.L480
.L481:
	.loc 1 2800 6
	ldrh	r3, [r7, #28]
	cmp	r3, #5
	bne	.L482
	.loc 1 2800 22 discriminator 1
	movs	r3, #229
	strh	r3, [r7, #28]	@ movhi
.L482:
	.loc 1 2801 6
	ldr	r3, [r7, #36]
	cmp	r3, #9
	bne	.L483
	.loc 1 2801 15 discriminator 1
	ldr	r3, [r7, #32]
	cmp	r3, #11
	bhi	.L483
	.loc 1 2801 42 discriminator 2
	ldr	r3, [r7, #32]
	adds	r2, r3, #1
	str	r2, [r7, #32]
	.loc 1 2801 46 discriminator 2
	ldr	r2, [r7]
	add	r3, r3, r2
	movs	r2, #46
	strb	r2, [r3, #13]
.L483:
	.loc 1 2816 18
	ldr	r3, [r7, #32]
	adds	r2, r3, #1
	str	r2, [r7, #32]
	.loc 1 2816 24
	ldrh	r2, [r7, #28]	@ movhi
	uxtb	r1, r2
	.loc 1 2816 22
	ldr	r2, [r7]
	add	r3, r3, r2
	mov	r2, r1
	strb	r2, [r3, #13]
.L480:
	.loc 1 2797 8
	ldr	r3, [r7, #36]
	cmp	r3, #10
	bls	.L484
	.loc 1 2819 19
	ldr	r2, [r7]
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	adds	r3, r3, #13
	movs	r2, #0
	strb	r2, [r3]
	.loc 1 2821 16
	ldr	r3, [r7]
	ldrb	r3, [r3, #26]	@ zero_extendqisi2
	.loc 1 2821 5
	cmp	r3, #0
	bne	.L485
	.loc 1 2822 6
	ldr	r3, [r7, #32]
	cmp	r3, #0
	bne	.L486
	.loc 1 2823 17
	ldr	r3, [r7, #32]
	adds	r2, r3, #1
	str	r2, [r7, #32]
	.loc 1 2823 21
	ldr	r2, [r7]
	add	r3, r3, r2
	movs	r2, #63
	strb	r2, [r3, #26]
	b	.L487
.L486:
	.loc 1 2825 17
	movs	r3, #0
	str	r3, [r7, #32]
	.loc 1 2825 12
	ldr	r3, [r7, #32]
	str	r3, [r7, #36]
	.loc 1 2825 26
	movs	r3, #8
	strb	r3, [r7, #31]
	.loc 1 2825 4
	b	.L488
.L491:
	.loc 1 2826 29
	ldr	r2, [r7]
	ldr	r3, [r7, #36]
	add	r3, r3, r2
	adds	r3, r3, #13
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 2826 8
	strh	r3, [r7, #28]	@ movhi
	.loc 1 2827 8
	ldrh	r3, [r7, #28]
	cmp	r3, #46
	bne	.L489
	.loc 1 2827 24 discriminator 1
	movs	r3, #16
	strb	r3, [r7, #31]
.L489:
	.loc 1 2828 8
	ldrh	r3, [r7, #28]
	cmp	r3, #64
	bls	.L490
	.loc 1 2828 22 discriminator 1
	ldrh	r3, [r7, #28]
	cmp	r3, #90
	bhi	.L490
	.loc 1 2828 44 discriminator 2
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #60]
	.loc 1 2828 49 discriminator 2
	adds	r3, r3, #12
	ldrb	r2, [r3]	@ zero_extendqisi2
	.loc 1 2828 38 discriminator 2
	ldrb	r3, [r7, #31]
	ands	r3, r3, r2
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L490
	.loc 1 2828 65 discriminator 3
	ldrh	r3, [r7, #28]	@ movhi
	adds	r3, r3, #32
	strh	r3, [r7, #28]	@ movhi
.L490:
	.loc 1 2829 22 discriminator 2
	ldrh	r3, [r7, #28]	@ movhi
	uxtb	r1, r3
	.loc 1 2829 20 discriminator 2
	ldr	r2, [r7]
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	adds	r3, r3, #26
	mov	r2, r1
	strb	r2, [r3]
	.loc 1 2825 54 discriminator 2
	ldr	r3, [r7, #36]
	adds	r3, r3, #1
	str	r3, [r7, #36]
	.loc 1 2825 60 discriminator 2
	ldr	r3, [r7, #32]
	adds	r3, r3, #1
	str	r3, [r7, #32]
.L488:
	.loc 1 2825 46 discriminator 1
	ldr	r2, [r7]
	ldr	r3, [r7, #36]
	add	r3, r3, r2
	adds	r3, r3, #13
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 2825 4 discriminator 1
	cmp	r3, #0
	bne	.L491
.L487:
	.loc 1 2832 18
	ldr	r2, [r7]
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	adds	r3, r3, #26
	movs	r2, #0
	strb	r2, [r3]
	.loc 1 2833 10
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #60]
	.loc 1 2833 15
	adds	r3, r3, #12
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 2833 6
	cmp	r3, #0
	bne	.L485
	.loc 1 2833 37 discriminator 1
	ldr	r3, [r7]
	movs	r2, #0
	strb	r2, [r3, #13]
.L485:
	.loc 1 2848 19
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #60]
	.loc 1 2848 24
	adds	r3, r3, #11
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 2848 29
	and	r3, r3, #63
	uxtb	r2, r3
	.loc 1 2848 15
	ldr	r3, [r7]
	strb	r2, [r3, #12]
	.loc 1 2849 26
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #60]
	.loc 1 2849 32
	adds	r3, r3, #28
	.loc 1 2849 15
	mov	r0, r3
	bl	ld_dword
	mov	r3, r0
	movs	r2, #0
	mov	r4, r3
	mov	r5, r2
	.loc 1 2849 13
	ldr	r3, [r7]
	strd	r4, [r3]
	.loc 1 2850 25
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #60]
	.loc 1 2850 36
	adds	r3, r3, #22
	.loc 1 2850 15
	mov	r0, r3
	bl	ld_word
	mov	r3, r0
	mov	r2, r3
	.loc 1 2850 13
	ldr	r3, [r7]
	strh	r2, [r3, #10]	@ movhi
	.loc 1 2851 25
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #60]
	.loc 1 2851 36
	adds	r3, r3, #24
	.loc 1 2851 15
	mov	r0, r3
	bl	ld_word
	mov	r3, r0
	mov	r2, r3
	.loc 1 2851 13
	ldr	r3, [r7]
	strh	r2, [r3, #8]	@ movhi
	b	.L458
.L492:
	.loc 1 2738 21
	nop
.L458:
	.loc 1 2852 1
	adds	r7, r7, #40
	.cfi_def_cfa_offset 16
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r4, r5, r7, pc}
	.cfi_endproc
.LFE49:
	.size	get_fileinfo, .-get_fileinfo
	.section	.rodata
	.align	2
.LC0:
	.ascii	"*:<>|\"?\177\000"
	.align	2
.LC1:
	.ascii	"+,;=[]\000"
	.section	.text.create_name,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	create_name, %function
create_name:
.LFB50:
	.loc 1 2955 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #40
	.cfi_def_cfa_offset 48
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	str	r1, [r7]
	.loc 1 2966 6
	ldr	r3, [r7]
	ldr	r3, [r3]
	.loc 1 2966 4
	str	r3, [r7, #8]
	.loc 1 2966 26
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	.loc 1 2966 17
	ldr	r3, [r3, #12]
	str	r3, [r7, #16]
	.loc 1 2966 42
	movs	r3, #0
	str	r3, [r7, #20]
.L500:
	.loc 1 2968 8
	add	r3, r7, #8
	mov	r0, r3
	bl	tchar2uni
	str	r0, [r7, #12]
	.loc 1 2969 6
	ldr	r3, [r7, #12]
	cmp	r3, #-1
	bne	.L494
	.loc 1 2969 32 discriminator 1
	movs	r3, #6
	b	.L541
.L494:
	.loc 1 2970 6
	ldr	r3, [r7, #12]
	cmp	r3, #65536
	bcc	.L496
	.loc 1 2970 45 discriminator 1
	ldr	r3, [r7, #12]
	lsrs	r1, r3, #16
	.loc 1 2970 28 discriminator 1
	ldr	r3, [r7, #20]
	adds	r2, r3, #1
	str	r2, [r7, #20]
	.loc 1 2970 25 discriminator 1
	lsls	r3, r3, #1
	ldr	r2, [r7, #16]
	add	r3, r3, r2
	.loc 1 2970 34 discriminator 1
	uxth	r2, r1
	.loc 1 2970 32 discriminator 1
	strh	r2, [r3]	@ movhi
.L496:
	.loc 1 2971 6
	ldr	r3, [r7, #12]
	strh	r3, [r7, #36]	@ movhi
	.loc 1 2972 6
	ldrh	r3, [r7, #36]
	cmp	r3, #31
	bls	.L497
	.loc 1 2972 16 discriminator 1
	ldrh	r3, [r7, #36]
	cmp	r3, #47
	beq	.L497
	.loc 1 2972 32 discriminator 2
	ldrh	r3, [r7, #36]
	cmp	r3, #92
	beq	.L497
	.loc 1 2973 6
	ldrh	r3, [r7, #36]
	cmp	r3, #127
	bhi	.L498
	.loc 1 2973 20 discriminator 1
	ldrh	r3, [r7, #36]
	mov	r1, r3
	ldr	r0, .L545
	bl	str_chr
	mov	r3, r0
	.loc 1 2973 17 discriminator 1
	cmp	r3, #0
	beq	.L498
	.loc 1 2973 62 discriminator 2
	movs	r3, #6
	b	.L541
.L498:
	.loc 1 2974 6
	ldr	r3, [r7, #20]
	cmp	r3, #254
	bls	.L499
	.loc 1 2974 25 discriminator 1
	movs	r3, #6
	b	.L541
.L499:
	.loc 1 2975 9
	ldr	r3, [r7, #20]
	adds	r2, r3, #1
	str	r2, [r7, #20]
	.loc 1 2975 6
	lsls	r3, r3, #1
	ldr	r2, [r7, #16]
	add	r3, r3, r2
	.loc 1 2975 13
	ldrh	r2, [r7, #36]	@ movhi
	strh	r2, [r3]	@ movhi
	.loc 1 2968 6
	b	.L500
.L497:
	.loc 1 2977 5
	ldrh	r3, [r7, #36]
	cmp	r3, #31
	bhi	.L503
	.loc 1 2978 6
	movs	r3, #4
	strb	r3, [r7, #38]
	b	.L502
.L504:
	.loc 1 2980 42 discriminator 4
	ldr	r3, [r7, #8]
	adds	r3, r3, #1
	str	r3, [r7, #8]
.L503:
	.loc 1 2980 12 discriminator 1
	ldr	r3, [r7, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 2980 9 discriminator 1
	cmp	r3, #47
	beq	.L504
	.loc 1 2980 27 discriminator 3
	ldr	r3, [r7, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 2980 23 discriminator 3
	cmp	r3, #92
	beq	.L504
	.loc 1 2981 6
	movs	r3, #0
	strb	r3, [r7, #38]
	.loc 1 2982 15
	ldr	r3, [r7, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 2982 6
	cmp	r3, #31
	bhi	.L502
	.loc 1 2982 42 discriminator 1
	movs	r3, #4
	strb	r3, [r7, #38]
.L502:
	.loc 1 2984 8
	ldr	r2, [r7, #8]
	ldr	r3, [r7]
	str	r2, [r3]
	.loc 1 2997 8
	b	.L505
.L508:
	.loc 1 2998 11
	ldr	r3, [r7, #20]
	add	r3, r3, #-2147483648
	subs	r3, r3, #1
	lsls	r3, r3, #1
	ldr	r2, [r7, #16]
	add	r3, r3, r2
	.loc 1 2998 6
	ldrh	r3, [r3]	@ movhi
	strh	r3, [r7, #36]	@ movhi
	.loc 1 2999 6
	ldrh	r3, [r7, #36]
	cmp	r3, #32
	beq	.L506
	.loc 1 2999 17 discriminator 1
	ldrh	r3, [r7, #36]
	cmp	r3, #46
	bne	.L542
.L506:
	.loc 1 3000 5
	ldr	r3, [r7, #20]
	subs	r3, r3, #1
	str	r3, [r7, #20]
.L505:
	.loc 1 2997 8
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L508
	b	.L507
.L542:
	.loc 1 2999 3
	nop
.L507:
	.loc 1 3002 5
	ldr	r3, [r7, #20]
	lsls	r3, r3, #1
	ldr	r2, [r7, #16]
	add	r3, r3, r2
	.loc 1 3002 10
	movs	r2, #0
	strh	r2, [r3]	@ movhi
	.loc 1 3003 5
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L509
	.loc 1 3003 22 discriminator 1
	movs	r3, #6
	b	.L541
.L509:
	.loc 1 3006 10
	movs	r3, #0
	str	r3, [r7, #24]
	.loc 1 3006 2
	b	.L510
.L511:
	.loc 1 3006 33 discriminator 3
	ldr	r3, [r7, #24]
	adds	r3, r3, #1
	str	r3, [r7, #24]
.L510:
	.loc 1 3006 18 discriminator 1
	ldr	r3, [r7, #24]
	lsls	r3, r3, #1
	ldr	r2, [r7, #16]
	add	r3, r3, r2
	ldrh	r3, [r3]
	.loc 1 3006 2 discriminator 1
	cmp	r3, #32
	beq	.L511
	.loc 1 3007 5
	ldr	r3, [r7, #24]
	cmp	r3, #0
	bne	.L512
	.loc 1 3007 19 discriminator 2
	ldr	r3, [r7, #24]
	lsls	r3, r3, #1
	ldr	r2, [r7, #16]
	add	r3, r3, r2
	ldrh	r3, [r3]
	.loc 1 3007 13 discriminator 2
	cmp	r3, #46
	bne	.L514
.L512:
	.loc 1 3007 35 discriminator 3
	ldrb	r3, [r7, #38]
	orr	r3, r3, #3
	strb	r3, [r7, #38]
	.loc 1 3008 8 discriminator 3
	b	.L514
.L516:
	.loc 1 3008 41 discriminator 3
	ldr	r3, [r7, #20]
	subs	r3, r3, #1
	str	r3, [r7, #20]
.L514:
	.loc 1 3008 8 discriminator 1
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L515
	.loc 1 3008 22 discriminator 2
	ldr	r3, [r7, #20]
	add	r3, r3, #-2147483648
	subs	r3, r3, #1
	lsls	r3, r3, #1
	ldr	r2, [r7, #16]
	add	r3, r3, r2
	ldrh	r3, [r3]
	.loc 1 3008 16 discriminator 2
	cmp	r3, #46
	bne	.L516
.L515:
	.loc 1 3010 12
	ldr	r3, [r7, #4]
	adds	r3, r3, #64
	.loc 1 3010 2
	movs	r2, #11
	movs	r1, #32
	mov	r0, r3
	bl	mem_set
	.loc 1 3011 8
	movs	r3, #0
	strb	r3, [r7, #39]
	.loc 1 3011 4
	movs	r3, #0
	str	r3, [r7, #32]
	.loc 1 3011 16
	movs	r3, #8
	str	r3, [r7, #28]
.L534:
	.loc 1 3013 14
	ldr	r3, [r7, #24]
	adds	r2, r3, #1
	str	r2, [r7, #24]
	.loc 1 3013 11
	lsls	r3, r3, #1
	ldr	r2, [r7, #16]
	add	r3, r3, r2
	.loc 1 3013 6
	ldrh	r3, [r3]	@ movhi
	strh	r3, [r7, #36]	@ movhi
	.loc 1 3014 6
	ldrh	r3, [r7, #36]
	cmp	r3, #0
	beq	.L543
	.loc 1 3015 6
	ldrh	r3, [r7, #36]
	cmp	r3, #32
	beq	.L519
	.loc 1 3015 17 discriminator 1
	ldrh	r3, [r7, #36]
	cmp	r3, #46
	bne	.L520
	.loc 1 3015 31 discriminator 2
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	beq	.L520
.L519:
	.loc 1 3016 7
	ldrb	r3, [r7, #38]
	orr	r3, r3, #3
	strb	r3, [r7, #38]
	.loc 1 3017 4
	b	.L521
.L520:
	.loc 1 3020 6
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #28]
	cmp	r2, r3
	bcs	.L522
	.loc 1 3020 15 discriminator 1
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bne	.L523
.L522:
	.loc 1 3021 7
	ldr	r3, [r7, #28]
	cmp	r3, #11
	bne	.L524
	.loc 1 3022 8
	ldrb	r3, [r7, #38]
	orr	r3, r3, #3
	strb	r3, [r7, #38]
	.loc 1 3023 5
	b	.L518
.L524:
	.loc 1 3025 7
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	beq	.L525
	.loc 1 3025 21 discriminator 1
	ldrb	r3, [r7, #38]
	orr	r3, r3, #3
	strb	r3, [r7, #38]
.L525:
	.loc 1 3026 7
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bhi	.L544
	.loc 1 3027 7
	ldr	r3, [r7, #20]
	str	r3, [r7, #24]
	.loc 1 3027 15
	movs	r3, #8
	str	r3, [r7, #32]
	.loc 1 3027 23
	movs	r3, #11
	str	r3, [r7, #28]
	.loc 1 3027 31
	ldrb	r3, [r7, #39]
	lsls	r3, r3, #2
	strb	r3, [r7, #39]
	.loc 1 3028 4
	b	.L521
.L523:
	.loc 1 3031 6
	ldrh	r3, [r7, #36]
	cmp	r3, #127
	bls	.L527
	.loc 1 3032 7
	ldrb	r3, [r7, #38]
	orr	r3, r3, #2
	strb	r3, [r7, #38]
	.loc 1 3041 9
	ldrh	r3, [r7, #36]
	movw	r1, #866
	mov	r0, r3
	bl	ff_uni2oem
	mov	r3, r0
	strh	r3, [r7, #36]	@ movhi
	.loc 1 3042 11
	ldrh	r3, [r7, #36]
	and	r3, r3, #128
	.loc 1 3042 7
	cmp	r3, #0
	beq	.L527
	.loc 1 3042 33 discriminator 1
	ldrh	r3, [r7, #36]
	and	r3, r3, #127
	.loc 1 3042 29 discriminator 1
	ldr	r2, .L545+4
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	.loc 1 3042 22 discriminator 1
	strh	r3, [r7, #36]	@ movhi
.L527:
	.loc 1 3048 6
	ldrh	r3, [r7, #36]
	cmp	r3, #255
	bls	.L528
	.loc 1 3049 16
	ldr	r3, [r7, #28]
	subs	r3, r3, #1
	.loc 1 3049 7
	ldr	r2, [r7, #32]
	cmp	r2, r3
	bcc	.L529
	.loc 1 3050 8
	ldrb	r3, [r7, #38]
	orr	r3, r3, #3
	strb	r3, [r7, #38]
	.loc 1 3051 7
	ldr	r3, [r7, #28]
	str	r3, [r7, #32]
	.loc 1 3051 5
	b	.L521
.L529:
	.loc 1 3053 18
	ldrh	r3, [r7, #36]
	lsrs	r3, r3, #8
	uxth	r1, r3
	.loc 1 3053 12
	ldr	r3, [r7, #32]
	adds	r2, r3, #1
	str	r2, [r7, #32]
	.loc 1 3053 18
	uxtb	r1, r1
	.loc 1 3053 16
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	mov	r2, r1
	strb	r2, [r3, #64]
	b	.L530
.L528:
	.loc 1 3055 7
	ldrh	r3, [r7, #36]
	cmp	r3, #0
	beq	.L531
	.loc 1 3055 19 discriminator 1
	ldrh	r3, [r7, #36]
	mov	r1, r3
	ldr	r0, .L545+8
	bl	str_chr
	mov	r3, r0
	.loc 1 3055 16 discriminator 1
	cmp	r3, #0
	beq	.L532
.L531:
	.loc 1 3056 8
	movs	r3, #95
	strh	r3, [r7, #36]	@ movhi
	.loc 1 3056 18
	ldrb	r3, [r7, #38]
	orr	r3, r3, #3
	strb	r3, [r7, #38]
	b	.L530
.L546:
	.align	2
.L545:
	.word	.LC0
	.word	ExCvt
	.word	.LC1
.L532:
	.loc 1 3058 8
	ldrh	r3, [r7, #36]
	cmp	r3, #64
	bls	.L533
	.loc 1 3058 22 discriminator 1
	ldrh	r3, [r7, #36]
	cmp	r3, #90
	bhi	.L533
	.loc 1 3059 8
	ldrb	r3, [r7, #39]
	orr	r3, r3, #2
	strb	r3, [r7, #39]
.L533:
	.loc 1 3061 8
	ldrh	r3, [r7, #36]
	cmp	r3, #96
	bls	.L530
	.loc 1 3061 22 discriminator 1
	ldrh	r3, [r7, #36]
	cmp	r3, #122
	bhi	.L530
	.loc 1 3062 8
	ldrb	r3, [r7, #39]
	orr	r3, r3, #1
	strb	r3, [r7, #39]
	.loc 1 3062 17
	ldrh	r3, [r7, #36]	@ movhi
	subs	r3, r3, #32
	strh	r3, [r7, #36]	@ movhi
.L530:
	.loc 1 3066 11
	ldr	r3, [r7, #32]
	adds	r2, r3, #1
	str	r2, [r7, #32]
	.loc 1 3066 17
	ldrh	r2, [r7, #36]	@ movhi
	uxtb	r1, r2
	.loc 1 3066 15
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	mov	r2, r1
	strb	r2, [r3, #64]
.L521:
	.loc 1 3013 6
	b	.L534
.L543:
	.loc 1 3014 3
	nop
	b	.L518
.L544:
	.loc 1 3026 4
	nop
.L518:
	.loc 1 3069 12
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #64]	@ zero_extendqisi2
	.loc 1 3069 5
	cmp	r3, #229
	bne	.L535
	.loc 1 3069 35 discriminator 1
	ldr	r3, [r7, #4]
	movs	r2, #5
	strb	r2, [r3, #64]
.L535:
	.loc 1 3071 5
	ldr	r3, [r7, #28]
	cmp	r3, #8
	bne	.L536
	.loc 1 3071 17 discriminator 1
	ldrb	r3, [r7, #39]
	lsls	r3, r3, #2
	strb	r3, [r7, #39]
.L536:
	.loc 1 3072 9
	ldrb	r3, [r7, #39]	@ zero_extendqisi2
	and	r3, r3, #12
	.loc 1 3072 5
	cmp	r3, #12
	beq	.L537
	.loc 1 3072 31 discriminator 2
	ldrb	r3, [r7, #39]	@ zero_extendqisi2
	and	r3, r3, #3
	.loc 1 3072 25 discriminator 2
	cmp	r3, #3
	bne	.L538
.L537:
	.loc 1 3072 51 discriminator 3
	ldrb	r3, [r7, #38]
	orr	r3, r3, #2
	strb	r3, [r7, #38]
.L538:
	.loc 1 3073 11
	ldrb	r3, [r7, #38]	@ zero_extendqisi2
	and	r3, r3, #2
	.loc 1 3073 5
	cmp	r3, #0
	bne	.L539
	.loc 1 3074 9
	ldrb	r3, [r7, #39]	@ zero_extendqisi2
	and	r3, r3, #1
	.loc 1 3074 6
	cmp	r3, #0
	beq	.L540
	.loc 1 3074 20 discriminator 1
	ldrb	r3, [r7, #38]
	orr	r3, r3, #16
	strb	r3, [r7, #38]
.L540:
	.loc 1 3075 9
	ldrb	r3, [r7, #39]	@ zero_extendqisi2
	and	r3, r3, #4
	.loc 1 3075 6
	cmp	r3, #0
	beq	.L539
	.loc 1 3075 20 discriminator 1
	ldrb	r3, [r7, #38]
	orr	r3, r3, #8
	strb	r3, [r7, #38]
.L539:
	.loc 1 3078 13
	ldr	r3, [r7, #4]
	ldrb	r2, [r7, #38]
	strb	r2, [r3, #75]
	.loc 1 3080 9
	movs	r3, #0
.L541:
	.loc 1 3146 1 discriminator 1
	mov	r0, r3
	adds	r7, r7, #40
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE50:
	.size	create_name, .-create_name
	.section	.text.follow_path,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	follow_path, %function
follow_path:
.LFB51:
	.loc 1 3159 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #24
	.cfi_def_cfa_offset 32
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	str	r1, [r7]
	.loc 1 3162 9
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #16]
	.loc 1 3171 9
	b	.L548
.L549:
	.loc 1 3171 51 discriminator 4
	ldr	r3, [r7]
	adds	r3, r3, #1
	str	r3, [r7]
.L548:
	.loc 1 3171 12 discriminator 1
	ldr	r3, [r7]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 3171 9 discriminator 1
	cmp	r3, #47
	beq	.L549
	.loc 1 3171 30 discriminator 3
	ldr	r3, [r7]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 3171 26 discriminator 3
	cmp	r3, #92
	beq	.L549
	.loc 1 3172 18
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #8]
	.loc 1 3175 17
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #28]
	.loc 1 3191 12
	ldr	r3, [r7]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 3191 5
	cmp	r3, #31
	bhi	.L550
	.loc 1 3192 14
	ldr	r3, [r7, #4]
	movs	r2, #128
	strb	r2, [r3, #75]
	.loc 1 3193 9
	movs	r1, #0
	ldr	r0, [r7, #4]
	bl	dir_sdi
	mov	r3, r0
	strb	r3, [r7, #23]
	b	.L551
.L550:
	.loc 1 3197 10
	mov	r3, r7
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	create_name
	mov	r3, r0
	strb	r3, [r7, #23]
	.loc 1 3198 7
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L560
	.loc 1 3199 10
	ldr	r0, [r7, #4]
	bl	dir_find
	mov	r3, r0
	strb	r3, [r7, #23]
	.loc 1 3200 7
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #75]
	strb	r3, [r7, #15]
	.loc 1 3201 7
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L553
	.loc 1 3202 8
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	cmp	r3, #4
	bne	.L561
	.loc 1 3208 16
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	and	r3, r3, #4
	.loc 1 3208 10
	cmp	r3, #0
	bne	.L561
	.loc 1 3208 29 discriminator 1
	movs	r3, #5
	strb	r3, [r7, #23]
	.loc 1 3211 5 discriminator 1
	b	.L561
.L553:
	.loc 1 3213 11
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	and	r3, r3, #4
	.loc 1 3213 7
	cmp	r3, #0
	bne	.L562
	.loc 1 3215 17
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #6]	@ zero_extendqisi2
	.loc 1 3215 23
	and	r3, r3, #16
	.loc 1 3215 7
	cmp	r3, #0
	bne	.L556
	.loc 1 3216 9
	movs	r3, #5
	strb	r3, [r7, #23]
	.loc 1 3216 5
	b	.L551
.L556:
	.loc 1 3219 10
	ldr	r3, [r7, #16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 3219 7
	cmp	r3, #4
	bne	.L557
	.loc 1 3220 28
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #8]
	.loc 1 3220 19
	ldr	r3, [r7, #4]
	str	r2, [r3, #32]
	.loc 1 3221 37
	ldr	r3, [r7, #4]
	ldrd	r2, [r3, #16]
	.loc 1 3221 23
	mov	r3, r2
	.loc 1 3221 46
	bic	r3, r3, #255
	.loc 1 3221 69
	ldr	r2, [r7, #4]
	ldrb	r2, [r2, #7]	@ zero_extendqisi2
	.loc 1 3221 60
	orrs	r2, r2, r3
	.loc 1 3221 20
	ldr	r3, [r7, #4]
	str	r2, [r3, #36]
	.loc 1 3222 23
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #76]
	.loc 1 3222 19
	ldr	r3, [r7, #4]
	str	r2, [r3, #40]
	.loc 1 3223 5
	ldr	r3, [r7, #4]
	mov	r1, r3
	ldr	r0, [r7, #16]
	bl	init_alloc_info
	b	.L550
.L557:
	.loc 1 3227 35
	ldr	r3, [r7, #16]
	add	r2, r3, #60
	.loc 1 3227 47
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #48]
	.loc 1 3227 54
	ubfx	r3, r3, #0, #9
	.loc 1 3227 22
	add	r3, r3, r2
	mov	r1, r3
	ldr	r0, [r7, #16]
	bl	ld_clust
	mov	r2, r0
	.loc 1 3227 20
	ldr	r3, [r7, #4]
	str	r2, [r3, #8]
	.loc 1 3197 8
	b	.L550
.L560:
	.loc 1 3198 4
	nop
	b	.L551
.L561:
	.loc 1 3211 5
	nop
	b	.L551
.L562:
	.loc 1 3213 4
	nop
.L551:
	.loc 1 3232 9
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	.loc 1 3233 1
	mov	r0, r3
	adds	r7, r7, #24
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE51:
	.size	follow_path, .-follow_path
	.section	.text.get_ldnumber,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	get_ldnumber, %function
get_ldnumber:
.LFB52:
	.loc 1 3245 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #36
	.cfi_def_cfa_offset 40
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 1 3250 6
	mov	r3, #-1
	str	r3, [r7, #20]
	.loc 1 3256 10
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #16]
	.loc 1 3256 5
	ldr	r3, [r7, #16]
	str	r3, [r7, #28]
	.loc 1 3257 5
	ldr	r3, [r7, #16]
	cmp	r3, #0
	bne	.L564
	.loc 1 3257 18 discriminator 1
	ldr	r3, [r7, #20]
	b	.L565
.L564:
	.loc 1 3259 11 discriminator 2
	ldr	r3, [r7, #28]
	adds	r2, r3, #1
	str	r2, [r7, #28]
	.loc 1 3259 6 discriminator 2
	ldrb	r3, [r3]
	strb	r3, [r7, #15]
	.loc 1 3260 2 discriminator 2
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	cmp	r3, #31
	bls	.L566
	.loc 1 3260 43 discriminator 1
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	cmp	r3, #58
	bne	.L564
.L566:
	.loc 1 3262 5
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	cmp	r3, #58
	bne	.L567
	.loc 1 3263 5
	movs	r3, #1
	str	r3, [r7, #24]
	.loc 1 3264 9
	ldr	r3, [r7, #16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 3264 6
	cmp	r3, #47
	bls	.L568
	.loc 1 3264 25 discriminator 1
	ldr	r3, [r7, #16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 3264 21 discriminator 1
	cmp	r3, #57
	bhi	.L568
	.loc 1 3264 44 discriminator 2
	ldr	r3, [r7, #16]
	adds	r3, r3, #2
	.loc 1 3264 38 discriminator 2
	ldr	r2, [r7, #28]
	cmp	r2, r3
	bne	.L568
	.loc 1 3265 13
	ldr	r3, [r7, #16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 3265 6
	subs	r3, r3, #48
	str	r3, [r7, #24]
.L568:
	.loc 1 3280 6
	ldr	r3, [r7, #24]
	cmp	r3, #0
	bgt	.L569
	.loc 1 3281 8
	ldr	r3, [r7, #24]
	str	r3, [r7, #20]
	.loc 1 3282 10
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #28]
	str	r2, [r3]
.L569:
	.loc 1 3284 10
	ldr	r3, [r7, #20]
	b	.L565
.L567:
	.loc 1 3309 6
	movs	r3, #0
	str	r3, [r7, #20]
	.loc 1 3311 9
	ldr	r3, [r7, #20]
.L565:
	.loc 1 3312 1
	mov	r0, r3
	adds	r7, r7, #36
	.cfi_def_cfa_offset 4
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	ldr	r7, [sp], #4
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE52:
	.size	get_ldnumber, .-get_ldnumber
	.section	.rodata
	.align	2
.LC2:
	.ascii	"\353v\220EXFAT   \000"
	.align	2
.LC3:
	.ascii	"FAT32   \000"
	.section	.text.check_fs,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	check_fs, %function
check_fs:
.LFB53:
	.loc 1 3399 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #16
	.cfi_def_cfa_offset 24
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	str	r1, [r7]
	.loc 1 3404 12
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #4]
	.loc 1 3404 29
	ldr	r3, [r7, #4]
	mov	r2, #-1
	str	r2, [r3, #56]
	.loc 1 3405 6
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	bl	move_window
	mov	r3, r0
	.loc 1 3405 5
	cmp	r3, #0
	beq	.L571
	.loc 1 3405 45 discriminator 1
	movs	r3, #4
	b	.L572
.L571:
	.loc 1 3406 17
	ldr	r3, [r7, #4]
	adds	r3, r3, #60
	.loc 1 3406 9
	add	r3, r3, #510
	mov	r0, r3
	bl	ld_word
	mov	r3, r0
	strh	r3, [r7, #14]	@ movhi
	.loc 1 3408 5
	ldrh	r3, [r7, #14]
	movw	r2, #43605
	cmp	r3, r2
	bne	.L573
	.loc 1 3408 33 discriminator 1
	ldr	r3, [r7, #4]
	adds	r3, r3, #60
	.loc 1 3408 25 discriminator 1
	movs	r2, #11
	ldr	r1, .L580
	mov	r0, r3
	bl	mem_cmp
	mov	r3, r0
	.loc 1 3408 21 discriminator 1
	cmp	r3, #0
	bne	.L573
	.loc 1 3408 85 discriminator 2
	movs	r3, #1
	b	.L572
.L573:
	.loc 1 3410 4
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #60]
	strb	r3, [r7, #13]
	.loc 1 3411 5
	ldrb	r3, [r7, #13]	@ zero_extendqisi2
	cmp	r3, #235
	beq	.L574
	.loc 1 3411 16 discriminator 1
	ldrb	r3, [r7, #13]	@ zero_extendqisi2
	cmp	r3, #233
	beq	.L574
	.loc 1 3411 29 discriminator 2
	ldrb	r3, [r7, #13]	@ zero_extendqisi2
	cmp	r3, #232
	bne	.L575
.L574:
	.loc 1 3412 6
	ldrh	r3, [r7, #14]
	movw	r2, #43605
	cmp	r3, r2
	bne	.L576
	.loc 1 3412 34 discriminator 1
	ldr	r3, [r7, #4]
	adds	r3, r3, #60
	.loc 1 3412 26 discriminator 1
	adds	r3, r3, #82
	movs	r2, #8
	ldr	r1, .L580+4
	mov	r0, r3
	bl	mem_cmp
	mov	r3, r0
	.loc 1 3412 22 discriminator 1
	cmp	r3, #0
	bne	.L576
	.loc 1 3413 11
	movs	r3, #0
	b	.L572
.L576:
	.loc 1 3416 15
	ldr	r3, [r7, #4]
	adds	r3, r3, #60
	.loc 1 3416 7
	adds	r3, r3, #11
	mov	r0, r3
	bl	ld_word
	mov	r3, r0
	strh	r3, [r7, #10]	@ movhi
	.loc 1 3417 5
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #73]
	strb	r3, [r7, #13]
	.loc 1 3418 10
	ldrh	r2, [r7, #10]
	.loc 1 3418 15
	ldrh	r3, [r7, #10]
	subs	r3, r3, #1
	.loc 1 3418 10
	ands	r3, r3, r2
	.loc 1 3418 6
	cmp	r3, #0
	bne	.L575
	.loc 1 3418 26 discriminator 1
	ldrh	r3, [r7, #10]
	cmp	r3, #512
	bcc	.L575
	.loc 1 3418 38 discriminator 2
	ldrh	r3, [r7, #10]
	cmp	r3, #512
	bhi	.L575
	.loc 1 3419 4
	ldrb	r3, [r7, #13]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L575
	.loc 1 3419 20 discriminator 1
	ldrb	r2, [r7, #13]	@ zero_extendqisi2
	.loc 1 3419 25 discriminator 1
	ldrb	r3, [r7, #13]	@ zero_extendqisi2
	subs	r3, r3, #1
	.loc 1 3419 20 discriminator 1
	ands	r3, r3, r2
	.loc 1 3419 14 discriminator 1
	cmp	r3, #0
	bne	.L575
	.loc 1 3420 15
	ldr	r3, [r7, #4]
	adds	r3, r3, #60
	.loc 1 3420 7
	adds	r3, r3, #14
	mov	r0, r3
	bl	ld_word
	mov	r3, r0
	.loc 1 3420 4
	cmp	r3, #0
	beq	.L575
	.loc 1 3421 20
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #76]	@ zero_extendqisi2
	.loc 1 3421 25
	subs	r3, r3, #1
	.loc 1 3421 4
	cmp	r3, #1
	bhi	.L575
	.loc 1 3422 15
	ldr	r3, [r7, #4]
	adds	r3, r3, #60
	.loc 1 3422 7
	adds	r3, r3, #17
	mov	r0, r3
	bl	ld_word
	mov	r3, r0
	.loc 1 3422 4
	cmp	r3, #0
	beq	.L575
	.loc 1 3423 16
	ldr	r3, [r7, #4]
	adds	r3, r3, #60
	.loc 1 3423 8
	adds	r3, r3, #19
	mov	r0, r3
	bl	ld_word
	mov	r3, r0
	.loc 1 3423 4
	cmp	r3, #127
	bhi	.L577
	.loc 1 3423 49 discriminator 1
	ldr	r3, [r7, #4]
	adds	r3, r3, #60
	.loc 1 3423 40 discriminator 1
	adds	r3, r3, #32
	mov	r0, r3
	bl	ld_dword
	mov	r3, r0
	.loc 1 3423 37 discriminator 1
	cmp	r3, #65536
	bcc	.L575
.L577:
	.loc 1 3424 15
	ldr	r3, [r7, #4]
	adds	r3, r3, #60
	.loc 1 3424 7
	adds	r3, r3, #22
	mov	r0, r3
	bl	ld_word
	mov	r3, r0
	.loc 1 3424 4
	cmp	r3, #0
	beq	.L575
	.loc 1 3425 12
	movs	r3, #0
	b	.L572
.L575:
	.loc 1 3428 28
	ldrh	r3, [r7, #14]
	movw	r2, #43605
	cmp	r3, r2
	bne	.L578
	.loc 1 3428 28 is_stmt 0 discriminator 1
	movs	r3, #2
	b	.L572
.L578:
	.loc 1 3428 28 discriminator 2
	movs	r3, #3
.L572:
	.loc 1 3429 1 is_stmt 1
	mov	r0, r3
	adds	r7, r7, #16
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
.L581:
	.align	2
.L580:
	.word	.LC2
	.word	.LC3
	.cfi_endproc
.LFE53:
	.size	check_fs, .-check_fs
	.section	.text.find_volume,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	find_volume, %function
find_volume:
.LFB54:
	.loc 1 3439 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #32
	.cfi_def_cfa_offset 40
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	str	r1, [r7]
	.loc 1 3444 8
	movs	r1, #0
	ldr	r0, [r7, #4]
	bl	check_fs
	str	r0, [r7, #24]
	.loc 1 3445 5
	ldr	r3, [r7, #24]
	cmp	r3, #2
	beq	.L583
	.loc 1 3445 15 discriminator 1
	ldr	r3, [r7, #24]
	cmp	r3, #2
	bhi	.L584
	.loc 1 3445 28 discriminator 3
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L583
.L584:
	.loc 1 3445 50 discriminator 4
	ldr	r3, [r7, #24]
	b	.L594
.L583:
	.loc 1 3472 9
	movs	r3, #0
	str	r3, [r7, #28]
	.loc 1 3472 2
	b	.L586
.L587:
	.loc 1 3473 24 discriminator 3
	ldr	r3, [r7, #4]
	add	r2, r3, #60
	.loc 1 3473 42 discriminator 3
	ldr	r3, [r7, #28]
	lsls	r3, r3, #4
	.loc 1 3473 47 discriminator 3
	add	r3, r3, #454
	.loc 1 3473 15 discriminator 3
	add	r3, r3, r2
	mov	r0, r3
	bl	ld_dword
	mov	r2, r0
	.loc 1 3473 13 discriminator 3
	ldr	r3, [r7, #28]
	lsls	r3, r3, #2
	adds	r3, r3, #32
	add	r3, r3, r7
	str	r2, [r3, #-24]
	.loc 1 3472 22 discriminator 3
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
.L586:
	.loc 1 3472 2 discriminator 1
	ldr	r3, [r7, #28]
	cmp	r3, #3
	bls	.L587
	.loc 1 3475 22
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L588
	.loc 1 3475 22 is_stmt 0 discriminator 1
	ldr	r3, [r7]
	subs	r3, r3, #1
	b	.L589
.L588:
	.loc 1 3475 22 discriminator 2
	movs	r3, #0
.L589:
	.loc 1 3475 4 is_stmt 1 discriminator 4
	str	r3, [r7, #28]
.L593:
	.loc 1 3477 15
	ldr	r3, [r7, #28]
	lsls	r3, r3, #2
	adds	r3, r3, #32
	add	r3, r3, r7
	ldr	r3, [r3, #-24]
	.loc 1 3477 45
	cmp	r3, #0
	beq	.L590
	.loc 1 3477 21 discriminator 1
	ldr	r3, [r7, #28]
	lsls	r3, r3, #2
	adds	r3, r3, #32
	add	r3, r3, r7
	ldr	r3, [r3, #-24]
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	check_fs
	mov	r3, r0
	b	.L591
.L590:
	.loc 1 3477 45 discriminator 2
	movs	r3, #3
.L591:
	.loc 1 3477 7 discriminator 4
	str	r3, [r7, #24]
	.loc 1 3478 2 discriminator 4
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L592
	.loc 1 3478 21 discriminator 1
	ldr	r3, [r7, #24]
	cmp	r3, #1
	bls	.L592
	.loc 1 3478 33 discriminator 2
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	cmp	r3, #3
	bls	.L593
.L592:
	.loc 1 3479 9
	ldr	r3, [r7, #24]
.L594:
	.loc 1 3480 1 discriminator 1
	mov	r0, r3
	adds	r7, r7, #32
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE54:
	.size	find_volume, .-find_volume
	.section	.text.mount_volume,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	mount_volume, %function
mount_volume:
.LFB55:
	.loc 1 3494 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 104
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 32
	.cfi_offset 4, -32
	.cfi_offset 5, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	sub	sp, sp, #104
	.cfi_def_cfa_offset 136
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #28]
	str	r1, [r7, #24]
	mov	r3, r2
	strb	r3, [r7, #23]
	.loc 1 3505 7
	ldr	r3, [r7, #24]
	movs	r2, #0
	str	r2, [r3]
	.loc 1 3506 8
	ldr	r0, [r7, #28]
	bl	get_ldnumber
	str	r0, [r7, #72]
	.loc 1 3507 5
	ldr	r3, [r7, #72]
	cmp	r3, #0
	bge	.L596
	.loc 1 3507 22 discriminator 1
	movs	r3, #11
	b	.L597
.L596:
	.loc 1 3510 5
	ldr	r2, .L657
	ldr	r3, [r7, #72]
	ldr	r3, [r2, r3, lsl #2]
	str	r3, [r7, #68]
	.loc 1 3511 5
	ldr	r3, [r7, #68]
	cmp	r3, #0
	bne	.L598
	.loc 1 3511 18 discriminator 1
	movs	r3, #12
	b	.L597
.L598:
	.loc 1 3515 7
	ldr	r3, [r7, #24]
	ldr	r2, [r7, #68]
	str	r2, [r3]
	.loc 1 3517 7
	ldrb	r3, [r7, #23]
	bic	r3, r3, #1
	strb	r3, [r7, #23]
	.loc 1 3518 8
	ldr	r3, [r7, #68]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 3518 5
	cmp	r3, #0
	beq	.L599
	.loc 1 3519 10
	ldr	r3, [r7, #68]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	mov	r0, r3
	bl	disk_status
	mov	r3, r0
	strb	r3, [r7, #67]
	.loc 1 3520 14
	ldrb	r3, [r7, #67]	@ zero_extendqisi2
	and	r3, r3, #1
	.loc 1 3520 6
	cmp	r3, #0
	bne	.L599
	.loc 1 3521 7
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L600
	.loc 1 3521 28 discriminator 1
	ldrb	r3, [r7, #67]	@ zero_extendqisi2
	and	r3, r3, #4
	.loc 1 3521 19 discriminator 1
	cmp	r3, #0
	beq	.L600
	.loc 1 3522 12
	movs	r3, #10
	b	.L597
.L600:
	.loc 1 3524 11
	movs	r3, #0
	b	.L597
.L599:
	.loc 1 3531 14
	ldr	r3, [r7, #68]
	movs	r2, #0
	strb	r2, [r3]
	.loc 1 3532 9
	ldr	r3, [r7, #68]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	mov	r0, r3
	bl	disk_initialize
	mov	r3, r0
	strb	r3, [r7, #67]
	.loc 1 3533 11
	ldrb	r3, [r7, #67]	@ zero_extendqisi2
	and	r3, r3, #1
	.loc 1 3533 5
	cmp	r3, #0
	beq	.L601
	.loc 1 3534 10
	movs	r3, #3
	b	.L597
.L601:
	.loc 1 3536 5
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L602
	.loc 1 3536 26 discriminator 1
	ldrb	r3, [r7, #67]	@ zero_extendqisi2
	and	r3, r3, #4
	.loc 1 3536 17 discriminator 1
	cmp	r3, #0
	beq	.L602
	.loc 1 3537 10
	movs	r3, #10
	b	.L597
.L602:
	.loc 1 3545 8
	movs	r1, #0
	ldr	r0, [r7, #68]
	bl	find_volume
	str	r0, [r7, #88]
	.loc 1 3546 5
	ldr	r3, [r7, #88]
	cmp	r3, #4
	bne	.L603
	.loc 1 3546 23 discriminator 1
	movs	r3, #1
	b	.L597
.L603:
	.loc 1 3547 5
	ldr	r3, [r7, #88]
	cmp	r3, #1
	bls	.L604
	.loc 1 3547 23 discriminator 1
	movs	r3, #13
	b	.L597
.L604:
	.loc 1 3548 8
	ldr	r3, [r7, #68]
	ldr	r3, [r3, #56]
	str	r3, [r7, #60]
	.loc 1 3553 5
	ldr	r3, [r7, #88]
	cmp	r3, #1
	bne	.L605
.LBB7:
	.loc 1 3557 10
	movs	r3, #11
	str	r3, [r7, #76]
	.loc 1 3557 3
	b	.L606
.L608:
	.loc 1 3557 49 discriminator 4
	ldr	r3, [r7, #76]
	adds	r3, r3, #1
	str	r3, [r7, #76]
.L606:
	.loc 1 3557 3 discriminator 1
	ldr	r3, [r7, #76]
	cmp	r3, #63
	bhi	.L607
	.loc 1 3557 38 discriminator 3
	ldr	r2, [r7, #68]
	ldr	r3, [r7, #76]
	add	r3, r3, r2
	adds	r3, r3, #60
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 3557 28 discriminator 3
	cmp	r3, #0
	beq	.L608
.L607:
	.loc 1 3558 6
	ldr	r3, [r7, #76]
	cmp	r3, #63
	bhi	.L609
	.loc 1 3558 27 discriminator 1
	movs	r3, #13
	b	.L597
.L609:
	.loc 1 3560 15
	ldr	r3, [r7, #68]
	adds	r3, r3, #60
	.loc 1 3560 7
	adds	r3, r3, #104
	mov	r0, r3
	bl	ld_word
	mov	r3, r0
	.loc 1 3560 6
	cmp	r3, #256
	beq	.L610
	.loc 1 3560 47 discriminator 1
	movs	r3, #13
	b	.L597
.L610:
	.loc 1 3562 19
	ldr	r3, [r7, #68]
	ldrb	r3, [r3, #168]	@ zero_extendqisi2
	.loc 1 3562 6
	cmp	r3, #9
	beq	.L611
	.loc 1 3563 11
	movs	r3, #13
	b	.L597
.L611:
	.loc 1 3566 21
	ldr	r3, [r7, #68]
	adds	r3, r3, #60
	.loc 1 3566 12
	adds	r3, r3, #72
	mov	r0, r3
	bl	ld_qword
	mov	r2, r0
	mov	r3, r1
	.loc 1 3566 35
	ldr	r1, [r7, #60]
	movs	r0, #0
	str	r1, [r7, #8]
	str	r0, [r7, #12]
	.loc 1 3566 10
	ldr	r1, [r7, #8]
	adds	r1, r2, r1
	str	r1, [r7]
	ldr	r1, [r7, #12]
	adc	r1, r3, r1
	str	r1, [r7, #4]
	ldrd	r2, [r7]
	strd	r2, [r7, #40]
	.loc 1 3567 6
	ldrd	r2, [r7, #40]
	cmp	r3, #1
	bcc	.L612
	.loc 1 3567 43 discriminator 1
	movs	r3, #13
	b	.L597
.L612:
	.loc 1 3569 24
	ldr	r3, [r7, #68]
	adds	r3, r3, #60
	.loc 1 3569 15
	adds	r3, r3, #84
	mov	r0, r3
	bl	ld_dword
	mov	r2, r0
	.loc 1 3569 13
	ldr	r3, [r7, #68]
	str	r2, [r3, #32]
	.loc 1 3571 23
	ldr	r3, [r7, #68]
	ldrb	r2, [r3, #170]	@ zero_extendqisi2
	.loc 1 3571 14
	ldr	r3, [r7, #68]
	strb	r2, [r3, #3]
	.loc 1 3572 9
	ldr	r3, [r7, #68]
	ldrb	r3, [r3, #3]	@ zero_extendqisi2
	.loc 1 3572 6
	cmp	r3, #1
	beq	.L613
	.loc 1 3572 31 discriminator 1
	movs	r3, #13
	b	.L597
.L613:
	.loc 1 3574 27
	ldr	r3, [r7, #68]
	ldrb	r3, [r3, #169]	@ zero_extendqisi2
	mov	r2, r3
	.loc 1 3574 17
	movs	r3, #1
	lsls	r3, r3, r2
	.loc 1 3574 13
	uxth	r2, r3
	ldr	r3, [r7, #68]
	strh	r2, [r3, #10]	@ movhi
	.loc 1 3575 9
	ldr	r3, [r7, #68]
	ldrh	r3, [r3, #10]
	.loc 1 3575 6
	cmp	r3, #0
	bne	.L614
	.loc 1 3575 30 discriminator 1
	movs	r3, #13
	b	.L597
.L614:
	.loc 1 3577 20
	ldr	r3, [r7, #68]
	adds	r3, r3, #60
	.loc 1 3577 11
	adds	r3, r3, #92
	mov	r0, r3
	bl	ld_dword
	str	r0, [r7, #48]
	.loc 1 3578 6
	ldr	r3, [r7, #48]
	ldr	r2, .L657+4
	cmp	r3, r2
	bls	.L615
	.loc 1 3578 34 discriminator 1
	movs	r3, #13
	b	.L597
.L615:
	.loc 1 3579 24
	ldr	r3, [r7, #48]
	adds	r2, r3, #2
	.loc 1 3579 16
	ldr	r3, [r7, #68]
	str	r2, [r3, #28]
	.loc 1 3582 15
	ldr	r3, [r7, #68]
	ldr	r2, [r7, #60]
	str	r2, [r3, #36]
	.loc 1 3583 35
	ldr	r3, [r7, #68]
	adds	r3, r3, #60
	.loc 1 3583 26
	adds	r3, r3, #88
	mov	r0, r3
	bl	ld_dword
	mov	r2, r0
	.loc 1 3583 24
	ldr	r3, [r7, #60]
	add	r2, r2, r3
	.loc 1 3583 16
	ldr	r3, [r7, #68]
	str	r2, [r3, #48]
	.loc 1 3584 34
	ldr	r3, [r7, #68]
	adds	r3, r3, #60
	.loc 1 3584 25
	adds	r3, r3, #80
	mov	r0, r3
	bl	ld_dword
	mov	r2, r0
	.loc 1 3584 23
	ldr	r3, [r7, #60]
	add	r2, r2, r3
	.loc 1 3584 15
	ldr	r3, [r7, #68]
	str	r2, [r3, #40]
	.loc 1 3585 25
	ldr	r3, [r7, #68]
	ldr	r3, [r3, #48]
	.loc 1 3585 16
	movs	r2, #0
	mov	r10, r3
	mov	fp, r2
	.loc 1 3585 48
	ldr	r3, [r7, #68]
	ldrh	r3, [r3, #10]
	mov	r2, r3
	.loc 1 3585 44
	ldr	r3, [r7, #48]
	mul	r3, r2, r3
	movs	r2, #0
	mov	r8, r3
	mov	r9, r2
	.loc 1 3585 36
	adds	r4, r10, r8
	adc	r5, fp, r9
	.loc 1 3585 6
	ldrd	r2, [r7, #40]
	cmp	r2, r4
	sbcs	r3, r3, r5
	bcs	.L616
	.loc 1 3585 64 discriminator 1
	movs	r3, #13
	b	.L597
.L616:
	.loc 1 3586 26
	ldr	r3, [r7, #68]
	adds	r3, r3, #60
	.loc 1 3586 17
	adds	r3, r3, #96
	mov	r0, r3
	bl	ld_dword
	mov	r2, r0
	.loc 1 3586 15
	ldr	r3, [r7, #68]
	str	r2, [r3, #44]
	.loc 1 3589 10
	movs	r3, #0
	str	r3, [r7, #76]
	.loc 1 3589 6
	ldr	r3, [r7, #76]
	str	r3, [r7, #84]
.L622:
	.loc 1 3591 7
	ldr	r3, [r7, #76]
	cmp	r3, #0
	bne	.L617
	.loc 1 3592 17
	ldr	r3, [r7, #68]
	ldrh	r3, [r3, #10]
	mov	r2, r3
	.loc 1 3592 8
	ldr	r3, [r7, #84]
	cmp	r3, r2
	bcc	.L618
	.loc 1 3592 33 discriminator 1
	movs	r3, #13
	b	.L597
.L618:
	.loc 1 3593 48
	ldr	r3, [r7, #68]
	ldr	r3, [r3, #44]
	.loc 1 3593 25
	mov	r1, r3
	ldr	r0, [r7, #68]
	bl	clst2sect
	mov	r2, r0
	.loc 1 3593 9
	ldr	r3, [r7, #84]
	add	r3, r3, r2
	mov	r1, r3
	ldr	r0, [r7, #68]
	bl	move_window
	mov	r3, r0
	.loc 1 3593 8
	cmp	r3, #0
	beq	.L619
	.loc 1 3593 82 discriminator 1
	movs	r3, #1
	b	.L597
.L619:
	.loc 1 3594 7
	ldr	r3, [r7, #84]
	adds	r3, r3, #1
	str	r3, [r7, #84]
.L617:
	.loc 1 3596 15
	ldr	r2, [r7, #68]
	ldr	r3, [r7, #76]
	add	r3, r3, r2
	adds	r3, r3, #60
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 3596 7
	cmp	r3, #129
	beq	.L655
	.loc 1 3597 11
	ldr	r3, [r7, #76]
	adds	r3, r3, #32
	.loc 1 3597 6
	ubfx	r3, r3, #0, #9
	str	r3, [r7, #76]
	.loc 1 3591 7
	b	.L622
.L658:
	.align	2
.L657:
	.word	FatFs
	.word	2147483645
.L655:
	.loc 1 3596 4
	nop
	.loc 1 3599 18
	ldr	r3, [r7, #68]
	add	r2, r3, #60
	.loc 1 3599 30
	ldr	r3, [r7, #76]
	adds	r3, r3, #20
	.loc 1 3599 9
	add	r3, r3, r2
	mov	r0, r3
	bl	ld_dword
	str	r0, [r7, #80]
	.loc 1 3600 6
	ldr	r3, [r7, #80]
	cmp	r3, #1
	bls	.L623
	.loc 1 3600 27 discriminator 2
	ldr	r3, [r7, #68]
	ldr	r3, [r3, #28]
	.loc 1 3600 15 discriminator 2
	ldr	r2, [r7, #80]
	cmp	r2, r3
	bcc	.L624
.L623:
	.loc 1 3600 46 discriminator 3
	movs	r3, #13
	b	.L597
.L624:
	.loc 1 3601 19
	ldr	r3, [r7, #68]
	ldr	r2, [r3, #48]
	.loc 1 3601 34
	ldr	r3, [r7, #68]
	ldrh	r3, [r3, #10]
	mov	r1, r3
	.loc 1 3601 49
	ldr	r3, [r7, #80]
	subs	r3, r3, #2
	.loc 1 3601 42
	mul	r3, r1, r3
	.loc 1 3601 30
	add	r2, r2, r3
	.loc 1 3601 15
	ldr	r3, [r7, #68]
	str	r2, [r3, #52]
.L629:
	.loc 1 3603 26
	ldr	r3, [r7, #68]
	ldr	r2, [r3, #40]
	.loc 1 3603 42
	ldr	r3, [r7, #80]
	lsrs	r3, r3, #7
	.loc 1 3603 8
	add	r3, r3, r2
	mov	r1, r3
	ldr	r0, [r7, #68]
	bl	move_window
	mov	r3, r0
	.loc 1 3603 7
	cmp	r3, #0
	beq	.L625
	.loc 1 3603 80 discriminator 1
	movs	r3, #1
	b	.L597
.L625:
	.loc 1 3604 18
	ldr	r3, [r7, #68]
	add	r2, r3, #60
	.loc 1 3604 32
	ldr	r3, [r7, #80]
	and	r3, r3, #127
	.loc 1 3604 52
	lsls	r3, r3, #2
	.loc 1 3604 9
	add	r3, r3, r2
	mov	r0, r3
	bl	ld_dword
	str	r0, [r7, #36]
	.loc 1 3605 7
	ldr	r3, [r7, #36]
	cmp	r3, #-1
	beq	.L656
	.loc 1 3606 7
	ldr	r3, [r7, #80]
	adds	r3, r3, #1
	str	r3, [r7, #80]
	ldr	r2, [r7, #80]
	ldr	r3, [r7, #36]
	cmp	r2, r3
	beq	.L629
	.loc 1 3606 28 discriminator 1
	movs	r3, #13
	b	.L597
.L656:
	.loc 1 3605 4
	nop
	.loc 1 3610 33
	ldr	r3, [r7, #68]
	mov	r2, #-1
	str	r2, [r3, #24]
	.loc 1 3610 21
	ldr	r3, [r7, #68]
	ldr	r2, [r3, #24]
	.loc 1 3610 17
	ldr	r3, [r7, #68]
	str	r2, [r3, #20]
	.loc 1 3612 7
	movs	r3, #4
	str	r3, [r7, #88]
.LBE7:
	b	.L630
.L605:
	.loc 1 3616 15
	ldr	r3, [r7, #68]
	adds	r3, r3, #60
	.loc 1 3616 7
	adds	r3, r3, #11
	mov	r0, r3
	bl	ld_word
	mov	r3, r0
	.loc 1 3616 6
	cmp	r3, #512
	beq	.L631
	.loc 1 3616 52 discriminator 1
	movs	r3, #13
	b	.L597
.L631:
	.loc 1 3618 20
	ldr	r3, [r7, #68]
	adds	r3, r3, #60
	.loc 1 3618 12
	adds	r3, r3, #22
	mov	r0, r3
	bl	ld_word
	mov	r3, r0
	.loc 1 3618 10
	str	r3, [r7, #96]
	.loc 1 3619 6
	ldr	r3, [r7, #96]
	cmp	r3, #0
	bne	.L632
	.loc 1 3619 38 discriminator 1
	ldr	r3, [r7, #68]
	adds	r3, r3, #60
	.loc 1 3619 29 discriminator 1
	adds	r3, r3, #36
	mov	r0, r3
	bl	ld_dword
	str	r0, [r7, #96]
.L632:
	.loc 1 3620 13
	ldr	r3, [r7, #68]
	ldr	r2, [r7, #96]
	str	r2, [r3, #32]
	.loc 1 3622 23
	ldr	r3, [r7, #68]
	ldrb	r2, [r3, #76]	@ zero_extendqisi2
	.loc 1 3622 14
	ldr	r3, [r7, #68]
	strb	r2, [r3, #3]
	.loc 1 3623 9
	ldr	r3, [r7, #68]
	ldrb	r3, [r3, #3]	@ zero_extendqisi2
	.loc 1 3623 6
	cmp	r3, #1
	beq	.L633
	.loc 1 3623 28 discriminator 1
	ldr	r3, [r7, #68]
	ldrb	r3, [r3, #3]	@ zero_extendqisi2
	.loc 1 3623 23 discriminator 1
	cmp	r3, #2
	beq	.L633
	.loc 1 3623 50 discriminator 2
	movs	r3, #13
	b	.L597
.L633:
	.loc 1 3624 15
	ldr	r3, [r7, #68]
	ldrb	r3, [r3, #3]	@ zero_extendqisi2
	mov	r2, r3
	.loc 1 3624 10
	ldr	r3, [r7, #96]
	mul	r3, r2, r3
	str	r3, [r7, #96]
	.loc 1 3626 22
	ldr	r3, [r7, #68]
	ldrb	r3, [r3, #73]	@ zero_extendqisi2
	uxth	r2, r3
	.loc 1 3626 13
	ldr	r3, [r7, #68]
	strh	r2, [r3, #10]	@ movhi
	.loc 1 3627 9
	ldr	r3, [r7, #68]
	ldrh	r3, [r3, #10]
	.loc 1 3627 6
	cmp	r3, #0
	beq	.L634
	.loc 1 3627 28 discriminator 2
	ldr	r3, [r7, #68]
	ldrh	r3, [r3, #10]
	mov	r2, r3
	.loc 1 3627 41 discriminator 2
	ldr	r3, [r7, #68]
	ldrh	r3, [r3, #10]
	.loc 1 3627 49 discriminator 2
	subs	r3, r3, #1
	.loc 1 3627 36 discriminator 2
	ands	r3, r3, r2
	.loc 1 3627 22 discriminator 2
	cmp	r3, #0
	beq	.L635
.L634:
	.loc 1 3627 63 discriminator 3
	movs	r3, #13
	b	.L597
.L635:
	.loc 1 3629 27
	ldr	r3, [r7, #68]
	adds	r3, r3, #60
	.loc 1 3629 19
	adds	r3, r3, #17
	mov	r0, r3
	bl	ld_word
	mov	r3, r0
	mov	r2, r3
	.loc 1 3629 17
	ldr	r3, [r7, #68]
	strh	r2, [r3, #8]	@ movhi
	.loc 1 3630 9
	ldr	r3, [r7, #68]
	ldrh	r3, [r3, #8]
	.loc 1 3630 7
	and	r3, r3, #15
	uxth	r3, r3
	.loc 1 3630 6
	cmp	r3, #0
	beq	.L636
	.loc 1 3630 50 discriminator 1
	movs	r3, #13
	b	.L597
.L636:
	.loc 1 3632 19
	ldr	r3, [r7, #68]
	adds	r3, r3, #60
	.loc 1 3632 11
	adds	r3, r3, #19
	mov	r0, r3
	bl	ld_word
	mov	r3, r0
	.loc 1 3632 9
	str	r3, [r7, #100]
	.loc 1 3633 6
	ldr	r3, [r7, #100]
	cmp	r3, #0
	bne	.L637
	.loc 1 3633 36 discriminator 1
	ldr	r3, [r7, #68]
	adds	r3, r3, #60
	.loc 1 3633 27 discriminator 1
	adds	r3, r3, #32
	mov	r0, r3
	bl	ld_dword
	str	r0, [r7, #100]
.L637:
	.loc 1 3635 18
	ldr	r3, [r7, #68]
	adds	r3, r3, #60
	.loc 1 3635 10
	adds	r3, r3, #14
	mov	r0, r3
	bl	ld_word
	mov	r3, r0
	strh	r3, [r7, #58]	@ movhi
	.loc 1 3636 6
	ldrh	r3, [r7, #58]
	cmp	r3, #0
	bne	.L638
	.loc 1 3636 25 discriminator 1
	movs	r3, #13
	b	.L597
.L638:
	.loc 1 3639 17
	ldrh	r2, [r7, #58]
	ldr	r3, [r7, #96]
	add	r3, r3, r2
	.loc 1 3639 30
	ldr	r2, [r7, #68]
	ldrh	r2, [r2, #8]
	.loc 1 3639 42
	lsrs	r2, r2, #4
	uxth	r2, r2
	.loc 1 3639 10
	add	r3, r3, r2
	str	r3, [r7, #52]
	.loc 1 3640 6
	ldr	r2, [r7, #100]
	ldr	r3, [r7, #52]
	cmp	r2, r3
	bcs	.L639
	.loc 1 3640 30 discriminator 1
	movs	r3, #13
	b	.L597
.L639:
	.loc 1 3641 18
	ldr	r2, [r7, #100]
	ldr	r3, [r7, #52]
	subs	r3, r2, r3
	.loc 1 3641 32
	ldr	r2, [r7, #68]
	ldrh	r2, [r2, #10]
	.loc 1 3641 9
	udiv	r3, r3, r2
	str	r3, [r7, #48]
	.loc 1 3642 6
	ldr	r3, [r7, #48]
	cmp	r3, #0
	bne	.L640
	.loc 1 3642 26 discriminator 1
	movs	r3, #13
	b	.L597
.L640:
	.loc 1 3643 7
	movs	r3, #0
	str	r3, [r7, #88]
	.loc 1 3644 6
	ldr	r3, [r7, #48]
	ldr	r2, .L659
	cmp	r3, r2
	bhi	.L641
	.loc 1 3644 32 discriminator 1
	movs	r3, #3
	str	r3, [r7, #88]
.L641:
	.loc 1 3645 6
	ldr	r3, [r7, #48]
	movw	r2, #65525
	cmp	r3, r2
	bhi	.L642
	.loc 1 3645 28 discriminator 1
	movs	r3, #2
	str	r3, [r7, #88]
.L642:
	.loc 1 3646 6
	ldr	r3, [r7, #48]
	movw	r2, #4085
	cmp	r3, r2
	bhi	.L643
	.loc 1 3646 27 discriminator 1
	movs	r3, #1
	str	r3, [r7, #88]
.L643:
	.loc 1 3647 6
	ldr	r3, [r7, #88]
	cmp	r3, #0
	bne	.L644
	.loc 1 3647 24 discriminator 1
	movs	r3, #13
	b	.L597
.L644:
	.loc 1 3650 24
	ldr	r3, [r7, #48]
	adds	r2, r3, #2
	.loc 1 3650 16
	ldr	r3, [r7, #68]
	str	r2, [r3, #28]
	.loc 1 3651 15
	ldr	r3, [r7, #68]
	ldr	r2, [r7, #60]
	str	r2, [r3, #36]
	.loc 1 3652 23
	ldrh	r2, [r7, #58]
	ldr	r3, [r7, #60]
	add	r2, r2, r3
	.loc 1 3652 15
	ldr	r3, [r7, #68]
	str	r2, [r3, #40]
	.loc 1 3653 24
	ldr	r2, [r7, #60]
	ldr	r3, [r7, #52]
	add	r2, r2, r3
	.loc 1 3653 16
	ldr	r3, [r7, #68]
	str	r2, [r3, #48]
	.loc 1 3654 6
	ldr	r3, [r7, #88]
	cmp	r3, #3
	bne	.L645
	.loc 1 3655 16
	ldr	r3, [r7, #68]
	adds	r3, r3, #60
	.loc 1 3655 8
	adds	r3, r3, #42
	mov	r0, r3
	bl	ld_word
	mov	r3, r0
	.loc 1 3655 7
	cmp	r3, #0
	beq	.L646
	.loc 1 3655 43 discriminator 1
	movs	r3, #13
	b	.L597
.L646:
	.loc 1 3656 10
	ldr	r3, [r7, #68]
	ldrh	r3, [r3, #8]
	.loc 1 3656 7
	cmp	r3, #0
	beq	.L647
	.loc 1 3656 35 discriminator 1
	movs	r3, #13
	b	.L597
.L647:
	.loc 1 3657 27
	ldr	r3, [r7, #68]
	adds	r3, r3, #60
	.loc 1 3657 18
	adds	r3, r3, #44
	mov	r0, r3
	bl	ld_dword
	mov	r2, r0
	.loc 1 3657 16
	ldr	r3, [r7, #68]
	str	r2, [r3, #44]
	.loc 1 3658 15
	ldr	r3, [r7, #68]
	ldr	r3, [r3, #28]
	.loc 1 3658 11
	lsls	r3, r3, #2
	str	r3, [r7, #92]
	b	.L648
.L645:
	.loc 1 3660 10
	ldr	r3, [r7, #68]
	ldrh	r3, [r3, #8]
	.loc 1 3660 7
	cmp	r3, #0
	bne	.L649
	.loc 1 3660 35 discriminator 1
	movs	r3, #13
	b	.L597
.L649:
	.loc 1 3661 20
	ldr	r3, [r7, #68]
	ldr	r2, [r3, #40]
	.loc 1 3661 30
	ldr	r3, [r7, #96]
	add	r2, r2, r3
	.loc 1 3661 16
	ldr	r3, [r7, #68]
	str	r2, [r3, #44]
	.loc 1 3663 22
	ldr	r3, [r7, #88]
	cmp	r3, #2
	bne	.L650
	.loc 1 3663 7 discriminator 1
	ldr	r3, [r7, #68]
	ldr	r3, [r3, #28]
	.loc 1 3663 22 discriminator 1
	lsls	r3, r3, #1
	b	.L651
.L650:
	.loc 1 3663 26 discriminator 2
	ldr	r3, [r7, #68]
	ldr	r2, [r3, #28]
	.loc 1 3663 37 discriminator 2
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	.loc 1 3663 41 discriminator 2
	lsrs	r2, r3, #1
	.loc 1 3663 50 discriminator 2
	ldr	r3, [r7, #68]
	ldr	r3, [r3, #28]
	.loc 1 3663 61 discriminator 2
	and	r3, r3, #1
	.loc 1 3663 22 discriminator 2
	add	r3, r3, r2
.L651:
	.loc 1 3662 11
	str	r3, [r7, #92]
.L648:
	.loc 1 3665 9
	ldr	r3, [r7, #68]
	ldr	r2, [r3, #32]
	.loc 1 3665 27
	ldr	r3, [r7, #92]
	addw	r3, r3, #511
	.loc 1 3665 48
	lsrs	r3, r3, #9
	.loc 1 3665 6
	cmp	r2, r3
	bcs	.L652
	.loc 1 3665 70 discriminator 1
	movs	r3, #13
	b	.L597
.L652:
	.loc 1 3669 33
	ldr	r3, [r7, #68]
	mov	r2, #-1
	str	r2, [r3, #24]
	.loc 1 3669 21
	ldr	r3, [r7, #68]
	ldr	r2, [r3, #24]
	.loc 1 3669 17
	ldr	r3, [r7, #68]
	str	r2, [r3, #20]
	.loc 1 3670 16
	ldr	r3, [r7, #68]
	movs	r2, #128
	strb	r2, [r3, #5]
	.loc 1 3672 6
	ldr	r3, [r7, #88]
	cmp	r3, #3
	bne	.L630
	.loc 1 3673 15
	ldr	r3, [r7, #68]
	adds	r3, r3, #60
	.loc 1 3673 7
	adds	r3, r3, #48
	mov	r0, r3
	bl	ld_word
	mov	r3, r0
	.loc 1 3673 4
	cmp	r3, #1
	bne	.L630
	.loc 1 3674 7
	ldr	r3, [r7, #60]
	adds	r3, r3, #1
	mov	r1, r3
	ldr	r0, [r7, #68]
	bl	move_window
	mov	r3, r0
	.loc 1 3674 4
	cmp	r3, #0
	bne	.L630
	.loc 1 3676 17
	ldr	r3, [r7, #68]
	movs	r2, #0
	strb	r2, [r3, #5]
	.loc 1 3677 16
	ldr	r3, [r7, #68]
	adds	r3, r3, #60
	.loc 1 3677 8
	add	r3, r3, #510
	mov	r0, r3
	bl	ld_word
	mov	r3, r0
	mov	r2, r3
	.loc 1 3677 7
	movw	r3, #43605
	cmp	r2, r3
	bne	.L630
	.loc 1 3678 17
	ldr	r3, [r7, #68]
	adds	r3, r3, #60
	.loc 1 3678 8
	mov	r0, r3
	bl	ld_dword
	mov	r3, r0
	.loc 1 3678 5
	ldr	r2, .L659+4
	cmp	r3, r2
	bne	.L630
	.loc 1 3679 17
	ldr	r3, [r7, #68]
	adds	r3, r3, #60
	.loc 1 3679 8
	add	r3, r3, #484
	mov	r0, r3
	bl	ld_dword
	mov	r3, r0
	.loc 1 3679 5
	ldr	r2, .L659+8
	cmp	r3, r2
	bne	.L630
	.loc 1 3682 30
	ldr	r3, [r7, #68]
	adds	r3, r3, #60
	.loc 1 3682 21
	add	r3, r3, #488
	mov	r0, r3
	bl	ld_dword
	mov	r2, r0
	.loc 1 3682 19
	ldr	r3, [r7, #68]
	str	r2, [r3, #24]
	.loc 1 3685 30
	ldr	r3, [r7, #68]
	adds	r3, r3, #60
	.loc 1 3685 21
	add	r3, r3, #492
	mov	r0, r3
	bl	ld_dword
	mov	r2, r0
	.loc 1 3685 19
	ldr	r3, [r7, #68]
	str	r2, [r3, #20]
.L630:
	.loc 1 3693 16
	ldr	r3, [r7, #88]
	uxtb	r2, r3
	.loc 1 3693 14
	ldr	r3, [r7, #68]
	strb	r2, [r3]
	.loc 1 3694 11
	ldr	r3, .L659+12
	ldrh	r3, [r3]
	adds	r3, r3, #1
	uxth	r2, r3
	.loc 1 3694 9
	ldr	r3, .L659+12
	strh	r2, [r3]	@ movhi
	ldr	r3, .L659+12
	ldrh	r2, [r3]
	ldr	r3, [r7, #68]
	strh	r2, [r3, #6]	@ movhi
	.loc 1 3696 13
	ldr	r3, [r7, #68]
	ldr	r2, .L659+16
	str	r2, [r3, #12]
	.loc 1 3698 13
	ldr	r3, [r7, #68]
	ldr	r2, .L659+20
	str	r2, [r3, #16]
	.loc 1 3707 9
	movs	r3, #0
.L597:
	.loc 1 3708 1
	mov	r0, r3
	adds	r7, r7, #104
	.cfi_def_cfa_offset 32
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r4, r5, r7, r8, r9, r10, fp, pc}
.L660:
	.align	2
.L659:
	.word	268435445
	.word	1096897106
	.word	1631679090
	.word	Fsid
	.word	LfnBuf
	.word	DirBuf
	.cfi_endproc
.LFE55:
	.size	mount_volume, .-mount_volume
	.section	.text.validate,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	validate, %function
validate:
.LFB56:
	.loc 1 3721 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #16
	.cfi_def_cfa_offset 24
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	str	r1, [r7]
	.loc 1 3722 10
	movs	r3, #9
	strb	r3, [r7, #15]
	.loc 1 3725 5
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L662
	.loc 1 3725 16 discriminator 1
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	.loc 1 3725 10 discriminator 1
	cmp	r3, #0
	beq	.L662
	.loc 1 3725 27 discriminator 2
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	.loc 1 3725 31 discriminator 2
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 3725 21 discriminator 2
	cmp	r3, #0
	beq	.L662
	.loc 1 3725 47 discriminator 3
	ldr	r3, [r7, #4]
	ldrh	r2, [r3, #4]
	.loc 1 3725 58 discriminator 3
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	.loc 1 3725 62 discriminator 3
	ldrh	r3, [r3, #6]
	.loc 1 3725 41 discriminator 3
	cmp	r2, r3
	bne	.L662
	.loc 1 3737 24
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	.loc 1 3737 9
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	mov	r0, r3
	bl	disk_status
	mov	r3, r0
	.loc 1 3737 36
	and	r3, r3, #1
	.loc 1 3737 6
	cmp	r3, #0
	bne	.L662
	.loc 1 3738 8
	movs	r3, #0
	strb	r3, [r7, #15]
.L662:
	.loc 1 3742 34
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L663
	.loc 1 3742 34 is_stmt 0 discriminator 1
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	b	.L664
.L663:
	.loc 1 3742 34 discriminator 2
	movs	r3, #0
.L664:
	.loc 1 3742 7 is_stmt 1 discriminator 4
	ldr	r2, [r7]
	str	r3, [r2]
	.loc 1 3743 9 discriminator 4
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	.loc 1 3744 1 discriminator 4
	mov	r0, r3
	adds	r7, r7, #16
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE56:
	.size	validate, .-validate
	.section	.text.f_mount,"ax",%progbits
	.align	1
	.global	f_mount
	.syntax unified
	.thumb
	.thumb_func
	.type	f_mount, %function
f_mount:
.LFB57:
	.loc 1 3766 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #32
	.cfi_def_cfa_offset 40
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	mov	r3, r2
	strb	r3, [r7, #7]
	.loc 1 3770 15
	ldr	r3, [r7, #8]
	str	r3, [r7, #16]
	.loc 1 3774 8
	add	r3, r7, #16
	mov	r0, r3
	bl	get_ldnumber
	str	r0, [r7, #28]
	.loc 1 3775 5
	ldr	r3, [r7, #28]
	cmp	r3, #0
	bge	.L667
	.loc 1 3775 22 discriminator 1
	movs	r3, #11
	b	.L672
.L667:
	.loc 1 3776 6
	ldr	r2, .L673
	ldr	r3, [r7, #28]
	ldr	r3, [r2, r3, lsl #2]
	str	r3, [r7, #24]
	.loc 1 3778 5
	ldr	r3, [r7, #24]
	cmp	r3, #0
	beq	.L669
	.loc 1 3779 14
	ldr	r2, .L673
	ldr	r3, [r7, #28]
	movs	r1, #0
	str	r1, [r2, r3, lsl #2]
	.loc 1 3786 16
	ldr	r3, [r7, #24]
	movs	r2, #0
	strb	r2, [r3]
.L669:
	.loc 1 3789 6
	ldr	r3, [r7, #12]
	.loc 1 3789 5
	cmp	r3, #0
	beq	.L670
	.loc 1 3790 5
	ldr	r3, [r7, #12]
	.loc 1 3790 14
	ldr	r2, [r7, #28]
	uxtb	r2, r2
	.loc 1 3790 12
	strb	r2, [r3, #1]
	.loc 1 3804 5
	ldr	r3, [r7, #12]
	.loc 1 3804 15
	movs	r2, #0
	strb	r2, [r3]
	.loc 1 3805 14
	ldr	r2, [r7, #12]
	ldr	r1, .L673
	ldr	r3, [r7, #28]
	str	r2, [r1, r3, lsl #2]
.L670:
	.loc 1 3808 5
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L671
	.loc 1 3808 23 discriminator 1
	movs	r3, #0
	b	.L672
.L671:
	.loc 1 3810 8
	add	r1, r7, #12
	add	r3, r7, #8
	movs	r2, #0
	mov	r0, r3
	bl	mount_volume
	mov	r3, r0
	strb	r3, [r7, #23]
	.loc 1 3811 9
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
.L672:
	.loc 1 3812 1 discriminator 1
	mov	r0, r3
	adds	r7, r7, #32
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
.L674:
	.align	2
.L673:
	.word	FatFs
	.cfi_endproc
.LFE57:
	.size	f_mount, .-f_mount
	.section	.text.f_open,"ax",%progbits
	.align	1
	.global	f_open
	.syntax unified
	.thumb
	.thumb_func
	.type	f_open, %function
f_open:
.LFB58:
	.loc 1 3826 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 152
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 32
	.cfi_offset 4, -32
	.cfi_offset 5, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	sub	sp, sp, #152
	.cfi_def_cfa_offset 184
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #28]
	str	r1, [r7, #24]
	mov	r3, r2
	strb	r3, [r7, #23]
	.loc 1 3838 5
	ldr	r3, [r7, #28]
	cmp	r3, #0
	bne	.L676
	.loc 1 3838 18 discriminator 1
	movs	r3, #9
	b	.L699
.L676:
	.loc 1 3841 7
	ldrb	r3, [r7, #23]
	and	r3, r3, #63
	strb	r3, [r7, #23]
	.loc 1 3842 8
	ldrb	r2, [r7, #23]	@ zero_extendqisi2
	add	r1, r7, #36
	add	r3, r7, #24
	mov	r0, r3
	bl	mount_volume
	mov	r3, r0
	strb	r3, [r7, #151]
	.loc 1 3843 5
	ldrb	r3, [r7, #151]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L678
	.loc 1 3844 13
	ldr	r3, [r7, #36]
	str	r3, [r7, #40]
	.loc 1 3846 9
	ldr	r2, [r7, #24]
	add	r3, r7, #40
	mov	r1, r2
	mov	r0, r3
	bl	follow_path
	mov	r3, r0
	strb	r3, [r7, #151]
	.loc 1 3848 6
	ldrb	r3, [r7, #151]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L679
	.loc 1 3849 13
	ldrb	r3, [r7, #115]	@ zero_extendqisi2
	.loc 1 3849 8
	sxtb	r3, r3
	.loc 1 3849 7
	cmp	r3, #0
	bge	.L679
	.loc 1 3850 9
	movs	r3, #6
	strb	r3, [r7, #151]
.L679:
	.loc 1 3859 12
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	and	r3, r3, #28
	.loc 1 3859 6
	cmp	r3, #0
	beq	.L680
	.loc 1 3860 7
	ldrb	r3, [r7, #151]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L681
	.loc 1 3861 8
	ldrb	r3, [r7, #151]	@ zero_extendqisi2
	cmp	r3, #4
	bne	.L682
	.loc 1 3865 12
	add	r3, r7, #40
	mov	r0, r3
	bl	dir_register
	mov	r3, r0
	strb	r3, [r7, #151]
.L682:
	.loc 1 3868 10
	ldrb	r3, [r7, #23]
	orr	r3, r3, #8
	strb	r3, [r7, #23]
	b	.L683
.L681:
	.loc 1 3871 15
	ldrb	r3, [r7, #46]	@ zero_extendqisi2
	.loc 1 3871 21
	and	r3, r3, #17
	.loc 1 3871 8
	cmp	r3, #0
	beq	.L684
	.loc 1 3872 10
	movs	r3, #7
	strb	r3, [r7, #151]
	b	.L683
.L684:
	.loc 1 3874 15
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	and	r3, r3, #4
	.loc 1 3874 9
	cmp	r3, #0
	beq	.L683
	.loc 1 3874 27 discriminator 1
	movs	r3, #8
	strb	r3, [r7, #151]
.L683:
	.loc 1 3877 7
	ldrb	r3, [r7, #151]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L685
	.loc 1 3877 30 discriminator 1
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	and	r3, r3, #8
	.loc 1 3877 21 discriminator 1
	cmp	r3, #0
	beq	.L685
	.loc 1 3879 11
	ldr	r3, [r7, #36]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 3879 8
	cmp	r3, #4
	bne	.L686
	.loc 1 3881 17
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #28]
	str	r2, [r3]
	.loc 1 3882 6
	ldr	r3, [r7, #36]
	ldr	r2, [r7, #28]
	mov	r1, r2
	mov	r0, r3
	bl	init_alloc_info
	.loc 1 3884 16
	ldr	r3, [r7, #36]
	ldr	r3, [r3, #16]
	.loc 1 3884 25
	adds	r3, r3, #2
	.loc 1 3884 6
	movs	r2, #30
	movs	r1, #0
	mov	r0, r3
	bl	mem_set
	.loc 1 3885 16
	ldr	r3, [r7, #36]
	ldr	r3, [r3, #16]
	.loc 1 3885 25
	adds	r3, r3, #38
	.loc 1 3885 6
	movs	r2, #26
	movs	r1, #0
	mov	r0, r3
	bl	mem_set
	.loc 1 3886 8
	ldr	r3, [r7, #36]
	ldr	r3, [r3, #16]
	.loc 1 3886 16
	adds	r3, r3, #4
	.loc 1 3886 20
	movs	r2, #32
	strb	r2, [r3]
	.loc 1 3887 17
	ldr	r3, [r7, #36]
	ldr	r3, [r3, #16]
	.loc 1 3887 6
	adds	r3, r3, #8
	ldr	r1, .L700
	mov	r0, r3
	bl	st_dword
	.loc 1 3888 8
	ldr	r3, [r7, #36]
	ldr	r3, [r3, #16]
	.loc 1 3888 16
	adds	r3, r3, #33
	.loc 1 3888 21
	movs	r2, #1
	strb	r2, [r3]
	.loc 1 3889 12
	add	r3, r7, #40
	mov	r0, r3
	bl	store_xdir
	mov	r3, r0
	strb	r3, [r7, #151]
	.loc 1 3890 9
	ldrb	r3, [r7, #151]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L685
	.loc 1 3890 33 discriminator 1
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #8]
	.loc 1 3890 23 discriminator 1
	cmp	r3, #0
	beq	.L685
	.loc 1 3891 13
	ldr	r0, [r7, #28]
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #8]
	movs	r2, #0
	mov	r1, r3
	bl	remove_chain
	mov	r3, r0
	strb	r3, [r7, #151]
	.loc 1 3892 30
	ldr	r3, [r7, #28]
	ldr	r2, [r3, #8]
	.loc 1 3892 9
	ldr	r3, [r7, #36]
	.loc 1 3892 38
	subs	r2, r2, #1
	.loc 1 3892 21
	str	r2, [r3, #20]
	b	.L685
.L686:
	.loc 1 3898 9
	ldr	r3, .L700
	str	r3, [r7, #132]
	.loc 1 3899 17
	ldr	r3, [r7, #100]
	.loc 1 3899 6
	adds	r3, r3, #14
	ldr	r1, [r7, #132]
	mov	r0, r3
	bl	st_dword
	.loc 1 3900 17
	ldr	r3, [r7, #100]
	.loc 1 3900 6
	adds	r3, r3, #22
	ldr	r1, [r7, #132]
	mov	r0, r3
	bl	st_dword
	.loc 1 3901 11
	ldr	r3, [r7, #36]
	.loc 1 3901 26
	ldr	r2, [r7, #100]
	.loc 1 3901 11
	mov	r1, r2
	mov	r0, r3
	bl	ld_clust
	str	r0, [r7, #128]
	.loc 1 3902 8
	ldr	r3, [r7, #100]
	.loc 1 3902 12
	adds	r3, r3, #11
	.loc 1 3902 17
	movs	r2, #32
	strb	r2, [r3]
	.loc 1 3903 6
	ldr	r3, [r7, #36]
	ldr	r1, [r7, #100]
	movs	r2, #0
	mov	r0, r3
	bl	st_clust
	.loc 1 3904 17
	ldr	r3, [r7, #100]
	.loc 1 3904 6
	adds	r3, r3, #28
	movs	r1, #0
	mov	r0, r3
	bl	st_dword
	.loc 1 3905 8
	ldr	r3, [r7, #36]
	.loc 1 3905 16
	movs	r2, #1
	strb	r2, [r3, #4]
	.loc 1 3906 9
	ldr	r3, [r7, #128]
	cmp	r3, #0
	beq	.L685
	.loc 1 3907 14
	ldr	r3, [r7, #36]
	.loc 1 3907 10
	ldr	r3, [r3, #56]
	str	r3, [r7, #124]
	.loc 1 3908 13
	add	r3, r7, #40
	movs	r2, #0
	ldr	r1, [r7, #128]
	mov	r0, r3
	bl	remove_chain
	mov	r3, r0
	strb	r3, [r7, #151]
	.loc 1 3909 10
	ldrb	r3, [r7, #151]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L685
	.loc 1 3910 14
	ldr	r3, [r7, #36]
	ldr	r1, [r7, #124]
	mov	r0, r3
	bl	move_window
	mov	r3, r0
	strb	r3, [r7, #151]
	.loc 1 3911 10
	ldr	r3, [r7, #36]
	.loc 1 3911 27
	ldr	r2, [r7, #128]
	subs	r2, r2, #1
	.loc 1 3911 22
	str	r2, [r3, #20]
	b	.L685
.L680:
	.loc 1 3918 7
	ldrb	r3, [r7, #151]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L685
	.loc 1 3919 15
	ldrb	r3, [r7, #46]	@ zero_extendqisi2
	.loc 1 3919 21
	and	r3, r3, #16
	.loc 1 3919 8
	cmp	r3, #0
	beq	.L687
	.loc 1 3920 10
	movs	r3, #4
	strb	r3, [r7, #151]
	b	.L685
.L687:
	.loc 1 3922 16
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	and	r3, r3, #2
	.loc 1 3922 9
	cmp	r3, #0
	beq	.L685
	.loc 1 3922 34 discriminator 1
	ldrb	r3, [r7, #46]	@ zero_extendqisi2
	.loc 1 3922 40 discriminator 1
	and	r3, r3, #1
	.loc 1 3922 24 discriminator 1
	cmp	r3, #0
	beq	.L685
	.loc 1 3923 11
	movs	r3, #7
	strb	r3, [r7, #151]
.L685:
	.loc 1 3928 6
	ldrb	r3, [r7, #151]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L688
	.loc 1 3929 13
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	and	r3, r3, #8
	.loc 1 3929 7
	cmp	r3, #0
	beq	.L689
	.loc 1 3929 26 discriminator 1
	ldrb	r3, [r7, #23]
	orr	r3, r3, #64
	strb	r3, [r7, #23]
.L689:
	.loc 1 3930 21
	ldr	r3, [r7, #36]
	ldr	r2, [r3, #56]
	.loc 1 3930 17
	ldr	r3, [r7, #28]
	str	r2, [r3, #72]
	.loc 1 3931 20
	ldr	r2, [r7, #100]
	.loc 1 3931 16
	ldr	r3, [r7, #28]
	str	r2, [r3, #76]
.L688:
	.loc 1 3949 6
	ldrb	r3, [r7, #151]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L678
	.loc 1 3951 10
	ldr	r3, [r7, #36]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 3951 7
	cmp	r3, #4
	bne	.L690
	.loc 1 3952 27
	ldr	r2, [r7, #48]
	.loc 1 3952 19
	ldr	r3, [r7, #28]
	str	r2, [r3, #32]
	.loc 1 3953 36
	ldrd	r2, [r7, #56]
	.loc 1 3953 23
	mov	r3, r2
	.loc 1 3953 45
	bic	r3, r3, #255
	.loc 1 3953 67
	ldrb	r2, [r7, #47]	@ zero_extendqisi2
	.loc 1 3953 59
	orrs	r2, r2, r3
	.loc 1 3953 20
	ldr	r3, [r7, #28]
	str	r2, [r3, #36]
	.loc 1 3954 23
	ldr	r2, [r7, #116]
	.loc 1 3954 19
	ldr	r3, [r7, #28]
	str	r2, [r3, #40]
	.loc 1 3955 5
	ldr	r3, [r7, #36]
	ldr	r2, [r7, #28]
	mov	r1, r2
	mov	r0, r3
	bl	init_alloc_info
	b	.L691
.L690:
	.loc 1 3959 22
	ldr	r3, [r7, #36]
	.loc 1 3959 37
	ldr	r2, [r7, #100]
	.loc 1 3959 22
	mov	r1, r2
	mov	r0, r3
	bl	ld_clust
	mov	r2, r0
	.loc 1 3959 20
	ldr	r3, [r7, #28]
	str	r2, [r3, #8]
	.loc 1 3960 34
	ldr	r3, [r7, #100]
	.loc 1 3960 39
	adds	r3, r3, #28
	.loc 1 3960 23
	mov	r0, r3
	bl	ld_dword
	mov	r3, r0
	movs	r2, #0
	str	r3, [r7, #8]
	str	r2, [r7, #12]
	.loc 1 3960 21
	ldr	r3, [r7, #28]
	ldrd	r1, [r7, #8]
	strd	r1, [r3, #16]
.L691:
	.loc 1 3965 15
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #28]
	str	r2, [r3]
	.loc 1 3966 19
	ldr	r3, [r7, #36]
	ldrh	r2, [r3, #6]
	.loc 1 3966 15
	ldr	r3, [r7, #28]
	strh	r2, [r3, #4]	@ movhi
	.loc 1 3967 13
	ldr	r3, [r7, #28]
	ldrb	r2, [r7, #23]
	strb	r2, [r3, #48]
	.loc 1 3968 12
	ldr	r3, [r7, #28]
	movs	r2, #0
	strb	r2, [r3, #49]
	.loc 1 3969 13
	ldr	r3, [r7, #28]
	movs	r2, #0
	str	r2, [r3, #68]
	.loc 1 3970 13
	ldr	r1, [r7, #28]
	mov	r2, #0
	mov	r3, #0
	strd	r2, [r1, #56]
	.loc 1 3976 16
	ldr	r3, [r7, #28]
	adds	r3, r3, #80
	.loc 1 3976 4
	movs	r2, #128
	movs	r1, #0
	mov	r0, r3
	bl	memset_32
	.loc 1 3979 14
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	and	r3, r3, #32
	.loc 1 3979 7
	cmp	r3, #0
	beq	.L678
	.loc 1 3979 32 discriminator 1
	ldr	r3, [r7, #28]
	ldrd	r2, [r3, #16]
	.loc 1 3979 22 discriminator 1
	orrs	r3, r2, r3
	beq	.L678
	.loc 1 3980 23
	ldr	r3, [r7, #28]
	ldrd	r2, [r3, #16]
	.loc 1 3980 14
	ldr	r1, [r7, #28]
	strd	r2, [r1, #56]
	.loc 1 3981 20
	ldr	r3, [r7, #36]
	ldrh	r3, [r3, #10]
	.loc 1 3981 9
	lsls	r3, r3, #9
	str	r3, [r7, #120]
	.loc 1 3982 10
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #8]
	str	r3, [r7, #144]
	.loc 1 3983 14
	ldr	r3, [r7, #28]
	ldrd	r2, [r3, #16]
	strd	r2, [r7, #136]
	.loc 1 3983 5
	b	.L692
.L696:
	.loc 1 3984 13
	ldr	r3, [r7, #28]
	ldr	r1, [r7, #144]
	mov	r0, r3
	bl	get_fat
	str	r0, [r7, #144]
	.loc 1 3985 9
	ldr	r3, [r7, #144]
	cmp	r3, #1
	bhi	.L693
	.loc 1 3985 25 discriminator 1
	movs	r3, #2
	strb	r3, [r7, #151]
.L693:
	.loc 1 3986 9
	ldr	r3, [r7, #144]
	cmp	r3, #-1
	bne	.L694
	.loc 1 3986 34 discriminator 1
	movs	r3, #1
	strb	r3, [r7, #151]
.L694:
	.loc 1 3983 64 discriminator 2
	ldr	r3, [r7, #120]
	movs	r2, #0
	mov	r10, r3
	mov	fp, r2
	ldrd	r2, [r7, #136]
	subs	r1, r2, r10
	str	r1, [r7]
	sbc	r3, r3, fp
	str	r3, [r7, #4]
	ldrd	r2, [r7]
	strd	r2, [r7, #136]
.L692:
	.loc 1 3983 5 discriminator 1
	ldrb	r3, [r7, #151]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L695
	.loc 1 3983 53 discriminator 3
	ldr	r3, [r7, #120]
	movs	r2, #0
	mov	r8, r3
	mov	r9, r2
	.loc 1 3983 46 discriminator 3
	ldrd	r2, [r7, #136]
	cmp	r8, r2
	sbcs	r3, r9, r3
	bcc	.L696
.L695:
	.loc 1 3988 15
	ldr	r3, [r7, #28]
	ldr	r2, [r7, #144]
	str	r2, [r3, #64]
	.loc 1 3989 8
	ldrb	r3, [r7, #151]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L678
	.loc 1 3989 29 discriminator 1
	ldrd	r2, [r7, #136]
	ubfx	r4, r2, #0, #9
	movs	r5, #0
	.loc 1 3989 22 discriminator 1
	orrs	r3, r4, r5
	beq	.L678
	.loc 1 3990 11
	ldr	r3, [r7, #36]
	ldr	r1, [r7, #144]
	mov	r0, r3
	bl	clst2sect
	str	r0, [r7, #124]
	.loc 1 3991 9
	ldr	r3, [r7, #124]
	cmp	r3, #0
	bne	.L697
	.loc 1 3992 11
	movs	r3, #2
	strb	r3, [r7, #151]
	b	.L678
.L701:
	.align	2
.L700:
	.word	1411448832
.L697:
	.loc 1 3994 35
	ldrd	r0, [r7, #136]
	mov	r2, #0
	mov	r3, #0
	lsrs	r2, r0, #9
	orr	r2, r2, r1, lsl #23
	lsrs	r3, r1, #9
	.loc 1 3994 21
	ldr	r3, [r7, #124]
	add	r2, r2, r3
	.loc 1 3994 16
	ldr	r3, [r7, #28]
	str	r2, [r3, #68]
	.loc 1 3996 23
	ldr	r3, [r7, #36]
	.loc 1 3996 11
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	.loc 1 3996 33
	ldr	r3, [r7, #28]
	add	r1, r3, #80
	.loc 1 3996 11
	ldr	r3, [r7, #28]
	ldr	r2, [r3, #68]
	movs	r3, #1
	bl	disk_read
	mov	r3, r0
	.loc 1 3996 10
	cmp	r3, #0
	beq	.L678
	.loc 1 3996 68 discriminator 1
	movs	r3, #1
	strb	r3, [r7, #151]
.L678:
	.loc 1 4010 5
	ldrb	r3, [r7, #151]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L698
	.loc 1 4010 31 discriminator 1
	ldr	r3, [r7, #28]
	movs	r2, #0
	str	r2, [r3]
.L698:
	.loc 1 4012 9
	ldrb	r3, [r7, #151]	@ zero_extendqisi2
.L699:
	.loc 1 4013 1 discriminator 2
	mov	r0, r3
	adds	r7, r7, #152
	.cfi_def_cfa_offset 32
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r4, r5, r7, r8, r9, r10, fp, pc}
	.cfi_endproc
.LFE58:
	.size	f_open, .-f_open
	.section	.text.f_read,"ax",%progbits
	.align	1
	.global	f_read
	.syntax unified
	.thumb
	.thumb_func
	.type	f_read, %function
f_read:
.LFB59:
	.loc 1 4028 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 80
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	sub	sp, sp, #84
	.cfi_def_cfa_offset 120
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #28]
	str	r1, [r7, #24]
	str	r2, [r7, #20]
	str	r3, [r7, #16]
	.loc 1 4035 8
	ldr	r3, [r7, #24]
	str	r3, [r7, #60]
	.loc 1 4038 6
	ldr	r3, [r7, #16]
	movs	r2, #0
	str	r2, [r3]
	.loc 1 4039 8
	ldr	r3, [r7, #28]
	add	r2, r7, #36
	mov	r1, r2
	mov	r0, r3
	bl	validate
	mov	r3, r0
	strb	r3, [r7, #79]
	.loc 1 4040 5
	ldrb	r3, [r7, #79]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L703
	.loc 1 4040 27 discriminator 2
	ldr	r3, [r7, #28]
	ldrb	r3, [r3, #49]
	strb	r3, [r7, #79]
	.loc 1 4040 19 discriminator 2
	ldrb	r3, [r7, #79]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L704
.L703:
	.loc 1 4040 64 discriminator 3
	ldrb	r3, [r7, #79]	@ zero_extendqisi2
	b	.L726
.L704:
	.loc 1 4041 10
	ldr	r3, [r7, #28]
	ldrb	r3, [r3, #48]	@ zero_extendqisi2
	.loc 1 4041 17
	and	r3, r3, #1
	.loc 1 4041 5
	cmp	r3, #0
	bne	.L706
	.loc 1 4041 33 discriminator 1
	movs	r3, #7
	b	.L726
.L706:
	.loc 1 4042 18
	ldr	r3, [r7, #28]
	ldrd	r0, [r3, #16]
	.loc 1 4042 31
	ldr	r3, [r7, #28]
	ldrd	r2, [r3, #56]
	.loc 1 4042 9
	subs	r6, r0, r2
	str	r6, [r7]
	sbc	r3, r1, r3
	str	r3, [r7, #4]
	ldrd	r2, [r7]
	strd	r2, [r7, #48]
	.loc 1 4043 10
	ldr	r3, [r7, #20]
	movs	r2, #0
	mov	r10, r3
	mov	fp, r2
	.loc 1 4043 5
	ldrd	r2, [r7, #48]
	cmp	r2, r10
	sbcs	r3, r3, fp
	bcs	.L708
	.loc 1 4043 24 discriminator 1
	ldr	r3, [r7, #48]
	str	r3, [r7, #20]
	.loc 1 4045 2 discriminator 1
	b	.L708
.L725:
	.loc 1 4046 9
	ldr	r3, [r7, #28]
	ldrd	r2, [r3, #56]
	.loc 1 4046 16
	ubfx	r4, r2, #0, #9
	movs	r5, #0
	.loc 1 4046 6
	orrs	r3, r4, r5
	bne	.L709
	.loc 1 4047 21
	ldr	r3, [r7, #28]
	ldrd	r0, [r3, #56]
	.loc 1 4047 28
	mov	r2, #0
	mov	r3, #0
	lsrs	r2, r0, #9
	orr	r2, r2, r1, lsl #23
	lsrs	r3, r1, #9
	.loc 1 4047 47
	ldr	r3, [r7, #36]
	ldrh	r3, [r3, #10]
	.loc 1 4047 55
	subs	r3, r3, #1
	.loc 1 4047 10
	ands	r3, r3, r2
	str	r3, [r7, #44]
	.loc 1 4048 7
	ldr	r3, [r7, #44]
	cmp	r3, #0
	bne	.L710
	.loc 1 4049 11
	ldr	r3, [r7, #28]
	ldrd	r2, [r3, #56]
	.loc 1 4049 8
	orrs	r3, r2, r3
	bne	.L711
	.loc 1 4050 11
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #8]
	str	r3, [r7, #72]
	b	.L712
.L711:
	.loc 1 4058 14
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #64]
	mov	r1, r3
	mov	r0, r2
	bl	get_fat
	str	r0, [r7, #72]
.L712:
	.loc 1 4061 8
	ldr	r3, [r7, #72]
	cmp	r3, #1
	bhi	.L713
	.loc 1 4061 29 discriminator 1
	ldr	r3, [r7, #28]
	movs	r2, #2
	strb	r2, [r3, #49]
	.loc 1 4061 58 discriminator 1
	movs	r3, #2
	b	.L726
.L713:
	.loc 1 4062 8
	ldr	r3, [r7, #72]
	cmp	r3, #-1
	bne	.L714
	.loc 1 4062 39 discriminator 1
	ldr	r3, [r7, #28]
	movs	r2, #1
	strb	r2, [r3, #49]
	.loc 1 4062 69 discriminator 1
	movs	r3, #1
	b	.L726
.L714:
	.loc 1 4063 15
	ldr	r3, [r7, #28]
	ldr	r2, [r7, #72]
	str	r2, [r3, #64]
.L710:
	.loc 1 4065 11
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #64]
	mov	r1, r3
	mov	r0, r2
	bl	clst2sect
	str	r0, [r7, #40]
	.loc 1 4066 7
	ldr	r3, [r7, #40]
	cmp	r3, #0
	bne	.L715
	.loc 1 4066 29 discriminator 1
	ldr	r3, [r7, #28]
	movs	r2, #2
	strb	r2, [r3, #49]
	.loc 1 4066 58 discriminator 1
	movs	r3, #2
	b	.L726
.L715:
	.loc 1 4067 9
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #44]
	add	r3, r3, r2
	str	r3, [r7, #40]
	.loc 1 4068 7
	ldr	r3, [r7, #20]
	lsrs	r3, r3, #9
	str	r3, [r7, #64]
	.loc 1 4069 7
	ldr	r3, [r7, #64]
	cmp	r3, #0
	beq	.L716
	.loc 1 4070 15
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #64]
	add	r3, r3, r2
	.loc 1 4070 24
	ldr	r2, [r7, #36]
	ldrh	r2, [r2, #10]
	.loc 1 4070 8
	cmp	r3, r2
	bls	.L717
	.loc 1 4071 13
	ldr	r3, [r7, #36]
	ldrh	r3, [r3, #10]
	mov	r2, r3
	.loc 1 4071 9
	ldr	r3, [r7, #44]
	subs	r3, r2, r3
	str	r3, [r7, #64]
.L717:
	.loc 1 4073 21
	ldr	r3, [r7, #36]
	.loc 1 4073 9
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	ldr	r3, [r7, #64]
	ldr	r2, [r7, #40]
	ldr	r1, [r7, #60]
	bl	disk_read
	mov	r3, r0
	.loc 1 4073 8
	cmp	r3, #0
	beq	.L718
	.loc 1 4073 67 discriminator 1
	ldr	r3, [r7, #28]
	movs	r2, #1
	strb	r2, [r3, #49]
	.loc 1 4073 97 discriminator 1
	movs	r3, #1
	b	.L726
.L718:
	.loc 1 4080 12
	ldr	r3, [r7, #28]
	ldrb	r3, [r3, #48]	@ zero_extendqisi2
	.loc 1 4080 9
	sxtb	r3, r3
	.loc 1 4080 8
	cmp	r3, #0
	bge	.L719
	.loc 1 4080 32 discriminator 1
	ldr	r3, [r7, #28]
	ldr	r2, [r3, #68]
	.loc 1 4080 39 discriminator 1
	ldr	r3, [r7, #40]
	subs	r3, r2, r3
	.loc 1 4080 27 discriminator 1
	ldr	r2, [r7, #64]
	cmp	r2, r3
	bls	.L719
	.loc 1 4081 26
	ldr	r3, [r7, #28]
	ldr	r2, [r3, #68]
	.loc 1 4081 33
	ldr	r3, [r7, #40]
	subs	r3, r2, r3
	.loc 1 4081 41
	lsls	r3, r3, #9
	.loc 1 4081 20
	ldr	r2, [r7, #60]
	adds	r0, r2, r3
	.loc 1 4081 59
	ldr	r3, [r7, #28]
	adds	r3, r3, #80
	.loc 1 4081 6
	mov	r2, #512
	mov	r1, r3
	bl	mem_cpy
.L719:
	.loc 1 4085 10
	ldr	r3, [r7, #64]
	lsls	r3, r3, #9
	str	r3, [r7, #68]
	.loc 1 4086 5
	b	.L720
.L716:
	.loc 1 4089 10
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #68]
	.loc 1 4089 7
	ldr	r2, [r7, #40]
	cmp	r2, r3
	beq	.L721
	.loc 1 4091 11
	ldr	r3, [r7, #28]
	ldrb	r3, [r3, #48]	@ zero_extendqisi2
	.loc 1 4091 9
	sxtb	r3, r3
	.loc 1 4091 8
	cmp	r3, #0
	bge	.L722
	.loc 1 4092 23
	ldr	r3, [r7, #36]
	.loc 1 4092 10
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	.loc 1 4092 33
	ldr	r3, [r7, #28]
	add	r1, r3, #80
	.loc 1 4092 10
	ldr	r3, [r7, #28]
	ldr	r2, [r3, #68]
	movs	r3, #1
	bl	disk_write
	mov	r3, r0
	.loc 1 4092 9
	cmp	r3, #0
	beq	.L723
	.loc 1 4092 74 discriminator 1
	ldr	r3, [r7, #28]
	movs	r2, #1
	strb	r2, [r3, #49]
	.loc 1 4092 104 discriminator 1
	movs	r3, #1
	b	.L726
.L723:
	.loc 1 4093 15
	ldr	r3, [r7, #28]
	ldrb	r3, [r3, #48]	@ zero_extendqisi2
	and	r3, r3, #127
	uxtb	r2, r3
	ldr	r3, [r7, #28]
	strb	r2, [r3, #48]
.L722:
	.loc 1 4096 21
	ldr	r3, [r7, #36]
	.loc 1 4096 9
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	.loc 1 4096 31
	ldr	r3, [r7, #28]
	add	r1, r3, #80
	.loc 1 4096 9
	movs	r3, #1
	ldr	r2, [r7, #40]
	bl	disk_read
	mov	r3, r0
	.loc 1 4096 8
	cmp	r3, #0
	beq	.L721
	.loc 1 4096 68 discriminator 1
	ldr	r3, [r7, #28]
	movs	r2, #1
	strb	r2, [r3, #49]
	.loc 1 4096 98 discriminator 1
	movs	r3, #1
	b	.L726
.L721:
	.loc 1 4099 13
	ldr	r3, [r7, #28]
	ldr	r2, [r7, #40]
	str	r2, [r3, #68]
.L709:
	.loc 1 4101 32
	ldr	r3, [r7, #28]
	ldrd	r2, [r3, #56]
	.loc 1 4101 24
	mov	r3, r2
	.loc 1 4101 39
	ubfx	r3, r3, #0, #9
	.loc 1 4101 8
	rsb	r3, r3, #512
	str	r3, [r7, #68]
	.loc 1 4102 6
	ldr	r2, [r7, #68]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bls	.L724
	.loc 1 4102 24 discriminator 1
	ldr	r3, [r7, #20]
	str	r3, [r7, #68]
.L724:
	.loc 1 4107 18
	ldr	r3, [r7, #28]
	add	r1, r3, #80
	.loc 1 4107 30
	ldr	r3, [r7, #28]
	ldrd	r2, [r3, #56]
	.loc 1 4107 3
	mov	r3, r2
	ubfx	r3, r3, #0, #9
	add	r3, r3, r1
	ldr	r2, [r7, #68]
	mov	r1, r3
	ldr	r0, [r7, #60]
	bl	mem_cpy
.L720:
	.loc 1 4045 23
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #68]
	subs	r3, r2, r3
	str	r3, [r7, #20]
	.loc 1 4045 36
	ldr	r3, [r7, #16]
	ldr	r2, [r3]
	ldr	r3, [r7, #68]
	add	r2, r2, r3
	ldr	r3, [r7, #16]
	str	r2, [r3]
	.loc 1 4045 51
	ldr	r2, [r7, #60]
	ldr	r3, [r7, #68]
	add	r3, r3, r2
	str	r3, [r7, #60]
	.loc 1 4045 69
	ldr	r3, [r7, #28]
	ldrd	r2, [r3, #56]
	ldr	r1, [r7, #68]
	movs	r0, #0
	mov	r8, r1
	mov	r9, r0
	adds	r1, r2, r8
	str	r1, [r7, #8]
	adc	r3, r3, r9
	str	r3, [r7, #12]
	ldr	r3, [r7, #28]
	ldrd	r1, [r7, #8]
	strd	r1, [r3, #56]
.L708:
	.loc 1 4045 2 discriminator 1
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L725
	.loc 1 4111 9
	movs	r3, #0
.L726:
	.loc 1 4112 1 discriminator 1
	mov	r0, r3
	adds	r7, r7, #84
	.cfi_def_cfa_offset 36
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
	.cfi_endproc
.LFE59:
	.size	f_read, .-f_read
	.section	.text.f_write,"ax",%progbits
	.align	1
	.global	f_write
	.syntax unified
	.thumb
	.thumb_func
	.type	f_write, %function
f_write:
.LFB60:
	.loc 1 4128 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 32
	.cfi_offset 4, -32
	.cfi_offset 5, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	sub	sp, sp, #48
	.cfi_def_cfa_offset 80
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	.loc 1 4134 14
	ldr	r3, [r7, #8]
	str	r3, [r7, #28]
	.loc 1 4137 6
	ldr	r3, [r7]
	movs	r2, #0
	str	r2, [r3]
	.loc 1 4138 8
	ldr	r3, [r7, #12]
	add	r2, r7, #16
	mov	r1, r2
	mov	r0, r3
	bl	validate
	mov	r3, r0
	strb	r3, [r7, #47]
	.loc 1 4139 5
	ldrb	r3, [r7, #47]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L728
	.loc 1 4139 27 discriminator 2
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #49]
	strb	r3, [r7, #47]
	.loc 1 4139 19 discriminator 2
	ldrb	r3, [r7, #47]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L729
.L728:
	.loc 1 4139 64 discriminator 3
	ldrb	r3, [r7, #47]	@ zero_extendqisi2
	b	.L754
.L729:
	.loc 1 4140 10
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #48]	@ zero_extendqisi2
	.loc 1 4140 17
	and	r3, r3, #2
	.loc 1 4140 5
	cmp	r3, #0
	bne	.L731
	.loc 1 4140 33 discriminator 1
	movs	r3, #7
	b	.L754
.L731:
	.loc 1 4143 15
	ldr	r3, [r7, #16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 4143 5
	cmp	r3, #4
	beq	.L733
	.loc 1 4143 44 discriminator 1
	ldr	r3, [r7, #12]
	ldrd	r2, [r3, #56]
	.loc 1 4143 34 discriminator 1
	ldr	r3, [r7, #4]
	adds	r1, r2, r3
	.loc 1 4143 69 discriminator 1
	ldr	r3, [r7, #12]
	ldrd	r2, [r3, #56]
	.loc 1 4143 60 discriminator 1
	mov	r3, r2
	.loc 1 4143 31 discriminator 1
	cmp	r1, r3
	bcs	.L733
	.loc 1 4144 38
	ldr	r3, [r7, #12]
	ldrd	r2, [r3, #56]
	.loc 1 4144 9
	mov	r3, r2
	.loc 1 4144 7
	mvns	r3, r3
	str	r3, [r7, #4]
	.loc 1 4147 2
	b	.L733
.L753:
	.loc 1 4148 9
	ldr	r3, [r7, #12]
	ldrd	r2, [r3, #56]
	.loc 1 4148 16
	ubfx	r4, r2, #0, #9
	movs	r5, #0
	.loc 1 4148 6
	orrs	r3, r4, r5
	bne	.L734
	.loc 1 4149 21
	ldr	r3, [r7, #12]
	ldrd	r0, [r3, #56]
	.loc 1 4149 28
	mov	r2, #0
	mov	r3, #0
	lsrs	r2, r0, #9
	orr	r2, r2, r1, lsl #23
	lsrs	r3, r1, #9
	.loc 1 4149 48
	ldr	r3, [r7, #16]
	ldrh	r3, [r3, #10]
	.loc 1 4149 56
	subs	r3, r3, #1
	.loc 1 4149 10
	ands	r3, r3, r2
	str	r3, [r7, #24]
	.loc 1 4150 7
	ldr	r3, [r7, #24]
	cmp	r3, #0
	bne	.L735
	.loc 1 4151 11
	ldr	r3, [r7, #12]
	ldrd	r2, [r3, #56]
	.loc 1 4151 8
	orrs	r3, r2, r3
	bne	.L736
	.loc 1 4152 11
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	str	r3, [r7, #40]
	.loc 1 4153 9
	ldr	r3, [r7, #40]
	cmp	r3, #0
	bne	.L737
	.loc 1 4154 14
	ldr	r3, [r7, #12]
	movs	r1, #0
	mov	r0, r3
	bl	create_chain
	str	r0, [r7, #40]
	b	.L737
.L736:
	.loc 1 4163 14
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #64]
	mov	r1, r3
	mov	r0, r2
	bl	create_chain
	str	r0, [r7, #40]
.L737:
	.loc 1 4166 8
	ldr	r3, [r7, #40]
	cmp	r3, #0
	beq	.L755
	.loc 1 4167 8
	ldr	r3, [r7, #40]
	cmp	r3, #1
	bne	.L740
	.loc 1 4167 30 discriminator 1
	ldr	r3, [r7, #12]
	movs	r2, #2
	strb	r2, [r3, #49]
	.loc 1 4167 59 discriminator 1
	movs	r3, #2
	b	.L754
.L740:
	.loc 1 4168 8
	ldr	r3, [r7, #40]
	cmp	r3, #-1
	bne	.L741
	.loc 1 4168 39 discriminator 1
	ldr	r3, [r7, #12]
	movs	r2, #1
	strb	r2, [r3, #49]
	.loc 1 4168 69 discriminator 1
	movs	r3, #1
	b	.L754
.L741:
	.loc 1 4169 15
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #40]
	str	r2, [r3, #64]
	.loc 1 4170 16
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	.loc 1 4170 8
	cmp	r3, #0
	bne	.L735
	.loc 1 4170 45 discriminator 1
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #40]
	str	r2, [r3, #8]
.L735:
	.loc 1 4175 10
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #48]	@ zero_extendqisi2
	.loc 1 4175 8
	sxtb	r3, r3
	.loc 1 4175 7
	cmp	r3, #0
	bge	.L742
	.loc 1 4176 22
	ldr	r3, [r7, #16]
	.loc 1 4176 9
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	.loc 1 4176 32
	ldr	r3, [r7, #12]
	add	r1, r3, #80
	.loc 1 4176 9
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #68]
	movs	r3, #1
	bl	disk_write
	mov	r3, r0
	.loc 1 4176 8
	cmp	r3, #0
	beq	.L743
	.loc 1 4176 73 discriminator 1
	ldr	r3, [r7, #12]
	movs	r2, #1
	strb	r2, [r3, #49]
	.loc 1 4176 103 discriminator 1
	movs	r3, #1
	b	.L754
.L743:
	.loc 1 4177 14
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #48]	@ zero_extendqisi2
	and	r3, r3, #127
	uxtb	r2, r3
	ldr	r3, [r7, #12]
	strb	r2, [r3, #48]
.L742:
	.loc 1 4180 11
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #64]
	mov	r1, r3
	mov	r0, r2
	bl	clst2sect
	str	r0, [r7, #20]
	.loc 1 4181 7
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L744
	.loc 1 4181 29 discriminator 1
	ldr	r3, [r7, #12]
	movs	r2, #2
	strb	r2, [r3, #49]
	.loc 1 4181 58 discriminator 1
	movs	r3, #2
	b	.L754
.L744:
	.loc 1 4182 9
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #24]
	add	r3, r3, r2
	str	r3, [r7, #20]
	.loc 1 4183 7
	ldr	r3, [r7, #4]
	lsrs	r3, r3, #9
	str	r3, [r7, #32]
	.loc 1 4184 7
	ldr	r3, [r7, #32]
	cmp	r3, #0
	beq	.L745
	.loc 1 4185 15
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	.loc 1 4185 24
	ldr	r2, [r7, #16]
	ldrh	r2, [r2, #10]
	.loc 1 4185 8
	cmp	r3, r2
	bls	.L746
	.loc 1 4186 13
	ldr	r3, [r7, #16]
	ldrh	r3, [r3, #10]
	mov	r2, r3
	.loc 1 4186 9
	ldr	r3, [r7, #24]
	subs	r3, r2, r3
	str	r3, [r7, #32]
.L746:
	.loc 1 4188 22
	ldr	r3, [r7, #16]
	.loc 1 4188 9
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	ldr	r3, [r7, #32]
	ldr	r2, [r7, #20]
	ldr	r1, [r7, #28]
	bl	disk_write
	mov	r3, r0
	.loc 1 4188 8
	cmp	r3, #0
	beq	.L747
	.loc 1 4188 68 discriminator 1
	ldr	r3, [r7, #12]
	movs	r2, #1
	strb	r2, [r3, #49]
	.loc 1 4188 98 discriminator 1
	movs	r3, #1
	b	.L754
.L747:
	.loc 1 4196 11
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #68]
	.loc 1 4196 18
	ldr	r3, [r7, #20]
	subs	r3, r2, r3
	.loc 1 4196 8
	ldr	r2, [r7, #32]
	cmp	r2, r3
	bls	.L748
	.loc 1 4197 16
	ldr	r3, [r7, #12]
	add	r0, r3, #80
	.loc 1 4197 35
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #68]
	.loc 1 4197 42
	ldr	r3, [r7, #20]
	subs	r3, r2, r3
	.loc 1 4197 50
	lsls	r3, r3, #9
	.loc 1 4197 29
	ldr	r2, [r7, #28]
	add	r3, r3, r2
	.loc 1 4197 6
	mov	r2, #512
	mov	r1, r3
	bl	mem_cpy
	.loc 1 4198 15
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #48]	@ zero_extendqisi2
	and	r3, r3, #127
	uxtb	r2, r3
	ldr	r3, [r7, #12]
	strb	r2, [r3, #48]
.L748:
	.loc 1 4202 10
	ldr	r3, [r7, #32]
	lsls	r3, r3, #9
	str	r3, [r7, #36]
	.loc 1 4203 5
	b	.L749
.L745:
	.loc 1 4211 10
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #68]
	.loc 1 4211 7
	ldr	r2, [r7, #20]
	cmp	r2, r3
	beq	.L750
	.loc 1 4212 7 discriminator 1
	ldr	r3, [r7, #12]
	ldrd	r0, [r3, #56]
	.loc 1 4212 23 discriminator 1
	ldr	r3, [r7, #12]
	ldrd	r2, [r3, #16]
	.loc 1 4211 25 discriminator 1
	cmp	r0, r2
	sbcs	r3, r1, r3
	bcs	.L750
	.loc 1 4213 17
	ldr	r3, [r7, #16]
	.loc 1 4213 5
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	.loc 1 4213 27
	ldr	r3, [r7, #12]
	add	r1, r3, #80
	.loc 1 4213 5
	movs	r3, #1
	ldr	r2, [r7, #20]
	bl	disk_read
	mov	r3, r0
	.loc 1 4212 32
	cmp	r3, #0
	beq	.L750
	.loc 1 4214 16
	ldr	r3, [r7, #12]
	movs	r2, #1
	strb	r2, [r3, #49]
	.loc 1 4214 46
	movs	r3, #1
	b	.L754
.L750:
	.loc 1 4217 13
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #20]
	str	r2, [r3, #68]
.L734:
	.loc 1 4219 32
	ldr	r3, [r7, #12]
	ldrd	r2, [r3, #56]
	.loc 1 4219 24
	mov	r3, r2
	.loc 1 4219 39
	ubfx	r3, r3, #0, #9
	.loc 1 4219 8
	rsb	r3, r3, #512
	str	r3, [r7, #36]
	.loc 1 4220 6
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bls	.L751
	.loc 1 4220 24 discriminator 1
	ldr	r3, [r7, #4]
	str	r3, [r7, #36]
.L751:
	.loc 1 4226 11
	ldr	r3, [r7, #12]
	add	r1, r3, #80
	.loc 1 4226 23
	ldr	r3, [r7, #12]
	ldrd	r2, [r3, #56]
	.loc 1 4226 3
	mov	r3, r2
	ubfx	r3, r3, #0, #9
	add	r3, r3, r1
	ldr	r2, [r7, #36]
	ldr	r1, [r7, #28]
	mov	r0, r3
	bl	mem_cpy
	.loc 1 4227 12
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #48]	@ zero_extendqisi2
	orn	r3, r3, #127
	uxtb	r2, r3
	ldr	r3, [r7, #12]
	strb	r2, [r3, #48]
.L749:
	.loc 1 4147 23
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #36]
	subs	r3, r2, r3
	str	r3, [r7, #4]
	.loc 1 4147 36
	ldr	r3, [r7]
	ldr	r2, [r3]
	ldr	r3, [r7, #36]
	add	r2, r2, r3
	ldr	r3, [r7]
	str	r2, [r3]
	.loc 1 4147 51
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #36]
	add	r3, r3, r2
	str	r3, [r7, #28]
	.loc 1 4147 69
	ldr	r3, [r7, #12]
	ldrd	r2, [r3, #56]
	ldr	r1, [r7, #36]
	movs	r0, #0
	mov	r8, r1
	mov	r9, r0
	adds	r10, r2, r8
	adc	fp, r3, r9
	ldr	r3, [r7, #12]
	strd	r10, [r3, #56]
	.loc 1 4147 115
	ldr	r3, [r7, #12]
	ldrd	r2, [r3, #16]
	.loc 1 4147 99
	ldr	r1, [r7, #12]
	ldrd	r0, [r1, #56]
	.loc 1 4147 136
	cmp	r2, r0
	sbcs	ip, r3, r1
	bcs	.L752
	mov	r2, r0
	mov	r3, r1
.L752:
	.loc 1 4147 94
	ldr	r1, [r7, #12]
	strd	r2, [r1, #16]
.L733:
	.loc 1 4147 2 discriminator 1
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L753
	b	.L739
.L755:
	.loc 1 4166 5
	nop
.L739:
	.loc 1 4231 11
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #48]	@ zero_extendqisi2
	orr	r3, r3, #64
	uxtb	r2, r3
	ldr	r3, [r7, #12]
	strb	r2, [r3, #48]
	.loc 1 4233 9
	movs	r3, #0
.L754:
	.loc 1 4234 1 discriminator 1
	mov	r0, r3
	adds	r7, r7, #48
	.cfi_def_cfa_offset 32
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r4, r5, r7, r8, r9, r10, fp, pc}
	.cfi_endproc
.LFE60:
	.size	f_write, .-f_write
	.section	.text.f_sync,"ax",%progbits
	.align	1
	.global	f_sync
	.syntax unified
	.thumb
	.thumb_func
	.type	f_sync, %function
f_sync:
.LFB61:
	.loc 1 4246 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 104
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #104
	.cfi_def_cfa_offset 112
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 1 4253 8
	ldr	r3, [r7, #4]
	add	r2, r7, #88
	mov	r1, r2
	mov	r0, r3
	bl	validate
	mov	r3, r0
	strb	r3, [r7, #103]
	.loc 1 4254 5
	ldrb	r3, [r7, #103]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L757
	.loc 1 4255 9
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #48]	@ zero_extendqisi2
	.loc 1 4255 16
	and	r3, r3, #64
	.loc 1 4255 6
	cmp	r3, #0
	beq	.L757
	.loc 1 4257 10
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #48]	@ zero_extendqisi2
	.loc 1 4257 8
	sxtb	r3, r3
	.loc 1 4257 7
	cmp	r3, #0
	bge	.L758
	.loc 1 4258 22
	ldr	r3, [r7, #88]
	.loc 1 4258 9
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	.loc 1 4258 32
	ldr	r3, [r7, #4]
	add	r1, r3, #80
	.loc 1 4258 9
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #68]
	movs	r3, #1
	bl	disk_write
	mov	r3, r0
	.loc 1 4258 8
	cmp	r3, #0
	beq	.L759
	.loc 1 4258 70 discriminator 1
	movs	r3, #1
	b	.L764
.L759:
	.loc 1 4259 14
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #48]	@ zero_extendqisi2
	and	r3, r3, #127
	uxtb	r2, r3
	ldr	r3, [r7, #4]
	strb	r2, [r3, #48]
.L758:
	.loc 1 4263 7
	ldr	r3, .L765
	str	r3, [r7, #96]
	.loc 1 4265 10
	ldr	r3, [r7, #88]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 4265 7
	cmp	r3, #4
	bne	.L761
	.loc 1 4266 11
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	fill_first_frag
	mov	r3, r0
	strb	r3, [r7, #103]
	.loc 1 4267 8
	ldrb	r3, [r7, #103]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L762
	.loc 1 4268 12
	ldr	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #64]
	mov	r2, #-1
	mov	r1, r3
	bl	fill_last_frag
	mov	r3, r0
	strb	r3, [r7, #103]
.L762:
	.loc 1 4270 8
	ldrb	r3, [r7, #103]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L757
.LBB8:
	.loc 1 4275 31
	ldr	r2, [r7, #4]
	.loc 1 4275 12
	add	r3, r7, #8
	mov	r1, r2
	mov	r0, r3
	bl	load_obj_xdir
	mov	r3, r0
	strb	r3, [r7, #103]
	.loc 1 4276 9
	ldrb	r3, [r7, #103]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L757
	.loc 1 4277 9
	ldr	r3, [r7, #88]
	ldr	r3, [r3, #16]
	.loc 1 4277 21
	adds	r3, r3, #4
	ldrb	r2, [r3]	@ zero_extendqisi2
	.loc 1 4277 9
	ldr	r3, [r7, #88]
	ldr	r3, [r3, #16]
	.loc 1 4277 21
	adds	r3, r3, #4
	orr	r2, r2, #32
	uxtb	r2, r2
	strb	r2, [r3]
	.loc 1 4278 31
	ldr	r3, [r7, #4]
	ldrb	r2, [r3, #7]	@ zero_extendqisi2
	.loc 1 4278 9
	ldr	r3, [r7, #88]
	ldr	r3, [r3, #16]
	.loc 1 4278 17
	adds	r3, r3, #33
	.loc 1 4278 22
	orr	r2, r2, #1
	uxtb	r2, r2
	strb	r2, [r3]
	.loc 1 4279 18
	ldr	r3, [r7, #88]
	ldr	r3, [r3, #16]
	.loc 1 4279 7
	add	r2, r3, #52
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	mov	r1, r3
	mov	r0, r2
	bl	st_dword
	.loc 1 4280 18
	ldr	r3, [r7, #88]
	ldr	r3, [r3, #16]
	.loc 1 4280 7
	add	r1, r3, #56
	ldr	r3, [r7, #4]
	ldrd	r2, [r3, #16]
	mov	r0, r1
	bl	st_qword
	.loc 1 4281 18
	ldr	r3, [r7, #88]
	ldr	r3, [r3, #16]
	.loc 1 4281 7
	add	r1, r3, #40
	ldr	r3, [r7, #4]
	ldrd	r2, [r3, #16]
	mov	r0, r1
	bl	st_qword
	.loc 1 4282 18
	ldr	r3, [r7, #88]
	ldr	r3, [r3, #16]
	.loc 1 4282 7
	adds	r3, r3, #12
	ldr	r1, [r7, #96]
	mov	r0, r3
	bl	st_dword
	.loc 1 4283 9
	ldr	r3, [r7, #88]
	ldr	r3, [r3, #16]
	.loc 1 4283 17
	adds	r3, r3, #21
	.loc 1 4283 22
	movs	r2, #0
	strb	r2, [r3]
	.loc 1 4284 18
	ldr	r3, [r7, #88]
	ldr	r3, [r3, #16]
	.loc 1 4284 7
	adds	r3, r3, #16
	movs	r1, #0
	mov	r0, r3
	bl	st_dword
	.loc 1 4285 13
	add	r3, r7, #8
	mov	r0, r3
	bl	store_xdir
	mov	r3, r0
	strb	r3, [r7, #103]
	.loc 1 4286 10
	ldrb	r3, [r7, #103]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L757
	.loc 1 4287 14
	ldr	r3, [r7, #88]
	mov	r0, r3
	bl	sync_fs
	mov	r3, r0
	strb	r3, [r7, #103]
	.loc 1 4288 17
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #48]	@ zero_extendqisi2
	bic	r3, r3, #64
	uxtb	r2, r3
	ldr	r3, [r7, #4]
	strb	r2, [r3, #48]
	b	.L757
.L761:
.LBE8:
	.loc 1 4296 11
	ldr	r2, [r7, #88]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #72]
	mov	r1, r3
	mov	r0, r2
	bl	move_window
	mov	r3, r0
	strb	r3, [r7, #103]
	.loc 1 4297 8
	ldrb	r3, [r7, #103]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L757
	.loc 1 4298 10
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #76]
	str	r3, [r7, #92]
	.loc 1 4299 14
	ldr	r3, [r7, #92]
	adds	r3, r3, #11
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [r7, #92]
	adds	r3, r3, #11
	orr	r2, r2, #32
	uxtb	r2, r2
	strb	r2, [r3]
	.loc 1 4300 6
	ldr	r3, [r7, #4]
	ldr	r0, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	mov	r2, r3
	ldr	r1, [r7, #92]
	bl	st_clust
	.loc 1 4301 6
	ldr	r3, [r7, #92]
	add	r0, r3, #28
	.loc 1 4301 39
	ldr	r3, [r7, #4]
	ldrd	r2, [r3, #16]
	.loc 1 4301 6
	mov	r3, r2
	mov	r1, r3
	bl	st_dword
	.loc 1 4302 6
	ldr	r3, [r7, #92]
	adds	r3, r3, #22
	ldr	r1, [r7, #96]
	mov	r0, r3
	bl	st_dword
	.loc 1 4303 6
	ldr	r3, [r7, #92]
	adds	r3, r3, #18
	movs	r1, #0
	mov	r0, r3
	bl	st_word
	.loc 1 4304 8
	ldr	r3, [r7, #88]
	.loc 1 4304 16
	movs	r2, #1
	strb	r2, [r3, #4]
	.loc 1 4305 12
	ldr	r3, [r7, #88]
	mov	r0, r3
	bl	sync_fs
	mov	r3, r0
	strb	r3, [r7, #103]
	.loc 1 4306 15
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #48]	@ zero_extendqisi2
	bic	r3, r3, #64
	uxtb	r2, r3
	ldr	r3, [r7, #4]
	strb	r2, [r3, #48]
.L757:
	.loc 1 4312 9
	ldrb	r3, [r7, #103]	@ zero_extendqisi2
.L764:
	.loc 1 4313 1 discriminator 2
	mov	r0, r3
	adds	r7, r7, #104
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
.L766:
	.align	2
.L765:
	.word	1411448832
	.cfi_endproc
.LFE61:
	.size	f_sync, .-f_sync
	.section	.text.f_close,"ax",%progbits
	.align	1
	.global	f_close
	.syntax unified
	.thumb
	.thumb_func
	.type	f_close, %function
f_close:
.LFB62:
	.loc 1 4327 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #16
	.cfi_def_cfa_offset 24
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 1 4332 8
	ldr	r0, [r7, #4]
	bl	f_sync
	mov	r3, r0
	strb	r3, [r7, #15]
	.loc 1 4333 5
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L768
	.loc 1 4336 9
	ldr	r3, [r7, #4]
	add	r2, r7, #8
	mov	r1, r2
	mov	r0, r3
	bl	validate
	mov	r3, r0
	strb	r3, [r7, #15]
	.loc 1 4337 6
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L768
	.loc 1 4342 15
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3]
.L768:
	.loc 1 4349 9
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	.loc 1 4350 1
	mov	r0, r3
	adds	r7, r7, #16
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE62:
	.size	f_close, .-f_close
	.global	__aeabi_uldivmod
	.section	.text.f_lseek,"ax",%progbits
	.align	1
	.global	f_lseek
	.syntax unified
	.thumb
	.thumb_func
	.type	f_lseek, %function
f_lseek:
.LFB63:
	.loc 1 4545 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 160
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 32
	.cfi_offset 4, -32
	.cfi_offset 5, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	sub	sp, sp, #160
	.cfi_def_cfa_offset 192
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #124]
	strd	r2, [r7, #112]
	.loc 1 4557 8
	ldr	r2, [r7, #124]
	add	r3, r7, #128
	mov	r1, r3
	mov	r0, r2
	bl	validate
	mov	r3, r0
	strb	r3, [r7, #159]
	.loc 1 4558 5
	ldrb	r3, [r7, #159]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L771
	.loc 1 4558 24 discriminator 1
	ldr	r3, [r7, #124]
	ldrb	r3, [r3, #49]
	strb	r3, [r7, #159]
.L771:
	.loc 1 4560 5
	ldrb	r3, [r7, #159]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L772
	.loc 1 4560 24 discriminator 1
	ldr	r3, [r7, #128]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 4560 19 discriminator 1
	cmp	r3, #4
	bne	.L772
	.loc 1 4561 9
	ldr	r0, [r7, #124]
	ldr	r3, [r7, #124]
	ldr	r3, [r3, #64]
	mov	r2, #-1
	mov	r1, r3
	bl	fill_last_frag
	mov	r3, r0
	strb	r3, [r7, #159]
.L772:
	.loc 1 4564 5
	ldrb	r3, [r7, #159]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L773
	.loc 1 4564 27 discriminator 1
	ldrb	r3, [r7, #159]	@ zero_extendqisi2
	b	.L798
.L773:
	.loc 1 4621 9
	ldr	r3, [r7, #128]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 4621 6
	cmp	r3, #4
	beq	.L775
	.loc 1 4621 24 discriminator 1
	ldrd	r2, [r7, #112]
	cmp	r3, #1
	bcc	.L775
	.loc 1 4621 51 discriminator 2
	mov	r2, #-1
	mov	r3, #0
	strd	r2, [r7, #112]
.L775:
	.loc 1 4623 20
	ldr	r3, [r7, #124]
	ldrd	r0, [r3, #16]
	.loc 1 4623 6
	ldrd	r2, [r7, #112]
	cmp	r0, r2
	sbcs	r3, r1, r3
	bcs	.L776
	.loc 1 4623 42 discriminator 1
	ldr	r3, [r7, #124]
	ldrb	r3, [r3, #48]	@ zero_extendqisi2
	.loc 1 4623 49 discriminator 1
	and	r3, r3, #2
	.loc 1 4623 29 discriminator 1
	cmp	r3, #0
	bne	.L776
	.loc 1 4624 8
	ldr	r3, [r7, #124]
	ldrd	r2, [r3, #16]
	strd	r2, [r7, #112]
.L776:
	.loc 1 4626 9
	ldr	r3, [r7, #124]
	ldrd	r2, [r3, #56]
	strd	r2, [r7, #136]
	.loc 1 4627 20
	movs	r3, #0
	str	r3, [r7, #148]
	.loc 1 4627 12
	ldr	r1, [r7, #124]
	mov	r2, #0
	mov	r3, #0
	strd	r2, [r1, #56]
	.loc 1 4628 6
	ldrd	r2, [r7, #112]
	orrs	r3, r2, r3
	beq	.L777
	.loc 1 4629 19
	ldr	r3, [r7, #128]
	ldrh	r3, [r3, #10]
	.loc 1 4629 8
	lsls	r3, r3, #9
	str	r3, [r7, #132]
	.loc 1 4630 7
	ldrd	r2, [r7, #136]
	orrs	r3, r2, r3
	beq	.L778
	.loc 1 4631 10 discriminator 1
	ldrd	r2, [r7, #112]
	subs	r4, r2, #1
	adc	r5, r3, #-1
	.loc 1 4631 15 discriminator 1
	ldr	r3, [r7, #132]
	movs	r2, #0
	str	r3, [r7, #104]
	str	r2, [r7, #108]
	ldrd	r2, [r7, #104]
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_uldivmod
	mov	r2, r0
	mov	r3, r1
	mov	r4, r2
	mov	r5, r3
	.loc 1 4631 31 discriminator 1
	ldrd	r2, [r7, #136]
	subs	r1, r2, #1
	str	r1, [r7, #96]
	adc	r3, r3, #-1
	str	r3, [r7, #100]
	.loc 1 4631 36 discriminator 1
	ldr	r3, [r7, #132]
	movs	r2, #0
	str	r3, [r7, #88]
	str	r2, [r7, #92]
	ldrd	r2, [r7, #88]
	ldrd	r0, [r7, #96]
	bl	__aeabi_uldivmod
	mov	r2, r0
	mov	r3, r1
	.loc 1 4630 18 discriminator 1
	cmp	r4, r2
	sbcs	r3, r5, r3
	bcc	.L778
	.loc 1 4632 23
	ldrd	r2, [r7, #136]
	adds	r10, r2, #-1
	adc	fp, r3, #-1
	.loc 1 4632 45
	ldr	r3, [r7, #132]
	subs	r3, r3, #1
	.loc 1 4632 31
	movs	r2, #0
	str	r3, [r7, #80]
	str	r2, [r7, #84]
	.loc 1 4632 30
	ldrd	r1, [r7, #80]
	mov	r3, r1
	mvn	r8, r3
	mov	r3, r2
	mvn	r9, r3
	.loc 1 4632 28
	and	r3, r10, r8
	str	r3, [r7, #72]
	and	r3, fp, r9
	str	r3, [r7, #76]
	.loc 1 4632 14
	ldr	r3, [r7, #124]
	ldrd	r1, [r7, #72]
	strd	r1, [r3, #56]
	.loc 1 4633 14
	ldr	r3, [r7, #124]
	ldrd	r0, [r3, #56]
	.loc 1 4633 9
	ldrd	r2, [r7, #112]
	subs	r4, r2, r0
	str	r4, [r7, #8]
	sbc	r3, r3, r1
	str	r3, [r7, #12]
	ldrd	r3, [r7, #8]
	strd	r3, [r7, #112]
	.loc 1 4634 10
	ldr	r3, [r7, #124]
	ldr	r3, [r3, #64]
	str	r3, [r7, #152]
	b	.L779
.L778:
	.loc 1 4636 10
	ldr	r3, [r7, #124]
	ldr	r3, [r3, #8]
	str	r3, [r7, #152]
	.loc 1 4638 8
	ldr	r3, [r7, #152]
	cmp	r3, #0
	bne	.L780
	.loc 1 4639 13
	ldr	r3, [r7, #124]
	movs	r1, #0
	mov	r0, r3
	bl	create_chain
	str	r0, [r7, #152]
	.loc 1 4640 9
	ldr	r3, [r7, #152]
	cmp	r3, #1
	bne	.L781
	.loc 1 4640 31 discriminator 1
	ldr	r3, [r7, #124]
	movs	r2, #2
	strb	r2, [r3, #49]
	.loc 1 4640 60 discriminator 1
	movs	r3, #2
	b	.L798
.L781:
	.loc 1 4641 9
	ldr	r3, [r7, #152]
	cmp	r3, #-1
	bne	.L782
	.loc 1 4641 40 discriminator 1
	ldr	r3, [r7, #124]
	movs	r2, #1
	strb	r2, [r3, #49]
	.loc 1 4641 70 discriminator 1
	movs	r3, #1
	b	.L798
.L782:
	.loc 1 4642 21
	ldr	r2, [r7, #124]
	ldr	r3, [r7, #152]
	str	r3, [r2, #8]
.L780:
	.loc 1 4645 15
	ldr	r2, [r7, #124]
	ldr	r3, [r7, #152]
	str	r3, [r2, #64]
.L779:
	.loc 1 4647 7
	ldr	r3, [r7, #152]
	cmp	r3, #0
	beq	.L777
	.loc 1 4648 11
	b	.L783
.L791:
	.loc 1 4649 10
	ldr	r3, [r7, #132]
	movs	r2, #0
	str	r3, [r7, #64]
	str	r2, [r7, #68]
	ldrd	r2, [r7, #112]
	ldrd	r4, [r7, #64]
	mov	r1, r4
	subs	r1, r2, r1
	str	r1, [r7]
	mov	r1, r5
	sbc	r3, r3, r1
	str	r3, [r7, #4]
	ldrd	r3, [r7]
	strd	r3, [r7, #112]
	.loc 1 4649 27
	ldr	r3, [r7, #124]
	ldrd	r2, [r3, #56]
	ldr	r1, [r7, #132]
	movs	r0, #0
	str	r1, [r7, #56]
	str	r0, [r7, #60]
	ldrd	r4, [r7, #56]
	mov	r1, r4
	adds	r1, r2, r1
	str	r1, [r7, #48]
	mov	r1, r5
	adcs	r3, r3, r1
	str	r3, [r7, #52]
	ldr	r3, [r7, #124]
	ldrd	r1, [r7, #48]
	strd	r1, [r3, #56]
	.loc 1 4651 12
	ldr	r3, [r7, #124]
	ldrb	r3, [r3, #48]	@ zero_extendqisi2
	.loc 1 4651 19
	and	r3, r3, #2
	.loc 1 4651 9
	cmp	r3, #0
	beq	.L784
	.loc 1 4652 18
	ldr	r3, [r7, #124]
	ldrd	r0, [r3, #56]
	.loc 1 4652 34
	ldr	r3, [r7, #124]
	ldrd	r2, [r3, #16]
	.loc 1 4652 10
	cmp	r2, r0
	sbcs	r3, r3, r1
	bcs	.L785
	.loc 1 4653 28
	ldr	r3, [r7, #124]
	ldrd	r0, [r3, #56]
	.loc 1 4653 24
	ldr	r3, [r7, #124]
	strd	r0, [r3, #16]
	.loc 1 4654 17
	ldr	r3, [r7, #124]
	ldrb	r3, [r3, #48]	@ zero_extendqisi2
	orr	r3, r3, #64
	uxtb	r3, r3
	ldr	r2, [r7, #124]
	strb	r3, [r2, #48]
.L785:
	.loc 1 4656 14
	ldr	r3, [r7, #124]
	ldr	r1, [r7, #152]
	mov	r0, r3
	bl	create_chain
	str	r0, [r7, #152]
	.loc 1 4657 10
	ldr	r3, [r7, #152]
	cmp	r3, #0
	bne	.L786
	.loc 1 4658 12
	mov	r2, #0
	mov	r3, #0
	strd	r2, [r7, #112]
	.loc 1 4658 8
	b	.L787
.L784:
	.loc 1 4663 14
	ldr	r3, [r7, #124]
	ldr	r1, [r7, #152]
	mov	r0, r3
	bl	get_fat
	str	r0, [r7, #152]
.L786:
	.loc 1 4665 9
	ldr	r3, [r7, #152]
	cmp	r3, #-1
	bne	.L788
	.loc 1 4665 40 discriminator 1
	ldr	r3, [r7, #124]
	movs	r2, #1
	strb	r2, [r3, #49]
	.loc 1 4665 70 discriminator 1
	movs	r3, #1
	b	.L798
.L788:
	.loc 1 4666 9
	ldr	r3, [r7, #152]
	cmp	r3, #1
	bls	.L789
	.loc 1 4666 33 discriminator 2
	ldr	r3, [r7, #128]
	ldr	r2, [r3, #28]
	.loc 1 4666 20 discriminator 2
	ldr	r3, [r7, #152]
	cmp	r3, r2
	bcc	.L790
.L789:
	.loc 1 4666 55 discriminator 3
	ldr	r3, [r7, #124]
	movs	r2, #2
	strb	r2, [r3, #49]
	.loc 1 4666 84 discriminator 3
	movs	r3, #2
	b	.L798
.L790:
	.loc 1 4667 16
	ldr	r2, [r7, #124]
	ldr	r3, [r7, #152]
	str	r3, [r2, #64]
.L783:
	.loc 1 4648 16
	ldr	r3, [r7, #132]
	movs	r2, #0
	str	r3, [r7, #40]
	str	r2, [r7, #44]
	.loc 1 4648 11
	ldrd	r2, [r7, #112]
	ldrd	r4, [r7, #40]
	mov	r1, r4
	cmp	r1, r2
	mov	r1, r5
	sbcs	r3, r1, r3
	bcc	.L791
.L787:
	.loc 1 4669 14
	ldr	r3, [r7, #124]
	ldrd	r0, [r3, #56]
	ldrd	r2, [r7, #112]
	adds	r4, r0, r2
	str	r4, [r7, #32]
	adc	r3, r1, r3
	str	r3, [r7, #36]
	ldr	r3, [r7, #124]
	ldrd	r1, [r7, #32]
	strd	r1, [r3, #56]
	.loc 1 4670 13
	ldrd	r2, [r7, #112]
	ubfx	r3, r2, #0, #9
	str	r3, [r7, #24]
	movs	r3, #0
	str	r3, [r7, #28]
	.loc 1 4670 8
	ldrd	r1, [r7, #24]
	mov	r3, r1
	orrs	r3, r3, r2
	beq	.L777
	.loc 1 4671 14
	ldr	r3, [r7, #128]
	ldr	r1, [r7, #152]
	mov	r0, r3
	bl	clst2sect
	str	r0, [r7, #148]
	.loc 1 4672 9
	ldr	r3, [r7, #148]
	cmp	r3, #0
	bne	.L792
	.loc 1 4672 32 discriminator 1
	ldr	r3, [r7, #124]
	movs	r2, #2
	strb	r2, [r3, #49]
	.loc 1 4672 61 discriminator 1
	movs	r3, #2
	b	.L798
.L792:
	.loc 1 4673 27
	ldrd	r0, [r7, #112]
	mov	r2, #0
	mov	r3, #0
	lsrs	r2, r0, #9
	orr	r2, r2, r1, lsl #23
	lsrs	r3, r1, #9
	.loc 1 4673 12
	ldr	r3, [r7, #148]
	add	r3, r3, r2
	str	r3, [r7, #148]
.L777:
	.loc 1 4677 15
	ldr	r3, [r7, #124]
	ldrd	r2, [r3, #56]
	.loc 1 4677 31
	ldr	r1, [r7, #124]
	ldrd	r0, [r1, #16]
	.loc 1 4677 6
	cmp	r0, r2
	sbcs	r3, r1, r3
	bcs	.L793
	.loc 1 4678 24
	ldr	r3, [r7, #124]
	ldrd	r2, [r3, #56]
	.loc 1 4678 20
	ldr	r1, [r7, #124]
	strd	r2, [r1, #16]
	.loc 1 4679 13
	ldr	r3, [r7, #124]
	ldrb	r3, [r3, #48]	@ zero_extendqisi2
	orr	r3, r3, #64
	uxtb	r2, r3
	ldr	r3, [r7, #124]
	strb	r2, [r3, #48]
.L793:
	.loc 1 4681 9
	ldr	r3, [r7, #124]
	ldrd	r2, [r3, #56]
	.loc 1 4681 16
	ubfx	r3, r2, #0, #9
	str	r3, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #20]
	.loc 1 4681 6
	ldrd	r1, [r7, #16]
	mov	r3, r1
	orrs	r3, r3, r2
	beq	.L794
	.loc 1 4681 44 discriminator 1
	ldr	r3, [r7, #124]
	ldr	r3, [r3, #68]
	.loc 1 4681 30 discriminator 1
	ldr	r2, [r7, #148]
	cmp	r2, r3
	beq	.L794
	.loc 1 4684 10
	ldr	r3, [r7, #124]
	ldrb	r3, [r3, #48]	@ zero_extendqisi2
	.loc 1 4684 8
	sxtb	r3, r3
	.loc 1 4684 7
	cmp	r3, #0
	bge	.L795
	.loc 1 4685 22
	ldr	r3, [r7, #128]
	.loc 1 4685 9
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	.loc 1 4685 32
	ldr	r3, [r7, #124]
	add	r1, r3, #80
	.loc 1 4685 9
	ldr	r3, [r7, #124]
	ldr	r2, [r3, #68]
	movs	r3, #1
	bl	disk_write
	mov	r3, r0
	.loc 1 4685 8
	cmp	r3, #0
	beq	.L796
	.loc 1 4685 73 discriminator 1
	ldr	r3, [r7, #124]
	movs	r2, #1
	strb	r2, [r3, #49]
	.loc 1 4685 103 discriminator 1
	movs	r3, #1
	b	.L798
.L796:
	.loc 1 4686 14
	ldr	r3, [r7, #124]
	ldrb	r3, [r3, #48]	@ zero_extendqisi2
	and	r3, r3, #127
	uxtb	r2, r3
	ldr	r3, [r7, #124]
	strb	r2, [r3, #48]
.L795:
	.loc 1 4689 20
	ldr	r3, [r7, #128]
	.loc 1 4689 8
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	.loc 1 4689 30
	ldr	r3, [r7, #124]
	add	r1, r3, #80
	.loc 1 4689 8
	movs	r3, #1
	ldr	r2, [r7, #148]
	bl	disk_read
	mov	r3, r0
	.loc 1 4689 7
	cmp	r3, #0
	beq	.L797
	.loc 1 4689 68 discriminator 1
	ldr	r3, [r7, #124]
	movs	r2, #1
	strb	r2, [r3, #49]
	.loc 1 4689 98 discriminator 1
	movs	r3, #1
	b	.L798
.L797:
	.loc 1 4691 13
	ldr	r3, [r7, #124]
	ldr	r2, [r7, #148]
	str	r2, [r3, #68]
.L794:
	.loc 1 4695 9
	ldrb	r3, [r7, #159]	@ zero_extendqisi2
.L798:
	.loc 1 4696 1 discriminator 1
	mov	r0, r3
	adds	r7, r7, #160
	.cfi_def_cfa_offset 32
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r4, r5, r7, r8, r9, r10, fp, pc}
	.cfi_endproc
.LFE63:
	.size	f_lseek, .-f_lseek
	.section	.text.f_opendir,"ax",%progbits
	.align	1
	.global	f_opendir
	.syntax unified
	.thumb
	.thumb_func
	.type	f_opendir, %function
f_opendir:
.LFB64:
	.loc 1 4709 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #16
	.cfi_def_cfa_offset 24
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	str	r1, [r7]
	.loc 1 4715 5
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L800
	.loc 1 4715 18 discriminator 1
	movs	r3, #9
	b	.L808
.L800:
	.loc 1 4718 8
	add	r1, r7, #8
	mov	r3, r7
	movs	r2, #0
	mov	r0, r3
	bl	mount_volume
	mov	r3, r0
	strb	r3, [r7, #15]
	.loc 1 4719 5
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L802
	.loc 1 4720 14
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #4]
	str	r2, [r3]
	.loc 1 4722 9
	ldr	r3, [r7]
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	follow_path
	mov	r3, r0
	strb	r3, [r7, #15]
	.loc 1 4723 6
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L803
	.loc 1 4724 16
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #75]	@ zero_extendqisi2
	.loc 1 4724 8
	sxtb	r3, r3
	.loc 1 4724 7
	cmp	r3, #0
	blt	.L804
	.loc 1 4725 16
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #6]	@ zero_extendqisi2
	.loc 1 4725 22
	and	r3, r3, #16
	.loc 1 4725 8
	cmp	r3, #0
	beq	.L805
	.loc 1 4727 12
	ldr	r3, [r7, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 4727 9
	cmp	r3, #4
	bne	.L806
	.loc 1 4728 30
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #8]
	.loc 1 4728 21
	ldr	r3, [r7, #4]
	str	r2, [r3, #32]
	.loc 1 4729 39
	ldr	r3, [r7, #4]
	ldrd	r2, [r3, #16]
	.loc 1 4729 25
	mov	r3, r2
	.loc 1 4729 48
	bic	r3, r3, #255
	.loc 1 4729 71
	ldr	r2, [r7, #4]
	ldrb	r2, [r2, #7]	@ zero_extendqisi2
	.loc 1 4729 62
	orrs	r2, r2, r3
	.loc 1 4729 22
	ldr	r3, [r7, #4]
	str	r2, [r3, #36]
	.loc 1 4730 25
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #76]
	.loc 1 4730 21
	ldr	r3, [r7, #4]
	str	r2, [r3, #40]
	.loc 1 4731 7
	ldr	r3, [r7, #8]
	ldr	r2, [r7, #4]
	mov	r1, r2
	mov	r0, r3
	bl	init_alloc_info
	b	.L804
.L806:
	.loc 1 4735 24
	ldr	r2, [r7, #8]
	.loc 1 4735 39
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #60]
	.loc 1 4735 24
	mov	r1, r3
	mov	r0, r2
	bl	ld_clust
	mov	r2, r0
	.loc 1 4735 22
	ldr	r3, [r7, #4]
	str	r2, [r3, #8]
	b	.L804
.L805:
	.loc 1 4738 10
	movs	r3, #5
	strb	r3, [r7, #15]
.L804:
	.loc 1 4741 7
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L803
	.loc 1 4742 20
	ldr	r3, [r7, #8]
	ldrh	r2, [r3, #6]
	.loc 1 4742 16
	ldr	r3, [r7, #4]
	strh	r2, [r3, #4]	@ movhi
	.loc 1 4743 11
	movs	r1, #0
	ldr	r0, [r7, #4]
	bl	dir_sdi
	mov	r3, r0
	strb	r3, [r7, #15]
.L803:
	.loc 1 4757 6
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	cmp	r3, #4
	bne	.L802
	.loc 1 4757 30 discriminator 1
	movs	r3, #5
	strb	r3, [r7, #15]
.L802:
	.loc 1 4759 5
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L807
	.loc 1 4759 31 discriminator 1
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3]
.L807:
	.loc 1 4761 9
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
.L808:
	.loc 1 4762 1 discriminator 1
	mov	r0, r3
	adds	r7, r7, #16
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE64:
	.size	f_opendir, .-f_opendir
	.section	.text.f_closedir,"ax",%progbits
	.align	1
	.global	f_closedir
	.syntax unified
	.thumb
	.thumb_func
	.type	f_closedir, %function
f_closedir:
.LFB65:
	.loc 1 4774 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #16
	.cfi_def_cfa_offset 24
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 1 4779 8
	ldr	r3, [r7, #4]
	add	r2, r7, #8
	mov	r1, r2
	mov	r0, r3
	bl	validate
	mov	r3, r0
	strb	r3, [r7, #15]
	.loc 1 4780 5
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L810
	.loc 1 4785 14
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3]
.L810:
	.loc 1 4791 9
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	.loc 1 4792 1
	mov	r0, r3
	adds	r7, r7, #16
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE65:
	.size	f_closedir, .-f_closedir
	.section	.text.f_readdir,"ax",%progbits
	.align	1
	.global	f_readdir
	.syntax unified
	.thumb
	.thumb_func
	.type	f_readdir, %function
f_readdir:
.LFB66:
	.loc 1 4805 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #16
	.cfi_def_cfa_offset 24
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	str	r1, [r7]
	.loc 1 4811 8
	ldr	r3, [r7, #4]
	add	r2, r7, #8
	mov	r1, r2
	mov	r0, r3
	bl	validate
	mov	r3, r0
	strb	r3, [r7, #15]
	.loc 1 4812 5
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L813
	.loc 1 4813 6
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L814
	.loc 1 4814 10
	movs	r1, #0
	ldr	r0, [r7, #4]
	bl	dir_sdi
	mov	r3, r0
	strb	r3, [r7, #15]
	b	.L813
.L814:
	.loc 1 4817 10
	movs	r1, #0
	ldr	r0, [r7, #4]
	bl	dir_read
	mov	r3, r0
	strb	r3, [r7, #15]
	.loc 1 4818 7
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	cmp	r3, #4
	bne	.L815
	.loc 1 4818 31 discriminator 1
	movs	r3, #0
	strb	r3, [r7, #15]
.L815:
	.loc 1 4819 7
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L813
	.loc 1 4820 5
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	bl	get_fileinfo
	.loc 1 4821 11
	movs	r1, #0
	ldr	r0, [r7, #4]
	bl	dir_next
	mov	r3, r0
	strb	r3, [r7, #15]
	.loc 1 4822 8
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	cmp	r3, #4
	bne	.L813
	.loc 1 4822 32 discriminator 1
	movs	r3, #0
	strb	r3, [r7, #15]
.L813:
	.loc 1 4827 9
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	.loc 1 4828 1
	mov	r0, r3
	adds	r7, r7, #16
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE66:
	.size	f_readdir, .-f_readdir
	.section	.text.f_stat,"ax",%progbits
	.align	1
	.global	f_stat
	.syntax unified
	.thumb
	.thumb_func
	.type	f_stat, %function
f_stat:
.LFB67:
	.loc 1 4893 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 96
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #96
	.cfi_def_cfa_offset 104
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	str	r1, [r7]
	.loc 1 4900 8
	add	r1, r7, #8
	adds	r3, r7, #4
	movs	r2, #0
	mov	r0, r3
	bl	mount_volume
	mov	r3, r0
	strb	r3, [r7, #95]
	.loc 1 4901 5
	ldrb	r3, [r7, #95]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L818
	.loc 1 4903 9
	ldr	r2, [r7, #4]
	add	r3, r7, #8
	mov	r1, r2
	mov	r0, r3
	bl	follow_path
	mov	r3, r0
	strb	r3, [r7, #95]
	.loc 1 4904 6
	ldrb	r3, [r7, #95]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L818
	.loc 1 4905 13
	ldrb	r3, [r7, #83]	@ zero_extendqisi2
	.loc 1 4905 8
	sxtb	r3, r3
	.loc 1 4905 7
	cmp	r3, #0
	bge	.L819
	.loc 1 4906 9
	movs	r3, #6
	strb	r3, [r7, #95]
	b	.L818
.L819:
	.loc 1 4908 8
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L818
	.loc 1 4908 14 discriminator 1
	add	r3, r7, #8
	ldr	r1, [r7]
	mov	r0, r3
	bl	get_fileinfo
.L818:
	.loc 1 4914 9
	ldrb	r3, [r7, #95]	@ zero_extendqisi2
	.loc 1 4915 1
	mov	r0, r3
	adds	r7, r7, #96
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE67:
	.size	f_stat, .-f_stat
	.section	.text.f_getfree,"ax",%progbits
	.align	1
	.global	f_getfree
	.syntax unified
	.thumb
	.thumb_func
	.type	f_getfree, %function
f_getfree:
.LFB68:
	.loc 1 4929 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 104
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #104
	.cfi_def_cfa_offset 112
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	.loc 1 4939 8
	add	r1, r7, #68
	add	r3, r7, #12
	movs	r2, #0
	mov	r0, r3
	bl	mount_volume
	mov	r3, r0
	strb	r3, [r7, #103]
	.loc 1 4940 5
	ldrb	r3, [r7, #103]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L822
	.loc 1 4941 10
	ldr	r2, [r7, #68]
	ldr	r3, [r7, #4]
	str	r2, [r3]
	.loc 1 4943 9
	ldr	r3, [r7, #68]
	ldr	r2, [r3, #24]
	.loc 1 4943 26
	ldr	r3, [r7, #68]
	ldr	r3, [r3, #28]
	.loc 1 4943 37
	subs	r3, r3, #2
	.loc 1 4943 6
	cmp	r2, r3
	bhi	.L823
	.loc 1 4944 15
	ldr	r3, [r7, #68]
	ldr	r2, [r3, #24]
	.loc 1 4944 11
	ldr	r3, [r7, #8]
	str	r2, [r3]
	b	.L822
.L823:
	.loc 1 4947 10
	movs	r3, #0
	str	r3, [r7, #96]
	.loc 1 4948 10
	ldr	r3, [r7, #68]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 4948 7
	cmp	r3, #1
	bne	.L824
	.loc 1 4949 10
	movs	r3, #2
	str	r3, [r7, #92]
	.loc 1 4949 22
	ldr	r3, [r7, #68]
	str	r3, [r7, #16]
.L829:
	.loc 1 4951 13
	add	r3, r7, #16
	ldr	r1, [r7, #92]
	mov	r0, r3
	bl	get_fat
	str	r0, [r7, #72]
	.loc 1 4952 9
	ldr	r3, [r7, #72]
	cmp	r3, #-1
	bne	.L825
	.loc 1 4953 11
	movs	r3, #1
	strb	r3, [r7, #103]
	.loc 1 4953 7
	b	.L830
.L825:
	.loc 1 4955 9
	ldr	r3, [r7, #72]
	cmp	r3, #1
	bne	.L827
	.loc 1 4956 11
	movs	r3, #2
	strb	r3, [r7, #103]
	.loc 1 4956 7
	b	.L830
.L827:
	.loc 1 4958 9
	ldr	r3, [r7, #72]
	cmp	r3, #0
	bne	.L828
	.loc 1 4958 26 discriminator 1
	ldr	r3, [r7, #96]
	adds	r3, r3, #1
	str	r3, [r7, #96]
.L828:
	.loc 1 4959 5
	ldr	r3, [r7, #92]
	adds	r3, r3, #1
	str	r3, [r7, #92]
	.loc 1 4959 25
	ldr	r3, [r7, #68]
	ldr	r3, [r3, #28]
	.loc 1 4959 5
	ldr	r2, [r7, #92]
	cmp	r2, r3
	bcc	.L829
	b	.L830
.L824:
	.loc 1 4962 11
	ldr	r3, [r7, #68]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 4962 8
	cmp	r3, #4
	bne	.L831
.LBB9:
	.loc 1 4966 15
	ldr	r3, [r7, #68]
	ldr	r3, [r3, #28]
	.loc 1 4966 11
	subs	r3, r3, #2
	str	r3, [r7, #92]
	.loc 1 4967 15
	ldr	r3, [r7, #68]
	.loc 1 4967 11
	ldr	r3, [r3, #52]
	str	r3, [r7, #88]
	.loc 1 4968 8
	movs	r3, #0
	str	r3, [r7, #84]
.L837:
	.loc 1 4970 10
	ldr	r3, [r7, #84]
	cmp	r3, #0
	bne	.L832
	.loc 1 4971 14
	ldr	r0, [r7, #68]
	ldr	r3, [r7, #88]
	adds	r2, r3, #1
	str	r2, [r7, #88]
	mov	r1, r3
	bl	move_window
	mov	r3, r0
	strb	r3, [r7, #103]
	.loc 1 4972 11
	ldrb	r3, [r7, #103]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L845
.L832:
	.loc 1 4974 14
	movs	r3, #8
	str	r3, [r7, #76]
	.loc 1 4974 27
	ldr	r2, [r7, #68]
	.loc 1 4974 32
	ldr	r3, [r7, #84]
	add	r3, r3, r2
	adds	r3, r3, #60
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 4974 22
	mvns	r3, r3
	strb	r3, [r7, #83]
	.loc 1 4974 7
	b	.L834
.L836:
	.loc 1 4975 20 discriminator 4
	ldrb	r3, [r7, #83]	@ zero_extendqisi2
	and	r3, r3, #1
	.loc 1 4975 14 discriminator 4
	ldr	r2, [r7, #96]
	add	r3, r3, r2
	str	r3, [r7, #96]
	.loc 1 4976 11 discriminator 4
	ldrb	r3, [r7, #83]	@ zero_extendqisi2
	lsrs	r3, r3, #1
	strb	r3, [r7, #83]
	.loc 1 4974 49 discriminator 4
	ldr	r3, [r7, #76]
	subs	r3, r3, #1
	str	r3, [r7, #76]
	.loc 1 4974 57 discriminator 4
	ldr	r3, [r7, #92]
	subs	r3, r3, #1
	str	r3, [r7, #92]
.L834:
	.loc 1 4974 7 discriminator 1
	ldr	r3, [r7, #76]
	cmp	r3, #0
	beq	.L835
	.loc 1 4974 39 discriminator 3
	ldr	r3, [r7, #92]
	cmp	r3, #0
	bne	.L836
.L835:
	.loc 1 4978 14
	ldr	r3, [r7, #84]
	adds	r3, r3, #1
	.loc 1 4978 9
	ubfx	r3, r3, #0, #9
	str	r3, [r7, #84]
	.loc 1 4979 6
	ldr	r3, [r7, #92]
	cmp	r3, #0
	bne	.L837
	b	.L830
.L831:
.LBE9:
	.loc 1 4983 15
	ldr	r3, [r7, #68]
	.loc 1 4983 11
	ldr	r3, [r3, #28]
	str	r3, [r7, #92]
	.loc 1 4984 15
	ldr	r3, [r7, #68]
	.loc 1 4984 11
	ldr	r3, [r3, #40]
	str	r3, [r7, #88]
	.loc 1 4985 8
	movs	r3, #0
	str	r3, [r7, #84]
.L843:
	.loc 1 4987 10
	ldr	r3, [r7, #84]
	cmp	r3, #0
	bne	.L838
	.loc 1 4988 14
	ldr	r0, [r7, #68]
	ldr	r3, [r7, #88]
	adds	r2, r3, #1
	str	r2, [r7, #88]
	mov	r1, r3
	bl	move_window
	mov	r3, r0
	strb	r3, [r7, #103]
	.loc 1 4989 11
	ldrb	r3, [r7, #103]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L846
.L838:
	.loc 1 4991 13
	ldr	r3, [r7, #68]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 4991 10
	cmp	r3, #2
	bne	.L839
	.loc 1 4992 22
	ldr	r3, [r7, #68]
	.loc 1 4992 20
	add	r2, r3, #60
	.loc 1 4992 12
	ldr	r3, [r7, #84]
	add	r3, r3, r2
	mov	r0, r3
	bl	ld_word
	mov	r3, r0
	.loc 1 4992 11
	cmp	r3, #0
	bne	.L840
	.loc 1 4992 44 discriminator 1
	ldr	r3, [r7, #96]
	adds	r3, r3, #1
	str	r3, [r7, #96]
.L840:
	.loc 1 4993 10
	ldr	r3, [r7, #84]
	adds	r3, r3, #2
	str	r3, [r7, #84]
	b	.L841
.L839:
	.loc 1 4995 24
	ldr	r3, [r7, #68]
	.loc 1 4995 22
	add	r2, r3, #60
	.loc 1 4995 13
	ldr	r3, [r7, #84]
	add	r3, r3, r2
	mov	r0, r3
	bl	ld_dword
	mov	r3, r0
	.loc 1 4995 35
	bic	r3, r3, #-268435456
	.loc 1 4995 11
	cmp	r3, #0
	bne	.L842
	.loc 1 4995 60 discriminator 1
	ldr	r3, [r7, #96]
	adds	r3, r3, #1
	str	r3, [r7, #96]
.L842:
	.loc 1 4996 10
	ldr	r3, [r7, #84]
	adds	r3, r3, #4
	str	r3, [r7, #84]
.L841:
	.loc 1 4998 9
	ldr	r3, [r7, #84]
	ubfx	r3, r3, #0, #9
	str	r3, [r7, #84]
	.loc 1 4999 6
	ldr	r3, [r7, #92]
	subs	r3, r3, #1
	str	r3, [r7, #92]
	ldr	r3, [r7, #92]
	cmp	r3, #0
	bne	.L843
	b	.L830
.L845:
.LBB10:
	.loc 1 4972 8
	nop
	b	.L830
.L846:
.LBE10:
	.loc 1 4989 8
	nop
.L830:
	.loc 1 5002 7
	ldrb	r3, [r7, #103]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L822
	.loc 1 5003 12
	ldr	r3, [r7, #8]
	ldr	r2, [r7, #96]
	str	r2, [r3]
	.loc 1 5004 7
	ldr	r3, [r7, #68]
	.loc 1 5004 19
	ldr	r2, [r7, #96]
	str	r2, [r3, #24]
	.loc 1 5005 18
	ldr	r3, [r7, #68]
	ldrb	r2, [r3, #5]	@ zero_extendqisi2
	ldr	r3, [r7, #68]
	orr	r2, r2, #1
	uxtb	r2, r2
	strb	r2, [r3, #5]
.L822:
	.loc 1 5010 9
	ldrb	r3, [r7, #103]	@ zero_extendqisi2
	.loc 1 5011 1
	mov	r0, r3
	adds	r7, r7, #104
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE68:
	.size	f_getfree, .-f_getfree
	.section	.text.f_truncate,"ax",%progbits
	.align	1
	.global	f_truncate
	.syntax unified
	.thumb
	.thumb_func
	.type	f_truncate, %function
f_truncate:
.LFB69:
	.loc 1 5023 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #24
	.cfi_def_cfa_offset 32
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 1 5029 8
	ldr	r3, [r7, #4]
	add	r2, r7, #12
	mov	r1, r2
	mov	r0, r3
	bl	validate
	mov	r3, r0
	strb	r3, [r7, #23]
	.loc 1 5030 5
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L848
	.loc 1 5030 27 discriminator 2
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #49]
	strb	r3, [r7, #23]
	.loc 1 5030 19 discriminator 2
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L849
.L848:
	.loc 1 5030 64 discriminator 3
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	b	.L859
.L849:
	.loc 1 5031 10
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #48]	@ zero_extendqisi2
	.loc 1 5031 17
	and	r3, r3, #2
	.loc 1 5031 5
	cmp	r3, #0
	bne	.L851
	.loc 1 5031 33 discriminator 1
	movs	r3, #7
	b	.L859
.L851:
	.loc 1 5033 8
	ldr	r3, [r7, #4]
	ldrd	r0, [r3, #56]
	.loc 1 5033 24
	ldr	r3, [r7, #4]
	ldrd	r2, [r3, #16]
	.loc 1 5033 5
	cmp	r0, r2
	sbcs	r3, r1, r3
	bcs	.L852
	.loc 1 5034 9
	ldr	r3, [r7, #4]
	ldrd	r2, [r3, #56]
	.loc 1 5034 6
	orrs	r3, r2, r3
	bne	.L853
	.loc 1 5035 10
	ldr	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	movs	r2, #0
	mov	r1, r3
	bl	remove_chain
	mov	r3, r0
	strb	r3, [r7, #23]
	.loc 1 5036 19
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #8]
	b	.L854
.L853:
	.loc 1 5038 10
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #64]
	mov	r1, r3
	mov	r0, r2
	bl	get_fat
	str	r0, [r7, #16]
	.loc 1 5039 8
	movs	r3, #0
	strb	r3, [r7, #23]
	.loc 1 5040 7
	ldr	r3, [r7, #16]
	cmp	r3, #-1
	bne	.L855
	.loc 1 5040 31 discriminator 1
	movs	r3, #1
	strb	r3, [r7, #23]
.L855:
	.loc 1 5041 7
	ldr	r3, [r7, #16]
	cmp	r3, #1
	bne	.L856
	.loc 1 5041 22 discriminator 1
	movs	r3, #2
	strb	r3, [r7, #23]
.L856:
	.loc 1 5042 7
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L854
	.loc 1 5042 32 discriminator 1
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #28]
	.loc 1 5042 21 discriminator 1
	ldr	r2, [r7, #16]
	cmp	r2, r3
	bcs	.L854
	.loc 1 5043 11
	ldr	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #64]
	mov	r2, r3
	ldr	r1, [r7, #16]
	bl	remove_chain
	mov	r3, r0
	strb	r3, [r7, #23]
.L854:
	.loc 1 5046 23
	ldr	r3, [r7, #4]
	ldrd	r2, [r3, #56]
	.loc 1 5046 19
	ldr	r1, [r7, #4]
	strd	r2, [r1, #16]
	.loc 1 5047 12
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #48]	@ zero_extendqisi2
	orr	r3, r3, #64
	uxtb	r2, r3
	ldr	r3, [r7, #4]
	strb	r2, [r3, #48]
	.loc 1 5049 6
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L857
	.loc 1 5049 26 discriminator 1
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #48]	@ zero_extendqisi2
	.loc 1 5049 20 discriminator 1
	sxtb	r3, r3
	cmp	r3, #0
	bge	.L857
	.loc 1 5050 21
	ldr	r3, [r7, #12]
	.loc 1 5050 8
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	.loc 1 5050 31
	ldr	r3, [r7, #4]
	add	r1, r3, #80
	.loc 1 5050 8
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #68]
	movs	r3, #1
	bl	disk_write
	mov	r3, r0
	.loc 1 5050 7
	cmp	r3, #0
	beq	.L858
	.loc 1 5051 9
	movs	r3, #1
	strb	r3, [r7, #23]
	b	.L857
.L858:
	.loc 1 5053 14
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #48]	@ zero_extendqisi2
	and	r3, r3, #127
	uxtb	r2, r3
	ldr	r3, [r7, #4]
	strb	r2, [r3, #48]
.L857:
	.loc 1 5057 6
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L852
	.loc 1 5057 31 discriminator 1
	ldr	r3, [r7, #4]
	ldrb	r2, [r7, #23]
	strb	r2, [r3, #49]
	.loc 1 5057 53 discriminator 1
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	b	.L859
.L852:
	.loc 1 5060 9
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
.L859:
	.loc 1 5061 1 discriminator 1
	mov	r0, r3
	adds	r7, r7, #24
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE69:
	.size	f_truncate, .-f_truncate
	.section	.text.f_unlink,"ax",%progbits
	.align	1
	.global	f_unlink
	.syntax unified
	.thumb
	.thumb_func
	.type	f_unlink, %function
f_unlink:
.LFB70:
	.loc 1 5073 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 232
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #232
	.cfi_def_cfa_offset 240
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 1 5077 8
	movs	r3, #0
	str	r3, [r7, #224]
	.loc 1 5085 8
	add	r1, r7, #220
	adds	r3, r7, #4
	movs	r2, #2
	mov	r0, r3
	bl	mount_volume
	mov	r3, r0
	strb	r3, [r7, #231]
	.loc 1 5086 5
	ldrb	r3, [r7, #231]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L861
	.loc 1 5087 13
	ldr	r3, [r7, #220]
	str	r3, [r7, #136]
	.loc 1 5089 9
	ldr	r2, [r7, #4]
	add	r3, r7, #136
	mov	r1, r2
	mov	r0, r3
	bl	follow_path
	mov	r3, r0
	strb	r3, [r7, #231]
	.loc 1 5096 6
	ldrb	r3, [r7, #231]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L861
	.loc 1 5097 13
	ldrb	r3, [r7, #211]	@ zero_extendqisi2
	.loc 1 5097 8
	sxtb	r3, r3
	.loc 1 5097 7
	cmp	r3, #0
	bge	.L862
	.loc 1 5098 9
	movs	r3, #6
	strb	r3, [r7, #231]
	b	.L863
.L862:
	.loc 1 5100 15
	ldrb	r3, [r7, #142]	@ zero_extendqisi2
	.loc 1 5100 21
	and	r3, r3, #1
	.loc 1 5100 8
	cmp	r3, #0
	beq	.L863
	.loc 1 5101 10
	movs	r3, #7
	strb	r3, [r7, #231]
.L863:
	.loc 1 5104 7
	ldrb	r3, [r7, #231]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L864
	.loc 1 5106 12
	ldr	r3, [r7, #220]
	str	r3, [r7, #8]
	.loc 1 5107 11
	ldr	r3, [r7, #220]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 5107 8
	cmp	r3, #4
	bne	.L865
	.loc 1 5108 6
	ldr	r3, [r7, #220]
	add	r2, r7, #8
	mov	r1, r2
	mov	r0, r3
	bl	init_alloc_info
	.loc 1 5109 12
	ldr	r3, [r7, #16]
	str	r3, [r7, #224]
	b	.L866
.L865:
	.loc 1 5113 14
	ldr	r3, [r7, #220]
	.loc 1 5113 29
	ldr	r2, [r7, #196]
	.loc 1 5113 14
	mov	r1, r2
	mov	r0, r3
	bl	ld_clust
	str	r0, [r7, #224]
.L866:
	.loc 1 5115 15
	ldrb	r3, [r7, #142]	@ zero_extendqisi2
	.loc 1 5115 21
	and	r3, r3, #16
	.loc 1 5115 8
	cmp	r3, #0
	beq	.L864
	.loc 1 5122 18
	ldr	r3, [r7, #220]
	str	r3, [r7, #56]
	.loc 1 5123 22
	ldr	r3, [r7, #224]
	str	r3, [r7, #64]
	.loc 1 5125 13
	ldr	r3, [r7, #220]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 5125 10
	cmp	r3, #4
	bne	.L867
	.loc 1 5126 29
	ldrd	r2, [r7, #24]
	.loc 1 5126 24
	strd	r2, [r7, #72]
	.loc 1 5127 26
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	.loc 1 5127 21
	strb	r3, [r7, #63]
.L867:
	.loc 1 5130 13
	add	r3, r7, #56
	movs	r1, #0
	mov	r0, r3
	bl	dir_sdi
	mov	r3, r0
	strb	r3, [r7, #231]
	.loc 1 5131 10
	ldrb	r3, [r7, #231]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L864
	.loc 1 5132 14
	add	r3, r7, #56
	movs	r1, #0
	mov	r0, r3
	bl	dir_read
	mov	r3, r0
	strb	r3, [r7, #231]
	.loc 1 5133 11
	ldrb	r3, [r7, #231]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L868
	.loc 1 5133 30 discriminator 1
	movs	r3, #7
	strb	r3, [r7, #231]
.L868:
	.loc 1 5134 11
	ldrb	r3, [r7, #231]	@ zero_extendqisi2
	cmp	r3, #4
	bne	.L864
	.loc 1 5134 35 discriminator 1
	movs	r3, #0
	strb	r3, [r7, #231]
.L864:
	.loc 1 5139 7
	ldrb	r3, [r7, #231]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L861
	.loc 1 5140 11
	add	r3, r7, #136
	mov	r0, r3
	bl	dir_remove
	mov	r3, r0
	strb	r3, [r7, #231]
	.loc 1 5141 8
	ldrb	r3, [r7, #231]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L869
	.loc 1 5141 22 discriminator 1
	ldr	r3, [r7, #224]
	cmp	r3, #0
	beq	.L869
	.loc 1 5143 12
	add	r3, r7, #8
	movs	r2, #0
	ldr	r1, [r7, #224]
	mov	r0, r3
	bl	remove_chain
	mov	r3, r0
	strb	r3, [r7, #231]
.L869:
	.loc 1 5148 8
	ldrb	r3, [r7, #231]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L861
	.loc 1 5148 29 discriminator 1
	ldr	r3, [r7, #220]
	mov	r0, r3
	bl	sync_fs
	mov	r3, r0
	strb	r3, [r7, #231]
.L861:
	.loc 1 5154 9
	ldrb	r3, [r7, #231]	@ zero_extendqisi2
	.loc 1 5155 1
	mov	r0, r3
	adds	r7, r7, #232
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE70:
	.size	f_unlink, .-f_unlink
	.section	.text.f_mkdir,"ax",%progbits
	.align	1
	.global	f_mkdir
	.syntax unified
	.thumb
	.thumb_func
	.type	f_mkdir, %function
f_mkdir:
.LFB71:
	.loc 1 5167 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 160
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #160
	.cfi_def_cfa_offset 168
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 1 5176 8
	add	r1, r7, #140
	adds	r3, r7, #4
	movs	r2, #2
	mov	r0, r3
	bl	mount_volume
	mov	r3, r0
	strb	r3, [r7, #159]
	.loc 1 5177 5
	ldrb	r3, [r7, #159]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L872
	.loc 1 5178 13
	ldr	r3, [r7, #140]
	str	r3, [r7, #56]
	.loc 1 5180 9
	ldr	r2, [r7, #4]
	add	r3, r7, #56
	mov	r1, r2
	mov	r0, r3
	bl	follow_path
	mov	r3, r0
	strb	r3, [r7, #159]
	.loc 1 5181 6
	ldrb	r3, [r7, #159]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L873
	.loc 1 5181 25 discriminator 1
	movs	r3, #8
	strb	r3, [r7, #159]
.L873:
	.loc 1 5185 6
	ldrb	r3, [r7, #159]	@ zero_extendqisi2
	cmp	r3, #4
	bne	.L872
	.loc 1 5186 12
	ldr	r3, [r7, #140]
	str	r3, [r7, #8]
	.loc 1 5187 10
	add	r3, r7, #8
	movs	r1, #0
	mov	r0, r3
	bl	create_chain
	str	r0, [r7, #152]
	.loc 1 5188 8
	movs	r3, #0
	strb	r3, [r7, #159]
	.loc 1 5189 7
	ldr	r3, [r7, #152]
	cmp	r3, #0
	bne	.L874
	.loc 1 5189 22 discriminator 1
	movs	r3, #7
	strb	r3, [r7, #159]
.L874:
	.loc 1 5190 7
	ldr	r3, [r7, #152]
	cmp	r3, #1
	bne	.L875
	.loc 1 5190 22 discriminator 1
	movs	r3, #2
	strb	r3, [r7, #159]
.L875:
	.loc 1 5191 7
	ldr	r3, [r7, #152]
	cmp	r3, #-1
	bne	.L876
	.loc 1 5191 31 discriminator 1
	movs	r3, #1
	strb	r3, [r7, #159]
.L876:
	.loc 1 5192 7
	ldr	r3, .L883
	str	r3, [r7, #148]
	.loc 1 5193 7
	ldrb	r3, [r7, #159]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L877
	.loc 1 5194 11
	ldr	r3, [r7, #140]
	ldr	r1, [r7, #152]
	mov	r0, r3
	bl	dir_clear
	mov	r3, r0
	strb	r3, [r7, #159]
	.loc 1 5195 8
	ldrb	r3, [r7, #159]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L877
	.loc 1 5196 18
	ldr	r3, [r7, #140]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 5196 9
	cmp	r3, #4
	beq	.L878
	.loc 1 5197 17
	ldr	r3, [r7, #140]
	.loc 1 5197 15
	adds	r3, r3, #60
	.loc 1 5197 7
	movs	r2, #11
	movs	r1, #32
	mov	r0, r3
	bl	mem_set
	.loc 1 5198 9
	ldr	r3, [r7, #140]
	.loc 1 5198 18
	movs	r2, #46
	strb	r2, [r3, #60]
	.loc 1 5199 9
	ldr	r3, [r7, #140]
	.loc 1 5199 19
	movs	r2, #16
	strb	r2, [r3, #71]
	.loc 1 5200 18
	ldr	r3, [r7, #140]
	.loc 1 5200 16
	adds	r3, r3, #60
	.loc 1 5200 7
	adds	r3, r3, #22
	ldr	r1, [r7, #148]
	mov	r0, r3
	bl	st_dword
	.loc 1 5201 7
	ldr	r0, [r7, #140]
	.loc 1 5201 22
	ldr	r3, [r7, #140]
	adds	r3, r3, #60
	.loc 1 5201 7
	ldr	r2, [r7, #152]
	mov	r1, r3
	bl	st_clust
	.loc 1 5202 17
	ldr	r3, [r7, #140]
	.loc 1 5202 15
	adds	r3, r3, #60
	.loc 1 5202 7
	add	r0, r3, #32
	.loc 1 5202 31
	ldr	r3, [r7, #140]
	adds	r3, r3, #60
	.loc 1 5202 7
	movs	r2, #32
	mov	r1, r3
	bl	mem_cpy
	.loc 1 5203 9
	ldr	r3, [r7, #140]
	.loc 1 5203 23
	movs	r2, #46
	strb	r2, [r3, #93]
	.loc 1 5203 34
	ldr	r3, [r7, #64]
	str	r3, [r7, #144]
	.loc 1 5204 7
	ldr	r0, [r7, #140]
	.loc 1 5204 22
	ldr	r3, [r7, #140]
	.loc 1 5204 20
	adds	r3, r3, #60
	.loc 1 5204 7
	adds	r3, r3, #32
	ldr	r2, [r7, #144]
	mov	r1, r3
	bl	st_clust
	.loc 1 5205 9
	ldr	r3, [r7, #140]
	.loc 1 5205 17
	movs	r2, #1
	strb	r2, [r3, #4]
.L878:
	.loc 1 5207 12
	add	r3, r7, #56
	mov	r0, r3
	bl	dir_register
	mov	r3, r0
	strb	r3, [r7, #159]
.L877:
	.loc 1 5210 7
	ldrb	r3, [r7, #159]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L879
	.loc 1 5212 11
	ldr	r3, [r7, #140]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 5212 8
	cmp	r3, #4
	bne	.L880
	.loc 1 5213 17
	ldr	r3, [r7, #140]
	ldr	r3, [r3, #16]
	.loc 1 5213 6
	adds	r3, r3, #12
	ldr	r1, [r7, #148]
	mov	r0, r3
	bl	st_dword
	.loc 1 5214 17
	ldr	r3, [r7, #140]
	ldr	r3, [r3, #16]
	.loc 1 5214 6
	adds	r3, r3, #52
	ldr	r1, [r7, #152]
	mov	r0, r3
	bl	st_dword
	.loc 1 5215 17
	ldr	r3, [r7, #140]
	ldr	r3, [r3, #16]
	.loc 1 5215 6
	add	r2, r3, #56
	.loc 1 5215 41
	ldr	r3, [r7, #140]
	ldrh	r3, [r3, #10]
	.loc 1 5215 6
	lsls	r3, r3, #9
	mov	r1, r3
	mov	r0, r2
	bl	st_dword
	.loc 1 5216 17
	ldr	r3, [r7, #140]
	ldr	r3, [r3, #16]
	.loc 1 5216 6
	add	r2, r3, #40
	.loc 1 5216 41
	ldr	r3, [r7, #140]
	ldrh	r3, [r3, #10]
	.loc 1 5216 6
	lsls	r3, r3, #9
	mov	r1, r3
	mov	r0, r2
	bl	st_dword
	.loc 1 5217 8
	ldr	r3, [r7, #140]
	ldr	r3, [r3, #16]
	.loc 1 5217 16
	adds	r3, r3, #33
	.loc 1 5217 21
	movs	r2, #3
	strb	r2, [r3]
	.loc 1 5218 8
	ldr	r3, [r7, #140]
	ldr	r3, [r3, #16]
	.loc 1 5218 16
	adds	r3, r3, #4
	.loc 1 5218 20
	movs	r2, #16
	strb	r2, [r3]
	.loc 1 5219 12
	add	r3, r7, #56
	mov	r0, r3
	bl	store_xdir
	mov	r3, r0
	strb	r3, [r7, #159]
	b	.L881
.L880:
	.loc 1 5223 17
	ldr	r3, [r7, #116]
	.loc 1 5223 6
	adds	r3, r3, #22
	ldr	r1, [r7, #148]
	mov	r0, r3
	bl	st_dword
	.loc 1 5224 6
	ldr	r3, [r7, #140]
	ldr	r1, [r7, #116]
	ldr	r2, [r7, #152]
	mov	r0, r3
	bl	st_clust
	.loc 1 5225 8
	ldr	r3, [r7, #116]
	.loc 1 5225 12
	adds	r3, r3, #11
	.loc 1 5225 17
	movs	r2, #16
	strb	r2, [r3]
	.loc 1 5226 8
	ldr	r3, [r7, #140]
	.loc 1 5226 16
	movs	r2, #1
	strb	r2, [r3, #4]
.L881:
	.loc 1 5228 8
	ldrb	r3, [r7, #159]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L872
	.loc 1 5229 12
	ldr	r3, [r7, #140]
	mov	r0, r3
	bl	sync_fs
	mov	r3, r0
	strb	r3, [r7, #159]
	b	.L872
.L879:
	.loc 1 5232 5
	add	r3, r7, #8
	movs	r2, #0
	ldr	r1, [r7, #152]
	mov	r0, r3
	bl	remove_chain
.L872:
	.loc 1 5238 9
	ldrb	r3, [r7, #159]	@ zero_extendqisi2
	.loc 1 5239 1
	mov	r0, r3
	adds	r7, r7, #160
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
.L884:
	.align	2
.L883:
	.word	1411448832
	.cfi_endproc
.LFE71:
	.size	f_mkdir, .-f_mkdir
	.section	.text.f_rename,"ax",%progbits
	.align	1
	.global	f_rename
	.syntax unified
	.thumb
	.thumb_func
	.type	f_rename, %function
f_rename:
.LFB72:
	.loc 1 5252 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 256
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #260
	.cfi_def_cfa_offset 272
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	add	r3, r7, #256
	sub	r3, r3, #256
	str	r1, [r3]
	.loc 1 5261 2
	mov	r3, r7
	mov	r0, r3
	bl	get_ldnumber
	.loc 1 5262 8
	add	r1, r7, #236
	adds	r3, r7, #4
	movs	r2, #2
	mov	r0, r3
	bl	mount_volume
	mov	r3, r0
	strb	r3, [r7, #255]
	.loc 1 5263 5
	ldrb	r3, [r7, #255]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L886
	.loc 1 5264 14
	ldr	r3, [r7, #236]
	str	r3, [r7, #152]
	.loc 1 5266 9
	ldr	r2, [r7, #4]
	add	r3, r7, #152
	mov	r1, r2
	mov	r0, r3
	bl	follow_path
	mov	r3, r0
	strb	r3, [r7, #255]
	.loc 1 5267 6
	ldrb	r3, [r7, #255]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L887
	.loc 1 5267 30 discriminator 1
	ldrb	r3, [r7, #227]	@ zero_extendqisi2
	.loc 1 5267 35 discriminator 1
	and	r3, r3, #160
	.loc 1 5267 20 discriminator 1
	cmp	r3, #0
	beq	.L887
	.loc 1 5267 57 discriminator 2
	movs	r3, #6
	strb	r3, [r7, #255]
.L887:
	.loc 1 5273 6
	ldrb	r3, [r7, #255]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L886
	.loc 1 5275 10
	ldr	r3, [r7, #236]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 5275 7
	cmp	r3, #4
	bne	.L888
.LBB11:
	.loc 1 5279 20
	ldr	r3, [r7, #236]
	ldr	r1, [r3, #16]
	.loc 1 5279 5
	add	r3, r7, #8
	movs	r2, #64
	mov	r0, r3
	bl	mem_cpy
	.loc 1 5280 5
	add	r1, r7, #152
	add	r3, r7, #72
	movs	r2, #80
	mov	r0, r3
	bl	mem_cpy
	.loc 1 5281 11
	add	r3, r7, #256
	sub	r3, r3, #256
	ldr	r2, [r3]
	add	r3, r7, #72
	mov	r1, r2
	mov	r0, r3
	bl	follow_path
	mov	r3, r0
	strb	r3, [r7, #255]
	.loc 1 5282 8
	ldrb	r3, [r7, #255]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L889
	.loc 1 5283 20
	ldr	r2, [r7, #80]
	.loc 1 5283 38
	ldr	r3, [r7, #160]
	.loc 1 5283 84
	cmp	r2, r3
	bne	.L890
	.loc 1 5283 52 discriminator 1
	ldr	r2, [r7, #120]
	.loc 1 5283 64 discriminator 1
	ldr	r3, [r7, #200]
	.loc 1 5283 46 discriminator 1
	cmp	r2, r3
	bne	.L890
	.loc 1 5283 84 discriminator 3
	movs	r3, #4
	b	.L891
.L890:
	.loc 1 5283 84 is_stmt 0 discriminator 4
	movs	r3, #8
.L891:
	.loc 1 5283 10 is_stmt 1 discriminator 6
	strb	r3, [r7, #255]
.L889:
	.loc 1 5285 8
	ldrb	r3, [r7, #255]	@ zero_extendqisi2
	cmp	r3, #4
	bne	.L892
	.loc 1 5286 12
	add	r3, r7, #72
	mov	r0, r3
	bl	dir_register
	mov	r3, r0
	strb	r3, [r7, #255]
	.loc 1 5287 9
	ldrb	r3, [r7, #255]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L892
	.loc 1 5288 14
	ldr	r3, [r7, #236]
	ldr	r3, [r3, #16]
	.loc 1 5288 10
	ldrb	r3, [r3, #1]
	strb	r3, [r7, #243]
	.loc 1 5288 34
	ldr	r3, [r7, #236]
	ldr	r3, [r3, #16]
	.loc 1 5288 30
	ldrb	r3, [r3, #35]
	strb	r3, [r7, #242]
	.loc 1 5289 22
	ldr	r3, [r7, #236]
	ldr	r3, [r3, #16]
	.loc 1 5289 31
	adds	r3, r3, #36
	.loc 1 5289 12
	mov	r0, r3
	bl	ld_word
	mov	r3, r0
	strh	r3, [r7, #240]	@ movhi
	.loc 1 5290 17
	ldr	r3, [r7, #236]
	ldr	r3, [r3, #16]
	.loc 1 5290 7
	add	r1, r7, #8
	movs	r2, #64
	mov	r0, r3
	bl	mem_cpy
	.loc 1 5291 9
	ldr	r3, [r7, #236]
	ldr	r3, [r3, #16]
	.loc 1 5291 17
	adds	r3, r3, #1
	.loc 1 5291 21
	ldrb	r2, [r7, #243]
	strb	r2, [r3]
	.loc 1 5291 29
	ldr	r3, [r7, #236]
	ldr	r3, [r3, #16]
	.loc 1 5291 37
	adds	r3, r3, #35
	.loc 1 5291 42
	ldrb	r2, [r7, #242]
	strb	r2, [r3]
	.loc 1 5292 17
	ldr	r3, [r7, #236]
	ldr	r3, [r3, #16]
	.loc 1 5292 7
	adds	r3, r3, #36
	ldrh	r2, [r7, #240]
	mov	r1, r2
	mov	r0, r3
	bl	st_word
	.loc 1 5293 15
	ldr	r3, [r7, #236]
	ldr	r3, [r3, #16]
	.loc 1 5293 23
	adds	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 5293 27
	and	r3, r3, #16
	.loc 1 5293 10
	cmp	r3, #0
	bne	.L893
	.loc 1 5293 38 discriminator 1
	ldr	r3, [r7, #236]
	ldr	r3, [r3, #16]
	.loc 1 5293 50 discriminator 1
	adds	r3, r3, #4
	ldrb	r2, [r3]	@ zero_extendqisi2
	.loc 1 5293 38 discriminator 1
	ldr	r3, [r7, #236]
	ldr	r3, [r3, #16]
	.loc 1 5293 50 discriminator 1
	adds	r3, r3, #4
	orr	r2, r2, #32
	uxtb	r2, r2
	strb	r2, [r3]
.L893:
	.loc 1 5295 13
	add	r3, r7, #72
	mov	r0, r3
	bl	store_xdir
	mov	r3, r0
	strb	r3, [r7, #255]
	b	.L892
.L888:
.LBE11:
	.loc 1 5301 21
	ldr	r1, [r7, #212]
	.loc 1 5301 5
	add	r3, r7, #8
	movs	r2, #32
	mov	r0, r3
	bl	mem_cpy
	.loc 1 5302 5
	add	r1, r7, #152
	add	r3, r7, #72
	movs	r2, #80
	mov	r0, r3
	bl	mem_cpy
	.loc 1 5303 11
	add	r3, r7, #256
	sub	r3, r3, #256
	ldr	r2, [r3]
	add	r3, r7, #72
	mov	r1, r2
	mov	r0, r3
	bl	follow_path
	mov	r3, r0
	strb	r3, [r7, #255]
	.loc 1 5304 8
	ldrb	r3, [r7, #255]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L894
	.loc 1 5305 20
	ldr	r2, [r7, #80]
	.loc 1 5305 38
	ldr	r3, [r7, #160]
	.loc 1 5305 84
	cmp	r2, r3
	bne	.L895
	.loc 1 5305 52 discriminator 1
	ldr	r2, [r7, #120]
	.loc 1 5305 64 discriminator 1
	ldr	r3, [r7, #200]
	.loc 1 5305 46 discriminator 1
	cmp	r2, r3
	bne	.L895
	.loc 1 5305 84 discriminator 3
	movs	r3, #4
	b	.L896
.L895:
	.loc 1 5305 84 is_stmt 0 discriminator 4
	movs	r3, #8
.L896:
	.loc 1 5305 10 is_stmt 1 discriminator 6
	strb	r3, [r7, #255]
.L894:
	.loc 1 5307 8
	ldrb	r3, [r7, #255]	@ zero_extendqisi2
	cmp	r3, #4
	bne	.L892
	.loc 1 5308 12
	add	r3, r7, #72
	mov	r0, r3
	bl	dir_register
	mov	r3, r0
	strb	r3, [r7, #255]
	.loc 1 5309 9
	ldrb	r3, [r7, #255]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L892
	.loc 1 5310 11
	ldr	r3, [r7, #132]
	str	r3, [r7, #248]
	.loc 1 5311 19
	ldr	r3, [r7, #248]
	add	r0, r3, #13
	.loc 1 5311 7
	add	r3, r7, #8
	adds	r3, r3, #13
	movs	r2, #19
	mov	r1, r3
	bl	mem_cpy
	.loc 1 5312 10
	ldr	r3, [r7, #248]
	adds	r3, r3, #11
	.loc 1 5312 20
	ldrb	r2, [r7, #19]	@ zero_extendqisi2
	.loc 1 5312 15
	strb	r2, [r3]
	.loc 1 5313 16
	ldr	r3, [r7, #248]
	adds	r3, r3, #11
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 5313 21
	and	r3, r3, #16
	.loc 1 5313 10
	cmp	r3, #0
	bne	.L897
	.loc 1 5313 38 discriminator 1
	ldr	r3, [r7, #248]
	adds	r3, r3, #11
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [r7, #248]
	adds	r3, r3, #11
	orr	r2, r2, #32
	uxtb	r2, r2
	strb	r2, [r3]
.L897:
	.loc 1 5314 9
	ldr	r3, [r7, #236]
	.loc 1 5314 17
	movs	r2, #1
	strb	r2, [r3, #4]
	.loc 1 5315 15
	ldr	r3, [r7, #248]
	adds	r3, r3, #11
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 5315 20
	and	r3, r3, #16
	.loc 1 5315 10
	cmp	r3, #0
	beq	.L892
	.loc 1 5315 38 discriminator 1
	ldr	r2, [r7, #160]
	.loc 1 5315 56 discriminator 1
	ldr	r3, [r7, #80]
	.loc 1 5315 28 discriminator 1
	cmp	r2, r3
	beq	.L892
	.loc 1 5316 15
	ldr	r4, [r7, #236]
	ldr	r3, [r7, #236]
	ldr	r1, [r7, #248]
	mov	r0, r3
	bl	ld_clust
	mov	r3, r0
	mov	r1, r3
	mov	r0, r4
	bl	clst2sect
	str	r0, [r7, #244]
	.loc 1 5317 11
	ldr	r3, [r7, #244]
	cmp	r3, #0
	bne	.L898
	.loc 1 5318 13
	movs	r3, #2
	strb	r3, [r7, #255]
	b	.L892
.L898:
	.loc 1 5321 15
	ldr	r3, [r7, #236]
	ldr	r1, [r7, #244]
	mov	r0, r3
	bl	move_window
	mov	r3, r0
	strb	r3, [r7, #255]
	.loc 1 5322 17
	ldr	r3, [r7, #236]
	.loc 1 5322 15
	adds	r3, r3, #60
	.loc 1 5322 13
	adds	r3, r3, #32
	str	r3, [r7, #248]
	.loc 1 5323 12
	ldrb	r3, [r7, #255]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L892
	.loc 1 5323 32 discriminator 1
	ldr	r3, [r7, #248]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 5323 26 discriminator 1
	cmp	r3, #46
	bne	.L892
	.loc 1 5324 10
	ldr	r3, [r7, #236]
	ldr	r2, [r7, #80]
	ldr	r1, [r7, #248]
	mov	r0, r3
	bl	st_clust
	.loc 1 5325 12
	ldr	r3, [r7, #236]
	.loc 1 5325 20
	movs	r2, #1
	strb	r2, [r3, #4]
.L892:
	.loc 1 5332 7
	ldrb	r3, [r7, #255]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L886
	.loc 1 5333 11
	add	r3, r7, #152
	mov	r0, r3
	bl	dir_remove
	mov	r3, r0
	strb	r3, [r7, #255]
	.loc 1 5334 8
	ldrb	r3, [r7, #255]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L886
	.loc 1 5335 12
	ldr	r3, [r7, #236]
	mov	r0, r3
	bl	sync_fs
	mov	r3, r0
	strb	r3, [r7, #255]
.L886:
	.loc 1 5343 9
	ldrb	r3, [r7, #255]	@ zero_extendqisi2
	.loc 1 5344 1
	mov	r0, r3
	add	r7, r7, #260
	.cfi_def_cfa_offset 12
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r4, r7, pc}
	.cfi_endproc
.LFE72:
	.size	f_rename, .-f_rename
	.text
.Letext0:
	.file 2 "c:\\st\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\machine\\_default_types.h"
	.file 3 "c:\\st\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\sys\\_stdint.h"
	.file 4 "../Middleware/FatFs/ff.h"
	.file 5 "../Middleware/FatFs/diskio.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x288b
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF1137
	.byte	0xc
	.4byte	.LASF1138
	.4byte	.LASF1139
	.4byte	.Ldebug_ranges0+0x30
	.4byte	0
	.4byte	.Ldebug_line0
	.4byte	.Ldebug_macro0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF906
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF907
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF908
	.uleb128 0x3
	.4byte	.LASF911
	.byte	0x2
	.byte	0x39
	.byte	0x1c
	.4byte	0x4a
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF909
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF910
	.uleb128 0x3
	.4byte	.LASF912
	.byte	0x2
	.byte	0x4f
	.byte	0x1b
	.4byte	0x64
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF913
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF914
	.uleb128 0x3
	.4byte	.LASF915
	.byte	0x2
	.byte	0x69
	.byte	0x20
	.4byte	0x7e
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF916
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF917
	.uleb128 0x3
	.4byte	.LASF918
	.byte	0x3
	.byte	0x24
	.byte	0x14
	.4byte	0x3e
	.uleb128 0x3
	.4byte	.LASF919
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x58
	.uleb128 0x3
	.4byte	.LASF920
	.byte	0x3
	.byte	0x3c
	.byte	0x14
	.4byte	0x72
	.uleb128 0x3
	.4byte	.LASF921
	.byte	0x4
	.byte	0x31
	.byte	0x16
	.4byte	0x8c
	.uleb128 0x3
	.4byte	.LASF922
	.byte	0x4
	.byte	0x32
	.byte	0x17
	.4byte	0x30
	.uleb128 0x5
	.4byte	0xc3
	.uleb128 0x3
	.4byte	.LASF923
	.byte	0x4
	.byte	0x33
	.byte	0x12
	.4byte	0x93
	.uleb128 0x3
	.4byte	.LASF924
	.byte	0x4
	.byte	0x34
	.byte	0x12
	.4byte	0x9f
	.uleb128 0x3
	.4byte	.LASF925
	.byte	0x4
	.byte	0x35
	.byte	0x12
	.4byte	0xab
	.uleb128 0x3
	.4byte	.LASF926
	.byte	0x4
	.byte	0x36
	.byte	0xe
	.4byte	0xd4
	.uleb128 0x5
	.4byte	0xf8
	.uleb128 0x3
	.4byte	.LASF927
	.byte	0x4
	.byte	0x48
	.byte	0xf
	.4byte	0xec
	.uleb128 0x3
	.4byte	.LASF928
	.byte	0x4
	.byte	0x4c
	.byte	0xf
	.4byte	0xe0
	.uleb128 0x3
	.4byte	.LASF929
	.byte	0x4
	.byte	0x69
	.byte	0xe
	.4byte	0x132
	.uleb128 0x5
	.4byte	0x121
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF534
	.uleb128 0x5
	.4byte	0x132
	.uleb128 0x6
	.2byte	0x23c
	.byte	0x4
	.byte	0x84
	.byte	0x9
	.4byte	0x266
	.uleb128 0x7
	.4byte	.LASF930
	.byte	0x4
	.byte	0x85
	.byte	0x7
	.4byte	0xc3
	.byte	0
	.uleb128 0x7
	.4byte	.LASF931
	.byte	0x4
	.byte	0x86
	.byte	0x7
	.4byte	0xc3
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF932
	.byte	0x4
	.byte	0x87
	.byte	0x7
	.4byte	0xc3
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF933
	.byte	0x4
	.byte	0x88
	.byte	0x7
	.4byte	0xc3
	.byte	0x3
	.uleb128 0x7
	.4byte	.LASF934
	.byte	0x4
	.byte	0x89
	.byte	0x7
	.4byte	0xc3
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF935
	.byte	0x4
	.byte	0x8a
	.byte	0x7
	.4byte	0xc3
	.byte	0x5
	.uleb128 0x8
	.ascii	"id\000"
	.byte	0x4
	.byte	0x8b
	.byte	0x7
	.4byte	0xd4
	.byte	0x6
	.uleb128 0x7
	.4byte	.LASF936
	.byte	0x4
	.byte	0x8c
	.byte	0x7
	.4byte	0xd4
	.byte	0x8
	.uleb128 0x7
	.4byte	.LASF937
	.byte	0x4
	.byte	0x8d
	.byte	0x7
	.4byte	0xd4
	.byte	0xa
	.uleb128 0x7
	.4byte	.LASF938
	.byte	0x4
	.byte	0x92
	.byte	0x9
	.4byte	0x266
	.byte	0xc
	.uleb128 0x7
	.4byte	.LASF939
	.byte	0x4
	.byte	0x95
	.byte	0x8
	.4byte	0x26c
	.byte	0x10
	.uleb128 0x7
	.4byte	.LASF940
	.byte	0x4
	.byte	0x98
	.byte	0x8
	.4byte	0xe0
	.byte	0x14
	.uleb128 0x7
	.4byte	.LASF941
	.byte	0x4
	.byte	0x99
	.byte	0x8
	.4byte	0xe0
	.byte	0x18
	.uleb128 0x7
	.4byte	.LASF942
	.byte	0x4
	.byte	0xa3
	.byte	0x8
	.4byte	0xe0
	.byte	0x1c
	.uleb128 0x7
	.4byte	.LASF943
	.byte	0x4
	.byte	0xa4
	.byte	0x8
	.4byte	0xe0
	.byte	0x20
	.uleb128 0x7
	.4byte	.LASF944
	.byte	0x4
	.byte	0xa5
	.byte	0x8
	.4byte	0x115
	.byte	0x24
	.uleb128 0x7
	.4byte	.LASF945
	.byte	0x4
	.byte	0xa6
	.byte	0x8
	.4byte	0x115
	.byte	0x28
	.uleb128 0x7
	.4byte	.LASF946
	.byte	0x4
	.byte	0xa7
	.byte	0x8
	.4byte	0x115
	.byte	0x2c
	.uleb128 0x7
	.4byte	.LASF947
	.byte	0x4
	.byte	0xa8
	.byte	0x8
	.4byte	0x115
	.byte	0x30
	.uleb128 0x7
	.4byte	.LASF948
	.byte	0x4
	.byte	0xaa
	.byte	0x8
	.4byte	0x115
	.byte	0x34
	.uleb128 0x7
	.4byte	.LASF949
	.byte	0x4
	.byte	0xac
	.byte	0x8
	.4byte	0x115
	.byte	0x38
	.uleb128 0x8
	.ascii	"win\000"
	.byte	0x4
	.byte	0xad
	.byte	0x7
	.4byte	0x272
	.byte	0x3c
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0xf8
	.uleb128 0x9
	.byte	0x4
	.4byte	0xc3
	.uleb128 0xa
	.4byte	0xc3
	.4byte	0x283
	.uleb128 0xb
	.4byte	0x8c
	.2byte	0x1ff
	.byte	0
	.uleb128 0x3
	.4byte	.LASF950
	.byte	0x4
	.byte	0xae
	.byte	0x3
	.4byte	0x13e
	.uleb128 0xc
	.byte	0x30
	.byte	0x4
	.byte	0xb4
	.byte	0x9
	.4byte	0x326
	.uleb128 0x8
	.ascii	"fs\000"
	.byte	0x4
	.byte	0xb5
	.byte	0x9
	.4byte	0x326
	.byte	0
	.uleb128 0x8
	.ascii	"id\000"
	.byte	0x4
	.byte	0xb6
	.byte	0x7
	.4byte	0xd4
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF951
	.byte	0x4
	.byte	0xb7
	.byte	0x7
	.4byte	0xc3
	.byte	0x6
	.uleb128 0x7
	.4byte	.LASF952
	.byte	0x4
	.byte	0xb8
	.byte	0x7
	.4byte	0xc3
	.byte	0x7
	.uleb128 0x7
	.4byte	.LASF953
	.byte	0x4
	.byte	0xb9
	.byte	0x8
	.4byte	0xe0
	.byte	0x8
	.uleb128 0x7
	.4byte	.LASF954
	.byte	0x4
	.byte	0xba
	.byte	0xa
	.4byte	0x109
	.byte	0x10
	.uleb128 0x7
	.4byte	.LASF955
	.byte	0x4
	.byte	0xbc
	.byte	0x8
	.4byte	0xe0
	.byte	0x18
	.uleb128 0x7
	.4byte	.LASF956
	.byte	0x4
	.byte	0xbd
	.byte	0x8
	.4byte	0xe0
	.byte	0x1c
	.uleb128 0x7
	.4byte	.LASF957
	.byte	0x4
	.byte	0xbe
	.byte	0x8
	.4byte	0xe0
	.byte	0x20
	.uleb128 0x7
	.4byte	.LASF958
	.byte	0x4
	.byte	0xbf
	.byte	0x8
	.4byte	0xe0
	.byte	0x24
	.uleb128 0x7
	.4byte	.LASF959
	.byte	0x4
	.byte	0xc0
	.byte	0x8
	.4byte	0xe0
	.byte	0x28
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x283
	.uleb128 0x3
	.4byte	.LASF960
	.byte	0x4
	.byte	0xc5
	.byte	0x3
	.4byte	0x28f
	.uleb128 0x5
	.4byte	0x32c
	.uleb128 0x6
	.2byte	0x250
	.byte	0x4
	.byte	0xcb
	.byte	0x9
	.4byte	0x3bd
	.uleb128 0x8
	.ascii	"obj\000"
	.byte	0x4
	.byte	0xcc
	.byte	0xa
	.4byte	0x32c
	.byte	0
	.uleb128 0x7
	.4byte	.LASF961
	.byte	0x4
	.byte	0xcd
	.byte	0x7
	.4byte	0xc3
	.byte	0x30
	.uleb128 0x8
	.ascii	"err\000"
	.byte	0x4
	.byte	0xce
	.byte	0x7
	.4byte	0xc3
	.byte	0x31
	.uleb128 0x7
	.4byte	.LASF962
	.byte	0x4
	.byte	0xcf
	.byte	0xa
	.4byte	0x109
	.byte	0x38
	.uleb128 0x7
	.4byte	.LASF963
	.byte	0x4
	.byte	0xd0
	.byte	0x8
	.4byte	0xe0
	.byte	0x40
	.uleb128 0x7
	.4byte	.LASF964
	.byte	0x4
	.byte	0xd1
	.byte	0x8
	.4byte	0x115
	.byte	0x44
	.uleb128 0x7
	.4byte	.LASF965
	.byte	0x4
	.byte	0xd3
	.byte	0x8
	.4byte	0x115
	.byte	0x48
	.uleb128 0x7
	.4byte	.LASF966
	.byte	0x4
	.byte	0xd4
	.byte	0x8
	.4byte	0x26c
	.byte	0x4c
	.uleb128 0x8
	.ascii	"buf\000"
	.byte	0x4
	.byte	0xda
	.byte	0x7
	.4byte	0x272
	.byte	0x50
	.byte	0
	.uleb128 0xd
	.ascii	"FIL\000"
	.byte	0x4
	.byte	0xdc
	.byte	0x3
	.4byte	0x33d
	.uleb128 0xc
	.byte	0x50
	.byte	0x4
	.byte	0xe2
	.byte	0x9
	.4byte	0x42d
	.uleb128 0x8
	.ascii	"obj\000"
	.byte	0x4
	.byte	0xe3
	.byte	0xa
	.4byte	0x32c
	.byte	0
	.uleb128 0x7
	.4byte	.LASF967
	.byte	0x4
	.byte	0xe4
	.byte	0x8
	.4byte	0xe0
	.byte	0x30
	.uleb128 0x7
	.4byte	.LASF963
	.byte	0x4
	.byte	0xe5
	.byte	0x8
	.4byte	0xe0
	.byte	0x34
	.uleb128 0x7
	.4byte	.LASF964
	.byte	0x4
	.byte	0xe6
	.byte	0x8
	.4byte	0x115
	.byte	0x38
	.uleb128 0x8
	.ascii	"dir\000"
	.byte	0x4
	.byte	0xe7
	.byte	0x8
	.4byte	0x26c
	.byte	0x3c
	.uleb128 0x8
	.ascii	"fn\000"
	.byte	0x4
	.byte	0xe8
	.byte	0x7
	.4byte	0x42d
	.byte	0x40
	.uleb128 0x7
	.4byte	.LASF968
	.byte	0x4
	.byte	0xea
	.byte	0x8
	.4byte	0xe0
	.byte	0x4c
	.byte	0
	.uleb128 0xa
	.4byte	0xc3
	.4byte	0x43d
	.uleb128 0xe
	.4byte	0x8c
	.byte	0xb
	.byte	0
	.uleb128 0xd
	.ascii	"DIR\000"
	.byte	0x4
	.byte	0xef
	.byte	0x3
	.4byte	0x3c9
	.uleb128 0x6
	.2byte	0x120
	.byte	0x4
	.byte	0xf5
	.byte	0x9
	.4byte	0x4a2
	.uleb128 0x7
	.4byte	.LASF943
	.byte	0x4
	.byte	0xf6
	.byte	0xa
	.4byte	0x109
	.byte	0
	.uleb128 0x7
	.4byte	.LASF969
	.byte	0x4
	.byte	0xf7
	.byte	0x7
	.4byte	0xd4
	.byte	0x8
	.uleb128 0x7
	.4byte	.LASF970
	.byte	0x4
	.byte	0xf8
	.byte	0x7
	.4byte	0xd4
	.byte	0xa
	.uleb128 0x7
	.4byte	.LASF971
	.byte	0x4
	.byte	0xf9
	.byte	0x7
	.4byte	0xc3
	.byte	0xc
	.uleb128 0x7
	.4byte	.LASF972
	.byte	0x4
	.byte	0xfb
	.byte	0x8
	.4byte	0x4a2
	.byte	0xd
	.uleb128 0x7
	.4byte	.LASF973
	.byte	0x4
	.byte	0xfc
	.byte	0x8
	.4byte	0x4b2
	.byte	0x1a
	.byte	0
	.uleb128 0xa
	.4byte	0x121
	.4byte	0x4b2
	.uleb128 0xe
	.4byte	0x8c
	.byte	0xc
	.byte	0
	.uleb128 0xa
	.4byte	0x121
	.4byte	0x4c2
	.uleb128 0xe
	.4byte	0x8c
	.byte	0xff
	.byte	0
	.uleb128 0xf
	.4byte	.LASF974
	.byte	0x4
	.2byte	0x100
	.byte	0x3
	.4byte	0x449
	.uleb128 0x10
	.byte	0x7
	.byte	0x1
	.4byte	0x30
	.byte	0x4
	.2byte	0x112
	.byte	0xe
	.4byte	0x557
	.uleb128 0x11
	.4byte	.LASF975
	.byte	0
	.uleb128 0x11
	.4byte	.LASF976
	.byte	0x1
	.uleb128 0x11
	.4byte	.LASF977
	.byte	0x2
	.uleb128 0x11
	.4byte	.LASF978
	.byte	0x3
	.uleb128 0x11
	.4byte	.LASF979
	.byte	0x4
	.uleb128 0x11
	.4byte	.LASF980
	.byte	0x5
	.uleb128 0x11
	.4byte	.LASF981
	.byte	0x6
	.uleb128 0x11
	.4byte	.LASF982
	.byte	0x7
	.uleb128 0x11
	.4byte	.LASF983
	.byte	0x8
	.uleb128 0x11
	.4byte	.LASF984
	.byte	0x9
	.uleb128 0x11
	.4byte	.LASF985
	.byte	0xa
	.uleb128 0x11
	.4byte	.LASF986
	.byte	0xb
	.uleb128 0x11
	.4byte	.LASF987
	.byte	0xc
	.uleb128 0x11
	.4byte	.LASF988
	.byte	0xd
	.uleb128 0x11
	.4byte	.LASF989
	.byte	0xe
	.uleb128 0x11
	.4byte	.LASF990
	.byte	0xf
	.uleb128 0x11
	.4byte	.LASF991
	.byte	0x10
	.uleb128 0x11
	.4byte	.LASF992
	.byte	0x11
	.uleb128 0x11
	.4byte	.LASF993
	.byte	0x12
	.uleb128 0x11
	.4byte	.LASF994
	.byte	0x13
	.byte	0
	.uleb128 0xf
	.4byte	.LASF995
	.byte	0x4
	.2byte	0x127
	.byte	0x3
	.4byte	0x4cf
	.uleb128 0x3
	.4byte	.LASF996
	.byte	0x5
	.byte	0xf
	.byte	0xe
	.4byte	0xc3
	.uleb128 0x12
	.byte	0x7
	.byte	0x1
	.4byte	0x30
	.byte	0x5
	.byte	0x12
	.byte	0xe
	.4byte	0x59d
	.uleb128 0x11
	.4byte	.LASF997
	.byte	0
	.uleb128 0x11
	.4byte	.LASF998
	.byte	0x1
	.uleb128 0x11
	.4byte	.LASF999
	.byte	0x2
	.uleb128 0x11
	.4byte	.LASF1000
	.byte	0x3
	.uleb128 0x11
	.4byte	.LASF1001
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF1002
	.byte	0x5
	.byte	0x18
	.byte	0x3
	.4byte	0x570
	.uleb128 0xa
	.4byte	0x326
	.4byte	0x5b9
	.uleb128 0xe
	.4byte	0x8c
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	.LASF1003
	.byte	0x1
	.2byte	0x1cc
	.byte	0xf
	.4byte	0x5a9
	.uleb128 0x5
	.byte	0x3
	.4byte	FatFs
	.uleb128 0x13
	.4byte	.LASF1004
	.byte	0x1
	.2byte	0x1cd
	.byte	0xd
	.4byte	0xd4
	.uleb128 0x5
	.byte	0x3
	.4byte	Fsid
	.uleb128 0xa
	.4byte	0xcf
	.4byte	0x5ef
	.uleb128 0xe
	.4byte	0x8c
	.byte	0xc
	.byte	0
	.uleb128 0x5
	.4byte	0x5df
	.uleb128 0x13
	.4byte	.LASF1005
	.byte	0x1
	.2byte	0x200
	.byte	0x13
	.4byte	0x5ef
	.uleb128 0x5
	.byte	0x3
	.4byte	LfnOfs
	.uleb128 0xa
	.4byte	0xc3
	.4byte	0x618
	.uleb128 0xb
	.4byte	0x8c
	.2byte	0x25f
	.byte	0
	.uleb128 0x13
	.4byte	.LASF1006
	.byte	0x1
	.2byte	0x205
	.byte	0xd
	.4byte	0x607
	.uleb128 0x5
	.byte	0x3
	.4byte	DirBuf
	.uleb128 0xa
	.4byte	0xf8
	.4byte	0x63b
	.uleb128 0xe
	.4byte	0x8c
	.byte	0xff
	.byte	0
	.uleb128 0x13
	.4byte	.LASF1007
	.byte	0x1
	.2byte	0x207
	.byte	0xe
	.4byte	0x62b
	.uleb128 0x5
	.byte	0x3
	.4byte	LfnBuf
	.uleb128 0xa
	.4byte	0xcf
	.4byte	0x65e
	.uleb128 0xe
	.4byte	0x8c
	.byte	0x7f
	.byte	0
	.uleb128 0x5
	.4byte	0x64e
	.uleb128 0x13
	.4byte	.LASF1008
	.byte	0x1
	.2byte	0x250
	.byte	0x13
	.4byte	0x65e
	.uleb128 0x5
	.byte	0x3
	.4byte	ExCvt
	.uleb128 0x14
	.4byte	.LASF1009
	.byte	0x5
	.byte	0x1f
	.byte	0x9
	.4byte	0x564
	.4byte	0x68c
	.uleb128 0x15
	.4byte	0xc3
	.byte	0
	.uleb128 0x14
	.4byte	.LASF1010
	.byte	0x5
	.byte	0x20
	.byte	0x9
	.4byte	0x564
	.4byte	0x6a2
	.uleb128 0x15
	.4byte	0xc3
	.byte	0
	.uleb128 0x16
	.4byte	.LASF1011
	.byte	0x4
	.2byte	0x170
	.byte	0x7
	.4byte	0xe0
	.4byte	0x6b9
	.uleb128 0x15
	.4byte	0xe0
	.byte	0
	.uleb128 0x14
	.4byte	.LASF1012
	.byte	0x5
	.byte	0x23
	.byte	0x9
	.4byte	0x59d
	.4byte	0x6d9
	.uleb128 0x15
	.4byte	0xc3
	.uleb128 0x15
	.4byte	0xc3
	.uleb128 0x15
	.4byte	0x6d9
	.byte	0
	.uleb128 0x17
	.byte	0x4
	.uleb128 0x14
	.4byte	.LASF1013
	.byte	0x5
	.byte	0x21
	.byte	0x9
	.4byte	0x59d
	.4byte	0x700
	.uleb128 0x15
	.4byte	0xc3
	.uleb128 0x15
	.4byte	0x26c
	.uleb128 0x15
	.4byte	0x115
	.uleb128 0x15
	.4byte	0xb7
	.byte	0
	.uleb128 0x14
	.4byte	.LASF1014
	.byte	0x5
	.byte	0x22
	.byte	0x9
	.4byte	0x59d
	.4byte	0x725
	.uleb128 0x15
	.4byte	0xc3
	.uleb128 0x15
	.4byte	0x725
	.uleb128 0x15
	.4byte	0x115
	.uleb128 0x15
	.4byte	0xb7
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0xcf
	.uleb128 0x16
	.4byte	.LASF1015
	.byte	0x4
	.2byte	0x16f
	.byte	0x7
	.4byte	0xf8
	.4byte	0x747
	.uleb128 0x15
	.4byte	0xe0
	.uleb128 0x15
	.4byte	0xd4
	.byte	0
	.uleb128 0x16
	.4byte	.LASF1016
	.byte	0x4
	.2byte	0x16e
	.byte	0x7
	.4byte	0xf8
	.4byte	0x763
	.uleb128 0x15
	.4byte	0xf8
	.uleb128 0x15
	.4byte	0xd4
	.byte	0
	.uleb128 0x18
	.4byte	.LASF1019
	.byte	0x1
	.2byte	0x1480
	.byte	0x9
	.4byte	0x557
	.4byte	.LFB72
	.4byte	.LFE72-.LFB72
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x84a
	.uleb128 0x19
	.4byte	.LASF1017
	.byte	0x1
	.2byte	0x1481
	.byte	0xf
	.4byte	0x84a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -268
	.uleb128 0x19
	.4byte	.LASF1018
	.byte	0x1
	.2byte	0x1482
	.byte	0xf
	.4byte	0x84a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x1a
	.ascii	"res\000"
	.byte	0x1
	.2byte	0x1485
	.byte	0xa
	.4byte	0x557
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x1a
	.ascii	"fs\000"
	.byte	0x1
	.2byte	0x1486
	.byte	0x9
	.4byte	0x326
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1a
	.ascii	"djo\000"
	.byte	0x1
	.2byte	0x1487
	.byte	0x6
	.4byte	0x43d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x1a
	.ascii	"djn\000"
	.byte	0x1
	.2byte	0x1487
	.byte	0xb
	.4byte	0x43d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x1a
	.ascii	"buf\000"
	.byte	0x1
	.2byte	0x1488
	.byte	0x7
	.4byte	0x850
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.uleb128 0x1a
	.ascii	"dir\000"
	.byte	0x1
	.2byte	0x1488
	.byte	0x1e
	.4byte	0x26c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x13
	.4byte	.LASF964
	.byte	0x1
	.2byte	0x1489
	.byte	0x8
	.4byte	0x115
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1b
	.4byte	.LBB11
	.4byte	.LBE11-.LBB11
	.uleb128 0x1a
	.ascii	"nf\000"
	.byte	0x1
	.2byte	0x149c
	.byte	0xa
	.4byte	0xc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -29
	.uleb128 0x1a
	.ascii	"nn\000"
	.byte	0x1
	.2byte	0x149c
	.byte	0xe
	.4byte	0xc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -30
	.uleb128 0x1a
	.ascii	"nh\000"
	.byte	0x1
	.2byte	0x149d
	.byte	0xa
	.4byte	0xd4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x12d
	.uleb128 0xa
	.4byte	0xc3
	.4byte	0x860
	.uleb128 0xe
	.4byte	0x8c
	.byte	0x3f
	.byte	0
	.uleb128 0x18
	.4byte	.LASF1020
	.byte	0x1
	.2byte	0x142c
	.byte	0x9
	.4byte	0x557
	.4byte	.LFB71
	.4byte	.LFE71-.LFB71
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8fc
	.uleb128 0x19
	.4byte	.LASF1021
	.byte	0x1
	.2byte	0x142d
	.byte	0xf
	.4byte	0x84a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x1a
	.ascii	"res\000"
	.byte	0x1
	.2byte	0x1430
	.byte	0xa
	.4byte	0x557
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x1a
	.ascii	"fs\000"
	.byte	0x1
	.2byte	0x1431
	.byte	0x9
	.4byte	0x326
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1a
	.ascii	"dj\000"
	.byte	0x1
	.2byte	0x1432
	.byte	0x6
	.4byte	0x43d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x13
	.4byte	.LASF1022
	.byte	0x1
	.2byte	0x1433
	.byte	0xa
	.4byte	0x32c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x1a
	.ascii	"dcl\000"
	.byte	0x1
	.2byte	0x1434
	.byte	0x8
	.4byte	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1a
	.ascii	"pcl\000"
	.byte	0x1
	.2byte	0x1434
	.byte	0xd
	.4byte	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1a
	.ascii	"tm\000"
	.byte	0x1
	.2byte	0x1434
	.byte	0x12
	.4byte	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x18
	.4byte	.LASF1023
	.byte	0x1
	.2byte	0x13ce
	.byte	0x9
	.4byte	0x557
	.4byte	.LFB70
	.4byte	.LFE70-.LFB70
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x98a
	.uleb128 0x19
	.4byte	.LASF1021
	.byte	0x1
	.2byte	0x13cf
	.byte	0xf
	.4byte	0x84a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -236
	.uleb128 0x1a
	.ascii	"res\000"
	.byte	0x1
	.2byte	0x13d2
	.byte	0xa
	.4byte	0x557
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x1a
	.ascii	"fs\000"
	.byte	0x1
	.2byte	0x13d3
	.byte	0x9
	.4byte	0x326
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1a
	.ascii	"dj\000"
	.byte	0x1
	.2byte	0x13d4
	.byte	0x6
	.4byte	0x43d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x1a
	.ascii	"sdj\000"
	.byte	0x1
	.2byte	0x13d4
	.byte	0xa
	.4byte	0x43d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x13
	.4byte	.LASF1024
	.byte	0x1
	.2byte	0x13d5
	.byte	0x8
	.4byte	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1a
	.ascii	"obj\000"
	.byte	0x1
	.2byte	0x13d7
	.byte	0xa
	.4byte	0x32c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.byte	0
	.uleb128 0x18
	.4byte	.LASF1025
	.byte	0x1
	.2byte	0x139c
	.byte	0x9
	.4byte	0x557
	.4byte	.LFB69
	.4byte	.LFE69-.LFB69
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9e4
	.uleb128 0x1c
	.ascii	"fp\000"
	.byte	0x1
	.2byte	0x139d
	.byte	0x7
	.4byte	0x9e4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1a
	.ascii	"res\000"
	.byte	0x1
	.2byte	0x13a0
	.byte	0xa
	.4byte	0x557
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x1a
	.ascii	"fs\000"
	.byte	0x1
	.2byte	0x13a1
	.byte	0x9
	.4byte	0x326
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1a
	.ascii	"ncl\000"
	.byte	0x1
	.2byte	0x13a2
	.byte	0x8
	.4byte	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x3bd
	.uleb128 0x18
	.4byte	.LASF1026
	.byte	0x1
	.2byte	0x133c
	.byte	0x9
	.4byte	0x557
	.4byte	.LFB68
	.4byte	.LFE68-.LFB68
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xada
	.uleb128 0x19
	.4byte	.LASF1021
	.byte	0x1
	.2byte	0x133d
	.byte	0xf
	.4byte	0x84a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x19
	.4byte	.LASF1027
	.byte	0x1
	.2byte	0x133e
	.byte	0x9
	.4byte	0xada
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x19
	.4byte	.LASF1028
	.byte	0x1
	.2byte	0x133f
	.byte	0xa
	.4byte	0xae0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x1a
	.ascii	"res\000"
	.byte	0x1
	.2byte	0x1342
	.byte	0xa
	.4byte	0x557
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x1a
	.ascii	"fs\000"
	.byte	0x1
	.2byte	0x1343
	.byte	0x9
	.4byte	0x326
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x13
	.4byte	.LASF1029
	.byte	0x1
	.2byte	0x1344
	.byte	0x8
	.4byte	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x13
	.4byte	.LASF1030
	.byte	0x1
	.2byte	0x1344
	.byte	0xf
	.4byte	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x13
	.4byte	.LASF952
	.byte	0x1
	.2byte	0x1344
	.byte	0x15
	.4byte	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x13
	.4byte	.LASF964
	.byte	0x1
	.2byte	0x1345
	.byte	0x8
	.4byte	0x115
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1a
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x1346
	.byte	0x7
	.4byte	0xb7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1a
	.ascii	"obj\000"
	.byte	0x1
	.2byte	0x1347
	.byte	0xa
	.4byte	0x32c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1d
	.4byte	.Ldebug_ranges0+0x18
	.uleb128 0x1a
	.ascii	"bm\000"
	.byte	0x1
	.2byte	0x1363
	.byte	0xb
	.4byte	0xc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -29
	.uleb128 0x1a
	.ascii	"b\000"
	.byte	0x1
	.2byte	0x1364
	.byte	0xb
	.4byte	0xb7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0xe0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x326
	.uleb128 0x18
	.4byte	.LASF1031
	.byte	0x1
	.2byte	0x1319
	.byte	0x9
	.4byte	0x557
	.4byte	.LFB67
	.4byte	.LFE67-.LFB67
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb44
	.uleb128 0x19
	.4byte	.LASF1021
	.byte	0x1
	.2byte	0x131a
	.byte	0xf
	.4byte	0x84a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x1c
	.ascii	"fno\000"
	.byte	0x1
	.2byte	0x131b
	.byte	0xb
	.4byte	0xb44
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x1a
	.ascii	"res\000"
	.byte	0x1
	.2byte	0x131e
	.byte	0xa
	.4byte	0x557
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x1a
	.ascii	"dj\000"
	.byte	0x1
	.2byte	0x131f
	.byte	0x6
	.4byte	0x43d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x4c2
	.uleb128 0x18
	.4byte	.LASF1032
	.byte	0x1
	.2byte	0x12c1
	.byte	0x9
	.4byte	0x557
	.4byte	.LFB66
	.4byte	.LFE66-.LFB66
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xba4
	.uleb128 0x1c
	.ascii	"dp\000"
	.byte	0x1
	.2byte	0x12c2
	.byte	0x7
	.4byte	0xba4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1c
	.ascii	"fno\000"
	.byte	0x1
	.2byte	0x12c3
	.byte	0xb
	.4byte	0xb44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1a
	.ascii	"res\000"
	.byte	0x1
	.2byte	0x12c6
	.byte	0xa
	.4byte	0x557
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x1a
	.ascii	"fs\000"
	.byte	0x1
	.2byte	0x12c7
	.byte	0x9
	.4byte	0x326
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x43d
	.uleb128 0x18
	.4byte	.LASF1033
	.byte	0x1
	.2byte	0x12a3
	.byte	0x9
	.4byte	0x557
	.4byte	.LFB65
	.4byte	.LFE65-.LFB65
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbf4
	.uleb128 0x1c
	.ascii	"dp\000"
	.byte	0x1
	.2byte	0x12a4
	.byte	0x7
	.4byte	0xba4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1a
	.ascii	"res\000"
	.byte	0x1
	.2byte	0x12a7
	.byte	0xa
	.4byte	0x557
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x1a
	.ascii	"fs\000"
	.byte	0x1
	.2byte	0x12a8
	.byte	0x9
	.4byte	0x326
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x18
	.4byte	.LASF1034
	.byte	0x1
	.2byte	0x1261
	.byte	0x9
	.4byte	0x557
	.4byte	.LFB64
	.4byte	.LFE64-.LFB64
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc4e
	.uleb128 0x1c
	.ascii	"dp\000"
	.byte	0x1
	.2byte	0x1262
	.byte	0x7
	.4byte	0xba4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x19
	.4byte	.LASF1021
	.byte	0x1
	.2byte	0x1263
	.byte	0xf
	.4byte	0x84a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1a
	.ascii	"res\000"
	.byte	0x1
	.2byte	0x1266
	.byte	0xa
	.4byte	0x557
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x1a
	.ascii	"fs\000"
	.byte	0x1
	.2byte	0x1267
	.byte	0x9
	.4byte	0x326
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x18
	.4byte	.LASF1035
	.byte	0x1
	.2byte	0x11bd
	.byte	0x9
	.4byte	0x557
	.4byte	.LFB63
	.4byte	.LFE63-.LFB63
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcea
	.uleb128 0x1c
	.ascii	"fp\000"
	.byte	0x1
	.2byte	0x11be
	.byte	0x7
	.4byte	0x9e4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1c
	.ascii	"ofs\000"
	.byte	0x1
	.2byte	0x11bf
	.byte	0xa
	.4byte	0x109
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1a
	.ascii	"res\000"
	.byte	0x1
	.2byte	0x11c2
	.byte	0xa
	.4byte	0x557
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x1a
	.ascii	"fs\000"
	.byte	0x1
	.2byte	0x11c3
	.byte	0x9
	.4byte	0x326
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x13
	.4byte	.LASF1030
	.byte	0x1
	.2byte	0x11c4
	.byte	0x8
	.4byte	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1a
	.ascii	"bcs\000"
	.byte	0x1
	.2byte	0x11c4
	.byte	0xe
	.4byte	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x13
	.4byte	.LASF1036
	.byte	0x1
	.2byte	0x11c5
	.byte	0x8
	.4byte	0x115
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x13
	.4byte	.LASF1037
	.byte	0x1
	.2byte	0x11c6
	.byte	0xa
	.4byte	0x109
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x18
	.4byte	.LASF1038
	.byte	0x1
	.2byte	0x10e4
	.byte	0x9
	.4byte	0x557
	.4byte	.LFB62
	.4byte	.LFE62-.LFB62
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd34
	.uleb128 0x1c
	.ascii	"fp\000"
	.byte	0x1
	.2byte	0x10e5
	.byte	0x7
	.4byte	0x9e4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1a
	.ascii	"res\000"
	.byte	0x1
	.2byte	0x10e8
	.byte	0xa
	.4byte	0x557
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x1a
	.ascii	"fs\000"
	.byte	0x1
	.2byte	0x10e9
	.byte	0x9
	.4byte	0x326
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x18
	.4byte	.LASF1039
	.byte	0x1
	.2byte	0x1093
	.byte	0x9
	.4byte	0x557
	.4byte	.LFB61
	.4byte	.LFE61-.LFB61
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdb8
	.uleb128 0x1c
	.ascii	"fp\000"
	.byte	0x1
	.2byte	0x1094
	.byte	0x7
	.4byte	0x9e4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x1a
	.ascii	"res\000"
	.byte	0x1
	.2byte	0x1097
	.byte	0xa
	.4byte	0x557
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x1a
	.ascii	"fs\000"
	.byte	0x1
	.2byte	0x1098
	.byte	0x9
	.4byte	0x326
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1a
	.ascii	"tm\000"
	.byte	0x1
	.2byte	0x1099
	.byte	0x8
	.4byte	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1a
	.ascii	"dir\000"
	.byte	0x1
	.2byte	0x109a
	.byte	0x8
	.4byte	0x26c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1b
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.uleb128 0x1a
	.ascii	"dj\000"
	.byte	0x1
	.2byte	0x10af
	.byte	0xa
	.4byte	0x43d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF1040
	.byte	0x1
	.2byte	0x101a
	.byte	0x9
	.4byte	0x557
	.4byte	.LFB60
	.4byte	.LFE60-.LFB60
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe94
	.uleb128 0x1c
	.ascii	"fp\000"
	.byte	0x1
	.2byte	0x101b
	.byte	0x7
	.4byte	0x9e4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x19
	.4byte	.LASF1041
	.byte	0x1
	.2byte	0x101c
	.byte	0xe
	.4byte	0xe94
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1c
	.ascii	"btw\000"
	.byte	0x1
	.2byte	0x101d
	.byte	0x7
	.4byte	0xb7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x1c
	.ascii	"bw\000"
	.byte	0x1
	.2byte	0x101e
	.byte	0x8
	.4byte	0xe9b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1a
	.ascii	"res\000"
	.byte	0x1
	.2byte	0x1021
	.byte	0xa
	.4byte	0x557
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x1a
	.ascii	"fs\000"
	.byte	0x1
	.2byte	0x1022
	.byte	0x9
	.4byte	0x326
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x13
	.4byte	.LASF1030
	.byte	0x1
	.2byte	0x1023
	.byte	0x8
	.4byte	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x13
	.4byte	.LASF964
	.byte	0x1
	.2byte	0x1024
	.byte	0x8
	.4byte	0x115
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x13
	.4byte	.LASF1042
	.byte	0x1
	.2byte	0x1025
	.byte	0x7
	.4byte	0xb7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1a
	.ascii	"cc\000"
	.byte	0x1
	.2byte	0x1025
	.byte	0xd
	.4byte	0xb7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x13
	.4byte	.LASF1043
	.byte	0x1
	.2byte	0x1025
	.byte	0x11
	.4byte	0xb7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x13
	.4byte	.LASF1044
	.byte	0x1
	.2byte	0x1026
	.byte	0xe
	.4byte	0x725
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0xe9a
	.uleb128 0x1e
	.uleb128 0x9
	.byte	0x4
	.4byte	0xb7
	.uleb128 0x18
	.4byte	.LASF1045
	.byte	0x1
	.2byte	0xfb6
	.byte	0x9
	.4byte	0x557
	.4byte	.LFB59
	.4byte	.LFE59-.LFB59
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf91
	.uleb128 0x1c
	.ascii	"fp\000"
	.byte	0x1
	.2byte	0xfb7
	.byte	0x7
	.4byte	0x9e4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x19
	.4byte	.LASF1041
	.byte	0x1
	.2byte	0xfb8
	.byte	0x8
	.4byte	0x6d9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1c
	.ascii	"btr\000"
	.byte	0x1
	.2byte	0xfb9
	.byte	0x7
	.4byte	0xb7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x1c
	.ascii	"br\000"
	.byte	0x1
	.2byte	0xfba
	.byte	0x8
	.4byte	0xe9b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x1a
	.ascii	"res\000"
	.byte	0x1
	.2byte	0xfbd
	.byte	0xa
	.4byte	0x557
	.uleb128 0x2
	.byte	0x91
	.sleb128 -41
	.uleb128 0x1a
	.ascii	"fs\000"
	.byte	0x1
	.2byte	0xfbe
	.byte	0x9
	.4byte	0x326
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x13
	.4byte	.LASF1030
	.byte	0x1
	.2byte	0xfbf
	.byte	0x8
	.4byte	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x13
	.4byte	.LASF964
	.byte	0x1
	.2byte	0xfc0
	.byte	0x8
	.4byte	0x115
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x13
	.4byte	.LASF1046
	.byte	0x1
	.2byte	0xfc1
	.byte	0xa
	.4byte	0x109
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x13
	.4byte	.LASF1047
	.byte	0x1
	.2byte	0xfc2
	.byte	0x7
	.4byte	0xb7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1a
	.ascii	"cc\000"
	.byte	0x1
	.2byte	0xfc2
	.byte	0xd
	.4byte	0xb7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x13
	.4byte	.LASF1043
	.byte	0x1
	.2byte	0xfc2
	.byte	0x11
	.4byte	0xb7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x13
	.4byte	.LASF1048
	.byte	0x1
	.2byte	0xfc3
	.byte	0x8
	.4byte	0x26c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.uleb128 0x18
	.4byte	.LASF1049
	.byte	0x1
	.2byte	0xeed
	.byte	0x9
	.4byte	0x557
	.4byte	.LFB58
	.4byte	.LFE58-.LFB58
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x106c
	.uleb128 0x1c
	.ascii	"fp\000"
	.byte	0x1
	.2byte	0xeee
	.byte	0x7
	.4byte	0x9e4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x19
	.4byte	.LASF1021
	.byte	0x1
	.2byte	0xeef
	.byte	0xf
	.4byte	0x84a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x19
	.4byte	.LASF1050
	.byte	0x1
	.2byte	0xef0
	.byte	0x7
	.4byte	0xc3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -161
	.uleb128 0x1a
	.ascii	"res\000"
	.byte	0x1
	.2byte	0xef3
	.byte	0xa
	.4byte	0x557
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x1a
	.ascii	"dj\000"
	.byte	0x1
	.2byte	0xef4
	.byte	0x6
	.4byte	0x43d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x1a
	.ascii	"fs\000"
	.byte	0x1
	.2byte	0xef5
	.byte	0x9
	.4byte	0x326
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x1a
	.ascii	"cl\000"
	.byte	0x1
	.2byte	0xef7
	.byte	0x8
	.4byte	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1a
	.ascii	"bcs\000"
	.byte	0x1
	.2byte	0xef7
	.byte	0xc
	.4byte	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x13
	.4byte	.LASF1030
	.byte	0x1
	.2byte	0xef7
	.byte	0x11
	.4byte	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1a
	.ascii	"tm\000"
	.byte	0x1
	.2byte	0xef7
	.byte	0x17
	.4byte	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1a
	.ascii	"sc\000"
	.byte	0x1
	.2byte	0xef8
	.byte	0x8
	.4byte	0x115
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1a
	.ascii	"ofs\000"
	.byte	0x1
	.2byte	0xef9
	.byte	0xa
	.4byte	0x109
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x18
	.4byte	.LASF1051
	.byte	0x1
	.2byte	0xeb1
	.byte	0x9
	.4byte	0x557
	.4byte	.LFB57
	.4byte	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10f6
	.uleb128 0x1c
	.ascii	"fs\000"
	.byte	0x1
	.2byte	0xeb2
	.byte	0x9
	.4byte	0x326
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x19
	.4byte	.LASF1021
	.byte	0x1
	.2byte	0xeb3
	.byte	0xf
	.4byte	0x84a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1c
	.ascii	"opt\000"
	.byte	0x1
	.2byte	0xeb4
	.byte	0x7
	.4byte	0xc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x1a
	.ascii	"cfs\000"
	.byte	0x1
	.2byte	0xeb7
	.byte	0x9
	.4byte	0x326
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1a
	.ascii	"vol\000"
	.byte	0x1
	.2byte	0xeb8
	.byte	0x6
	.4byte	0x85
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1a
	.ascii	"res\000"
	.byte	0x1
	.2byte	0xeb9
	.byte	0xa
	.4byte	0x557
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x1a
	.ascii	"rp\000"
	.byte	0x1
	.2byte	0xeba
	.byte	0xf
	.4byte	0x84a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF1052
	.byte	0x1
	.2byte	0xe85
	.byte	0x10
	.4byte	0x557
	.4byte	.LFB56
	.4byte	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1142
	.uleb128 0x1c
	.ascii	"obj\000"
	.byte	0x1
	.2byte	0xe86
	.byte	0xb
	.4byte	0x1142
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1c
	.ascii	"rfs\000"
	.byte	0x1
	.2byte	0xe87
	.byte	0xa
	.4byte	0xae0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1a
	.ascii	"res\000"
	.byte	0x1
	.2byte	0xe8a
	.byte	0xa
	.4byte	0x557
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x32c
	.uleb128 0x1f
	.4byte	.LASF1053
	.byte	0x1
	.2byte	0xda1
	.byte	0x10
	.4byte	0x557
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x12a4
	.uleb128 0x19
	.4byte	.LASF1021
	.byte	0x1
	.2byte	0xda2
	.byte	0x10
	.4byte	0x12a4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x1c
	.ascii	"rfs\000"
	.byte	0x1
	.2byte	0xda3
	.byte	0xa
	.4byte	0xae0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x19
	.4byte	.LASF1050
	.byte	0x1
	.2byte	0xda4
	.byte	0x7
	.4byte	0xc3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -113
	.uleb128 0x1a
	.ascii	"vol\000"
	.byte	0x1
	.2byte	0xda7
	.byte	0x6
	.4byte	0x85
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1a
	.ascii	"fs\000"
	.byte	0x1
	.2byte	0xda8
	.byte	0x9
	.4byte	0x326
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x13
	.4byte	.LASF952
	.byte	0x1
	.2byte	0xda9
	.byte	0xa
	.4byte	0x564
	.uleb128 0x3
	.byte	0x91
	.sleb128 -69
	.uleb128 0x13
	.4byte	.LASF1054
	.byte	0x1
	.2byte	0xdaa
	.byte	0x8
	.4byte	0x115
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x13
	.4byte	.LASF1055
	.byte	0x1
	.2byte	0xdab
	.byte	0x8
	.4byte	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x13
	.4byte	.LASF1056
	.byte	0x1
	.2byte	0xdab
	.byte	0xf
	.4byte	0xe0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x13
	.4byte	.LASF1057
	.byte	0x1
	.2byte	0xdab
	.byte	0x17
	.4byte	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x13
	.4byte	.LASF1027
	.byte	0x1
	.2byte	0xdab
	.byte	0x1f
	.4byte	0xe0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x13
	.4byte	.LASF1058
	.byte	0x1
	.2byte	0xdab
	.byte	0x26
	.4byte	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x13
	.4byte	.LASF1059
	.byte	0x1
	.2byte	0xdac
	.byte	0x7
	.4byte	0xd4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -78
	.uleb128 0x1a
	.ascii	"fmt\000"
	.byte	0x1
	.2byte	0xdad
	.byte	0x7
	.4byte	0xb7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1b
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.uleb128 0x13
	.4byte	.LASF1060
	.byte	0x1
	.2byte	0xde2
	.byte	0x9
	.4byte	0xec
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1a
	.ascii	"so\000"
	.byte	0x1
	.2byte	0xde3
	.byte	0x9
	.4byte	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1a
	.ascii	"cv\000"
	.byte	0x1
	.2byte	0xde3
	.byte	0xd
	.4byte	0xe0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x1a
	.ascii	"bcl\000"
	.byte	0x1
	.2byte	0xde3
	.byte	0x11
	.4byte	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1a
	.ascii	"i\000"
	.byte	0x1
	.2byte	0xde3
	.byte	0x16
	.4byte	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x84a
	.uleb128 0x1f
	.4byte	.LASF1061
	.byte	0x1
	.2byte	0xd6b
	.byte	0xd
	.4byte	0xb7
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1313
	.uleb128 0x1c
	.ascii	"fs\000"
	.byte	0x1
	.2byte	0xd6c
	.byte	0x9
	.4byte	0x326
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x19
	.4byte	.LASF1062
	.byte	0x1
	.2byte	0xd6d
	.byte	0x7
	.4byte	0xb7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1a
	.ascii	"fmt\000"
	.byte	0x1
	.2byte	0xd70
	.byte	0x7
	.4byte	0xb7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1a
	.ascii	"i\000"
	.byte	0x1
	.2byte	0xd70
	.byte	0xc
	.4byte	0xb7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x13
	.4byte	.LASF1063
	.byte	0x1
	.2byte	0xd71
	.byte	0x8
	.4byte	0x1313
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0xa
	.4byte	0xe0
	.4byte	0x1323
	.uleb128 0xe
	.4byte	0x8c
	.byte	0x3
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF1064
	.byte	0x1
	.2byte	0xd43
	.byte	0xd
	.4byte	0xb7
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x138a
	.uleb128 0x1c
	.ascii	"fs\000"
	.byte	0x1
	.2byte	0xd44
	.byte	0x9
	.4byte	0x326
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x19
	.4byte	.LASF964
	.byte	0x1
	.2byte	0xd45
	.byte	0x8
	.4byte	0x115
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1a
	.ascii	"w\000"
	.byte	0x1
	.2byte	0xd48
	.byte	0x7
	.4byte	0xd4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -14
	.uleb128 0x13
	.4byte	.LASF1065
	.byte	0x1
	.2byte	0xd48
	.byte	0xa
	.4byte	0xd4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x1a
	.ascii	"b\000"
	.byte	0x1
	.2byte	0xd49
	.byte	0x7
	.4byte	0xc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -11
	.byte	0
	.uleb128 0x20
	.4byte	.LASF1066
	.byte	0x1
	.2byte	0xcaa
	.byte	0xc
	.4byte	0x85
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1401
	.uleb128 0x19
	.4byte	.LASF1021
	.byte	0x1
	.2byte	0xcab
	.byte	0x10
	.4byte	0x12a4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1a
	.ascii	"tp\000"
	.byte	0x1
	.2byte	0xcae
	.byte	0xf
	.4byte	0x84a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1a
	.ascii	"tt\000"
	.byte	0x1
	.2byte	0xcaf
	.byte	0xf
	.4byte	0x84a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1a
	.ascii	"tc\000"
	.byte	0x1
	.2byte	0xcb0
	.byte	0x8
	.4byte	0x121
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x1a
	.ascii	"i\000"
	.byte	0x1
	.2byte	0xcb1
	.byte	0x6
	.4byte	0x85
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1a
	.ascii	"vol\000"
	.byte	0x1
	.2byte	0xcb2
	.byte	0x6
	.4byte	0x85
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF1067
	.byte	0x1
	.2byte	0xc53
	.byte	0x10
	.4byte	0x557
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x146a
	.uleb128 0x1c
	.ascii	"dp\000"
	.byte	0x1
	.2byte	0xc54
	.byte	0x7
	.4byte	0xba4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x19
	.4byte	.LASF1021
	.byte	0x1
	.2byte	0xc55
	.byte	0xf
	.4byte	0x84a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1a
	.ascii	"res\000"
	.byte	0x1
	.2byte	0xc58
	.byte	0xa
	.4byte	0x557
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x1a
	.ascii	"ns\000"
	.byte	0x1
	.2byte	0xc59
	.byte	0x7
	.4byte	0xc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x1a
	.ascii	"fs\000"
	.byte	0x1
	.2byte	0xc5a
	.byte	0x9
	.4byte	0x326
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF1068
	.byte	0x1
	.2byte	0xb87
	.byte	0x10
	.4byte	0x557
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1539
	.uleb128 0x1c
	.ascii	"dp\000"
	.byte	0x1
	.2byte	0xb88
	.byte	0x7
	.4byte	0xba4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x19
	.4byte	.LASF1021
	.byte	0x1
	.2byte	0xb89
	.byte	0x10
	.4byte	0x12a4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1a
	.ascii	"b\000"
	.byte	0x1
	.2byte	0xb8d
	.byte	0x7
	.4byte	0xc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x1a
	.ascii	"cf\000"
	.byte	0x1
	.2byte	0xb8d
	.byte	0xa
	.4byte	0xc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x1a
	.ascii	"wc\000"
	.byte	0x1
	.2byte	0xb8e
	.byte	0x8
	.4byte	0xf8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1a
	.ascii	"lfn\000"
	.byte	0x1
	.2byte	0xb8f
	.byte	0x9
	.4byte	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1a
	.ascii	"p\000"
	.byte	0x1
	.2byte	0xb90
	.byte	0xf
	.4byte	0x84a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1a
	.ascii	"uc\000"
	.byte	0x1
	.2byte	0xb91
	.byte	0x8
	.4byte	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1a
	.ascii	"i\000"
	.byte	0x1
	.2byte	0xb92
	.byte	0x7
	.4byte	0xb7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1a
	.ascii	"ni\000"
	.byte	0x1
	.2byte	0xb92
	.byte	0xa
	.4byte	0xb7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1a
	.ascii	"si\000"
	.byte	0x1
	.2byte	0xb92
	.byte	0xe
	.4byte	0xb7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1a
	.ascii	"di\000"
	.byte	0x1
	.2byte	0xb92
	.byte	0x12
	.4byte	0xb7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x21
	.4byte	.LASF1076
	.byte	0x1
	.2byte	0xaa1
	.byte	0xd
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x15f3
	.uleb128 0x1c
	.ascii	"dp\000"
	.byte	0x1
	.2byte	0xaa2
	.byte	0x7
	.4byte	0xba4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1c
	.ascii	"fno\000"
	.byte	0x1
	.2byte	0xaa3
	.byte	0xb
	.4byte	0xb44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1a
	.ascii	"si\000"
	.byte	0x1
	.2byte	0xaa6
	.byte	0x7
	.4byte	0xb7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1a
	.ascii	"di\000"
	.byte	0x1
	.2byte	0xaa6
	.byte	0xb
	.4byte	0xb7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1a
	.ascii	"lcf\000"
	.byte	0x1
	.2byte	0xaa8
	.byte	0x7
	.4byte	0xc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x1a
	.ascii	"wc\000"
	.byte	0x1
	.2byte	0xaa9
	.byte	0x8
	.4byte	0xf8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1a
	.ascii	"hs\000"
	.byte	0x1
	.2byte	0xaa9
	.byte	0xc
	.4byte	0xf8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -30
	.uleb128 0x1a
	.ascii	"fs\000"
	.byte	0x1
	.2byte	0xaaa
	.byte	0x9
	.4byte	0x326
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1a
	.ascii	"nw\000"
	.byte	0x1
	.2byte	0xaab
	.byte	0x7
	.4byte	0xb7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1b
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.uleb128 0x1a
	.ascii	"nc\000"
	.byte	0x1
	.2byte	0xab7
	.byte	0x8
	.4byte	0xb7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF1069
	.byte	0x1
	.2byte	0xa73
	.byte	0x10
	.4byte	0x557
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x164d
	.uleb128 0x1c
	.ascii	"dp\000"
	.byte	0x1
	.2byte	0xa74
	.byte	0x7
	.4byte	0xba4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1a
	.ascii	"res\000"
	.byte	0x1
	.2byte	0xa77
	.byte	0xa
	.4byte	0x557
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x1a
	.ascii	"fs\000"
	.byte	0x1
	.2byte	0xa78
	.byte	0x9
	.4byte	0x326
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x13
	.4byte	.LASF1070
	.byte	0x1
	.2byte	0xa7a
	.byte	0x8
	.4byte	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF1071
	.byte	0x1
	.2byte	0xa05
	.byte	0x10
	.4byte	0x557
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x16ff
	.uleb128 0x1c
	.ascii	"dp\000"
	.byte	0x1
	.2byte	0xa06
	.byte	0x7
	.4byte	0xba4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x1a
	.ascii	"res\000"
	.byte	0x1
	.2byte	0xa09
	.byte	0xa
	.4byte	0x557
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x1a
	.ascii	"fs\000"
	.byte	0x1
	.2byte	0xa0a
	.byte	0x9
	.4byte	0x326
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1a
	.ascii	"n\000"
	.byte	0x1
	.2byte	0xa0c
	.byte	0x7
	.4byte	0xb7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1a
	.ascii	"len\000"
	.byte	0x1
	.2byte	0xa0c
	.byte	0xa
	.4byte	0xb7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x13
	.4byte	.LASF1072
	.byte	0x1
	.2byte	0xa0c
	.byte	0xf
	.4byte	0xb7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1a
	.ascii	"sn\000"
	.byte	0x1
	.2byte	0xa0d
	.byte	0x7
	.4byte	0x42d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1a
	.ascii	"sum\000"
	.byte	0x1
	.2byte	0xa0d
	.byte	0xf
	.4byte	0xc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -45
	.uleb128 0x1b
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.uleb128 0x1a
	.ascii	"dj\000"
	.byte	0x1
	.2byte	0xa21
	.byte	0x9
	.4byte	0x43d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF1073
	.byte	0x1
	.2byte	0x9b4
	.byte	0x10
	.4byte	0x557
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x17cc
	.uleb128 0x1c
	.ascii	"dp\000"
	.byte	0x1
	.2byte	0x9b5
	.byte	0x7
	.4byte	0xba4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1a
	.ascii	"res\000"
	.byte	0x1
	.2byte	0x9b8
	.byte	0xa
	.4byte	0x557
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x1a
	.ascii	"fs\000"
	.byte	0x1
	.2byte	0x9b9
	.byte	0x9
	.4byte	0x326
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1a
	.ascii	"c\000"
	.byte	0x1
	.2byte	0x9ba
	.byte	0x7
	.4byte	0xc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x1a
	.ascii	"a\000"
	.byte	0x1
	.2byte	0x9bc
	.byte	0x7
	.4byte	0xc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x1a
	.ascii	"ord\000"
	.byte	0x1
	.2byte	0x9bc
	.byte	0xa
	.4byte	0xc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -19
	.uleb128 0x1a
	.ascii	"sum\000"
	.byte	0x1
	.2byte	0x9bc
	.byte	0xf
	.4byte	0xc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1b
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.uleb128 0x1a
	.ascii	"nc\000"
	.byte	0x1
	.2byte	0x9c3
	.byte	0x8
	.4byte	0xc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x1a
	.ascii	"di\000"
	.byte	0x1
	.2byte	0x9c4
	.byte	0x8
	.4byte	0xb7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1a
	.ascii	"ni\000"
	.byte	0x1
	.2byte	0x9c4
	.byte	0xc
	.4byte	0xb7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x13
	.4byte	.LASF1074
	.byte	0x1
	.2byte	0x9c5
	.byte	0x8
	.4byte	0xd4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF1075
	.byte	0x1
	.2byte	0x966
	.byte	0x10
	.4byte	0x557
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1864
	.uleb128 0x1c
	.ascii	"dp\000"
	.byte	0x1
	.2byte	0x967
	.byte	0x7
	.4byte	0xba4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1c
	.ascii	"vol\000"
	.byte	0x1
	.2byte	0x968
	.byte	0x6
	.4byte	0x85
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1a
	.ascii	"res\000"
	.byte	0x1
	.2byte	0x96b
	.byte	0xa
	.4byte	0x557
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x1a
	.ascii	"fs\000"
	.byte	0x1
	.2byte	0x96c
	.byte	0x9
	.4byte	0x326
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x13
	.4byte	.LASF951
	.byte	0x1
	.2byte	0x96d
	.byte	0x7
	.4byte	0xc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x1a
	.ascii	"b\000"
	.byte	0x1
	.2byte	0x96d
	.byte	0xd
	.4byte	0xc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x1a
	.ascii	"ord\000"
	.byte	0x1
	.2byte	0x96f
	.byte	0x7
	.4byte	0xc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -11
	.uleb128 0x1a
	.ascii	"sum\000"
	.byte	0x1
	.2byte	0x96f
	.byte	0x13
	.4byte	0xc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x21
	.4byte	.LASF1077
	.byte	0x1
	.2byte	0x938
	.byte	0xd
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x18d9
	.uleb128 0x19
	.4byte	.LASF1078
	.byte	0x1
	.2byte	0x939
	.byte	0x8
	.4byte	0x26c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1c
	.ascii	"lfn\000"
	.byte	0x1
	.2byte	0x93a
	.byte	0xf
	.4byte	0x18d9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1a
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x93d
	.byte	0x7
	.4byte	0xb7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1a
	.ascii	"nc1\000"
	.byte	0x1
	.2byte	0x93e
	.byte	0x7
	.4byte	0xc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x13
	.4byte	.LASF1079
	.byte	0x1
	.2byte	0x93e
	.byte	0xc
	.4byte	0xc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -22
	.uleb128 0x1a
	.ascii	"wc\000"
	.byte	0x1
	.2byte	0x93f
	.byte	0x8
	.4byte	0xf8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x104
	.uleb128 0x1f
	.4byte	.LASF1080
	.byte	0x1
	.2byte	0x918
	.byte	0x10
	.4byte	0x557
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x193a
	.uleb128 0x1c
	.ascii	"dp\000"
	.byte	0x1
	.2byte	0x919
	.byte	0x7
	.4byte	0xba4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1a
	.ascii	"res\000"
	.byte	0x1
	.2byte	0x91c
	.byte	0xa
	.4byte	0x557
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x13
	.4byte	.LASF1081
	.byte	0x1
	.2byte	0x91d
	.byte	0x7
	.4byte	0xb7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x13
	.4byte	.LASF1078
	.byte	0x1
	.2byte	0x91e
	.byte	0x8
	.4byte	0x26c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF1082
	.byte	0x1
	.2byte	0x8fb
	.byte	0x10
	.4byte	0x557
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1985
	.uleb128 0x1c
	.ascii	"dp\000"
	.byte	0x1
	.2byte	0x8fc
	.byte	0x7
	.4byte	0xba4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1c
	.ascii	"obj\000"
	.byte	0x1
	.2byte	0x8fd
	.byte	0x11
	.4byte	0x1985
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1a
	.ascii	"res\000"
	.byte	0x1
	.2byte	0x900
	.byte	0xa
	.4byte	0x557
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x338
	.uleb128 0x21
	.4byte	.LASF1083
	.byte	0x1
	.2byte	0x8e9
	.byte	0xd
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x19c2
	.uleb128 0x1c
	.ascii	"fs\000"
	.byte	0x1
	.2byte	0x8ea
	.byte	0x9
	.4byte	0x326
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1c
	.ascii	"obj\000"
	.byte	0x1
	.2byte	0x8eb
	.byte	0xb
	.4byte	0x1142
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF1084
	.byte	0x1
	.2byte	0x8b6
	.byte	0x10
	.4byte	0x557
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1a2b
	.uleb128 0x1c
	.ascii	"dp\000"
	.byte	0x1
	.2byte	0x8b7
	.byte	0x7
	.4byte	0xba4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1a
	.ascii	"res\000"
	.byte	0x1
	.2byte	0x8ba
	.byte	0xa
	.4byte	0x557
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x1a
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x8bb
	.byte	0x7
	.4byte	0xb7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x13
	.4byte	.LASF1085
	.byte	0x1
	.2byte	0x8bb
	.byte	0xa
	.4byte	0xb7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x13
	.4byte	.LASF1078
	.byte	0x1
	.2byte	0x8bc
	.byte	0x8
	.4byte	0x26c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF1086
	.byte	0x1
	.2byte	0x894
	.byte	0xd
	.4byte	0xd4
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1a77
	.uleb128 0x19
	.4byte	.LASF1087
	.byte	0x1
	.2byte	0x895
	.byte	0xf
	.4byte	0x18d9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1a
	.ascii	"chr\000"
	.byte	0x1
	.2byte	0x898
	.byte	0x8
	.4byte	0xf8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1a
	.ascii	"sum\000"
	.byte	0x1
	.2byte	0x899
	.byte	0x7
	.4byte	0xd4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x20
	.4byte	.LASF1088
	.byte	0x1
	.2byte	0x87f
	.byte	0xd
	.4byte	0xd4
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1ad1
	.uleb128 0x1c
	.ascii	"dir\000"
	.byte	0x1
	.2byte	0x880
	.byte	0xe
	.4byte	0x725
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1a
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x883
	.byte	0x7
	.4byte	0xb7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x13
	.4byte	.LASF1089
	.byte	0x1
	.2byte	0x883
	.byte	0xa
	.4byte	0xb7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1a
	.ascii	"sum\000"
	.byte	0x1
	.2byte	0x884
	.byte	0x7
	.4byte	0xd4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -14
	.byte	0
	.uleb128 0x20
	.4byte	.LASF1090
	.byte	0x1
	.2byte	0x869
	.byte	0xd
	.4byte	0xc3
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1b1b
	.uleb128 0x1c
	.ascii	"dir\000"
	.byte	0x1
	.2byte	0x86a
	.byte	0xe
	.4byte	0x725
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1a
	.ascii	"sum\000"
	.byte	0x1
	.2byte	0x86d
	.byte	0x7
	.4byte	0xc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x1a
	.ascii	"n\000"
	.byte	0x1
	.2byte	0x86e
	.byte	0x7
	.4byte	0xb7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x21
	.4byte	.LASF1091
	.byte	0x1
	.2byte	0x830
	.byte	0xd
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1bcb
	.uleb128 0x1c
	.ascii	"dst\000"
	.byte	0x1
	.2byte	0x831
	.byte	0x8
	.4byte	0x26c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1c
	.ascii	"src\000"
	.byte	0x1
	.2byte	0x832
	.byte	0xe
	.4byte	0x725
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1c
	.ascii	"lfn\000"
	.byte	0x1
	.2byte	0x833
	.byte	0xf
	.4byte	0x18d9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1c
	.ascii	"seq\000"
	.byte	0x1
	.2byte	0x834
	.byte	0x7
	.4byte	0xb7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1a
	.ascii	"ns\000"
	.byte	0x1
	.2byte	0x837
	.byte	0x7
	.4byte	0x1bcb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1a
	.ascii	"c\000"
	.byte	0x1
	.2byte	0x837
	.byte	0xe
	.4byte	0xc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x1a
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x838
	.byte	0x7
	.4byte	0xb7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1a
	.ascii	"j\000"
	.byte	0x1
	.2byte	0x838
	.byte	0xa
	.4byte	0xb7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1a
	.ascii	"wc\000"
	.byte	0x1
	.2byte	0x839
	.byte	0x8
	.4byte	0xf8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -22
	.uleb128 0x13
	.4byte	.LASF1092
	.byte	0x1
	.2byte	0x83a
	.byte	0x8
	.4byte	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0xa
	.4byte	0xc3
	.4byte	0x1bdb
	.uleb128 0xe
	.4byte	0x8c
	.byte	0x7
	.byte	0
	.uleb128 0x21
	.4byte	.LASF1093
	.byte	0x1
	.2byte	0x80b
	.byte	0xd
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1c5e
	.uleb128 0x1c
	.ascii	"lfn\000"
	.byte	0x1
	.2byte	0x80c
	.byte	0xf
	.4byte	0x18d9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1c
	.ascii	"dir\000"
	.byte	0x1
	.2byte	0x80d
	.byte	0x8
	.4byte	0x26c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1c
	.ascii	"ord\000"
	.byte	0x1
	.2byte	0x80e
	.byte	0x7
	.4byte	0xc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x1c
	.ascii	"sum\000"
	.byte	0x1
	.2byte	0x80f
	.byte	0x7
	.4byte	0xc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x1a
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x812
	.byte	0x7
	.4byte	0xb7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1a
	.ascii	"s\000"
	.byte	0x1
	.2byte	0x812
	.byte	0xa
	.4byte	0xb7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1a
	.ascii	"wc\000"
	.byte	0x1
	.2byte	0x813
	.byte	0x8
	.4byte	0xf8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF1094
	.byte	0x1
	.2byte	0x7e5
	.byte	0xc
	.4byte	0x85
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1cd4
	.uleb128 0x19
	.4byte	.LASF938
	.byte	0x1
	.2byte	0x7e6
	.byte	0x9
	.4byte	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1c
	.ascii	"dir\000"
	.byte	0x1
	.2byte	0x7e7
	.byte	0x8
	.4byte	0x26c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1a
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x7ea
	.byte	0x7
	.4byte	0xb7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1a
	.ascii	"s\000"
	.byte	0x1
	.2byte	0x7ea
	.byte	0xa
	.4byte	0xb7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1a
	.ascii	"wc\000"
	.byte	0x1
	.2byte	0x7eb
	.byte	0x8
	.4byte	0xf8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x1a
	.ascii	"uc\000"
	.byte	0x1
	.2byte	0x7eb
	.byte	0xc
	.4byte	0xf8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF1095
	.byte	0x1
	.2byte	0x7c1
	.byte	0xc
	.4byte	0x85
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1d4a
	.uleb128 0x19
	.4byte	.LASF938
	.byte	0x1
	.2byte	0x7c2
	.byte	0xf
	.4byte	0x18d9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1c
	.ascii	"dir\000"
	.byte	0x1
	.2byte	0x7c3
	.byte	0x8
	.4byte	0x26c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1a
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x7c6
	.byte	0x7
	.4byte	0xb7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1a
	.ascii	"s\000"
	.byte	0x1
	.2byte	0x7c6
	.byte	0xa
	.4byte	0xb7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1a
	.ascii	"wc\000"
	.byte	0x1
	.2byte	0x7c7
	.byte	0x8
	.4byte	0xf8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.uleb128 0x1a
	.ascii	"uc\000"
	.byte	0x1
	.2byte	0x7c7
	.byte	0xc
	.4byte	0xf8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x21
	.4byte	.LASF1096
	.byte	0x1
	.2byte	0x7ad
	.byte	0xd
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1d90
	.uleb128 0x1c
	.ascii	"fs\000"
	.byte	0x1
	.2byte	0x7ae
	.byte	0x9
	.4byte	0x326
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1c
	.ascii	"dir\000"
	.byte	0x1
	.2byte	0x7af
	.byte	0x8
	.4byte	0x26c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1c
	.ascii	"cl\000"
	.byte	0x1
	.2byte	0x7b0
	.byte	0x8
	.4byte	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF1097
	.byte	0x1
	.2byte	0x79c
	.byte	0xe
	.4byte	0xe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1dda
	.uleb128 0x1c
	.ascii	"fs\000"
	.byte	0x1
	.2byte	0x79d
	.byte	0x9
	.4byte	0x326
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1c
	.ascii	"dir\000"
	.byte	0x1
	.2byte	0x79e
	.byte	0xe
	.4byte	0x725
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1a
	.ascii	"cl\000"
	.byte	0x1
	.2byte	0x7a1
	.byte	0x8
	.4byte	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF1098
	.byte	0x1
	.2byte	0x772
	.byte	0x10
	.4byte	0x557
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1e42
	.uleb128 0x1c
	.ascii	"dp\000"
	.byte	0x1
	.2byte	0x773
	.byte	0x7
	.4byte	0xba4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x19
	.4byte	.LASF1072
	.byte	0x1
	.2byte	0x774
	.byte	0x7
	.4byte	0xb7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1a
	.ascii	"res\000"
	.byte	0x1
	.2byte	0x777
	.byte	0xa
	.4byte	0x557
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x1a
	.ascii	"n\000"
	.byte	0x1
	.2byte	0x778
	.byte	0x7
	.4byte	0xb7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1a
	.ascii	"fs\000"
	.byte	0x1
	.2byte	0x779
	.byte	0x9
	.4byte	0x326
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF1099
	.byte	0x1
	.2byte	0x735
	.byte	0x10
	.4byte	0x557
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1eac
	.uleb128 0x1c
	.ascii	"dp\000"
	.byte	0x1
	.2byte	0x736
	.byte	0x7
	.4byte	0xba4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x19
	.4byte	.LASF1100
	.byte	0x1
	.2byte	0x737
	.byte	0x6
	.4byte	0x85
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1a
	.ascii	"ofs\000"
	.byte	0x1
	.2byte	0x73a
	.byte	0x8
	.4byte	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x13
	.4byte	.LASF1030
	.byte	0x1
	.2byte	0x73a
	.byte	0xd
	.4byte	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1a
	.ascii	"fs\000"
	.byte	0x1
	.2byte	0x73b
	.byte	0x9
	.4byte	0x326
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF1101
	.byte	0x1
	.2byte	0x705
	.byte	0x10
	.4byte	0x557
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1f16
	.uleb128 0x1c
	.ascii	"dp\000"
	.byte	0x1
	.2byte	0x706
	.byte	0x7
	.4byte	0xba4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1c
	.ascii	"ofs\000"
	.byte	0x1
	.2byte	0x707
	.byte	0x8
	.4byte	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1a
	.ascii	"csz\000"
	.byte	0x1
	.2byte	0x70a
	.byte	0x8
	.4byte	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x13
	.4byte	.LASF1030
	.byte	0x1
	.2byte	0x70a
	.byte	0xd
	.4byte	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1a
	.ascii	"fs\000"
	.byte	0x1
	.2byte	0x70b
	.byte	0x9
	.4byte	0x326
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF1102
	.byte	0x1
	.2byte	0x6da
	.byte	0x10
	.4byte	0x557
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1f8f
	.uleb128 0x1c
	.ascii	"fs\000"
	.byte	0x1
	.2byte	0x6db
	.byte	0x9
	.4byte	0x326
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x19
	.4byte	.LASF1030
	.byte	0x1
	.2byte	0x6dc
	.byte	0x8
	.4byte	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x13
	.4byte	.LASF964
	.byte	0x1
	.2byte	0x6df
	.byte	0x8
	.4byte	0x115
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1a
	.ascii	"n\000"
	.byte	0x1
	.2byte	0x6e0
	.byte	0x7
	.4byte	0xb7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1a
	.ascii	"szb\000"
	.byte	0x1
	.2byte	0x6e0
	.byte	0xa
	.4byte	0xb7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x13
	.4byte	.LASF1103
	.byte	0x1
	.2byte	0x6e1
	.byte	0x8
	.4byte	0x26c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF1104
	.byte	0x1
	.2byte	0x654
	.byte	0xe
	.4byte	0xe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2019
	.uleb128 0x1c
	.ascii	"obj\000"
	.byte	0x1
	.2byte	0x655
	.byte	0xb
	.4byte	0x1142
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x19
	.4byte	.LASF1030
	.byte	0x1
	.2byte	0x656
	.byte	0x8
	.4byte	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1a
	.ascii	"cs\000"
	.byte	0x1
	.2byte	0x659
	.byte	0x8
	.4byte	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1a
	.ascii	"ncl\000"
	.byte	0x1
	.2byte	0x659
	.byte	0xc
	.4byte	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1a
	.ascii	"scl\000"
	.byte	0x1
	.2byte	0x659
	.byte	0x11
	.4byte	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1a
	.ascii	"res\000"
	.byte	0x1
	.2byte	0x65a
	.byte	0xa
	.4byte	0x557
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x1a
	.ascii	"fs\000"
	.byte	0x1
	.2byte	0x65b
	.byte	0x9
	.4byte	0x326
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF1105
	.byte	0x1
	.2byte	0x5f5
	.byte	0x10
	.4byte	0x557
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x20b4
	.uleb128 0x1c
	.ascii	"obj\000"
	.byte	0x1
	.2byte	0x5f6
	.byte	0xb
	.4byte	0x1142
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x19
	.4byte	.LASF1030
	.byte	0x1
	.2byte	0x5f7
	.byte	0x8
	.4byte	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x19
	.4byte	.LASF1106
	.byte	0x1
	.2byte	0x5f8
	.byte	0x8
	.4byte	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1a
	.ascii	"res\000"
	.byte	0x1
	.2byte	0x5fb
	.byte	0xa
	.4byte	0x557
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x1a
	.ascii	"nxt\000"
	.byte	0x1
	.2byte	0x5fc
	.byte	0x8
	.4byte	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1a
	.ascii	"fs\000"
	.byte	0x1
	.2byte	0x5fd
	.byte	0x9
	.4byte	0x326
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1a
	.ascii	"scl\000"
	.byte	0x1
	.2byte	0x5ff
	.byte	0x8
	.4byte	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1a
	.ascii	"ecl\000"
	.byte	0x1
	.2byte	0x5ff
	.byte	0x14
	.4byte	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF1107
	.byte	0x1
	.2byte	0x5db
	.byte	0x10
	.4byte	0x557
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2110
	.uleb128 0x1c
	.ascii	"obj\000"
	.byte	0x1
	.2byte	0x5dc
	.byte	0xb
	.4byte	0x1142
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1c
	.ascii	"lcl\000"
	.byte	0x1
	.2byte	0x5dd
	.byte	0x8
	.4byte	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x19
	.4byte	.LASF1108
	.byte	0x1
	.2byte	0x5de
	.byte	0x8
	.4byte	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1a
	.ascii	"res\000"
	.byte	0x1
	.2byte	0x5e1
	.byte	0xa
	.4byte	0x557
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF1109
	.byte	0x1
	.2byte	0x5c4
	.byte	0x10
	.4byte	0x557
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2169
	.uleb128 0x1c
	.ascii	"obj\000"
	.byte	0x1
	.2byte	0x5c5
	.byte	0xb
	.4byte	0x1142
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1a
	.ascii	"res\000"
	.byte	0x1
	.2byte	0x5c8
	.byte	0xa
	.4byte	0x557
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x1a
	.ascii	"cl\000"
	.byte	0x1
	.2byte	0x5c9
	.byte	0x8
	.4byte	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1a
	.ascii	"n\000"
	.byte	0x1
	.2byte	0x5c9
	.byte	0xc
	.4byte	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF1110
	.byte	0x1
	.2byte	0x5a0
	.byte	0x10
	.4byte	0x557
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x21f0
	.uleb128 0x1c
	.ascii	"fs\000"
	.byte	0x1
	.2byte	0x5a1
	.byte	0x9
	.4byte	0x326
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x19
	.4byte	.LASF1030
	.byte	0x1
	.2byte	0x5a2
	.byte	0x8
	.4byte	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1c
	.ascii	"ncl\000"
	.byte	0x1
	.2byte	0x5a3
	.byte	0x8
	.4byte	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1c
	.ascii	"bv\000"
	.byte	0x1
	.2byte	0x5a4
	.byte	0x6
	.4byte	0x85
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1a
	.ascii	"bm\000"
	.byte	0x1
	.2byte	0x5a7
	.byte	0x7
	.4byte	0xc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x1a
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x5a8
	.byte	0x7
	.4byte	0xb7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x13
	.4byte	.LASF964
	.byte	0x1
	.2byte	0x5a9
	.byte	0x8
	.4byte	0x115
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF1111
	.byte	0x1
	.2byte	0x578
	.byte	0xe
	.4byte	0xe0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2297
	.uleb128 0x1c
	.ascii	"fs\000"
	.byte	0x1
	.2byte	0x579
	.byte	0x9
	.4byte	0x326
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x19
	.4byte	.LASF1030
	.byte	0x1
	.2byte	0x57a
	.byte	0x8
	.4byte	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1c
	.ascii	"ncl\000"
	.byte	0x1
	.2byte	0x57b
	.byte	0x8
	.4byte	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1a
	.ascii	"bm\000"
	.byte	0x1
	.2byte	0x57e
	.byte	0x7
	.4byte	0xc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x1a
	.ascii	"bv\000"
	.byte	0x1
	.2byte	0x57e
	.byte	0xb
	.4byte	0xc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -29
	.uleb128 0x1a
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x57f
	.byte	0x7
	.4byte	0xb7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1a
	.ascii	"val\000"
	.byte	0x1
	.2byte	0x580
	.byte	0x8
	.4byte	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1a
	.ascii	"scl\000"
	.byte	0x1
	.2byte	0x580
	.byte	0xd
	.4byte	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1a
	.ascii	"ctr\000"
	.byte	0x1
	.2byte	0x580
	.byte	0x12
	.4byte	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF1112
	.byte	0x1
	.2byte	0x537
	.byte	0x10
	.4byte	0x557
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x230f
	.uleb128 0x1c
	.ascii	"fs\000"
	.byte	0x1
	.2byte	0x538
	.byte	0x9
	.4byte	0x326
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x19
	.4byte	.LASF1030
	.byte	0x1
	.2byte	0x539
	.byte	0x8
	.4byte	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1c
	.ascii	"val\000"
	.byte	0x1
	.2byte	0x53a
	.byte	0x8
	.4byte	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1a
	.ascii	"bc\000"
	.byte	0x1
	.2byte	0x53d
	.byte	0x7
	.4byte	0xb7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1a
	.ascii	"p\000"
	.byte	0x1
	.2byte	0x53e
	.byte	0x8
	.4byte	0x26c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1a
	.ascii	"res\000"
	.byte	0x1
	.2byte	0x53f
	.byte	0xa
	.4byte	0x557
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF1113
	.byte	0x1
	.2byte	0x4e9
	.byte	0xe
	.4byte	0xe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x23ae
	.uleb128 0x1c
	.ascii	"obj\000"
	.byte	0x1
	.2byte	0x4ea
	.byte	0xb
	.4byte	0x1142
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x19
	.4byte	.LASF1030
	.byte	0x1
	.2byte	0x4eb
	.byte	0x8
	.4byte	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1a
	.ascii	"wc\000"
	.byte	0x1
	.2byte	0x4ee
	.byte	0x7
	.4byte	0xb7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1a
	.ascii	"bc\000"
	.byte	0x1
	.2byte	0x4ee
	.byte	0xb
	.4byte	0xb7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1a
	.ascii	"val\000"
	.byte	0x1
	.2byte	0x4ef
	.byte	0x8
	.4byte	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1a
	.ascii	"fs\000"
	.byte	0x1
	.2byte	0x4f0
	.byte	0x9
	.4byte	0x326
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1d
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x13
	.4byte	.LASF1114
	.byte	0x1
	.2byte	0x50f
	.byte	0xb
	.4byte	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x13
	.4byte	.LASF1115
	.byte	0x1
	.2byte	0x510
	.byte	0xb
	.4byte	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LASF1116
	.byte	0x1
	.2byte	0x4d8
	.byte	0xe
	.4byte	0x115
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x23e9
	.uleb128 0x1c
	.ascii	"fs\000"
	.byte	0x1
	.2byte	0x4d9
	.byte	0x9
	.4byte	0x326
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x19
	.4byte	.LASF1030
	.byte	0x1
	.2byte	0x4da
	.byte	0x8
	.4byte	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF1117
	.byte	0x1
	.2byte	0x4b0
	.byte	0x10
	.4byte	0x557
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2424
	.uleb128 0x1c
	.ascii	"fs\000"
	.byte	0x1
	.2byte	0x4b1
	.byte	0x9
	.4byte	0x326
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1a
	.ascii	"res\000"
	.byte	0x1
	.2byte	0x4b4
	.byte	0xa
	.4byte	0x557
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF1118
	.byte	0x1
	.2byte	0x491
	.byte	0x10
	.4byte	0x557
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x246f
	.uleb128 0x1c
	.ascii	"fs\000"
	.byte	0x1
	.2byte	0x492
	.byte	0x9
	.4byte	0x326
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x19
	.4byte	.LASF964
	.byte	0x1
	.2byte	0x493
	.byte	0x8
	.4byte	0x115
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1a
	.ascii	"res\000"
	.byte	0x1
	.2byte	0x496
	.byte	0xa
	.4byte	0x557
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF1119
	.byte	0x1
	.2byte	0x47b
	.byte	0x10
	.4byte	0x557
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x24aa
	.uleb128 0x1c
	.ascii	"fs\000"
	.byte	0x1
	.2byte	0x47c
	.byte	0x9
	.4byte	0x326
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1a
	.ascii	"res\000"
	.byte	0x1
	.2byte	0x47f
	.byte	0xa
	.4byte	0x557
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF1120
	.byte	0x1
	.2byte	0x381
	.byte	0xd
	.4byte	0xb7
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2505
	.uleb128 0x1c
	.ascii	"chr\000"
	.byte	0x1
	.2byte	0x382
	.byte	0x8
	.4byte	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1c
	.ascii	"buf\000"
	.byte	0x1
	.2byte	0x383
	.byte	0x9
	.4byte	0x2505
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1c
	.ascii	"szb\000"
	.byte	0x1
	.2byte	0x384
	.byte	0x7
	.4byte	0xb7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1a
	.ascii	"wc\000"
	.byte	0x1
	.2byte	0x3c5
	.byte	0x8
	.4byte	0xf8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x121
	.uleb128 0x1f
	.4byte	.LASF1121
	.byte	0x1
	.2byte	0x33c
	.byte	0xe
	.4byte	0xe0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2571
	.uleb128 0x1c
	.ascii	"str\000"
	.byte	0x1
	.2byte	0x33d
	.byte	0x10
	.4byte	0x12a4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1a
	.ascii	"uc\000"
	.byte	0x1
	.2byte	0x340
	.byte	0x8
	.4byte	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1a
	.ascii	"p\000"
	.byte	0x1
	.2byte	0x341
	.byte	0xf
	.4byte	0x84a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1a
	.ascii	"b\000"
	.byte	0x1
	.2byte	0x36b
	.byte	0x7
	.4byte	0xc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -15
	.uleb128 0x1a
	.ascii	"wc\000"
	.byte	0x1
	.2byte	0x36c
	.byte	0x8
	.4byte	0xf8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -14
	.byte	0
	.uleb128 0x20
	.4byte	.LASF1122
	.byte	0x1
	.2byte	0x324
	.byte	0xc
	.4byte	0x85
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x259b
	.uleb128 0x1c
	.ascii	"c\000"
	.byte	0x1
	.2byte	0x324
	.byte	0x1a
	.4byte	0xc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x20
	.4byte	.LASF1123
	.byte	0x1
	.2byte	0x310
	.byte	0xc
	.4byte	0x85
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x25c5
	.uleb128 0x1c
	.ascii	"c\000"
	.byte	0x1
	.2byte	0x310
	.byte	0x1a
	.4byte	0xc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x20
	.4byte	.LASF1124
	.byte	0x1
	.2byte	0x2f6
	.byte	0xc
	.4byte	0x85
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x261f
	.uleb128 0x1c
	.ascii	"dst\000"
	.byte	0x1
	.2byte	0x2f6
	.byte	0x21
	.4byte	0xe94
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1c
	.ascii	"src\000"
	.byte	0x1
	.2byte	0x2f6
	.byte	0x32
	.4byte	0xe94
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1c
	.ascii	"cnt\000"
	.byte	0x1
	.2byte	0x2f6
	.byte	0x3c
	.4byte	0xb7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1a
	.ascii	"r\000"
	.byte	0x1
	.2byte	0x2f8
	.byte	0x6
	.4byte	0x85
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x20
	.4byte	.LASF1125
	.byte	0x1
	.2byte	0x2e4
	.byte	0xc
	.4byte	0x85
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x265b
	.uleb128 0x1c
	.ascii	"str\000"
	.byte	0x1
	.2byte	0x2e4
	.byte	0x21
	.4byte	0x265b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1c
	.ascii	"chr\000"
	.byte	0x1
	.2byte	0x2e4
	.byte	0x2a
	.4byte	0x85
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x139
	.uleb128 0x22
	.4byte	.LASF1126
	.byte	0x1
	.2byte	0x2d2
	.byte	0x14
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x26a9
	.uleb128 0x1c
	.ascii	"dst\000"
	.byte	0x1
	.2byte	0x2d2
	.byte	0x22
	.4byte	0x6d9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1c
	.ascii	"src\000"
	.byte	0x1
	.2byte	0x2d2
	.byte	0x33
	.4byte	0xe94
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x19
	.4byte	.LASF1127
	.byte	0x1
	.2byte	0x2d2
	.byte	0x45
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x22
	.4byte	.LASF1128
	.byte	0x1
	.2byte	0x2c2
	.byte	0x14
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x26f1
	.uleb128 0x1c
	.ascii	"mem\000"
	.byte	0x1
	.2byte	0x2c2
	.byte	0x22
	.4byte	0x6d9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x19
	.4byte	.LASF1129
	.byte	0x1
	.2byte	0x2c2
	.byte	0x2b
	.4byte	0x85
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x19
	.4byte	.LASF1127
	.byte	0x1
	.2byte	0x2c2
	.byte	0x3f
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x22
	.4byte	.LASF1130
	.byte	0x1
	.2byte	0x2b2
	.byte	0x14
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2739
	.uleb128 0x1c
	.ascii	"mem\000"
	.byte	0x1
	.2byte	0x2b2
	.byte	0x24
	.4byte	0x6d9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x19
	.4byte	.LASF1129
	.byte	0x1
	.2byte	0x2b2
	.byte	0x2d
	.4byte	0x85
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x19
	.4byte	.LASF1127
	.byte	0x1
	.2byte	0x2b2
	.byte	0x41
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x22
	.4byte	.LASF1131
	.byte	0x1
	.2byte	0x29a
	.byte	0xd
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2771
	.uleb128 0x1c
	.ascii	"ptr\000"
	.byte	0x1
	.2byte	0x29a
	.byte	0x1d
	.4byte	0x26c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1c
	.ascii	"val\000"
	.byte	0x1
	.2byte	0x29a
	.byte	0x28
	.4byte	0xec
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x22
	.4byte	.LASF1132
	.byte	0x1
	.2byte	0x291
	.byte	0xd
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x27a9
	.uleb128 0x1c
	.ascii	"ptr\000"
	.byte	0x1
	.2byte	0x291
	.byte	0x1d
	.4byte	0x26c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1c
	.ascii	"val\000"
	.byte	0x1
	.2byte	0x291
	.byte	0x28
	.4byte	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x22
	.4byte	.LASF1133
	.byte	0x1
	.2byte	0x28b
	.byte	0xd
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x27e1
	.uleb128 0x1c
	.ascii	"ptr\000"
	.byte	0x1
	.2byte	0x28b
	.byte	0x1c
	.4byte	0x26c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1c
	.ascii	"val\000"
	.byte	0x1
	.2byte	0x28b
	.byte	0x26
	.4byte	0xd4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -14
	.byte	0
	.uleb128 0x20
	.4byte	.LASF1134
	.byte	0x1
	.2byte	0x27a
	.byte	0xe
	.4byte	0xec
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x281c
	.uleb128 0x1c
	.ascii	"ptr\000"
	.byte	0x1
	.2byte	0x27a
	.byte	0x24
	.4byte	0x725
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1a
	.ascii	"rv\000"
	.byte	0x1
	.2byte	0x27c
	.byte	0x8
	.4byte	0xec
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x20
	.4byte	.LASF1135
	.byte	0x1
	.2byte	0x26e
	.byte	0xe
	.4byte	0xe0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2857
	.uleb128 0x1c
	.ascii	"ptr\000"
	.byte	0x1
	.2byte	0x26e
	.byte	0x24
	.4byte	0x725
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1a
	.ascii	"rv\000"
	.byte	0x1
	.2byte	0x270
	.byte	0x8
	.4byte	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x23
	.4byte	.LASF1136
	.byte	0x1
	.2byte	0x265
	.byte	0xd
	.4byte	0xd4
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1c
	.ascii	"ptr\000"
	.byte	0x1
	.2byte	0x265
	.byte	0x22
	.4byte	0x725
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1a
	.ascii	"rv\000"
	.byte	0x1
	.2byte	0x267
	.byte	0x7
	.4byte	0xd4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x17
	.uleb128 0x2119
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
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
	.uleb128 0x3
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
	.uleb128 0x4
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
	.uleb128 0x5
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x5
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
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x13
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
	.uleb128 0xd
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0xe
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x17
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
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
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x25c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.4byte	.LFB56
	.4byte	.LFE56-.LFB56
	.4byte	.LFB57
	.4byte	.LFE57-.LFB57
	.4byte	.LFB58
	.4byte	.LFE58-.LFB58
	.4byte	.LFB59
	.4byte	.LFE59-.LFB59
	.4byte	.LFB60
	.4byte	.LFE60-.LFB60
	.4byte	.LFB61
	.4byte	.LFE61-.LFB61
	.4byte	.LFB62
	.4byte	.LFE62-.LFB62
	.4byte	.LFB63
	.4byte	.LFE63-.LFB63
	.4byte	.LFB64
	.4byte	.LFE64-.LFB64
	.4byte	.LFB65
	.4byte	.LFE65-.LFB65
	.4byte	.LFB66
	.4byte	.LFE66-.LFB66
	.4byte	.LFB67
	.4byte	.LFE67-.LFB67
	.4byte	.LFB68
	.4byte	.LFE68-.LFB68
	.4byte	.LFB69
	.4byte	.LFE69-.LFB69
	.4byte	.LFB70
	.4byte	.LFE70-.LFB70
	.4byte	.LFB71
	.4byte	.LFE71-.LFB71
	.4byte	.LFB72
	.4byte	.LFE72-.LFB72
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LBB2
	.4byte	.LBE2
	.4byte	.LBB3
	.4byte	.LBE3
	.4byte	0
	.4byte	0
	.4byte	.LBB9
	.4byte	.LBE9
	.4byte	.LBB10
	.4byte	.LBE10
	.4byte	0
	.4byte	0
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	.LFB33
	.4byte	.LFE33
	.4byte	.LFB34
	.4byte	.LFE34
	.4byte	.LFB35
	.4byte	.LFE35
	.4byte	.LFB36
	.4byte	.LFE36
	.4byte	.LFB37
	.4byte	.LFE37
	.4byte	.LFB38
	.4byte	.LFE38
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	.LFB41
	.4byte	.LFE41
	.4byte	.LFB42
	.4byte	.LFE42
	.4byte	.LFB43
	.4byte	.LFE43
	.4byte	.LFB44
	.4byte	.LFE44
	.4byte	.LFB45
	.4byte	.LFE45
	.4byte	.LFB46
	.4byte	.LFE46
	.4byte	.LFB47
	.4byte	.LFE47
	.4byte	.LFB48
	.4byte	.LFE48
	.4byte	.LFB49
	.4byte	.LFE49
	.4byte	.LFB50
	.4byte	.LFE50
	.4byte	.LFB51
	.4byte	.LFE51
	.4byte	.LFB52
	.4byte	.LFE52
	.4byte	.LFB53
	.4byte	.LFE53
	.4byte	.LFB54
	.4byte	.LFE54
	.4byte	.LFB55
	.4byte	.LFE55
	.4byte	.LFB56
	.4byte	.LFE56
	.4byte	.LFB57
	.4byte	.LFE57
	.4byte	.LFB58
	.4byte	.LFE58
	.4byte	.LFB59
	.4byte	.LFE59
	.4byte	.LFB60
	.4byte	.LFE60
	.4byte	.LFB61
	.4byte	.LFE61
	.4byte	.LFB62
	.4byte	.LFE62
	.4byte	.LFB63
	.4byte	.LFE63
	.4byte	.LFB64
	.4byte	.LFE64
	.4byte	.LFB65
	.4byte	.LFE65
	.4byte	.LFB66
	.4byte	.LFE66
	.4byte	.LFB67
	.4byte	.LFE67
	.4byte	.LFB68
	.4byte	.LFE68
	.4byte	.LFB69
	.4byte	.LFE69
	.4byte	.LFB70
	.4byte	.LFE70
	.4byte	.LFB71
	.4byte	.LFE71
	.4byte	.LFB72
	.4byte	.LFE72
	.4byte	0
	.4byte	0
	.section	.debug_macro,"",%progbits
.Ldebug_macro0:
	.2byte	0x4
	.byte	0x2
	.4byte	.Ldebug_line0
	.byte	0x3
	.uleb128 0
	.uleb128 0x1
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF0
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF1
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF2
	.byte	0x5
	.uleb128 0x4
	.4byte	.LASF3
	.byte	0x5
	.uleb128 0x5
	.4byte	.LASF4
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF5
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF6
	.byte	0x5
	.uleb128 0x8
	.4byte	.LASF7
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF8
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF9
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF10
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF11
	.byte	0x5
	.uleb128 0xd
	.4byte	.LASF12
	.byte	0x5
	.uleb128 0xe
	.4byte	.LASF13
	.byte	0x5
	.uleb128 0xf
	.4byte	.LASF14
	.byte	0x5
	.uleb128 0x10
	.4byte	.LASF15
	.byte	0x5
	.uleb128 0x11
	.4byte	.LASF16
	.byte	0x5
	.uleb128 0x12
	.4byte	.LASF17
	.byte	0x5
	.uleb128 0x13
	.4byte	.LASF18
	.byte	0x5
	.uleb128 0x14
	.4byte	.LASF19
	.byte	0x5
	.uleb128 0x15
	.4byte	.LASF20
	.byte	0x5
	.uleb128 0x16
	.4byte	.LASF21
	.byte	0x5
	.uleb128 0x17
	.4byte	.LASF22
	.byte	0x5
	.uleb128 0x18
	.4byte	.LASF23
	.byte	0x5
	.uleb128 0x19
	.4byte	.LASF24
	.byte	0x5
	.uleb128 0x1a
	.4byte	.LASF25
	.byte	0x5
	.uleb128 0x1b
	.4byte	.LASF26
	.byte	0x5
	.uleb128 0x1c
	.4byte	.LASF27
	.byte	0x5
	.uleb128 0x1d
	.4byte	.LASF28
	.byte	0x5
	.uleb128 0x1e
	.4byte	.LASF29
	.byte	0x5
	.uleb128 0x1f
	.4byte	.LASF30
	.byte	0x5
	.uleb128 0x20
	.4byte	.LASF31
	.byte	0x5
	.uleb128 0x21
	.4byte	.LASF32
	.byte	0x5
	.uleb128 0x22
	.4byte	.LASF33
	.byte	0x5
	.uleb128 0x23
	.4byte	.LASF34
	.byte	0x5
	.uleb128 0x24
	.4byte	.LASF35
	.byte	0x5
	.uleb128 0x25
	.4byte	.LASF36
	.byte	0x5
	.uleb128 0x26
	.4byte	.LASF37
	.byte	0x5
	.uleb128 0x27
	.4byte	.LASF38
	.byte	0x5
	.uleb128 0x28
	.4byte	.LASF39
	.byte	0x5
	.uleb128 0x29
	.4byte	.LASF40
	.byte	0x5
	.uleb128 0x2a
	.4byte	.LASF41
	.byte	0x5
	.uleb128 0x2b
	.4byte	.LASF42
	.byte	0x5
	.uleb128 0x2c
	.4byte	.LASF43
	.byte	0x5
	.uleb128 0x2d
	.4byte	.LASF44
	.byte	0x5
	.uleb128 0x2e
	.4byte	.LASF45
	.byte	0x5
	.uleb128 0x2f
	.4byte	.LASF46
	.byte	0x5
	.uleb128 0x30
	.4byte	.LASF47
	.byte	0x5
	.uleb128 0x31
	.4byte	.LASF48
	.byte	0x5
	.uleb128 0x32
	.4byte	.LASF49
	.byte	0x5
	.uleb128 0x33
	.4byte	.LASF50
	.byte	0x5
	.uleb128 0x34
	.4byte	.LASF51
	.byte	0x5
	.uleb128 0x35
	.4byte	.LASF52
	.byte	0x5
	.uleb128 0x36
	.4byte	.LASF53
	.byte	0x5
	.uleb128 0x37
	.4byte	.LASF54
	.byte	0x5
	.uleb128 0x38
	.4byte	.LASF55
	.byte	0x5
	.uleb128 0x39
	.4byte	.LASF56
	.byte	0x5
	.uleb128 0x3a
	.4byte	.LASF57
	.byte	0x5
	.uleb128 0x3b
	.4byte	.LASF58
	.byte	0x5
	.uleb128 0x3c
	.4byte	.LASF59
	.byte	0x5
	.uleb128 0x3d
	.4byte	.LASF60
	.byte	0x5
	.uleb128 0x3e
	.4byte	.LASF61
	.byte	0x5
	.uleb128 0x3f
	.4byte	.LASF62
	.byte	0x5
	.uleb128 0x40
	.4byte	.LASF63
	.byte	0x5
	.uleb128 0x41
	.4byte	.LASF64
	.byte	0x5
	.uleb128 0x42
	.4byte	.LASF65
	.byte	0x5
	.uleb128 0x43
	.4byte	.LASF66
	.byte	0x5
	.uleb128 0x44
	.4byte	.LASF67
	.byte	0x5
	.uleb128 0x45
	.4byte	.LASF68
	.byte	0x5
	.uleb128 0x46
	.4byte	.LASF69
	.byte	0x5
	.uleb128 0x47
	.4byte	.LASF70
	.byte	0x5
	.uleb128 0x48
	.4byte	.LASF71
	.byte	0x5
	.uleb128 0x49
	.4byte	.LASF72
	.byte	0x5
	.uleb128 0x4a
	.4byte	.LASF73
	.byte	0x5
	.uleb128 0x4b
	.4byte	.LASF74
	.byte	0x5
	.uleb128 0x4c
	.4byte	.LASF75
	.byte	0x5
	.uleb128 0x4d
	.4byte	.LASF76
	.byte	0x5
	.uleb128 0x4e
	.4byte	.LASF77
	.byte	0x5
	.uleb128 0x4f
	.4byte	.LASF78
	.byte	0x5
	.uleb128 0x50
	.4byte	.LASF79
	.byte	0x5
	.uleb128 0x51
	.4byte	.LASF80
	.byte	0x5
	.uleb128 0x52
	.4byte	.LASF81
	.byte	0x5
	.uleb128 0x53
	.4byte	.LASF82
	.byte	0x5
	.uleb128 0x54
	.4byte	.LASF83
	.byte	0x5
	.uleb128 0x55
	.4byte	.LASF84
	.byte	0x5
	.uleb128 0x56
	.4byte	.LASF85
	.byte	0x5
	.uleb128 0x57
	.4byte	.LASF86
	.byte	0x5
	.uleb128 0x58
	.4byte	.LASF87
	.byte	0x5
	.uleb128 0x59
	.4byte	.LASF88
	.byte	0x5
	.uleb128 0x5a
	.4byte	.LASF89
	.byte	0x5
	.uleb128 0x5b
	.4byte	.LASF90
	.byte	0x5
	.uleb128 0x5c
	.4byte	.LASF91
	.byte	0x5
	.uleb128 0x5d
	.4byte	.LASF92
	.byte	0x5
	.uleb128 0x5e
	.4byte	.LASF93
	.byte	0x5
	.uleb128 0x5f
	.4byte	.LASF94
	.byte	0x5
	.uleb128 0x60
	.4byte	.LASF95
	.byte	0x5
	.uleb128 0x61
	.4byte	.LASF96
	.byte	0x5
	.uleb128 0x62
	.4byte	.LASF97
	.byte	0x5
	.uleb128 0x63
	.4byte	.LASF98
	.byte	0x5
	.uleb128 0x64
	.4byte	.LASF99
	.byte	0x5
	.uleb128 0x65
	.4byte	.LASF100
	.byte	0x5
	.uleb128 0x66
	.4byte	.LASF101
	.byte	0x5
	.uleb128 0x67
	.4byte	.LASF102
	.byte	0x5
	.uleb128 0x68
	.4byte	.LASF103
	.byte	0x5
	.uleb128 0x69
	.4byte	.LASF104
	.byte	0x5
	.uleb128 0x6a
	.4byte	.LASF105
	.byte	0x5
	.uleb128 0x6b
	.4byte	.LASF106
	.byte	0x5
	.uleb128 0x6c
	.4byte	.LASF107
	.byte	0x5
	.uleb128 0x6d
	.4byte	.LASF108
	.byte	0x5
	.uleb128 0x6e
	.4byte	.LASF109
	.byte	0x5
	.uleb128 0x6f
	.4byte	.LASF110
	.byte	0x5
	.uleb128 0x70
	.4byte	.LASF111
	.byte	0x5
	.uleb128 0x71
	.4byte	.LASF112
	.byte	0x5
	.uleb128 0x72
	.4byte	.LASF113
	.byte	0x5
	.uleb128 0x73
	.4byte	.LASF114
	.byte	0x5
	.uleb128 0x74
	.4byte	.LASF115
	.byte	0x5
	.uleb128 0x75
	.4byte	.LASF116
	.byte	0x5
	.uleb128 0x76
	.4byte	.LASF117
	.byte	0x5
	.uleb128 0x77
	.4byte	.LASF118
	.byte	0x5
	.uleb128 0x78
	.4byte	.LASF119
	.byte	0x5
	.uleb128 0x79
	.4byte	.LASF120
	.byte	0x5
	.uleb128 0x7a
	.4byte	.LASF121
	.byte	0x5
	.uleb128 0x7b
	.4byte	.LASF122
	.byte	0x5
	.uleb128 0x7c
	.4byte	.LASF123
	.byte	0x5
	.uleb128 0x7d
	.4byte	.LASF124
	.byte	0x5
	.uleb128 0x7e
	.4byte	.LASF125
	.byte	0x5
	.uleb128 0x7f
	.4byte	.LASF126
	.byte	0x5
	.uleb128 0x80
	.4byte	.LASF127
	.byte	0x5
	.uleb128 0x81
	.4byte	.LASF128
	.byte	0x5
	.uleb128 0x82
	.4byte	.LASF129
	.byte	0x5
	.uleb128 0x83
	.4byte	.LASF130
	.byte	0x5
	.uleb128 0x84
	.4byte	.LASF131
	.byte	0x5
	.uleb128 0x85
	.4byte	.LASF132
	.byte	0x5
	.uleb128 0x86
	.4byte	.LASF133
	.byte	0x5
	.uleb128 0x87
	.4byte	.LASF134
	.byte	0x5
	.uleb128 0x88
	.4byte	.LASF135
	.byte	0x5
	.uleb128 0x89
	.4byte	.LASF136
	.byte	0x5
	.uleb128 0x8a
	.4byte	.LASF137
	.byte	0x5
	.uleb128 0x8b
	.4byte	.LASF138
	.byte	0x5
	.uleb128 0x8c
	.4byte	.LASF139
	.byte	0x5
	.uleb128 0x8d
	.4byte	.LASF140
	.byte	0x5
	.uleb128 0x8e
	.4byte	.LASF141
	.byte	0x5
	.uleb128 0x8f
	.4byte	.LASF142
	.byte	0x5
	.uleb128 0x90
	.4byte	.LASF143
	.byte	0x5
	.uleb128 0x91
	.4byte	.LASF144
	.byte	0x5
	.uleb128 0x92
	.4byte	.LASF145
	.byte	0x5
	.uleb128 0x93
	.4byte	.LASF146
	.byte	0x5
	.uleb128 0x94
	.4byte	.LASF147
	.byte	0x5
	.uleb128 0x95
	.4byte	.LASF148
	.byte	0x5
	.uleb128 0x96
	.4byte	.LASF149
	.byte	0x5
	.uleb128 0x97
	.4byte	.LASF150
	.byte	0x5
	.uleb128 0x98
	.4byte	.LASF151
	.byte	0x5
	.uleb128 0x99
	.4byte	.LASF152
	.byte	0x5
	.uleb128 0x9a
	.4byte	.LASF153
	.byte	0x5
	.uleb128 0x9b
	.4byte	.LASF154
	.byte	0x5
	.uleb128 0x9c
	.4byte	.LASF155
	.byte	0x5
	.uleb128 0x9d
	.4byte	.LASF156
	.byte	0x5
	.uleb128 0x9e
	.4byte	.LASF157
	.byte	0x5
	.uleb128 0x9f
	.4byte	.LASF158
	.byte	0x5
	.uleb128 0xa0
	.4byte	.LASF159
	.byte	0x5
	.uleb128 0xa1
	.4byte	.LASF160
	.byte	0x5
	.uleb128 0xa2
	.4byte	.LASF161
	.byte	0x5
	.uleb128 0xa3
	.4byte	.LASF162
	.byte	0x5
	.uleb128 0xa4
	.4byte	.LASF163
	.byte	0x5
	.uleb128 0xa5
	.4byte	.LASF164
	.byte	0x5
	.uleb128 0xa6
	.4byte	.LASF165
	.byte	0x5
	.uleb128 0xa7
	.4byte	.LASF166
	.byte	0x5
	.uleb128 0xa8
	.4byte	.LASF167
	.byte	0x5
	.uleb128 0xa9
	.4byte	.LASF168
	.byte	0x5
	.uleb128 0xaa
	.4byte	.LASF169
	.byte	0x5
	.uleb128 0xab
	.4byte	.LASF170
	.byte	0x5
	.uleb128 0xac
	.4byte	.LASF171
	.byte	0x5
	.uleb128 0xad
	.4byte	.LASF172
	.byte	0x5
	.uleb128 0xae
	.4byte	.LASF173
	.byte	0x5
	.uleb128 0xaf
	.4byte	.LASF174
	.byte	0x5
	.uleb128 0xb0
	.4byte	.LASF175
	.byte	0x5
	.uleb128 0xb1
	.4byte	.LASF176
	.byte	0x5
	.uleb128 0xb2
	.4byte	.LASF177
	.byte	0x5
	.uleb128 0xb3
	.4byte	.LASF178
	.byte	0x5
	.uleb128 0xb4
	.4byte	.LASF179
	.byte	0x5
	.uleb128 0xb5
	.4byte	.LASF180
	.byte	0x5
	.uleb128 0xb6
	.4byte	.LASF181
	.byte	0x5
	.uleb128 0xb7
	.4byte	.LASF182
	.byte	0x5
	.uleb128 0xb8
	.4byte	.LASF183
	.byte	0x5
	.uleb128 0xb9
	.4byte	.LASF184
	.byte	0x5
	.uleb128 0xba
	.4byte	.LASF185
	.byte	0x5
	.uleb128 0xbb
	.4byte	.LASF186
	.byte	0x5
	.uleb128 0xbc
	.4byte	.LASF187
	.byte	0x5
	.uleb128 0xbd
	.4byte	.LASF188
	.byte	0x5
	.uleb128 0xbe
	.4byte	.LASF189
	.byte	0x5
	.uleb128 0xbf
	.4byte	.LASF190
	.byte	0x5
	.uleb128 0xc0
	.4byte	.LASF191
	.byte	0x5
	.uleb128 0xc1
	.4byte	.LASF192
	.byte	0x5
	.uleb128 0xc2
	.4byte	.LASF193
	.byte	0x5
	.uleb128 0xc3
	.4byte	.LASF194
	.byte	0x5
	.uleb128 0xc4
	.4byte	.LASF195
	.byte	0x5
	.uleb128 0xc5
	.4byte	.LASF196
	.byte	0x5
	.uleb128 0xc6
	.4byte	.LASF197
	.byte	0x5
	.uleb128 0xc7
	.4byte	.LASF198
	.byte	0x5
	.uleb128 0xc8
	.4byte	.LASF199
	.byte	0x5
	.uleb128 0xc9
	.4byte	.LASF200
	.byte	0x5
	.uleb128 0xca
	.4byte	.LASF201
	.byte	0x5
	.uleb128 0xcb
	.4byte	.LASF202
	.byte	0x5
	.uleb128 0xcc
	.4byte	.LASF203
	.byte	0x5
	.uleb128 0xcd
	.4byte	.LASF204
	.byte	0x5
	.uleb128 0xce
	.4byte	.LASF205
	.byte	0x5
	.uleb128 0xcf
	.4byte	.LASF206
	.byte	0x5
	.uleb128 0xd0
	.4byte	.LASF207
	.byte	0x5
	.uleb128 0xd1
	.4byte	.LASF208
	.byte	0x5
	.uleb128 0xd2
	.4byte	.LASF209
	.byte	0x5
	.uleb128 0xd3
	.4byte	.LASF210
	.byte	0x5
	.uleb128 0xd4
	.4byte	.LASF211
	.byte	0x5
	.uleb128 0xd5
	.4byte	.LASF212
	.byte	0x5
	.uleb128 0xd6
	.4byte	.LASF213
	.byte	0x5
	.uleb128 0xd7
	.4byte	.LASF214
	.byte	0x5
	.uleb128 0xd8
	.4byte	.LASF215
	.byte	0x5
	.uleb128 0xd9
	.4byte	.LASF216
	.byte	0x5
	.uleb128 0xda
	.4byte	.LASF217
	.byte	0x5
	.uleb128 0xdb
	.4byte	.LASF218
	.byte	0x5
	.uleb128 0xdc
	.4byte	.LASF219
	.byte	0x5
	.uleb128 0xdd
	.4byte	.LASF220
	.byte	0x5
	.uleb128 0xde
	.4byte	.LASF221
	.byte	0x5
	.uleb128 0xdf
	.4byte	.LASF222
	.byte	0x5
	.uleb128 0xe0
	.4byte	.LASF223
	.byte	0x5
	.uleb128 0xe1
	.4byte	.LASF224
	.byte	0x5
	.uleb128 0xe2
	.4byte	.LASF225
	.byte	0x5
	.uleb128 0xe3
	.4byte	.LASF226
	.byte	0x5
	.uleb128 0xe4
	.4byte	.LASF227
	.byte	0x5
	.uleb128 0xe5
	.4byte	.LASF228
	.byte	0x5
	.uleb128 0xe6
	.4byte	.LASF229
	.byte	0x5
	.uleb128 0xe7
	.4byte	.LASF230
	.byte	0x5
	.uleb128 0xe8
	.4byte	.LASF231
	.byte	0x5
	.uleb128 0xe9
	.4byte	.LASF232
	.byte	0x5
	.uleb128 0xea
	.4byte	.LASF233
	.byte	0x5
	.uleb128 0xeb
	.4byte	.LASF234
	.byte	0x5
	.uleb128 0xec
	.4byte	.LASF235
	.byte	0x5
	.uleb128 0xed
	.4byte	.LASF236
	.byte	0x5
	.uleb128 0xee
	.4byte	.LASF237
	.byte	0x5
	.uleb128 0xef
	.4byte	.LASF238
	.byte	0x5
	.uleb128 0xf0
	.4byte	.LASF239
	.byte	0x5
	.uleb128 0xf1
	.4byte	.LASF240
	.byte	0x5
	.uleb128 0xf2
	.4byte	.LASF241
	.byte	0x5
	.uleb128 0xf3
	.4byte	.LASF242
	.byte	0x5
	.uleb128 0xf4
	.4byte	.LASF243
	.byte	0x5
	.uleb128 0xf5
	.4byte	.LASF244
	.byte	0x5
	.uleb128 0xf6
	.4byte	.LASF245
	.byte	0x5
	.uleb128 0xf7
	.4byte	.LASF246
	.byte	0x5
	.uleb128 0xf8
	.4byte	.LASF247
	.byte	0x5
	.uleb128 0xf9
	.4byte	.LASF248
	.byte	0x5
	.uleb128 0xfa
	.4byte	.LASF249
	.byte	0x5
	.uleb128 0xfb
	.4byte	.LASF250
	.byte	0x5
	.uleb128 0xfc
	.4byte	.LASF251
	.byte	0x5
	.uleb128 0xfd
	.4byte	.LASF252
	.byte	0x5
	.uleb128 0xfe
	.4byte	.LASF253
	.byte	0x5
	.uleb128 0xff
	.4byte	.LASF254
	.byte	0x5
	.uleb128 0x100
	.4byte	.LASF255
	.byte	0x5
	.uleb128 0x101
	.4byte	.LASF256
	.byte	0x5
	.uleb128 0x102
	.4byte	.LASF257
	.byte	0x5
	.uleb128 0x103
	.4byte	.LASF258
	.byte	0x5
	.uleb128 0x104
	.4byte	.LASF259
	.byte	0x5
	.uleb128 0x105
	.4byte	.LASF260
	.byte	0x5
	.uleb128 0x106
	.4byte	.LASF261
	.byte	0x5
	.uleb128 0x107
	.4byte	.LASF262
	.byte	0x5
	.uleb128 0x108
	.4byte	.LASF263
	.byte	0x5
	.uleb128 0x109
	.4byte	.LASF264
	.byte	0x5
	.uleb128 0x10a
	.4byte	.LASF265
	.byte	0x5
	.uleb128 0x10b
	.4byte	.LASF266
	.byte	0x5
	.uleb128 0x10c
	.4byte	.LASF267
	.byte	0x5
	.uleb128 0x10d
	.4byte	.LASF268
	.byte	0x5
	.uleb128 0x10e
	.4byte	.LASF269
	.byte	0x5
	.uleb128 0x10f
	.4byte	.LASF270
	.byte	0x5
	.uleb128 0x110
	.4byte	.LASF271
	.byte	0x5
	.uleb128 0x111
	.4byte	.LASF272
	.byte	0x5
	.uleb128 0x112
	.4byte	.LASF273
	.byte	0x5
	.uleb128 0x113
	.4byte	.LASF274
	.byte	0x5
	.uleb128 0x114
	.4byte	.LASF275
	.byte	0x5
	.uleb128 0x115
	.4byte	.LASF276
	.byte	0x5
	.uleb128 0x116
	.4byte	.LASF277
	.byte	0x5
	.uleb128 0x117
	.4byte	.LASF278
	.byte	0x5
	.uleb128 0x118
	.4byte	.LASF279
	.byte	0x5
	.uleb128 0x119
	.4byte	.LASF280
	.byte	0x5
	.uleb128 0x11a
	.4byte	.LASF281
	.byte	0x5
	.uleb128 0x11b
	.4byte	.LASF282
	.byte	0x5
	.uleb128 0x11c
	.4byte	.LASF283
	.byte	0x5
	.uleb128 0x11d
	.4byte	.LASF284
	.byte	0x5
	.uleb128 0x11e
	.4byte	.LASF285
	.byte	0x5
	.uleb128 0x11f
	.4byte	.LASF286
	.byte	0x5
	.uleb128 0x120
	.4byte	.LASF287
	.byte	0x5
	.uleb128 0x121
	.4byte	.LASF288
	.byte	0x5
	.uleb128 0x122
	.4byte	.LASF289
	.byte	0x5
	.uleb128 0x123
	.4byte	.LASF290
	.byte	0x5
	.uleb128 0x124
	.4byte	.LASF291
	.byte	0x5
	.uleb128 0x125
	.4byte	.LASF292
	.byte	0x5
	.uleb128 0x126
	.4byte	.LASF293
	.byte	0x5
	.uleb128 0x127
	.4byte	.LASF294
	.byte	0x5
	.uleb128 0x128
	.4byte	.LASF295
	.byte	0x5
	.uleb128 0x129
	.4byte	.LASF296
	.byte	0x5
	.uleb128 0x12a
	.4byte	.LASF297
	.byte	0x5
	.uleb128 0x12b
	.4byte	.LASF298
	.byte	0x5
	.uleb128 0x12c
	.4byte	.LASF299
	.byte	0x5
	.uleb128 0x12d
	.4byte	.LASF300
	.byte	0x5
	.uleb128 0x12e
	.4byte	.LASF301
	.byte	0x5
	.uleb128 0x12f
	.4byte	.LASF302
	.byte	0x5
	.uleb128 0x130
	.4byte	.LASF303
	.byte	0x5
	.uleb128 0x131
	.4byte	.LASF304
	.byte	0x5
	.uleb128 0x132
	.4byte	.LASF305
	.byte	0x5
	.uleb128 0x133
	.4byte	.LASF306
	.byte	0x5
	.uleb128 0x134
	.4byte	.LASF307
	.byte	0x5
	.uleb128 0x135
	.4byte	.LASF308
	.byte	0x5
	.uleb128 0x136
	.4byte	.LASF309
	.byte	0x5
	.uleb128 0x137
	.4byte	.LASF310
	.byte	0x5
	.uleb128 0x138
	.4byte	.LASF311
	.byte	0x5
	.uleb128 0x139
	.4byte	.LASF312
	.byte	0x5
	.uleb128 0x13a
	.4byte	.LASF313
	.byte	0x5
	.uleb128 0x13b
	.4byte	.LASF314
	.byte	0x5
	.uleb128 0x13c
	.4byte	.LASF315
	.byte	0x5
	.uleb128 0x13d
	.4byte	.LASF316
	.byte	0x5
	.uleb128 0x13e
	.4byte	.LASF317
	.byte	0x5
	.uleb128 0x13f
	.4byte	.LASF318
	.byte	0x5
	.uleb128 0x140
	.4byte	.LASF319
	.byte	0x5
	.uleb128 0x141
	.4byte	.LASF320
	.byte	0x5
	.uleb128 0x142
	.4byte	.LASF321
	.byte	0x5
	.uleb128 0x143
	.4byte	.LASF322
	.byte	0x5
	.uleb128 0x144
	.4byte	.LASF323
	.byte	0x5
	.uleb128 0x145
	.4byte	.LASF324
	.byte	0x5
	.uleb128 0x146
	.4byte	.LASF325
	.byte	0x5
	.uleb128 0x147
	.4byte	.LASF326
	.byte	0x5
	.uleb128 0x148
	.4byte	.LASF327
	.byte	0x5
	.uleb128 0x149
	.4byte	.LASF328
	.byte	0x5
	.uleb128 0x14a
	.4byte	.LASF329
	.byte	0x5
	.uleb128 0x14b
	.4byte	.LASF330
	.byte	0x5
	.uleb128 0x14c
	.4byte	.LASF331
	.byte	0x5
	.uleb128 0x14d
	.4byte	.LASF332
	.byte	0x5
	.uleb128 0x14e
	.4byte	.LASF333
	.byte	0x5
	.uleb128 0x14f
	.4byte	.LASF334
	.byte	0x5
	.uleb128 0x150
	.4byte	.LASF335
	.byte	0x5
	.uleb128 0x151
	.4byte	.LASF336
	.byte	0x5
	.uleb128 0x152
	.4byte	.LASF337
	.byte	0x5
	.uleb128 0x153
	.4byte	.LASF338
	.byte	0x5
	.uleb128 0x154
	.4byte	.LASF339
	.byte	0x5
	.uleb128 0x155
	.4byte	.LASF340
	.byte	0x5
	.uleb128 0x156
	.4byte	.LASF341
	.byte	0x5
	.uleb128 0x157
	.4byte	.LASF342
	.byte	0x5
	.uleb128 0x158
	.4byte	.LASF343
	.byte	0x5
	.uleb128 0x159
	.4byte	.LASF344
	.byte	0x5
	.uleb128 0x15a
	.4byte	.LASF345
	.byte	0x5
	.uleb128 0x15b
	.4byte	.LASF346
	.byte	0x5
	.uleb128 0x15c
	.4byte	.LASF347
	.byte	0x5
	.uleb128 0x15d
	.4byte	.LASF348
	.byte	0x5
	.uleb128 0x15e
	.4byte	.LASF349
	.byte	0x5
	.uleb128 0x15f
	.4byte	.LASF350
	.byte	0x5
	.uleb128 0x160
	.4byte	.LASF351
	.byte	0x5
	.uleb128 0x161
	.4byte	.LASF352
	.byte	0x5
	.uleb128 0x162
	.4byte	.LASF353
	.byte	0x5
	.uleb128 0x163
	.4byte	.LASF354
	.byte	0x5
	.uleb128 0x164
	.4byte	.LASF355
	.byte	0x5
	.uleb128 0x165
	.4byte	.LASF356
	.byte	0x5
	.uleb128 0x166
	.4byte	.LASF357
	.byte	0x5
	.uleb128 0x167
	.4byte	.LASF358
	.byte	0x5
	.uleb128 0x168
	.4byte	.LASF359
	.byte	0x5
	.uleb128 0x169
	.4byte	.LASF360
	.byte	0x5
	.uleb128 0x16a
	.4byte	.LASF361
	.byte	0x5
	.uleb128 0x16b
	.4byte	.LASF362
	.byte	0x5
	.uleb128 0x16c
	.4byte	.LASF363
	.byte	0x5
	.uleb128 0x16d
	.4byte	.LASF364
	.byte	0x5
	.uleb128 0x16e
	.4byte	.LASF365
	.byte	0x5
	.uleb128 0x16f
	.4byte	.LASF366
	.byte	0x5
	.uleb128 0x170
	.4byte	.LASF367
	.byte	0x5
	.uleb128 0x171
	.4byte	.LASF368
	.byte	0x5
	.uleb128 0x172
	.4byte	.LASF369
	.byte	0x5
	.uleb128 0x173
	.4byte	.LASF370
	.byte	0x5
	.uleb128 0x174
	.4byte	.LASF371
	.byte	0x5
	.uleb128 0x175
	.4byte	.LASF372
	.byte	0x5
	.uleb128 0x176
	.4byte	.LASF373
	.byte	0x5
	.uleb128 0x177
	.4byte	.LASF374
	.byte	0x5
	.uleb128 0x178
	.4byte	.LASF375
	.byte	0x5
	.uleb128 0x179
	.4byte	.LASF376
	.byte	0x5
	.uleb128 0x17a
	.4byte	.LASF377
	.byte	0x5
	.uleb128 0x17b
	.4byte	.LASF378
	.byte	0x5
	.uleb128 0x17c
	.4byte	.LASF379
	.byte	0x5
	.uleb128 0x17d
	.4byte	.LASF380
	.byte	0x5
	.uleb128 0x17e
	.4byte	.LASF381
	.byte	0x6
	.uleb128 0x17f
	.4byte	.LASF382
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF383
	.byte	0x6
	.uleb128 0x2
	.4byte	.LASF384
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF385
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF386
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF387
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF388
	.byte	0x6
	.uleb128 0x2
	.4byte	.LASF389
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF390
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF391
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF392
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF393
	.byte	0x6
	.uleb128 0x3
	.4byte	.LASF394
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF395
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF396
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF397
	.byte	0x6
	.uleb128 0x4
	.4byte	.LASF398
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF399
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF400
	.byte	0x6
	.uleb128 0x3
	.4byte	.LASF401
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF402
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF403
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF404
	.byte	0x5
	.uleb128 0x4
	.4byte	.LASF405
	.byte	0x5
	.uleb128 0x5
	.4byte	.LASF406
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF407
	.byte	0x6
	.uleb128 0x7
	.4byte	.LASF408
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF409
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF410
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF411
	.byte	0x6
	.uleb128 0x4
	.4byte	.LASF412
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF413
	.byte	0x6
	.uleb128 0x2
	.4byte	.LASF414
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF415
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF416
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF417
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF418
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF419
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF420
	.byte	0x6
	.uleb128 0x2
	.4byte	.LASF421
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF422
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF423
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF424
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF425
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF426
	.byte	0x5
	.uleb128 0x4
	.4byte	.LASF427
	.byte	0x6
	.uleb128 0x5
	.4byte	.LASF428
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF429
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF430
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF431
	.byte	0x6
	.uleb128 0x4
	.4byte	.LASF432
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF433
	.byte	0x6
	.uleb128 0x2
	.4byte	.LASF434
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF435
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF436
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF437
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF438
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF439
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF440
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF441
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF442
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF443
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF444
	.byte	0x5
	.uleb128 0x4
	.4byte	.LASF445
	.byte	0x5
	.uleb128 0x5
	.4byte	.LASF446
	.byte	0x3
	.uleb128 0x15
	.uleb128 0x4
	.byte	0x5
	.uleb128 0x17
	.4byte	.LASF447
	.file 6 "../Middleware/FatFs/ffconf.h"
	.byte	0x3
	.uleb128 0x1d
	.uleb128 0x6
	.byte	0x7
	.4byte	.Ldebug_macro2
	.byte	0x4
	.byte	0x5
	.uleb128 0x2f
	.4byte	.LASF489
	.file 7 "c:\\st\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\lib\\gcc\\arm-none-eabi\\10.3.1\\include\\stdint.h"
	.byte	0x3
	.uleb128 0x30
	.uleb128 0x7
	.file 8 "c:\\st\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\stdint.h"
	.byte	0x3
	.uleb128 0x9
	.uleb128 0x8
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF490
	.byte	0x3
	.uleb128 0xc
	.uleb128 0x2
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF491
	.file 9 "c:\\st\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\sys\\features.h"
	.byte	0x3
	.uleb128 0x8
	.uleb128 0x9
	.byte	0x5
	.uleb128 0x16
	.4byte	.LASF492
	.file 10 "c:\\st\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\_newlib_version.h"
	.byte	0x3
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0x7
	.4byte	.Ldebug_macro3
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro4
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro5
	.byte	0x4
	.file 11 "c:\\st\\stm32cubeide_1.12.0\\stm32cubeide\\plugins\\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.win32_1.0.200.202301161003\\tools\\arm-none-eabi\\include\\sys\\_intsup.h"
	.byte	0x3
	.uleb128 0xd
	.uleb128 0xb
	.byte	0x7
	.4byte	.Ldebug_macro6
	.byte	0x4
	.byte	0x3
	.uleb128 0xe
	.uleb128 0x3
	.byte	0x7
	.4byte	.Ldebug_macro7
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro8
	.byte	0x4
	.byte	0x5
	.uleb128 0xd
	.4byte	.LASF647
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro9
	.byte	0x4
	.byte	0x3
	.uleb128 0x16
	.uleb128 0x5
	.byte	0x7
	.4byte	.Ldebug_macro10
	.byte	0x4
	.byte	0x5
	.uleb128 0x23
	.4byte	.LASF704
	.byte	0x5
	.uleb128 0x24
	.4byte	.LASF705
	.byte	0x5
	.uleb128 0x25
	.4byte	.LASF706
	.byte	0x5
	.uleb128 0x26
	.4byte	.LASF707
	.byte	0x5
	.uleb128 0x27
	.4byte	.LASF708
	.byte	0x5
	.uleb128 0x28
	.4byte	.LASF709
	.byte	0x5
	.uleb128 0x2c
	.4byte	.LASF710
	.byte	0x5
	.uleb128 0x2d
	.4byte	.LASF711
	.byte	0x5
	.uleb128 0x2e
	.4byte	.LASF712
	.byte	0x5
	.uleb128 0x2f
	.4byte	.LASF713
	.byte	0x5
	.uleb128 0x30
	.4byte	.LASF714
	.byte	0x5
	.uleb128 0x31
	.4byte	.LASF715
	.byte	0x5
	.uleb128 0x32
	.4byte	.LASF716
	.byte	0x5
	.uleb128 0x33
	.4byte	.LASF717
	.byte	0x5
	.uleb128 0x37
	.4byte	.LASF718
	.byte	0x5
	.uleb128 0x38
	.4byte	.LASF719
	.byte	0x5
	.uleb128 0x39
	.4byte	.LASF720
	.byte	0x5
	.uleb128 0x3d
	.4byte	.LASF721
	.byte	0x5
	.uleb128 0x3e
	.4byte	.LASF722
	.byte	0x5
	.uleb128 0x3f
	.4byte	.LASF723
	.byte	0x5
	.uleb128 0x40
	.4byte	.LASF724
	.byte	0x5
	.uleb128 0x44
	.4byte	.LASF725
	.byte	0x5
	.uleb128 0x45
	.4byte	.LASF726
	.byte	0x5
	.uleb128 0x46
	.4byte	.LASF727
	.byte	0x5
	.uleb128 0x47
	.4byte	.LASF728
	.byte	0x5
	.uleb128 0x48
	.4byte	.LASF729
	.byte	0x5
	.uleb128 0x49
	.4byte	.LASF730
	.byte	0x5
	.uleb128 0x4a
	.4byte	.LASF731
	.byte	0x5
	.uleb128 0x4b
	.4byte	.LASF732
	.byte	0x5
	.uleb128 0x4c
	.4byte	.LASF733
	.byte	0x5
	.uleb128 0x50
	.4byte	.LASF734
	.byte	0x5
	.uleb128 0x51
	.4byte	.LASF735
	.byte	0x5
	.uleb128 0x52
	.4byte	.LASF736
	.byte	0x5
	.uleb128 0x53
	.4byte	.LASF737
	.byte	0x5
	.uleb128 0x54
	.4byte	.LASF738
	.byte	0x5
	.uleb128 0x55
	.4byte	.LASF739
	.byte	0x5
	.uleb128 0x5b
	.4byte	.LASF740
	.byte	0x5
	.uleb128 0x5c
	.4byte	.LASF741
	.byte	0x5
	.uleb128 0x5d
	.4byte	.LASF742
	.byte	0x5
	.uleb128 0x5e
	.4byte	.LASF743
	.byte	0x5
	.uleb128 0x5f
	.4byte	.LASF744
	.byte	0x5
	.uleb128 0x60
	.4byte	.LASF745
	.byte	0x5
	.uleb128 0x61
	.4byte	.LASF746
	.byte	0x5
	.uleb128 0x62
	.4byte	.LASF747
	.byte	0x5
	.uleb128 0x63
	.4byte	.LASF748
	.byte	0x5
	.uleb128 0x64
	.4byte	.LASF749
	.byte	0x5
	.uleb128 0x65
	.4byte	.LASF750
	.byte	0x5
	.uleb128 0x66
	.4byte	.LASF751
	.byte	0x5
	.uleb128 0x67
	.4byte	.LASF752
	.byte	0x5
	.uleb128 0x68
	.4byte	.LASF753
	.byte	0x5
	.uleb128 0x69
	.4byte	.LASF754
	.byte	0x5
	.uleb128 0x6a
	.4byte	.LASF755
	.byte	0x5
	.uleb128 0x6b
	.4byte	.LASF756
	.byte	0x5
	.uleb128 0x6c
	.4byte	.LASF757
	.byte	0x5
	.uleb128 0x6d
	.4byte	.LASF758
	.byte	0x5
	.uleb128 0x6e
	.4byte	.LASF759
	.byte	0x5
	.uleb128 0x6f
	.4byte	.LASF760
	.byte	0x5
	.uleb128 0x70
	.4byte	.LASF761
	.byte	0x5
	.uleb128 0x72
	.4byte	.LASF762
	.byte	0x5
	.uleb128 0x73
	.4byte	.LASF763
	.byte	0x5
	.uleb128 0x74
	.4byte	.LASF764
	.byte	0x5
	.uleb128 0x75
	.4byte	.LASF765
	.byte	0x5
	.uleb128 0x76
	.4byte	.LASF766
	.byte	0x5
	.uleb128 0x77
	.4byte	.LASF767
	.byte	0x5
	.uleb128 0x78
	.4byte	.LASF768
	.byte	0x5
	.uleb128 0x79
	.4byte	.LASF769
	.byte	0x5
	.uleb128 0x7a
	.4byte	.LASF770
	.byte	0x5
	.uleb128 0x7b
	.4byte	.LASF771
	.byte	0x5
	.uleb128 0x7c
	.4byte	.LASF772
	.byte	0x5
	.uleb128 0x7d
	.4byte	.LASF773
	.byte	0x5
	.uleb128 0x7e
	.4byte	.LASF774
	.byte	0x5
	.uleb128 0x80
	.4byte	.LASF775
	.byte	0x5
	.uleb128 0x81
	.4byte	.LASF776
	.byte	0x5
	.uleb128 0x82
	.4byte	.LASF777
	.byte	0x5
	.uleb128 0x83
	.4byte	.LASF778
	.byte	0x5
	.uleb128 0x84
	.4byte	.LASF779
	.byte	0x5
	.uleb128 0x85
	.4byte	.LASF780
	.byte	0x5
	.uleb128 0x86
	.4byte	.LASF781
	.byte	0x5
	.uleb128 0x87
	.4byte	.LASF782
	.byte	0x5
	.uleb128 0x88
	.4byte	.LASF783
	.byte	0x5
	.uleb128 0x89
	.4byte	.LASF784
	.byte	0x5
	.uleb128 0x8a
	.4byte	.LASF785
	.byte	0x5
	.uleb128 0x8b
	.4byte	.LASF786
	.byte	0x5
	.uleb128 0x8c
	.4byte	.LASF787
	.byte	0x5
	.uleb128 0x8d
	.4byte	.LASF788
	.byte	0x5
	.uleb128 0x8e
	.4byte	.LASF789
	.byte	0x5
	.uleb128 0x8f
	.4byte	.LASF790
	.byte	0x5
	.uleb128 0x90
	.4byte	.LASF791
	.byte	0x5
	.uleb128 0x91
	.4byte	.LASF792
	.byte	0x5
	.uleb128 0x93
	.4byte	.LASF793
	.byte	0x5
	.uleb128 0x94
	.4byte	.LASF794
	.byte	0x5
	.uleb128 0x95
	.4byte	.LASF795
	.byte	0x5
	.uleb128 0x96
	.4byte	.LASF796
	.byte	0x5
	.uleb128 0x97
	.4byte	.LASF797
	.byte	0x5
	.uleb128 0x98
	.4byte	.LASF798
	.byte	0x5
	.uleb128 0x99
	.4byte	.LASF799
	.byte	0x5
	.uleb128 0x9a
	.4byte	.LASF800
	.byte	0x5
	.uleb128 0x9b
	.4byte	.LASF801
	.byte	0x5
	.uleb128 0x9c
	.4byte	.LASF802
	.byte	0x5
	.uleb128 0x9d
	.4byte	.LASF803
	.byte	0x5
	.uleb128 0x9e
	.4byte	.LASF804
	.byte	0x5
	.uleb128 0x9f
	.4byte	.LASF805
	.byte	0x5
	.uleb128 0xa0
	.4byte	.LASF806
	.byte	0x5
	.uleb128 0xa1
	.4byte	.LASF807
	.byte	0x5
	.uleb128 0xa2
	.4byte	.LASF808
	.byte	0x5
	.uleb128 0xa3
	.4byte	.LASF809
	.byte	0x5
	.uleb128 0xa4
	.4byte	.LASF810
	.byte	0x5
	.uleb128 0xa5
	.4byte	.LASF811
	.byte	0x5
	.uleb128 0xa6
	.4byte	.LASF812
	.byte	0x5
	.uleb128 0xa7
	.4byte	.LASF813
	.byte	0x5
	.uleb128 0xa8
	.4byte	.LASF814
	.byte	0x5
	.uleb128 0xa9
	.4byte	.LASF815
	.byte	0x5
	.uleb128 0xaa
	.4byte	.LASF816
	.byte	0x5
	.uleb128 0xab
	.4byte	.LASF817
	.byte	0x5
	.uleb128 0xac
	.4byte	.LASF818
	.byte	0x5
	.uleb128 0xad
	.4byte	.LASF819
	.byte	0x5
	.uleb128 0xae
	.4byte	.LASF820
	.byte	0x5
	.uleb128 0xaf
	.4byte	.LASF821
	.byte	0x5
	.uleb128 0xb0
	.4byte	.LASF822
	.byte	0x5
	.uleb128 0xb1
	.4byte	.LASF823
	.byte	0x5
	.uleb128 0xb2
	.4byte	.LASF824
	.byte	0x5
	.uleb128 0xb3
	.4byte	.LASF825
	.byte	0x5
	.uleb128 0xb4
	.4byte	.LASF826
	.byte	0x5
	.uleb128 0xb5
	.4byte	.LASF827
	.byte	0x5
	.uleb128 0xb6
	.4byte	.LASF828
	.byte	0x5
	.uleb128 0xb8
	.4byte	.LASF829
	.byte	0x5
	.uleb128 0xb9
	.4byte	.LASF830
	.byte	0x5
	.uleb128 0xba
	.4byte	.LASF831
	.byte	0x5
	.uleb128 0xbb
	.4byte	.LASF832
	.byte	0x5
	.uleb128 0xbd
	.4byte	.LASF833
	.byte	0x5
	.uleb128 0xbe
	.4byte	.LASF834
	.byte	0x5
	.uleb128 0xbf
	.4byte	.LASF835
	.byte	0x5
	.uleb128 0xc0
	.4byte	.LASF836
	.byte	0x5
	.uleb128 0xc2
	.4byte	.LASF837
	.byte	0x5
	.uleb128 0xc3
	.4byte	.LASF838
	.byte	0x5
	.uleb128 0xc4
	.4byte	.LASF839
	.byte	0x5
	.uleb128 0xc5
	.4byte	.LASF840
	.byte	0x5
	.uleb128 0xc6
	.4byte	.LASF841
	.byte	0x5
	.uleb128 0xc7
	.4byte	.LASF842
	.byte	0x5
	.uleb128 0xc8
	.4byte	.LASF843
	.byte	0x5
	.uleb128 0xc9
	.4byte	.LASF844
	.byte	0x5
	.uleb128 0xca
	.4byte	.LASF845
	.byte	0x5
	.uleb128 0xcb
	.4byte	.LASF846
	.byte	0x5
	.uleb128 0xcc
	.4byte	.LASF847
	.byte	0x5
	.uleb128 0xcd
	.4byte	.LASF848
	.byte	0x5
	.uleb128 0xcf
	.4byte	.LASF849
	.byte	0x5
	.uleb128 0xd0
	.4byte	.LASF850
	.byte	0x5
	.uleb128 0xd1
	.4byte	.LASF851
	.byte	0x5
	.uleb128 0xd2
	.4byte	.LASF852
	.byte	0x5
	.uleb128 0xd3
	.4byte	.LASF853
	.byte	0x5
	.uleb128 0xd4
	.4byte	.LASF854
	.byte	0x5
	.uleb128 0xd5
	.4byte	.LASF855
	.byte	0x5
	.uleb128 0xd6
	.4byte	.LASF856
	.byte	0x5
	.uleb128 0xd7
	.4byte	.LASF857
	.byte	0x5
	.uleb128 0xd8
	.4byte	.LASF858
	.byte	0x5
	.uleb128 0xd9
	.4byte	.LASF859
	.byte	0x5
	.uleb128 0xda
	.4byte	.LASF860
	.byte	0x5
	.uleb128 0xdb
	.4byte	.LASF861
	.byte	0x5
	.uleb128 0xdc
	.4byte	.LASF862
	.byte	0x5
	.uleb128 0xdd
	.4byte	.LASF863
	.byte	0x5
	.uleb128 0xde
	.4byte	.LASF864
	.byte	0x5
	.uleb128 0xdf
	.4byte	.LASF865
	.byte	0x5
	.uleb128 0xe0
	.4byte	.LASF866
	.byte	0x5
	.uleb128 0xe1
	.4byte	.LASF867
	.byte	0x5
	.uleb128 0xe2
	.4byte	.LASF868
	.byte	0x5
	.uleb128 0xe6
	.4byte	.LASF869
	.byte	0x5
	.uleb128 0xf0
	.4byte	.LASF870
	.byte	0x5
	.uleb128 0xf9
	.4byte	.LASF871
	.byte	0x5
	.uleb128 0xfa
	.4byte	.LASF872
	.byte	0x5
	.uleb128 0x103
	.4byte	.LASF873
	.byte	0x5
	.uleb128 0x10e
	.4byte	.LASF874
	.byte	0x5
	.uleb128 0x123
	.4byte	.LASF875
	.byte	0x5
	.uleb128 0x12b
	.4byte	.LASF876
	.byte	0x5
	.uleb128 0x133
	.4byte	.LASF877
	.byte	0x5
	.uleb128 0x13b
	.4byte	.LASF878
	.byte	0x5
	.uleb128 0x143
	.4byte	.LASF879
	.byte	0x5
	.uleb128 0x14b
	.4byte	.LASF880
	.byte	0x5
	.uleb128 0x153
	.4byte	.LASF881
	.byte	0x5
	.uleb128 0x15b
	.4byte	.LASF882
	.byte	0x5
	.uleb128 0x163
	.4byte	.LASF883
	.byte	0x5
	.uleb128 0x16b
	.4byte	.LASF884
	.byte	0x5
	.uleb128 0x173
	.4byte	.LASF885
	.byte	0x5
	.uleb128 0x17b
	.4byte	.LASF886
	.byte	0x5
	.uleb128 0x183
	.4byte	.LASF887
	.byte	0x5
	.uleb128 0x18b
	.4byte	.LASF888
	.byte	0x5
	.uleb128 0x193
	.4byte	.LASF889
	.byte	0x5
	.uleb128 0x19b
	.4byte	.LASF890
	.byte	0x5
	.uleb128 0x1a3
	.4byte	.LASF891
	.byte	0x5
	.uleb128 0x1af
	.4byte	.LASF892
	.byte	0x5
	.uleb128 0x1b0
	.4byte	.LASF893
	.byte	0x5
	.uleb128 0x1b1
	.4byte	.LASF894
	.byte	0x5
	.uleb128 0x1b2
	.4byte	.LASF895
	.byte	0x5
	.uleb128 0x1b6
	.4byte	.LASF896
	.byte	0x5
	.uleb128 0x1b7
	.4byte	.LASF897
	.byte	0x5
	.uleb128 0x201
	.4byte	.LASF898
	.byte	0x5
	.uleb128 0x208
	.4byte	.LASF899
	.byte	0x5
	.uleb128 0x209
	.4byte	.LASF900
	.byte	0x5
	.uleb128 0x20a
	.4byte	.LASF901
	.byte	0x5
	.uleb128 0x20b
	.4byte	.LASF902
	.byte	0x5
	.uleb128 0x24f
	.4byte	.LASF903
	.byte	0x5
	.uleb128 0x963
	.4byte	.LASF904
	.byte	0x5
	.uleb128 0x964
	.4byte	.LASF905
	.byte	0x4
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.ffconf.h.5.33dc209dbeff5fc69dc03a1e983d7563,comdat
.Ldebug_macro2:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x5
	.4byte	.LASF448
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF449
	.byte	0x5
	.uleb128 0x10
	.4byte	.LASF450
	.byte	0x5
	.uleb128 0x17
	.4byte	.LASF451
	.byte	0x5
	.uleb128 0x21
	.4byte	.LASF452
	.byte	0x5
	.uleb128 0x26
	.4byte	.LASF453
	.byte	0x5
	.uleb128 0x2a
	.4byte	.LASF454
	.byte	0x5
	.uleb128 0x2e
	.4byte	.LASF455
	.byte	0x5
	.uleb128 0x32
	.4byte	.LASF456
	.byte	0x5
	.uleb128 0x37
	.4byte	.LASF457
	.byte	0x5
	.uleb128 0x3c
	.4byte	.LASF458
	.byte	0x5
	.uleb128 0x40
	.4byte	.LASF459
	.byte	0x5
	.uleb128 0x41
	.4byte	.LASF460
	.byte	0x5
	.uleb128 0x42
	.4byte	.LASF461
	.byte	0x5
	.uleb128 0x43
	.4byte	.LASF462
	.byte	0x5
	.uleb128 0x5c
	.4byte	.LASF463
	.byte	0x5
	.uleb128 0x79
	.4byte	.LASF464
	.byte	0x5
	.uleb128 0x7a
	.4byte	.LASF465
	.byte	0x5
	.uleb128 0x8d
	.4byte	.LASF466
	.byte	0x5
	.uleb128 0x99
	.4byte	.LASF467
	.byte	0x5
	.uleb128 0x9a
	.4byte	.LASF468
	.byte	0x5
	.uleb128 0xa1
	.4byte	.LASF469
	.byte	0x5
	.uleb128 0xae
	.4byte	.LASF470
	.byte	0x5
	.uleb128 0xb2
	.4byte	.LASF471
	.byte	0x5
	.uleb128 0xb3
	.4byte	.LASF472
	.byte	0x5
	.uleb128 0xc0
	.4byte	.LASF473
	.byte	0x5
	.uleb128 0xc9
	.4byte	.LASF474
	.byte	0x5
	.uleb128 0xca
	.4byte	.LASF475
	.byte	0x5
	.uleb128 0xd3
	.4byte	.LASF476
	.byte	0x5
	.uleb128 0xd8
	.4byte	.LASF477
	.byte	0x5
	.uleb128 0xdd
	.4byte	.LASF478
	.byte	0x5
	.uleb128 0xe8
	.4byte	.LASF479
	.byte	0x5
	.uleb128 0xef
	.4byte	.LASF480
	.byte	0x5
	.uleb128 0xf5
	.4byte	.LASF481
	.byte	0x5
	.uleb128 0xf6
	.4byte	.LASF482
	.byte	0x5
	.uleb128 0xf7
	.4byte	.LASF483
	.byte	0x5
	.uleb128 0xf8
	.4byte	.LASF484
	.byte	0x5
	.uleb128 0x103
	.4byte	.LASF485
	.byte	0x5
	.uleb128 0x10f
	.4byte	.LASF486
	.byte	0x5
	.uleb128 0x11b
	.4byte	.LASF487
	.byte	0x5
	.uleb128 0x11c
	.4byte	.LASF488
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4._newlib_version.h.4.bfdf54b0af045d4a71376ae00f63a22c,comdat
.Ldebug_macro3:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x4
	.4byte	.LASF493
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF494
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF495
	.byte	0x5
	.uleb128 0x8
	.4byte	.LASF496
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF497
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.features.h.33.318b64d71e0957639cfb30f1db1f7ec8,comdat
.Ldebug_macro4:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x21
	.4byte	.LASF498
	.byte	0x5
	.uleb128 0x28
	.4byte	.LASF499
	.byte	0x6
	.uleb128 0x83
	.4byte	.LASF500
	.byte	0x5
	.uleb128 0x84
	.4byte	.LASF501
	.byte	0x6
	.uleb128 0x88
	.4byte	.LASF502
	.byte	0x5
	.uleb128 0x89
	.4byte	.LASF503
	.byte	0x6
	.uleb128 0x8a
	.4byte	.LASF504
	.byte	0x5
	.uleb128 0x8b
	.4byte	.LASF505
	.byte	0x6
	.uleb128 0x9e
	.4byte	.LASF506
	.byte	0x5
	.uleb128 0x9f
	.4byte	.LASF507
	.byte	0x5
	.uleb128 0xf7
	.4byte	.LASF508
	.byte	0x5
	.uleb128 0xfd
	.4byte	.LASF509
	.byte	0x5
	.uleb128 0x105
	.4byte	.LASF510
	.byte	0x5
	.uleb128 0x10a
	.4byte	.LASF511
	.byte	0x5
	.uleb128 0x115
	.4byte	.LASF512
	.byte	0x5
	.uleb128 0x119
	.4byte	.LASF513
	.byte	0x5
	.uleb128 0x11f
	.4byte	.LASF514
	.byte	0x5
	.uleb128 0x12f
	.4byte	.LASF515
	.byte	0x5
	.uleb128 0x13f
	.4byte	.LASF516
	.byte	0x5
	.uleb128 0x14a
	.4byte	.LASF517
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4._default_types.h.15.247e5cd201eca3442cbf5404108c4935,comdat
.Ldebug_macro5:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0xf
	.4byte	.LASF518
	.byte	0x5
	.uleb128 0x1a
	.4byte	.LASF519
	.byte	0x5
	.uleb128 0x21
	.4byte	.LASF520
	.byte	0x5
	.uleb128 0x2f
	.4byte	.LASF521
	.byte	0x5
	.uleb128 0x3d
	.4byte	.LASF522
	.byte	0x5
	.uleb128 0x53
	.4byte	.LASF523
	.byte	0x5
	.uleb128 0x6d
	.4byte	.LASF524
	.byte	0x5
	.uleb128 0x8c
	.4byte	.LASF525
	.byte	0x5
	.uleb128 0xa6
	.4byte	.LASF526
	.byte	0x5
	.uleb128 0xbc
	.4byte	.LASF527
	.byte	0x5
	.uleb128 0xce
	.4byte	.LASF528
	.byte	0x6
	.uleb128 0xf4
	.4byte	.LASF529
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4._intsup.h.10.48bafbb683905c4daa4565a85aeeb264,comdat
.Ldebug_macro6:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF530
	.byte	0x5
	.uleb128 0x10
	.4byte	.LASF531
	.byte	0x6
	.uleb128 0x2b
	.4byte	.LASF532
	.byte	0x6
	.uleb128 0x2c
	.4byte	.LASF533
	.byte	0x6
	.uleb128 0x2d
	.4byte	.LASF534
	.byte	0x6
	.uleb128 0x2e
	.4byte	.LASF535
	.byte	0x2
	.uleb128 0x2f
	.ascii	"int\000"
	.byte	0x6
	.uleb128 0x30
	.4byte	.LASF536
	.byte	0x6
	.uleb128 0x31
	.4byte	.LASF537
	.byte	0x6
	.uleb128 0x32
	.4byte	.LASF538
	.byte	0x5
	.uleb128 0x33
	.4byte	.LASF539
	.byte	0x5
	.uleb128 0x34
	.4byte	.LASF540
	.byte	0x5
	.uleb128 0x35
	.4byte	.LASF541
	.byte	0x5
	.uleb128 0x36
	.4byte	.LASF542
	.byte	0x5
	.uleb128 0x37
	.4byte	.LASF543
	.byte	0x5
	.uleb128 0x38
	.4byte	.LASF544
	.byte	0x5
	.uleb128 0x39
	.4byte	.LASF545
	.byte	0x5
	.uleb128 0x3a
	.4byte	.LASF546
	.byte	0x5
	.uleb128 0x43
	.4byte	.LASF547
	.byte	0x5
	.uleb128 0x4a
	.4byte	.LASF548
	.byte	0x5
	.uleb128 0x52
	.4byte	.LASF549
	.byte	0x5
	.uleb128 0x5d
	.4byte	.LASF550
	.byte	0x5
	.uleb128 0x68
	.4byte	.LASF551
	.byte	0x5
	.uleb128 0x71
	.4byte	.LASF552
	.byte	0x5
	.uleb128 0x78
	.4byte	.LASF553
	.byte	0x5
	.uleb128 0x81
	.4byte	.LASF554
	.byte	0x5
	.uleb128 0x88
	.4byte	.LASF555
	.byte	0x5
	.uleb128 0x93
	.4byte	.LASF556
	.byte	0x5
	.uleb128 0x97
	.4byte	.LASF557
	.byte	0x5
	.uleb128 0xa2
	.4byte	.LASF558
	.byte	0x5
	.uleb128 0xad
	.4byte	.LASF559
	.byte	0x5
	.uleb128 0xb6
	.4byte	.LASF560
	.byte	0x6
	.uleb128 0xb8
	.4byte	.LASF532
	.byte	0x6
	.uleb128 0xb9
	.4byte	.LASF533
	.byte	0x6
	.uleb128 0xba
	.4byte	.LASF534
	.byte	0x6
	.uleb128 0xbb
	.4byte	.LASF535
	.byte	0x2
	.uleb128 0xbc
	.ascii	"int\000"
	.byte	0x6
	.uleb128 0xbd
	.4byte	.LASF538
	.byte	0x6
	.uleb128 0xc2
	.4byte	.LASF536
	.byte	0x6
	.uleb128 0xc3
	.4byte	.LASF537
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4._stdint.h.10.c24fa3af3bc1706662bb5593a907e841,comdat
.Ldebug_macro7:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF561
	.byte	0x5
	.uleb128 0x15
	.4byte	.LASF562
	.byte	0x5
	.uleb128 0x19
	.4byte	.LASF563
	.byte	0x5
	.uleb128 0x1b
	.4byte	.LASF564
	.byte	0x5
	.uleb128 0x21
	.4byte	.LASF565
	.byte	0x5
	.uleb128 0x25
	.4byte	.LASF566
	.byte	0x5
	.uleb128 0x27
	.4byte	.LASF567
	.byte	0x5
	.uleb128 0x2d
	.4byte	.LASF568
	.byte	0x5
	.uleb128 0x31
	.4byte	.LASF569
	.byte	0x5
	.uleb128 0x33
	.4byte	.LASF570
	.byte	0x5
	.uleb128 0x39
	.4byte	.LASF571
	.byte	0x5
	.uleb128 0x3d
	.4byte	.LASF572
	.byte	0x5
	.uleb128 0x3f
	.4byte	.LASF573
	.byte	0x5
	.uleb128 0x44
	.4byte	.LASF574
	.byte	0x5
	.uleb128 0x49
	.4byte	.LASF575
	.byte	0x5
	.uleb128 0x4e
	.4byte	.LASF576
	.byte	0x5
	.uleb128 0x53
	.4byte	.LASF577
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.stdint.h.23.d53047a68f4a85177f80b422d52785ed,comdat
.Ldebug_macro8:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x17
	.4byte	.LASF578
	.byte	0x5
	.uleb128 0x1d
	.4byte	.LASF579
	.byte	0x5
	.uleb128 0x23
	.4byte	.LASF580
	.byte	0x5
	.uleb128 0x29
	.4byte	.LASF581
	.byte	0x5
	.uleb128 0x35
	.4byte	.LASF582
	.byte	0x5
	.uleb128 0x3f
	.4byte	.LASF583
	.byte	0x5
	.uleb128 0x49
	.4byte	.LASF584
	.byte	0x5
	.uleb128 0x53
	.4byte	.LASF585
	.byte	0x5
	.uleb128 0x80
	.4byte	.LASF586
	.byte	0x5
	.uleb128 0x81
	.4byte	.LASF587
	.byte	0x5
	.uleb128 0x82
	.4byte	.LASF588
	.byte	0x5
	.uleb128 0x98
	.4byte	.LASF589
	.byte	0x5
	.uleb128 0x99
	.4byte	.LASF590
	.byte	0x5
	.uleb128 0x9a
	.4byte	.LASF591
	.byte	0x5
	.uleb128 0xa2
	.4byte	.LASF592
	.byte	0x5
	.uleb128 0xa3
	.4byte	.LASF593
	.byte	0x5
	.uleb128 0xa4
	.4byte	.LASF594
	.byte	0x5
	.uleb128 0xae
	.4byte	.LASF595
	.byte	0x5
	.uleb128 0xaf
	.4byte	.LASF596
	.byte	0x5
	.uleb128 0xb0
	.4byte	.LASF597
	.byte	0x5
	.uleb128 0xb8
	.4byte	.LASF598
	.byte	0x5
	.uleb128 0xb9
	.4byte	.LASF599
	.byte	0x5
	.uleb128 0xba
	.4byte	.LASF600
	.byte	0x5
	.uleb128 0xc4
	.4byte	.LASF601
	.byte	0x5
	.uleb128 0xc5
	.4byte	.LASF602
	.byte	0x5
	.uleb128 0xc6
	.4byte	.LASF603
	.byte	0x5
	.uleb128 0xd4
	.4byte	.LASF604
	.byte	0x5
	.uleb128 0xd5
	.4byte	.LASF605
	.byte	0x5
	.uleb128 0xd6
	.4byte	.LASF606
	.byte	0x5
	.uleb128 0xe6
	.4byte	.LASF607
	.byte	0x5
	.uleb128 0xe7
	.4byte	.LASF608
	.byte	0x5
	.uleb128 0xe8
	.4byte	.LASF609
	.byte	0x5
	.uleb128 0xf6
	.4byte	.LASF610
	.byte	0x5
	.uleb128 0xf7
	.4byte	.LASF611
	.byte	0x5
	.uleb128 0xf8
	.4byte	.LASF612
	.byte	0x5
	.uleb128 0x106
	.4byte	.LASF613
	.byte	0x5
	.uleb128 0x107
	.4byte	.LASF614
	.byte	0x5
	.uleb128 0x108
	.4byte	.LASF615
	.byte	0x5
	.uleb128 0x116
	.4byte	.LASF616
	.byte	0x5
	.uleb128 0x117
	.4byte	.LASF617
	.byte	0x5
	.uleb128 0x118
	.4byte	.LASF618
	.byte	0x5
	.uleb128 0x126
	.4byte	.LASF619
	.byte	0x5
	.uleb128 0x127
	.4byte	.LASF620
	.byte	0x5
	.uleb128 0x128
	.4byte	.LASF621
	.byte	0x5
	.uleb128 0x136
	.4byte	.LASF622
	.byte	0x5
	.uleb128 0x137
	.4byte	.LASF623
	.byte	0x5
	.uleb128 0x138
	.4byte	.LASF624
	.byte	0x5
	.uleb128 0x146
	.4byte	.LASF625
	.byte	0x5
	.uleb128 0x147
	.4byte	.LASF626
	.byte	0x5
	.uleb128 0x14f
	.4byte	.LASF627
	.byte	0x5
	.uleb128 0x157
	.4byte	.LASF628
	.byte	0x5
	.uleb128 0x15d
	.4byte	.LASF629
	.byte	0x5
	.uleb128 0x15e
	.4byte	.LASF630
	.byte	0x5
	.uleb128 0x162
	.4byte	.LASF631
	.byte	0x5
	.uleb128 0x166
	.4byte	.LASF632
	.byte	0x5
	.uleb128 0x16b
	.4byte	.LASF633
	.byte	0x5
	.uleb128 0x176
	.4byte	.LASF634
	.byte	0x5
	.uleb128 0x180
	.4byte	.LASF635
	.byte	0x5
	.uleb128 0x185
	.4byte	.LASF636
	.byte	0x5
	.uleb128 0x18c
	.4byte	.LASF637
	.byte	0x5
	.uleb128 0x18d
	.4byte	.LASF638
	.byte	0x5
	.uleb128 0x198
	.4byte	.LASF639
	.byte	0x5
	.uleb128 0x199
	.4byte	.LASF640
	.byte	0x5
	.uleb128 0x1a4
	.4byte	.LASF641
	.byte	0x5
	.uleb128 0x1a5
	.4byte	.LASF642
	.byte	0x5
	.uleb128 0x1b1
	.4byte	.LASF643
	.byte	0x5
	.uleb128 0x1b2
	.4byte	.LASF644
	.byte	0x5
	.uleb128 0x1c1
	.4byte	.LASF645
	.byte	0x5
	.uleb128 0x1c2
	.4byte	.LASF646
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.ff.h.106.b48356f5b3b39c0e3352a7b42055ad6b,comdat
.Ldebug_macro9:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x6a
	.4byte	.LASF648
	.byte	0x5
	.uleb128 0x6b
	.4byte	.LASF649
	.byte	0x5
	.uleb128 0x155
	.4byte	.LASF650
	.byte	0x5
	.uleb128 0x156
	.4byte	.LASF651
	.byte	0x5
	.uleb128 0x157
	.4byte	.LASF652
	.byte	0x5
	.uleb128 0x158
	.4byte	.LASF653
	.byte	0x5
	.uleb128 0x159
	.4byte	.LASF654
	.byte	0x5
	.uleb128 0x15a
	.4byte	.LASF655
	.byte	0x5
	.uleb128 0x15b
	.4byte	.LASF656
	.byte	0x5
	.uleb128 0x15c
	.4byte	.LASF657
	.byte	0x5
	.uleb128 0x189
	.4byte	.LASF658
	.byte	0x5
	.uleb128 0x18a
	.4byte	.LASF659
	.byte	0x5
	.uleb128 0x18b
	.4byte	.LASF660
	.byte	0x5
	.uleb128 0x18c
	.4byte	.LASF661
	.byte	0x5
	.uleb128 0x18d
	.4byte	.LASF662
	.byte	0x5
	.uleb128 0x18e
	.4byte	.LASF663
	.byte	0x5
	.uleb128 0x18f
	.4byte	.LASF664
	.byte	0x5
	.uleb128 0x192
	.4byte	.LASF665
	.byte	0x5
	.uleb128 0x195
	.4byte	.LASF666
	.byte	0x5
	.uleb128 0x196
	.4byte	.LASF667
	.byte	0x5
	.uleb128 0x197
	.4byte	.LASF668
	.byte	0x5
	.uleb128 0x198
	.4byte	.LASF669
	.byte	0x5
	.uleb128 0x199
	.4byte	.LASF670
	.byte	0x5
	.uleb128 0x19c
	.4byte	.LASF671
	.byte	0x5
	.uleb128 0x19d
	.4byte	.LASF672
	.byte	0x5
	.uleb128 0x19e
	.4byte	.LASF673
	.byte	0x5
	.uleb128 0x19f
	.4byte	.LASF674
	.byte	0x5
	.uleb128 0x1a2
	.4byte	.LASF675
	.byte	0x5
	.uleb128 0x1a3
	.4byte	.LASF676
	.byte	0x5
	.uleb128 0x1a4
	.4byte	.LASF677
	.byte	0x5
	.uleb128 0x1a5
	.4byte	.LASF678
	.byte	0x5
	.uleb128 0x1a6
	.4byte	.LASF679
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.diskio.h.6.3dbb52e2695231834664df04ea4dd240,comdat
.Ldebug_macro10:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF680
	.byte	0x5
	.uleb128 0x28
	.4byte	.LASF681
	.byte	0x5
	.uleb128 0x29
	.4byte	.LASF682
	.byte	0x5
	.uleb128 0x2a
	.4byte	.LASF683
	.byte	0x5
	.uleb128 0x30
	.4byte	.LASF684
	.byte	0x5
	.uleb128 0x31
	.4byte	.LASF685
	.byte	0x5
	.uleb128 0x32
	.4byte	.LASF686
	.byte	0x5
	.uleb128 0x33
	.4byte	.LASF687
	.byte	0x5
	.uleb128 0x34
	.4byte	.LASF688
	.byte	0x5
	.uleb128 0x37
	.4byte	.LASF689
	.byte	0x5
	.uleb128 0x38
	.4byte	.LASF690
	.byte	0x5
	.uleb128 0x39
	.4byte	.LASF691
	.byte	0x5
	.uleb128 0x3a
	.4byte	.LASF692
	.byte	0x5
	.uleb128 0x3d
	.4byte	.LASF693
	.byte	0x5
	.uleb128 0x3e
	.4byte	.LASF694
	.byte	0x5
	.uleb128 0x3f
	.4byte	.LASF695
	.byte	0x5
	.uleb128 0x40
	.4byte	.LASF696
	.byte	0x5
	.uleb128 0x41
	.4byte	.LASF697
	.byte	0x5
	.uleb128 0x42
	.4byte	.LASF698
	.byte	0x5
	.uleb128 0x43
	.4byte	.LASF699
	.byte	0x5
	.uleb128 0x44
	.4byte	.LASF700
	.byte	0x5
	.uleb128 0x47
	.4byte	.LASF701
	.byte	0x5
	.uleb128 0x48
	.4byte	.LASF702
	.byte	0x5
	.uleb128 0x49
	.4byte	.LASF703
	.byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF1002:
	.ascii	"DRESULT\000"
.LASF636:
	.ascii	"WINT_MIN (__WINT_MIN__)\000"
.LASF949:
	.ascii	"winsect\000"
.LASF346:
	.ascii	"__UHA_FBIT__ 8\000"
.LASF515:
	.ascii	"__SVID_VISIBLE 1\000"
.LASF641:
	.ascii	"INT32_C(x) __INT32_C(x)\000"
.LASF703:
	.ascii	"ATA_GET_SN 22\000"
.LASF713:
	.ascii	"IsSeparator(c) ((c) == '/' || (c) == '\\\\')\000"
.LASF219:
	.ascii	"__FLT64_DENORM_MIN__ 4.9406564584124654e-324F64\000"
.LASF830:
	.ascii	"DDEM 0xE5\000"
.LASF967:
	.ascii	"dptr\000"
.LASF358:
	.ascii	"__CHAR_UNSIGNED__ 1\000"
.LASF807:
	.ascii	"LDIR_FstClusLO 26\000"
.LASF1091:
	.ascii	"gen_numname\000"
.LASF221:
	.ascii	"__FLT64_HAS_INFINITY__ 1\000"
.LASF457:
	.ascii	"FF_USE_LABEL 0\000"
.LASF310:
	.ascii	"__LLACCUM_MIN__ (-0X1P31LLK-0X1P31LLK)\000"
.LASF1097:
	.ascii	"ld_clust\000"
.LASF302:
	.ascii	"__LACCUM_EPSILON__ 0x1P-31LK\000"
.LASF77:
	.ascii	"__PTRDIFF_MAX__ 0x7fffffff\000"
.LASF962:
	.ascii	"fptr\000"
.LASF755:
	.ascii	"BS_NTres 37\000"
.LASF925:
	.ascii	"QWORD\000"
.LASF569:
	.ascii	"_UINT32_T_DECLARED \000"
.LASF795:
	.ascii	"DIR_NTres 12\000"
.LASF88:
	.ascii	"__INTMAX_MAX__ 0x7fffffffffffffffLL\000"
.LASF327:
	.ascii	"__TQ_IBIT__ 0\000"
.LASF729:
	.ascii	"NS_BODY 0x08\000"
.LASF225:
	.ascii	"__FLT32X_MIN_EXP__ (-1021)\000"
.LASF810:
	.ascii	"XDIR_Label 2\000"
.LASF608:
	.ascii	"INT64_MAX (__INT64_MAX__)\000"
.LASF463:
	.ascii	"FF_CODE_PAGE 866\000"
.LASF14:
	.ascii	"__ATOMIC_CONSUME 1\000"
.LASF303:
	.ascii	"__ULACCUM_FBIT__ 32\000"
.LASF73:
	.ascii	"__WCHAR_MAX__ 0xffffffffU\000"
.LASF783:
	.ascii	"BPB_VolIDEx 100\000"
.LASF537:
	.ascii	"__int20__\000"
.LASF844:
	.ascii	"PTE_EdHead 5\000"
.LASF695:
	.ascii	"MMC_GET_CID 12\000"
.LASF706:
	.ascii	"MAX_FAT12 0xFF5\000"
.LASF18:
	.ascii	"__SIZEOF_LONG_LONG__ 8\000"
.LASF765:
	.ascii	"BPB_RootClus32 44\000"
.LASF166:
	.ascii	"__DBL_MAX_10_EXP__ 308\000"
.LASF448:
	.ascii	"FFCONF_DEF 80286\000"
.LASF250:
	.ascii	"__FRACT_MIN__ (-0.5R-0.5R)\000"
.LASF316:
	.ascii	"__ULLACCUM_MAX__ 0XFFFFFFFFFFFFFFFFP-32ULLK\000"
.LASF780:
	.ascii	"BPB_DataOfsEx 88\000"
.LASF286:
	.ascii	"__USACCUM_MAX__ 0XFFFFP-8UHK\000"
.LASF238:
	.ascii	"__SFRACT_FBIT__ 7\000"
.LASF1021:
	.ascii	"path\000"
.LASF672:
	.ascii	"FS_FAT16 2\000"
.LASF437:
	.ascii	"__ARM_FEATURE_BF16_SCALAR_ARITHMETIC\000"
.LASF323:
	.ascii	"__SQ_IBIT__ 0\000"
.LASF28:
	.ascii	"__ORDER_PDP_ENDIAN__ 3412\000"
.LASF999:
	.ascii	"RES_WRPRT\000"
.LASF1089:
	.ascii	"szblk\000"
.LASF647:
	.ascii	"_GCC_WRAP_STDINT_H \000"
.LASF836:
	.ascii	"FSI_Nxt_Free 492\000"
.LASF157:
	.ascii	"__FLT_HAS_DENORM__ 1\000"
.LASF41:
	.ascii	"__INT8_TYPE__ signed char\000"
.LASF399:
	.ascii	"__ARM_ARCH_PROFILE 77\000"
.LASF459:
	.ascii	"FF_USE_STRFUNC 0\000"
.LASF285:
	.ascii	"__USACCUM_MIN__ 0.0UHK\000"
.LASF1066:
	.ascii	"get_ldnumber\000"
.LASF198:
	.ascii	"__FLT32_DECIMAL_DIG__ 9\000"
.LASF182:
	.ascii	"__DECIMAL_DIG__ 17\000"
.LASF178:
	.ascii	"__LDBL_MIN_EXP__ (-1021)\000"
.LASF468:
	.ascii	"FF_SFN_BUF 12\000"
.LASF1131:
	.ascii	"st_qword\000"
.LASF616:
	.ascii	"INT_FAST16_MIN (-__INT_FAST16_MAX__ - 1)\000"
.LASF670:
	.ascii	"FM_SFD 0x08\000"
.LASF117:
	.ascii	"__UINT8_C(c) c\000"
.LASF678:
	.ascii	"AM_DIR 0x10\000"
.LASF42:
	.ascii	"__INT16_TYPE__ short int\000"
.LASF738:
	.ascii	"ET_STREAM 0xC0\000"
.LASF215:
	.ascii	"__FLT64_MAX__ 1.7976931348623157e+308F64\000"
.LASF690:
	.ascii	"CTRL_LOCK 6\000"
.LASF875:
	.ascii	"TBL_CT437 {0x80,0x9A,0x45,0x41,0x8E,0x41,0x8F,0x80,"
	.ascii	"0x45,0x45,0x45,0x49,0x49,0x49,0x8E,0x8F, 0x90,0x92,"
	.ascii	"0x92,0x4F,0x99,0x4F,0x55,0x55,0x59,0x99,0x9A,0x9B,0"
	.ascii	"x9C,0x9D,0x9E,0x9F, 0x41,0x49,0x4F,0x55,0xA5,0xA5,0"
	.ascii	"xA6,0xA7,0xA8,0xA9,0xAA,0xAB,0xAC,0xAD,0xAE,0xAF, 0"
	.ascii	"xB0,0xB1,0xB2,0xB3,0xB4,0xB5,0xB6,0xB7,0xB8,0xB9,0x"
	.ascii	"BA,0xBB,0xBC,0xBD,0xBE,0xBF, 0xC0,0xC1,0xC2,0xC3,0x"
	.ascii	"C4,0xC5,0xC6,0xC7,0xC8,0xC9,0xCA,0xCB,0xCC,0xCD,0xC"
	.ascii	"E,0xCF, 0xD0,0xD1,0xD2,0xD3,0xD4,0xD5,0xD6,0xD7,0xD"
	.ascii	"8,0xD9,0xDA,0xDB,0xDC,0xDD,0xDE,0xDF, 0xE0,0xE1,0xE"
	.ascii	"2,0xE3,0xE4,0xE5,0xE6,0xE7,0xE8,0xE9,0xEA,0xEB,0xEC"
	.ascii	",0xED,0xEE,0xEF, 0xF0,0xF1,0xF2,0xF3,0xF4,0xF5,0xF6"
	.ascii	",0xF7,0xF8,0xF9,0xFA,0xFB,0xFC,0xFD,0xFE,0xFF}\000"
.LASF549:
	.ascii	"__INT8 \"hh\"\000"
.LASF359:
	.ascii	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 1\000"
.LASF1065:
	.ascii	"sign\000"
.LASF1132:
	.ascii	"st_dword\000"
.LASF740:
	.ascii	"BS_JmpBoot 0\000"
.LASF4:
	.ascii	"__STDC_HOSTED__ 1\000"
.LASF1061:
	.ascii	"find_volume\000"
.LASF943:
	.ascii	"fsize\000"
.LASF40:
	.ascii	"__SIG_ATOMIC_TYPE__ int\000"
.LASF1035:
	.ascii	"f_lseek\000"
.LASF60:
	.ascii	"__INT_FAST64_TYPE__ long long int\000"
.LASF35:
	.ascii	"__WINT_TYPE__ unsigned int\000"
.LASF590:
	.ascii	"INT8_MAX (__INT8_MAX__)\000"
.LASF1067:
	.ascii	"follow_path\000"
.LASF539:
	.ascii	"signed +0\000"
.LASF631:
	.ascii	"PTRDIFF_MAX (__PTRDIFF_MAX__)\000"
.LASF1117:
	.ascii	"sync_fs\000"
.LASF197:
	.ascii	"__FLT32_MAX_10_EXP__ 38\000"
.LASF929:
	.ascii	"TCHAR\000"
.LASF763:
	.ascii	"BPB_ExtFlags32 40\000"
.LASF854:
	.ascii	"GPTH_BakLba 32\000"
.LASF246:
	.ascii	"__USFRACT_MAX__ 0XFFP-8UHR\000"
.LASF207:
	.ascii	"__FP_FAST_FMAF32 1\000"
.LASF138:
	.ascii	"__UINTPTR_MAX__ 0xffffffffU\000"
.LASF696:
	.ascii	"MMC_GET_OCR 13\000"
.LASF194:
	.ascii	"__FLT32_MIN_EXP__ (-125)\000"
.LASF960:
	.ascii	"FFOBJID\000"
.LASF721:
	.ascii	"AM_VOL 0x08\000"
.LASF781:
	.ascii	"BPB_NumClusEx 92\000"
.LASF845:
	.ascii	"PTE_EdSec 6\000"
.LASF952:
	.ascii	"stat\000"
.LASF957:
	.ascii	"c_scl\000"
.LASF662:
	.ascii	"FA_CREATE_ALWAYS 0x08\000"
.LASF263:
	.ascii	"__ULFRACT_FBIT__ 32\000"
.LASF994:
	.ascii	"FR_INVALID_PARAMETER\000"
.LASF211:
	.ascii	"__FLT64_MIN_10_EXP__ (-307)\000"
.LASF584:
	.ascii	"__int_fast32_t_defined 1\000"
.LASF131:
	.ascii	"__INT_FAST64_WIDTH__ 64\000"
.LASF483:
	.ascii	"FF_NORTC_MDAY 1\000"
.LASF1057:
	.ascii	"fasize\000"
.LASF242:
	.ascii	"__SFRACT_EPSILON__ 0x1P-7HR\000"
.LASF737:
	.ascii	"ET_FILEDIR 0x85\000"
.LASF1118:
	.ascii	"move_window\000"
.LASF111:
	.ascii	"__INT32_C(c) c ## L\000"
.LASF27:
	.ascii	"__ORDER_BIG_ENDIAN__ 4321\000"
.LASF322:
	.ascii	"__SQ_FBIT__ 31\000"
.LASF1004:
	.ascii	"Fsid\000"
.LASF352:
	.ascii	"__UTA_FBIT__ 64\000"
.LASF566:
	.ascii	"_UINT16_T_DECLARED \000"
.LASF1022:
	.ascii	"sobj\000"
.LASF1042:
	.ascii	"wcnt\000"
.LASF330:
	.ascii	"__UHQ_FBIT__ 16\000"
.LASF940:
	.ascii	"last_clst\000"
.LASF210:
	.ascii	"__FLT64_MIN_EXP__ (-1021)\000"
.LASF1049:
	.ascii	"f_open\000"
.LASF575:
	.ascii	"_UINTMAX_T_DECLARED \000"
.LASF701:
	.ascii	"ATA_GET_REV 20\000"
.LASF132:
	.ascii	"__UINT_FAST8_MAX__ 0xffffffffU\000"
.LASF634:
	.ascii	"WCHAR_MAX (__WCHAR_MAX__)\000"
.LASF443:
	.ascii	"DEBUG 1\000"
.LASF52:
	.ascii	"__INT_LEAST64_TYPE__ long long int\000"
.LASF593:
	.ascii	"INT_LEAST8_MAX (__INT_LEAST8_MAX__)\000"
.LASF675:
	.ascii	"AM_RDO 0x01\000"
.LASF879:
	.ascii	"TBL_CT775 {0x80,0x9A,0x91,0xA0,0x8E,0x95,0x8F,0x80,"
	.ascii	"0xAD,0xED,0x8A,0x8A,0xA1,0x8D,0x8E,0x8F, 0x90,0x92,"
	.ascii	"0x92,0xE2,0x99,0x95,0x96,0x97,0x97,0x99,0x9A,0x9D,0"
	.ascii	"x9C,0x9D,0x9E,0x9F, 0xA0,0xA1,0xE0,0xA3,0xA3,0xA5,0"
	.ascii	"xA6,0xA7,0xA8,0xA9,0xAA,0xAB,0xAC,0xAD,0xAE,0xAF, 0"
	.ascii	"xB0,0xB1,0xB2,0xB3,0xB4,0xB5,0xB6,0xB7,0xB8,0xB9,0x"
	.ascii	"BA,0xBB,0xBC,0xBD,0xBE,0xBF, 0xC0,0xC1,0xC2,0xC3,0x"
	.ascii	"C4,0xC5,0xC6,0xC7,0xC8,0xC9,0xCA,0xCB,0xCC,0xCD,0xC"
	.ascii	"E,0xCF, 0xB5,0xB6,0xB7,0xB8,0xBD,0xBE,0xC6,0xC7,0xA"
	.ascii	"5,0xD9,0xDA,0xDB,0xDC,0xDD,0xDE,0xDF, 0xE0,0xE1,0xE"
	.ascii	"2,0xE3,0xE5,0xE5,0xE6,0xE3,0xE8,0xE8,0xEA,0xEA,0xEE"
	.ascii	",0xED,0xEE,0xEF, 0xF0,0xF1,0xF2,0xF3,0xF4,0xF5,0xF6"
	.ascii	",0xF7,0xF8,0xF9,0xFA,0xFB,0xFC,0xFD,0xFE,0xFF}\000"
.LASF1056:
	.ascii	"sysect\000"
.LASF981:
	.ascii	"FR_INVALID_NAME\000"
.LASF1126:
	.ascii	"mem_cpy\000"
.LASF1108:
	.ascii	"term\000"
.LASF552:
	.ascii	"__INT64 \"ll\"\000"
.LASF136:
	.ascii	"__INTPTR_MAX__ 0x7fffffff\000"
.LASF673:
	.ascii	"FS_FAT32 3\000"
.LASF133:
	.ascii	"__UINT_FAST16_MAX__ 0xffffffffU\000"
.LASF1027:
	.ascii	"nclst\000"
.LASF964:
	.ascii	"sect\000"
.LASF731:
	.ascii	"NS_DOT 0x20\000"
.LASF447:
	.ascii	"FF_DEFINED 80286\000"
.LASF825:
	.ascii	"XDIR_NameHash 36\000"
.LASF769:
	.ascii	"BS_NTres32 65\000"
.LASF1054:
	.ascii	"bsect\000"
.LASF255:
	.ascii	"__UFRACT_MIN__ 0.0UR\000"
.LASF127:
	.ascii	"__INT_FAST16_WIDTH__ 32\000"
.LASF424:
	.ascii	"__THUMB_INTERWORK__ 1\000"
.LASF998:
	.ascii	"RES_ERROR\000"
.LASF576:
	.ascii	"_INTPTR_T_DECLARED \000"
.LASF236:
	.ascii	"__FLT32X_HAS_INFINITY__ 1\000"
.LASF619:
	.ascii	"INT_FAST32_MIN (-__INT_FAST32_MAX__ - 1)\000"
.LASF1064:
	.ascii	"check_fs\000"
.LASF869:
	.ascii	"ABORT(fs,res) { fp->err = (BYTE)(res); LEAVE_FF(fs,"
	.ascii	" res); }\000"
.LASF802:
	.ascii	"DIR_FileSize 28\000"
.LASF451:
	.ascii	"FF_FS_MINIMIZE 0\000"
.LASF53:
	.ascii	"__UINT_LEAST8_TYPE__ unsigned char\000"
.LASF824:
	.ascii	"XDIR_NumName 35\000"
.LASF1023:
	.ascii	"f_unlink\000"
.LASF288:
	.ascii	"__ACCUM_FBIT__ 15\000"
.LASF498:
	.ascii	"__GNUC_PREREQ(maj,min) ((__GNUC__ << 16) + __GNUC_M"
	.ascii	"INOR__ >= ((maj) << 16) + (min))\000"
.LASF294:
	.ascii	"__UACCUM_IBIT__ 16\000"
.LASF910:
	.ascii	"long int\000"
.LASF970:
	.ascii	"ftime\000"
.LASF570:
	.ascii	"__int32_t_defined 1\000"
.LASF130:
	.ascii	"__INT_FAST64_MAX__ 0x7fffffffffffffffLL\000"
.LASF229:
	.ascii	"__FLT32X_DECIMAL_DIG__ 17\000"
.LASF170:
	.ascii	"__DBL_MIN__ ((double)2.2250738585072014e-308L)\000"
.LASF237:
	.ascii	"__FLT32X_HAS_QUIET_NAN__ 1\000"
.LASF797:
	.ascii	"DIR_CrtTime 14\000"
.LASF1134:
	.ascii	"ld_qword\000"
.LASF526:
	.ascii	"___int_least16_t_defined 1\000"
.LASF730:
	.ascii	"NS_EXT 0x10\000"
.LASF57:
	.ascii	"__INT_FAST8_TYPE__ int\000"
.LASF350:
	.ascii	"__UDA_FBIT__ 32\000"
.LASF710:
	.ascii	"IsUpper(c) ((c) >= 'A' && (c) <= 'Z')\000"
.LASF213:
	.ascii	"__FLT64_MAX_10_EXP__ 308\000"
.LASF1040:
	.ascii	"f_write\000"
.LASF91:
	.ascii	"__UINTMAX_C(c) c ## ULL\000"
.LASF31:
	.ascii	"__SIZEOF_POINTER__ 4\000"
.LASF49:
	.ascii	"__INT_LEAST8_TYPE__ signed char\000"
.LASF735:
	.ascii	"ET_UPCASE 0x82\000"
.LASF362:
	.ascii	"__GCC_ATOMIC_BOOL_LOCK_FREE 2\000"
.LASF861:
	.ascii	"GPTH_PtBcc 88\000"
.LASF876:
	.ascii	"TBL_CT720 {0x80,0x81,0x82,0x83,0x84,0x85,0x86,0x87,"
	.ascii	"0x88,0x89,0x8A,0x8B,0x8C,0x8D,0x8E,0x8F, 0x90,0x91,"
	.ascii	"0x92,0x93,0x94,0x95,0x96,0x97,0x98,0x99,0x9A,0x9B,0"
	.ascii	"x9C,0x9D,0x9E,0x9F, 0xA0,0xA1,0xA2,0xA3,0xA4,0xA5,0"
	.ascii	"xA6,0xA7,0xA8,0xA9,0xAA,0xAB,0xAC,0xAD,0xAE,0xAF, 0"
	.ascii	"xB0,0xB1,0xB2,0xB3,0xB4,0xB5,0xB6,0xB7,0xB8,0xB9,0x"
	.ascii	"BA,0xBB,0xBC,0xBD,0xBE,0xBF, 0xC0,0xC1,0xC2,0xC3,0x"
	.ascii	"C4,0xC5,0xC6,0xC7,0xC8,0xC9,0xCA,0xCB,0xCC,0xCD,0xC"
	.ascii	"E,0xCF, 0xD0,0xD1,0xD2,0xD3,0xD4,0xD5,0xD6,0xD7,0xD"
	.ascii	"8,0xD9,0xDA,0xDB,0xDC,0xDD,0xDE,0xDF, 0xE0,0xE1,0xE"
	.ascii	"2,0xE3,0xE4,0xE5,0xE6,0xE7,0xE8,0xE9,0xEA,0xEB,0xEC"
	.ascii	",0xED,0xEE,0xEF, 0xF0,0xF1,0xF2,0xF3,0xF4,0xF5,0xF6"
	.ascii	",0xF7,0xF8,0xF9,0xFA,0xFB,0xFC,0xFD,0xFE,0xFF}\000"
.LASF421:
	.ascii	"__ARM_NEON__\000"
.LASF588:
	.ascii	"UINTPTR_MAX (__UINTPTR_MAX__)\000"
.LASF196:
	.ascii	"__FLT32_MAX_EXP__ 128\000"
.LASF279:
	.ascii	"__SACCUM_IBIT__ 8\000"
.LASF344:
	.ascii	"__TA_FBIT__ 63\000"
.LASF1135:
	.ascii	"ld_dword\000"
.LASF276:
	.ascii	"__ULLFRACT_MAX__ 0XFFFFFFFFFFFFFFFFP-64ULLR\000"
.LASF214:
	.ascii	"__FLT64_DECIMAL_DIG__ 17\000"
.LASF985:
	.ascii	"FR_WRITE_PROTECTED\000"
.LASF226:
	.ascii	"__FLT32X_MIN_10_EXP__ (-307)\000"
.LASF441:
	.ascii	"__ELF__ 1\000"
.LASF39:
	.ascii	"__CHAR32_TYPE__ long unsigned int\000"
.LASF1007:
	.ascii	"LfnBuf\000"
.LASF610:
	.ascii	"INT_LEAST64_MIN (-__INT_LEAST64_MAX__ - 1)\000"
.LASF505:
	.ascii	"_POSIX_C_SOURCE 200809L\000"
.LASF134:
	.ascii	"__UINT_FAST32_MAX__ 0xffffffffU\000"
.LASF891:
	.ascii	"TBL_CT869 {0x80,0x81,0x82,0x83,0x84,0x85,0x86,0x87,"
	.ascii	"0x88,0x89,0x8A,0x8B,0x8C,0x8D,0x8E,0x8F, 0x90,0x91,"
	.ascii	"0x92,0x93,0x94,0x95,0x96,0x97,0x98,0x99,0x9A,0x86,0"
	.ascii	"x9C,0x8D,0x8F,0x90, 0x91,0x90,0x92,0x95,0xA4,0xA5,0"
	.ascii	"xA6,0xA7,0xA8,0xA9,0xAA,0xAB,0xAC,0xAD,0xAE,0xAF, 0"
	.ascii	"xB0,0xB1,0xB2,0xB3,0xB4,0xB5,0xB6,0xB7,0xB8,0xB9,0x"
	.ascii	"BA,0xBB,0xBC,0xBD,0xBE,0xBF, 0xC0,0xC1,0xC2,0xC3,0x"
	.ascii	"C4,0xC5,0xC6,0xC7,0xC8,0xC9,0xCA,0xCB,0xCC,0xCD,0xC"
	.ascii	"E,0xCF, 0xD0,0xD1,0xD2,0xD3,0xD4,0xD5,0xA4,0xA5,0xA"
	.ascii	"6,0xD9,0xDA,0xDB,0xDC,0xA7,0xA8,0xDF, 0xA9,0xAA,0xA"
	.ascii	"C,0xAD,0xB5,0xB6,0xB7,0xB8,0xBD,0xBE,0xC6,0xC7,0xCF"
	.ascii	",0xCF,0xD0,0xEF, 0xF0,0xF1,0xD1,0xD2,0xD3,0xF5,0xD4"
	.ascii	",0xF7,0xF8,0xF9,0xD5,0x96,0x95,0x98,0xFE,0xFF}\000"
.LASF149:
	.ascii	"__FLT_MAX_EXP__ 128\000"
.LASF17:
	.ascii	"__SIZEOF_LONG__ 4\000"
.LASF521:
	.ascii	"___int8_t_defined 1\000"
.LASF527:
	.ascii	"___int_least32_t_defined 1\000"
.LASF892:
	.ascii	"TBL_DC932 {0x81, 0x9F, 0xE0, 0xFC, 0x40, 0x7E, 0x80"
	.ascii	", 0xFC, 0x00, 0x00}\000"
.LASF791:
	.ascii	"BPB_RsvdEx 113\000"
.LASF21:
	.ascii	"__SIZEOF_DOUBLE__ 8\000"
.LASF112:
	.ascii	"__INT_LEAST32_WIDTH__ 32\000"
.LASF977:
	.ascii	"FR_INT_ERR\000"
.LASF554:
	.ascii	"__FAST16 \000"
.LASF124:
	.ascii	"__INT_FAST8_MAX__ 0x7fffffff\000"
.LASF609:
	.ascii	"UINT64_MAX (__UINT64_MAX__)\000"
.LASF1088:
	.ascii	"xdir_sum\000"
.LASF1113:
	.ascii	"get_fat\000"
.LASF495:
	.ascii	"__NEWLIB__ 4\000"
.LASF714:
	.ascii	"IsTerminator(c) ((UINT)(c) < (FF_USE_LFN ? ' ' : '!"
	.ascii	"'))\000"
.LASF1052:
	.ascii	"validate\000"
.LASF148:
	.ascii	"__FLT_MIN_10_EXP__ (-37)\000"
.LASF481:
	.ascii	"FF_FS_NORTC 1\000"
.LASF151:
	.ascii	"__FLT_DECIMAL_DIG__ 9\000"
.LASF405:
	.ascii	"__thumb__ 1\000"
.LASF1115:
	.ascii	"clen\000"
.LASF819:
	.ascii	"XDIR_ModTime10 21\000"
.LASF906:
	.ascii	"signed char\000"
.LASF899:
	.ascii	"DEF_NAMBUF \000"
.LASF716:
	.ascii	"IsSurrogateH(c) ((c) >= 0xD800 && (c) <= 0xDBFF)\000"
.LASF626:
	.ascii	"INTMAX_MIN (-INTMAX_MAX - 1)\000"
.LASF420:
	.ascii	"__ARM_FEATURE_FMA 1\000"
.LASF356:
	.ascii	"__GNUC_STDC_INLINE__ 1\000"
.LASF559:
	.ascii	"__LEAST32 \"l\"\000"
.LASF633:
	.ascii	"WCHAR_MIN (__WCHAR_MIN__)\000"
.LASF248:
	.ascii	"__FRACT_FBIT__ 15\000"
.LASF7:
	.ascii	"__GNUC_PATCHLEVEL__ 1\000"
.LASF812:
	.ascii	"XDIR_NumSec 1\000"
.LASF920:
	.ascii	"uint64_t\000"
.LASF118:
	.ascii	"__UINT_LEAST16_MAX__ 0xffff\000"
.LASF611:
	.ascii	"INT_LEAST64_MAX (__INT_LEAST64_MAX__)\000"
.LASF490:
	.ascii	"_STDINT_H \000"
.LASF779:
	.ascii	"BPB_FatSzEx 84\000"
.LASF965:
	.ascii	"dir_sect\000"
.LASF477:
	.ascii	"FF_MIN_GPT 0x10000000\000"
.LASF146:
	.ascii	"__FLT_DIG__ 6\000"
.LASF993:
	.ascii	"FR_TOO_MANY_OPEN_FILES\000"
.LASF479:
	.ascii	"FF_FS_TINY 0\000"
.LASF523:
	.ascii	"___int32_t_defined 1\000"
.LASF63:
	.ascii	"__UINT_FAST32_TYPE__ unsigned int\000"
.LASF939:
	.ascii	"dirbuf\000"
.LASF3:
	.ascii	"__STDC_UTF_32__ 1\000"
.LASF966:
	.ascii	"dir_ptr\000"
.LASF1085:
	.ascii	"sz_ent\000"
.LASF251:
	.ascii	"__FRACT_MAX__ 0X7FFFP-15R\000"
.LASF139:
	.ascii	"__GCC_IEC_559 0\000"
.LASF774:
	.ascii	"BS_BootCode32 90\000"
.LASF685:
	.ascii	"GET_SECTOR_COUNT 1\000"
.LASF793:
	.ascii	"DIR_Name 0\000"
.LASF128:
	.ascii	"__INT_FAST32_MAX__ 0x7fffffff\000"
.LASF10:
	.ascii	"__ATOMIC_SEQ_CST 5\000"
.LASF834:
	.ascii	"FSI_StrucSig 484\000"
.LASF671:
	.ascii	"FS_FAT12 1\000"
.LASF715:
	.ascii	"IsSurrogate(c) ((c) >= 0xD800 && (c) <= 0xDFFF)\000"
.LASF1077:
	.ascii	"create_xdir\000"
.LASF1010:
	.ascii	"disk_status\000"
.LASF698:
	.ascii	"ISDIO_READ 55\000"
.LASF958:
	.ascii	"c_size\000"
.LASF1039:
	.ascii	"f_sync\000"
.LASF614:
	.ascii	"INT_FAST8_MAX (__INT_FAST8_MAX__)\000"
.LASF650:
	.ascii	"f_eof(fp) ((int)((fp)->fptr == (fp)->obj.objsize))\000"
.LASF683:
	.ascii	"STA_PROTECT 0x04\000"
.LASF101:
	.ascii	"__UINT16_MAX__ 0xffff\000"
.LASF978:
	.ascii	"FR_NOT_READY\000"
.LASF450:
	.ascii	"FF_FS_READONLY 0\000"
.LASF326:
	.ascii	"__TQ_FBIT__ 127\000"
.LASF1123:
	.ascii	"dbc_1st\000"
.LASF585:
	.ascii	"__int_fast64_t_defined 1\000"
.LASF442:
	.ascii	"__USES_INITFINI__ 1\000"
.LASF19:
	.ascii	"__SIZEOF_SHORT__ 2\000"
.LASF313:
	.ascii	"__ULLACCUM_FBIT__ 32\000"
.LASF770:
	.ascii	"BS_BootSig32 66\000"
.LASF758:
	.ascii	"BS_VolLab 43\000"
.LASF733:
	.ascii	"NS_NONAME 0x80\000"
.LASF464:
	.ascii	"FF_USE_LFN 1\000"
.LASF492:
	.ascii	"_SYS_FEATURES_H \000"
.LASF1037:
	.ascii	"ifptr\000"
.LASF1129:
	.ascii	"value\000"
.LASF743:
	.ascii	"BPB_SecPerClus 13\000"
.LASF167:
	.ascii	"__DBL_DECIMAL_DIG__ 17\000"
.LASF22:
	.ascii	"__SIZEOF_LONG_DOUBLE__ 8\000"
.LASF375:
	.ascii	"__PRAGMA_REDEFINE_EXTNAME 1\000"
.LASF34:
	.ascii	"__WCHAR_TYPE__ unsigned int\000"
.LASF454:
	.ascii	"FF_USE_FASTSEEK 0\000"
.LASF534:
	.ascii	"char\000"
.LASF349:
	.ascii	"__USA_IBIT__ 16\000"
.LASF360:
	.ascii	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 1\000"
.LASF1104:
	.ascii	"create_chain\000"
.LASF632:
	.ascii	"PTRDIFF_MIN (-PTRDIFF_MAX - 1)\000"
.LASF789:
	.ascii	"BPB_DrvNumEx 111\000"
.LASF605:
	.ascii	"INT_LEAST32_MAX (__INT_LEAST32_MAX__)\000"
.LASF1011:
	.ascii	"ff_wtoupper\000"
.LASF64:
	.ascii	"__UINT_FAST64_TYPE__ long long unsigned int\000"
.LASF842:
	.ascii	"PTE_StCyl 3\000"
.LASF890:
	.ascii	"TBL_CT866 {0x80,0x81,0x82,0x83,0x84,0x85,0x86,0x87,"
	.ascii	"0x88,0x89,0x8A,0x8B,0x8C,0x8D,0x8E,0x8F, 0x90,0x91,"
	.ascii	"0x92,0x93,0x94,0x95,0x96,0x97,0x98,0x99,0x9A,0x9B,0"
	.ascii	"x9C,0x9D,0x9E,0x9F, 0x80,0x81,0x82,0x83,0x84,0x85,0"
	.ascii	"x86,0x87,0x88,0x89,0x8A,0x8B,0x8C,0x8D,0x8E,0x8F, 0"
	.ascii	"xB0,0xB1,0xB2,0xB3,0xB4,0xB5,0xB6,0xB7,0xB8,0xB9,0x"
	.ascii	"BA,0xBB,0xBC,0xBD,0xBE,0xBF, 0xC0,0xC1,0xC2,0xC3,0x"
	.ascii	"C4,0xC5,0xC6,0xC7,0xC8,0xC9,0xCA,0xCB,0xCC,0xCD,0xC"
	.ascii	"E,0xCF, 0xD0,0xD1,0xD2,0xD3,0xD4,0xD5,0xD6,0xD7,0xD"
	.ascii	"8,0xD9,0xDA,0xDB,0xDC,0xDD,0xDE,0xDF, 0x90,0x91,0x9"
	.ascii	"2,0x93,0x94,0x95,0x96,0x97,0x98,0x99,0x9A,0x9B,0x9C"
	.ascii	",0x9D,0x9E,0x9F, 0xF0,0xF0,0xF2,0xF2,0xF4,0xF4,0xF6"
	.ascii	",0xF6,0xF8,0xF9,0xFA,0xFB,0xFC,0xFD,0xFE,0xFF}\000"
.LASF154:
	.ascii	"__FLT_MIN__ 1.1754943508222875e-38F\000"
.LASF968:
	.ascii	"blk_ofs\000"
.LASF1045:
	.ascii	"f_read\000"
.LASF757:
	.ascii	"BS_VolID 39\000"
.LASF428:
	.ascii	"__FDPIC__\000"
.LASF942:
	.ascii	"n_fatent\000"
.LASF621:
	.ascii	"UINT_FAST32_MAX (__UINT_FAST32_MAX__)\000"
.LASF826:
	.ascii	"XDIR_ValidFileSize 40\000"
.LASF865:
	.ascii	"GPTE_FstLba 32\000"
.LASF778:
	.ascii	"BPB_FatOfsEx 80\000"
.LASF244:
	.ascii	"__USFRACT_IBIT__ 0\000"
.LASF911:
	.ascii	"__uint16_t\000"
.LASF900:
	.ascii	"INIT_NAMBUF(fs) \000"
.LASF868:
	.ascii	"GPTE_Name 56\000"
.LASF245:
	.ascii	"__USFRACT_MIN__ 0.0UHR\000"
.LASF422:
	.ascii	"__ARM_NEON\000"
.LASF689:
	.ascii	"CTRL_POWER 5\000"
.LASF100:
	.ascii	"__UINT8_MAX__ 0xff\000"
.LASF478:
	.ascii	"FF_USE_TRIM 0\000"
.LASF180:
	.ascii	"__LDBL_MAX_EXP__ 1024\000"
.LASF982:
	.ascii	"FR_DENIED\000"
.LASF1100:
	.ascii	"stretch\000"
.LASF813:
	.ascii	"XDIR_SetSum 2\000"
.LASF564:
	.ascii	"__int8_t_defined 1\000"
.LASF173:
	.ascii	"__DBL_HAS_DENORM__ 1\000"
.LASF951:
	.ascii	"attr\000"
.LASF773:
	.ascii	"BS_FilSysType32 82\000"
.LASF625:
	.ascii	"INTMAX_MAX (__INTMAX_MAX__)\000"
.LASF667:
	.ascii	"FM_FAT32 0x02\000"
.LASF342:
	.ascii	"__DA_FBIT__ 31\000"
.LASF67:
	.ascii	"__GXX_ABI_VERSION 1014\000"
.LASF107:
	.ascii	"__INT_LEAST16_MAX__ 0x7fff\000"
.LASF156:
	.ascii	"__FLT_DENORM_MIN__ 1.4012984643248171e-45F\000"
.LASF557:
	.ascii	"__LEAST8 \"hh\"\000"
.LASF1005:
	.ascii	"LfnOfs\000"
.LASF388:
	.ascii	"__ARM_32BIT_STATE 1\000"
.LASF752:
	.ascii	"BPB_HiddSec 28\000"
.LASF470:
	.ascii	"FF_VOLUMES 1\000"
.LASF821:
	.ascii	"XDIR_ModTZ 23\000"
.LASF121:
	.ascii	"__UINT32_C(c) c ## UL\000"
.LASF736:
	.ascii	"ET_VLABEL 0x83\000"
.LASF155:
	.ascii	"__FLT_EPSILON__ 1.1920928955078125e-7F\000"
.LASF666:
	.ascii	"FM_FAT 0x01\000"
.LASF1084:
	.ascii	"load_xdir\000"
.LASF574:
	.ascii	"_INTMAX_T_DECLARED \000"
.LASF963:
	.ascii	"clust\000"
.LASF33:
	.ascii	"__PTRDIFF_TYPE__ int\000"
.LASF408:
	.ascii	"__ARM_ARCH_ISA_THUMB\000"
.LASF579:
	.ascii	"__int_least16_t_defined 1\000"
.LASF297:
	.ascii	"__UACCUM_EPSILON__ 0x1P-16UK\000"
.LASF411:
	.ascii	"__VFP_FP__ 1\000"
.LASF979:
	.ascii	"FR_NO_FILE\000"
.LASF135:
	.ascii	"__UINT_FAST64_MAX__ 0xffffffffffffffffULL\000"
.LASF367:
	.ascii	"__GCC_ATOMIC_SHORT_LOCK_FREE 2\000"
.LASF761:
	.ascii	"BS_55AA 510\000"
.LASF1025:
	.ascii	"f_truncate\000"
.LASF1128:
	.ascii	"mem_set\000"
.LASF321:
	.ascii	"__HQ_IBIT__ 0\000"
.LASF283:
	.ascii	"__USACCUM_FBIT__ 8\000"
.LASF371:
	.ascii	"__GCC_ATOMIC_TEST_AND_SET_TRUEVAL 1\000"
.LASF298:
	.ascii	"__LACCUM_FBIT__ 31\000"
.LASF804:
	.ascii	"LDIR_Attr 11\000"
.LASF206:
	.ascii	"__FLT32_HAS_QUIET_NAN__ 1\000"
.LASF436:
	.ascii	"__ARM_FEATURE_MATMUL_INT8\000"
.LASF190:
	.ascii	"__LDBL_HAS_INFINITY__ 1\000"
.LASF624:
	.ascii	"UINT_FAST64_MAX (__UINT_FAST64_MAX__)\000"
.LASF278:
	.ascii	"__SACCUM_FBIT__ 7\000"
.LASF228:
	.ascii	"__FLT32X_MAX_10_EXP__ 308\000"
.LASF104:
	.ascii	"__INT_LEAST8_MAX__ 0x7f\000"
.LASF429:
	.ascii	"__ARM_ARCH_EXT_IDIV__ 1\000"
.LASF1012:
	.ascii	"disk_ioctl\000"
.LASF857:
	.ascii	"GPTH_DskGuid 56\000"
.LASF995:
	.ascii	"FRESULT\000"
.LASF1105:
	.ascii	"remove_chain\000"
.LASF901:
	.ascii	"FREE_NAMBUF() \000"
.LASF94:
	.ascii	"__SIG_ATOMIC_MIN__ (-__SIG_ATOMIC_MAX__ - 1)\000"
.LASF599:
	.ascii	"INT_LEAST16_MAX (__INT_LEAST16_MAX__)\000"
.LASF295:
	.ascii	"__UACCUM_MIN__ 0.0UK\000"
.LASF455:
	.ascii	"FF_USE_EXPAND 0\000"
.LASF732:
	.ascii	"NS_NOLFN 0x40\000"
.LASF897:
	.ascii	"MKCVTBL(hd,cp) MERGE_2STR(hd, cp)\000"
.LASF573:
	.ascii	"__int64_t_defined 1\000"
.LASF160:
	.ascii	"__FP_FAST_FMAF 1\000"
.LASF629:
	.ascii	"SIG_ATOMIC_MIN (-__STDINT_EXP(INT_MAX) - 1)\000"
.LASF176:
	.ascii	"__LDBL_MANT_DIG__ 53\000"
.LASF565:
	.ascii	"_INT16_T_DECLARED \000"
.LASF485:
	.ascii	"FF_FS_NOFSINFO 0\000"
.LASF489:
	.ascii	"FF_INTDEF 2\000"
.LASF1124:
	.ascii	"mem_cmp\000"
.LASF881:
	.ascii	"TBL_CT852 {0x80,0x9A,0x90,0xB6,0x8E,0xDE,0x8F,0x80,"
	.ascii	"0x9D,0xD3,0x8A,0x8A,0xD7,0x8D,0x8E,0x8F, 0x90,0x91,"
	.ascii	"0x91,0xE2,0x99,0x95,0x95,0x97,0x97,0x99,0x9A,0x9B,0"
	.ascii	"x9B,0x9D,0x9E,0xAC, 0xB5,0xD6,0xE0,0xE9,0xA4,0xA4,0"
	.ascii	"xA6,0xA6,0xA8,0xA8,0xAA,0x8D,0xAC,0xB8,0xAE,0xAF, 0"
	.ascii	"xB0,0xB1,0xB2,0xB3,0xB4,0xB5,0xB6,0xB7,0xB8,0xB9,0x"
	.ascii	"BA,0xBB,0xBC,0xBD,0xBD,0xBF, 0xC0,0xC1,0xC2,0xC3,0x"
	.ascii	"C4,0xC5,0xC6,0xC6,0xC8,0xC9,0xCA,0xCB,0xCC,0xCD,0xC"
	.ascii	"E,0xCF, 0xD1,0xD1,0xD2,0xD3,0xD2,0xD5,0xD6,0xD7,0xB"
	.ascii	"7,0xD9,0xDA,0xDB,0xDC,0xDD,0xDE,0xDF, 0xE0,0xE1,0xE"
	.ascii	"2,0xE3,0xE3,0xD5,0xE6,0xE6,0xE8,0xE9,0xE8,0xEB,0xED"
	.ascii	",0xED,0xDD,0xEF, 0xF0,0xF1,0xF2,0xF3,0xF4,0xF5,0xF6"
	.ascii	",0xF7,0xF8,0xF9,0xFA,0xEB,0xFC,0xFC,0xFE,0xFF}\000"
.LASF109:
	.ascii	"__INT_LEAST16_WIDTH__ 16\000"
.LASF986:
	.ascii	"FR_INVALID_DRIVE\000"
.LASF419:
	.ascii	"__ARM_FEATURE_FP16_FML\000"
.LASF888:
	.ascii	"TBL_CT864 {0x80,0x9A,0x45,0x41,0x8E,0x41,0x8F,0x80,"
	.ascii	"0x45,0x45,0x45,0x49,0x49,0x49,0x8E,0x8F, 0x90,0x92,"
	.ascii	"0x92,0x4F,0x99,0x4F,0x55,0x55,0x59,0x99,0x9A,0x9B,0"
	.ascii	"x9C,0x9D,0x9E,0x9F, 0x41,0x49,0x4F,0x55,0xA5,0xA5,0"
	.ascii	"xA6,0xA7,0xA8,0xA9,0xAA,0xAB,0xAC,0xAD,0xAE,0xAF, 0"
	.ascii	"xB0,0xB1,0xB2,0xB3,0xB4,0xB5,0xB6,0xB7,0xB8,0xB9,0x"
	.ascii	"BA,0xBB,0xBC,0xBD,0xBE,0xBF, 0xC0,0xC1,0xC2,0xC3,0x"
	.ascii	"C4,0xC5,0xC6,0xC7,0xC8,0xC9,0xCA,0xCB,0xCC,0xCD,0xC"
	.ascii	"E,0xCF, 0xD0,0xD1,0xD2,0xD3,0xD4,0xD5,0xD6,0xD7,0xD"
	.ascii	"8,0xD9,0xDA,0xDB,0xDC,0xDD,0xDE,0xDF, 0xE0,0xE1,0xE"
	.ascii	"2,0xE3,0xE4,0xE5,0xE6,0xE7,0xE8,0xE9,0xEA,0xEB,0xEC"
	.ascii	",0xED,0xEE,0xEF, 0xF0,0xF1,0xF2,0xF3,0xF4,0xF5,0xF6"
	.ascii	",0xF7,0xF8,0xF9,0xFA,0xFB,0xFC,0xFD,0xFE,0xFF}\000"
.LASF941:
	.ascii	"free_clst\000"
.LASF247:
	.ascii	"__USFRACT_EPSILON__ 0x1P-8UHR\000"
.LASF508:
	.ascii	"__ATFILE_VISIBLE 1\000"
.LASF872:
	.ascii	"LD2PT(vol) 0\000"
.LASF777:
	.ascii	"BPB_TotSecEx 72\000"
.LASF243:
	.ascii	"__USFRACT_FBIT__ 8\000"
.LASF759:
	.ascii	"BS_FilSysType 54\000"
.LASF580:
	.ascii	"__int_least32_t_defined 1\000"
.LASF1099:
	.ascii	"dir_next\000"
.LASF355:
	.ascii	"__USER_LABEL_PREFIX__ \000"
.LASF103:
	.ascii	"__UINT64_MAX__ 0xffffffffffffffffULL\000"
.LASF801:
	.ascii	"DIR_FstClusLO 26\000"
.LASF708:
	.ascii	"MAX_FAT32 0x0FFFFFF5\000"
.LASF1029:
	.ascii	"nfree\000"
.LASF643:
	.ascii	"INT64_C(x) __INT64_C(x)\000"
.LASF506:
	.ascii	"_ATFILE_SOURCE\000"
.LASF589:
	.ascii	"INT8_MIN (-__INT8_MAX__ - 1)\000"
.LASF1:
	.ascii	"__STDC_VERSION__ 201112L\000"
.LASF1110:
	.ascii	"change_bitmap\000"
.LASF372:
	.ascii	"__GCC_ATOMIC_POINTER_LOCK_FREE 2\000"
.LASF1133:
	.ascii	"st_word\000"
.LASF393:
	.ascii	"__ARM_FEATURE_CLZ 1\000"
.LASF462:
	.ascii	"FF_STRF_ENCODE 3\000"
.LASF11:
	.ascii	"__ATOMIC_ACQUIRE 2\000"
.LASF387:
	.ascii	"__ARM_FEATURE_COMPLEX\000"
.LASF550:
	.ascii	"__INT16 \"h\"\000"
.LASF1018:
	.ascii	"path_new\000"
.LASF1060:
	.ascii	"maxlba\000"
.LASF547:
	.ascii	"_INTPTR_EQ_INT \000"
.LASF397:
	.ascii	"__ARM_SIZEOF_WCHAR_T 4\000"
.LASF227:
	.ascii	"__FLT32X_MAX_EXP__ 1024\000"
.LASF748:
	.ascii	"BPB_Media 21\000"
.LASF744:
	.ascii	"BPB_RsvdSecCnt 14\000"
.LASF120:
	.ascii	"__UINT_LEAST32_MAX__ 0xffffffffUL\000"
.LASF171:
	.ascii	"__DBL_EPSILON__ ((double)2.2204460492503131e-16L)\000"
.LASF1038:
	.ascii	"f_close\000"
.LASF928:
	.ascii	"LBA_t\000"
.LASF833:
	.ascii	"FSI_LeadSig 0\000"
.LASF115:
	.ascii	"__INT_LEAST64_WIDTH__ 64\000"
.LASF158:
	.ascii	"__FLT_HAS_INFINITY__ 1\000"
.LASF849:
	.ascii	"GPTH_Sign 0\000"
.LASF915:
	.ascii	"__uint64_t\000"
.LASF726:
	.ascii	"NS_LOSS 0x01\000"
.LASF96:
	.ascii	"__INT8_MAX__ 0x7f\000"
.LASF956:
	.ascii	"n_frag\000"
.LASF374:
	.ascii	"__GCC_HAVE_DWARF2_CFI_ASM 1\000"
.LASF385:
	.ascii	"__ARM_FEATURE_CRC32\000"
.LASF240:
	.ascii	"__SFRACT_MIN__ (-0.5HR-0.5HR)\000"
.LASF913:
	.ascii	"long unsigned int\000"
.LASF341:
	.ascii	"__SA_IBIT__ 16\000"
.LASF532:
	.ascii	"signed\000"
.LASF140:
	.ascii	"__GCC_IEC_559_COMPLEX 0\000"
.LASF389:
	.ascii	"__ARM_FEATURE_MVE\000"
.LASF1015:
	.ascii	"ff_uni2oem\000"
.LASF414:
	.ascii	"__ARM_FP16_FORMAT_IEEE\000"
.LASF46:
	.ascii	"__UINT16_TYPE__ short unsigned int\000"
.LASF502:
	.ascii	"_POSIX_SOURCE\000"
.LASF102:
	.ascii	"__UINT32_MAX__ 0xffffffffUL\000"
.LASF1051:
	.ascii	"f_mount\000"
.LASF482:
	.ascii	"FF_NORTC_MON 1\000"
.LASF142:
	.ascii	"__FLT_EVAL_METHOD_TS_18661_3__ 0\000"
.LASF79:
	.ascii	"__SCHAR_WIDTH__ 8\000"
.LASF637:
	.ascii	"INT8_C(x) __INT8_C(x)\000"
.LASF798:
	.ascii	"DIR_LstAccDate 18\000"
.LASF61:
	.ascii	"__UINT_FAST8_TYPE__ unsigned int\000"
.LASF309:
	.ascii	"__LLACCUM_IBIT__ 32\000"
.LASF252:
	.ascii	"__FRACT_EPSILON__ 0x1P-15R\000"
.LASF1071:
	.ascii	"dir_register\000"
.LASF790:
	.ascii	"BPB_PercInUseEx 112\000"
.LASF1059:
	.ascii	"nrsv\000"
.LASF98:
	.ascii	"__INT32_MAX__ 0x7fffffffL\000"
.LASF440:
	.ascii	"__GXX_TYPEINFO_EQUALITY_INLINE 0\000"
.LASF771:
	.ascii	"BS_VolID32 67\000"
.LASF1102:
	.ascii	"dir_clear\000"
.LASF1138:
	.ascii	"../Middleware/FatFs/ff.c\000"
.LASF113:
	.ascii	"__INT_LEAST64_MAX__ 0x7fffffffffffffffLL\000"
.LASF438:
	.ascii	"__ARM_FEATURE_BF16_VECTOR_ARITHMETIC\000"
.LASF561:
	.ascii	"_SYS__STDINT_H \000"
.LASF697:
	.ascii	"MMC_GET_SDSTAT 14\000"
.LASF501:
	.ascii	"_DEFAULT_SOURCE 1\000"
.LASF192:
	.ascii	"__FLT32_MANT_DIG__ 24\000"
.LASF203:
	.ascii	"__FLT32_DENORM_MIN__ 1.4012984643248171e-45F32\000"
.LASF123:
	.ascii	"__UINT64_C(c) c ## ULL\000"
.LASF56:
	.ascii	"__UINT_LEAST64_TYPE__ long long unsigned int\000"
.LASF187:
	.ascii	"__LDBL_EPSILON__ 2.2204460492503131e-16L\000"
.LASF1122:
	.ascii	"dbc_2nd\000"
.LASF787:
	.ascii	"BPB_SecPerClusEx 109\000"
.LASF887:
	.ascii	"TBL_CT863 {0x43,0x55,0x45,0x41,0x41,0x41,0x86,0x43,"
	.ascii	"0x45,0x45,0x45,0x49,0x49,0x8D,0x41,0x8F, 0x45,0x45,"
	.ascii	"0x45,0x4F,0x45,0x49,0x55,0x55,0x98,0x4F,0x55,0x9B,0"
	.ascii	"x9C,0x55,0x55,0x9F, 0xA0,0xA1,0x4F,0x55,0xA4,0xA5,0"
	.ascii	"xA6,0xA7,0x49,0xA9,0xAA,0xAB,0xAC,0xAD,0xAE,0xAF, 0"
	.ascii	"xB0,0xB1,0xB2,0xB3,0xB4,0xB5,0xB6,0xB7,0xB8,0xB9,0x"
	.ascii	"BA,0xBB,0xBC,0xBD,0xBE,0xBF, 0xC0,0xC1,0xC2,0xC3,0x"
	.ascii	"C4,0xC5,0xC6,0xC7,0xC8,0xC9,0xCA,0xCB,0xCC,0xCD,0xC"
	.ascii	"E,0xCF, 0xD0,0xD1,0xD2,0xD3,0xD4,0xD5,0xD6,0xD7,0xD"
	.ascii	"8,0xD9,0xDA,0xDB,0xDC,0xDD,0xDE,0xDF, 0xE0,0xE1,0xE"
	.ascii	"2,0xE3,0xE4,0xE5,0xE6,0xE7,0xE8,0xE9,0xEA,0xEB,0xEC"
	.ascii	",0xED,0xEE,0xEF, 0xF0,0xF1,0xF2,0xF3,0xF4,0xF5,0xF6"
	.ascii	",0xF7,0xF8,0xF9,0xFA,0xFB,0xFC,0xFD,0xFE,0xFF}\000"
.LASF364:
	.ascii	"__GCC_ATOMIC_CHAR16_T_LOCK_FREE 2\000"
.LASF694:
	.ascii	"MMC_GET_CSD 11\000"
.LASF945:
	.ascii	"fatbase\000"
.LASF657:
	.ascii	"f_unmount(path) f_mount(0, path, 0)\000"
.LASF165:
	.ascii	"__DBL_MAX_EXP__ 1024\000"
.LASF1003:
	.ascii	"FatFs\000"
.LASF12:
	.ascii	"__ATOMIC_RELEASE 3\000"
.LASF540:
	.ascii	"unsigned +0\000"
.LASF1090:
	.ascii	"sum_sfn\000"
.LASF235:
	.ascii	"__FLT32X_HAS_DENORM__ 1\000"
.LASF145:
	.ascii	"__FLT_MANT_DIG__ 24\000"
.LASF503:
	.ascii	"_POSIX_SOURCE 1\000"
.LASF896:
	.ascii	"MERGE_2STR(a,b) a ## b\000"
.LASF874:
	.ascii	"GET_FATTIME() ((DWORD)(FF_NORTC_YEAR - 1980) << 25 "
	.ascii	"| (DWORD)FF_NORTC_MON << 21 | (DWORD)FF_NORTC_MDAY "
	.ascii	"<< 16)\000"
.LASF335:
	.ascii	"__UDQ_IBIT__ 0\000"
.LASF545:
	.ascii	"int +2\000"
.LASF627:
	.ascii	"UINTMAX_MAX (__UINTMAX_MAX__)\000"
.LASF1119:
	.ascii	"sync_window\000"
.LASF1111:
	.ascii	"find_bitmap\000"
.LASF216:
	.ascii	"__FLT64_NORM_MAX__ 1.7976931348623157e+308F64\000"
.LASF517:
	.ascii	"__SSP_FORTIFY_LEVEL 0\000"
.LASF555:
	.ascii	"__FAST32 \000"
.LASF543:
	.ascii	"__int20 +2\000"
.LASF300:
	.ascii	"__LACCUM_MIN__ (-0X1P31LK-0X1P31LK)\000"
.LASF188:
	.ascii	"__LDBL_DENORM_MIN__ 4.9406564584124654e-324L\000"
.LASF99:
	.ascii	"__INT64_MAX__ 0x7fffffffffffffffLL\000"
.LASF381:
	.ascii	"__ARM_FEATURE_SAT 1\000"
.LASF486:
	.ascii	"FF_FS_LOCK 0\000"
.LASF567:
	.ascii	"__int16_t_defined 1\000"
.LASF274:
	.ascii	"__ULLFRACT_IBIT__ 0\000"
.LASF475:
	.ascii	"FF_MAX_SS 512\000"
.LASF1053:
	.ascii	"mount_volume\000"
.LASF883:
	.ascii	"TBL_CT857 {0x80,0x9A,0x90,0xB6,0x8E,0xB7,0x8F,0x80,"
	.ascii	"0xD2,0xD3,0xD4,0xD8,0xD7,0x49,0x8E,0x8F, 0x90,0x92,"
	.ascii	"0x92,0xE2,0x99,0xE3,0xEA,0xEB,0x98,0x99,0x9A,0x9D,0"
	.ascii	"x9C,0x9D,0x9E,0x9E, 0xB5,0xD6,0xE0,0xE9,0xA5,0xA5,0"
	.ascii	"xA6,0xA6,0xA8,0xA9,0xAA,0xAB,0xAC,0xAD,0xAE,0xAF, 0"
	.ascii	"xB0,0xB1,0xB2,0xB3,0xB4,0xB5,0xB6,0xB7,0xB8,0xB9,0x"
	.ascii	"BA,0xBB,0xBC,0xBD,0xBE,0xBF, 0xC0,0xC1,0xC2,0xC3,0x"
	.ascii	"C4,0xC5,0xC7,0xC7,0xC8,0xC9,0xCA,0xCB,0xCC,0xCD,0xC"
	.ascii	"E,0xCF, 0xD0,0xD1,0xD2,0xD3,0xD4,0x49,0xD6,0xD7,0xD"
	.ascii	"8,0xD9,0xDA,0xDB,0xDC,0xDD,0xDE,0xDF, 0xE0,0xE1,0xE"
	.ascii	"2,0xE3,0xE5,0xE5,0xE6,0xE7,0xE8,0xE9,0xEA,0xEB,0xDE"
	.ascii	",0xED,0xEE,0xEF, 0xF0,0xF1,0xF2,0xF3,0xF4,0xF5,0xF6"
	.ascii	",0xF7,0xF8,0xF9,0xFA,0xFB,0xFC,0xFD,0xFE,0xFF}\000"
.LASF92:
	.ascii	"__INTMAX_WIDTH__ 64\000"
.LASF820:
	.ascii	"XDIR_CrtTZ 22\000"
.LASF5:
	.ascii	"__GNUC__ 10\000"
.LASF373:
	.ascii	"__HAVE_SPECULATION_SAFE_VALUE 1\000"
.LASF727:
	.ascii	"NS_LFN 0x02\000"
.LASF723:
	.ascii	"AM_MASK 0x3F\000"
.LASF878:
	.ascii	"TBL_CT771 {0x80,0x81,0x82,0x83,0x84,0x85,0x86,0x87,"
	.ascii	"0x88,0x89,0x8A,0x8B,0x8C,0x8D,0x8E,0x8F, 0x90,0x91,"
	.ascii	"0x92,0x93,0x94,0x95,0x96,0x97,0x98,0x99,0x9A,0x9B,0"
	.ascii	"x9C,0x9D,0x9E,0x9F, 0x80,0x81,0x82,0x83,0x84,0x85,0"
	.ascii	"x86,0x87,0x88,0x89,0x8A,0x8B,0x8C,0x8D,0x8E,0x8F, 0"
	.ascii	"xB0,0xB1,0xB2,0xB3,0xB4,0xB5,0xB6,0xB7,0xB8,0xB9,0x"
	.ascii	"BA,0xBB,0xBC,0xBD,0xBE,0xBF, 0xC0,0xC1,0xC2,0xC3,0x"
	.ascii	"C4,0xC5,0xC6,0xC7,0xC8,0xC9,0xCA,0xCB,0xCC,0xCD,0xC"
	.ascii	"E,0xCF, 0xD0,0xD1,0xD2,0xD3,0xD4,0xD5,0xD6,0xD7,0xD"
	.ascii	"8,0xD9,0xDA,0xDB,0xDC,0xDC,0xDE,0xDE, 0x90,0x91,0x9"
	.ascii	"2,0x93,0x94,0x95,0x96,0x97,0x98,0x99,0x9A,0x9B,0x9C"
	.ascii	",0x9D,0x9E,0x9F, 0xF0,0xF0,0xF2,0xF2,0xF4,0xF4,0xF6"
	.ascii	",0xF6,0xF8,0xF8,0xFA,0xFA,0xFC,0xFC,0xFE,0xFF}\000"
.LASF1063:
	.ascii	"mbr_pt\000"
.LASF152:
	.ascii	"__FLT_MAX__ 3.4028234663852886e+38F\000"
.LASF293:
	.ascii	"__UACCUM_FBIT__ 16\000"
.LASF828:
	.ascii	"XDIR_FileSize 56\000"
.LASF257:
	.ascii	"__UFRACT_EPSILON__ 0x1P-16UR\000"
.LASF74:
	.ascii	"__WCHAR_MIN__ 0U\000"
.LASF846:
	.ascii	"PTE_EdCyl 7\000"
.LASF329:
	.ascii	"__UQQ_IBIT__ 0\000"
.LASF991:
	.ascii	"FR_LOCKED\000"
.LASF493:
	.ascii	"_NEWLIB_VERSION_H__ 1\000"
.LASF369:
	.ascii	"__GCC_ATOMIC_LONG_LOCK_FREE 2\000"
.LASF305:
	.ascii	"__ULACCUM_MIN__ 0.0ULK\000"
.LASF912:
	.ascii	"__uint32_t\000"
.LASF184:
	.ascii	"__LDBL_MAX__ 1.7976931348623157e+308L\000"
.LASF402:
	.ascii	"__ARM_ARCH 7\000"
.LASF745:
	.ascii	"BPB_NumFATs 16\000"
.LASF620:
	.ascii	"INT_FAST32_MAX (__INT_FAST32_MAX__)\000"
.LASF656:
	.ascii	"f_rmdir(path) f_unlink(path)\000"
.LASF144:
	.ascii	"__FLT_RADIX__ 2\000"
.LASF914:
	.ascii	"long long int\000"
.LASF390:
	.ascii	"__ARM_FEATURE_CMSE\000"
.LASF82:
	.ascii	"__LONG_WIDTH__ 32\000"
.LASF603:
	.ascii	"UINT32_MAX (__UINT32_MAX__)\000"
.LASF776:
	.ascii	"BPB_VolOfsEx 64\000"
.LASF843:
	.ascii	"PTE_System 4\000"
.LASF947:
	.ascii	"database\000"
.LASF792:
	.ascii	"BS_BootCodeEx 120\000"
.LASF191:
	.ascii	"__LDBL_HAS_QUIET_NAN__ 1\000"
.LASF83:
	.ascii	"__LONG_LONG_WIDTH__ 64\000"
.LASF1068:
	.ascii	"create_name\000"
.LASF635:
	.ascii	"WINT_MAX (__WINT_MAX__)\000"
.LASF973:
	.ascii	"fname\000"
.LASF1137:
	.ascii	"GNU C11 10.3.1 20210824 (release) -mcpu=cortex-m4 -"
	.ascii	"mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -march=ar"
	.ascii	"mv7e-m+fp -g3 -O0 -std=gnu11 -ffunction-sections -f"
	.ascii	"data-sections -fstack-usage -fcyclomatic-complexity"
	.ascii	"\000"
.LASF412:
	.ascii	"__ARM_FP\000"
.LASF339:
	.ascii	"__HA_IBIT__ 8\000"
.LASF848:
	.ascii	"PTE_SizLba 12\000"
.LASF137:
	.ascii	"__INTPTR_WIDTH__ 32\000"
.LASF370:
	.ascii	"__GCC_ATOMIC_LLONG_LOCK_FREE 1\000"
.LASF232:
	.ascii	"__FLT32X_MIN__ 2.2250738585072014e-308F32x\000"
.LASF684:
	.ascii	"CTRL_SYNC 0\000"
.LASF212:
	.ascii	"__FLT64_MAX_EXP__ 1024\000"
.LASF1121:
	.ascii	"tchar2uni\000"
.LASF460:
	.ascii	"FF_PRINT_LLI 1\000"
.LASF217:
	.ascii	"__FLT64_MIN__ 2.2250738585072014e-308F64\000"
.LASF89:
	.ascii	"__INTMAX_C(c) c ## LL\000"
.LASF1080:
	.ascii	"store_xdir\000"
.LASF1058:
	.ascii	"szbfat\000"
.LASF786:
	.ascii	"BPB_BytsPerSecEx 108\000"
.LASF398:
	.ascii	"__ARM_ARCH_PROFILE\000"
.LASF44:
	.ascii	"__INT64_TYPE__ long long int\000"
.LASF258:
	.ascii	"__LFRACT_FBIT__ 31\000"
.LASF24:
	.ascii	"__CHAR_BIT__ 8\000"
.LASF1069:
	.ascii	"dir_remove\000"
.LASF782:
	.ascii	"BPB_RootClusEx 96\000"
.LASF1078:
	.ascii	"dirb\000"
.LASF509:
	.ascii	"__BSD_VISIBLE 1\000"
.LASF598:
	.ascii	"INT_LEAST16_MIN (-__INT_LEAST16_MAX__ - 1)\000"
.LASF406:
	.ascii	"__thumb2__ 1\000"
.LASF927:
	.ascii	"FSIZE_t\000"
.LASF699:
	.ascii	"ISDIO_WRITE 56\000"
.LASF256:
	.ascii	"__UFRACT_MAX__ 0XFFFFP-16UR\000"
.LASF859:
	.ascii	"GPTH_PtNum 80\000"
.LASF453:
	.ascii	"FF_USE_MKFS 0\000"
.LASF668:
	.ascii	"FM_EXFAT 0x04\000"
.LASF1072:
	.ascii	"n_ent\000"
.LASF837:
	.ascii	"MBR_Table 446\000"
.LASF937:
	.ascii	"csize\000"
.LASF110:
	.ascii	"__INT_LEAST32_MAX__ 0x7fffffffL\000"
.LASF239:
	.ascii	"__SFRACT_IBIT__ 0\000"
.LASF922:
	.ascii	"BYTE\000"
.LASF507:
	.ascii	"_ATFILE_SOURCE 1\000"
.LASF531:
	.ascii	"__STDINT_EXP(x) __ ##x ##__\000"
.LASF829:
	.ascii	"SZDIRE 32\000"
.LASF518:
	.ascii	"__EXP(x) __ ##x ##__\000"
.LASF29:
	.ascii	"__BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__\000"
.LASF1041:
	.ascii	"buff\000"
.LASF423:
	.ascii	"__ARM_NEON_FP\000"
.LASF444:
	.ascii	"STM32L432xx 1\000"
.LASF1112:
	.ascii	"put_fat\000"
.LASF1028:
	.ascii	"fatfs\000"
.LASF889:
	.ascii	"TBL_CT865 {0x80,0x9A,0x90,0x41,0x8E,0x41,0x8F,0x80,"
	.ascii	"0x45,0x45,0x45,0x49,0x49,0x49,0x8E,0x8F, 0x90,0x92,"
	.ascii	"0x92,0x4F,0x99,0x4F,0x55,0x55,0x59,0x99,0x9A,0x9B,0"
	.ascii	"x9C,0x9D,0x9E,0x9F, 0x41,0x49,0x4F,0x55,0xA5,0xA5,0"
	.ascii	"xA6,0xA7,0xA8,0xA9,0xAA,0xAB,0xAC,0xAD,0xAE,0xAF, 0"
	.ascii	"xB0,0xB1,0xB2,0xB3,0xB4,0xB5,0xB6,0xB7,0xB8,0xB9,0x"
	.ascii	"BA,0xBB,0xBC,0xBD,0xBE,0xBF, 0xC0,0xC1,0xC2,0xC3,0x"
	.ascii	"C4,0xC5,0xC6,0xC7,0xC8,0xC9,0xCA,0xCB,0xCC,0xCD,0xC"
	.ascii	"E,0xCF, 0xD0,0xD1,0xD2,0xD3,0xD4,0xD5,0xD6,0xD7,0xD"
	.ascii	"8,0xD9,0xDA,0xDB,0xDC,0xDD,0xDE,0xDF, 0xE0,0xE1,0xE"
	.ascii	"2,0xE3,0xE4,0xE5,0xE6,0xE7,0xE8,0xE9,0xEA,0xEB,0xEC"
	.ascii	",0xED,0xEE,0xEF, 0xF0,0xF1,0xF2,0xF3,0xF4,0xF5,0xF6"
	.ascii	",0xF7,0xF8,0xF9,0xFA,0xFB,0xFC,0xFD,0xFE,0xFF}\000"
.LASF514:
	.ascii	"__POSIX_VISIBLE 200809\000"
.LASF461:
	.ascii	"FF_PRINT_FLOAT 1\000"
.LASF253:
	.ascii	"__UFRACT_FBIT__ 16\000"
.LASF739:
	.ascii	"ET_FILENAME 0xC1\000"
.LASF334:
	.ascii	"__UDQ_FBIT__ 64\000"
.LASF169:
	.ascii	"__DBL_NORM_MAX__ ((double)1.7976931348623157e+308L)"
	.ascii	"\000"
.LASF583:
	.ascii	"__int_fast16_t_defined 1\000"
.LASF181:
	.ascii	"__LDBL_MAX_10_EXP__ 308\000"
.LASF754:
	.ascii	"BS_DrvNum 36\000"
.LASF202:
	.ascii	"__FLT32_EPSILON__ 1.1920928955078125e-7F32\000"
.LASF474:
	.ascii	"FF_MIN_SS 512\000"
.LASF649:
	.ascii	"_TEXT(x) x\000"
.LASF59:
	.ascii	"__INT_FAST32_TYPE__ int\000"
.LASF572:
	.ascii	"_UINT64_T_DECLARED \000"
.LASF823:
	.ascii	"XDIR_GenFlags 33\000"
.LASF917:
	.ascii	"unsigned int\000"
.LASF894:
	.ascii	"TBL_DC949 {0x81, 0xFE, 0x00, 0x00, 0x41, 0x5A, 0x61"
	.ascii	", 0x7A, 0x81, 0xFE}\000"
.LASF496:
	.ascii	"__NEWLIB_MINOR__ 1\000"
.LASF1095:
	.ascii	"cmp_lfn\000"
.LASF311:
	.ascii	"__LLACCUM_MAX__ 0X7FFFFFFFFFFFFFFFP-31LLK\000"
.LASF147:
	.ascii	"__FLT_MIN_EXP__ (-125)\000"
.LASF143:
	.ascii	"__DEC_EVAL_METHOD__ 2\000"
.LASF642:
	.ascii	"UINT32_C(x) __UINT32_C(x)\000"
.LASF992:
	.ascii	"FR_NOT_ENOUGH_CORE\000"
.LASF284:
	.ascii	"__USACCUM_IBIT__ 8\000"
.LASF1116:
	.ascii	"clst2sect\000"
.LASF938:
	.ascii	"lfnbuf\000"
.LASF425:
	.ascii	"__ARM_ARCH_7EM__ 1\000"
.LASF932:
	.ascii	"ldrv\000"
.LASF220:
	.ascii	"__FLT64_HAS_DENORM__ 1\000"
.LASF314:
	.ascii	"__ULLACCUM_IBIT__ 32\000"
.LASF37:
	.ascii	"__UINTMAX_TYPE__ long long unsigned int\000"
.LASF799:
	.ascii	"DIR_FstClusHI 20\000"
.LASF617:
	.ascii	"INT_FAST16_MAX (__INT_FAST16_MAX__)\000"
.LASF724:
	.ascii	"AM_MASKX 0x37\000"
.LASF658:
	.ascii	"FA_READ 0x01\000"
.LASF141:
	.ascii	"__FLT_EVAL_METHOD__ 0\000"
.LASF935:
	.ascii	"fsi_flag\000"
.LASF68:
	.ascii	"__SCHAR_MAX__ 0x7f\000"
.LASF997:
	.ascii	"RES_OK\000"
.LASF125:
	.ascii	"__INT_FAST8_WIDTH__ 32\000"
.LASF2:
	.ascii	"__STDC_UTF_16__ 1\000"
.LASF391:
	.ascii	"__ARM_FEATURE_LDREX\000"
.LASF328:
	.ascii	"__UQQ_FBIT__ 8\000"
.LASF972:
	.ascii	"altname\000"
.LASF961:
	.ascii	"flag\000"
.LASF416:
	.ascii	"__ARM_FP16_ARGS\000"
.LASF296:
	.ascii	"__UACCUM_MAX__ 0XFFFFFFFFP-16UK\000"
.LASF811:
	.ascii	"XDIR_CaseSum 4\000"
.LASF1047:
	.ascii	"rcnt\000"
.LASF541:
	.ascii	"char +0\000"
.LASF261:
	.ascii	"__LFRACT_MAX__ 0X7FFFFFFFP-31LR\000"
.LASF378:
	.ascii	"__SIZEOF_PTRDIFF_T__ 4\000"
.LASF931:
	.ascii	"pdrv\000"
.LASF0:
	.ascii	"__STDC__ 1\000"
.LASF893:
	.ascii	"TBL_DC936 {0x81, 0xFE, 0x00, 0x00, 0x40, 0x7E, 0x80"
	.ascii	", 0xFE, 0x00, 0x00}\000"
.LASF525:
	.ascii	"___int_least8_t_defined 1\000"
.LASF430:
	.ascii	"__ARM_FEATURE_IDIV 1\000"
.LASF30:
	.ascii	"__FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__\000"
.LASF1107:
	.ascii	"fill_last_frag\000"
.LASF45:
	.ascii	"__UINT8_TYPE__ unsigned char\000"
.LASF691:
	.ascii	"CTRL_EJECT 7\000"
.LASF582:
	.ascii	"__int_fast8_t_defined 1\000"
.LASF433:
	.ascii	"__ARM_FEATURE_COPROC 15\000"
.LASF1130:
	.ascii	"memset_32\000"
.LASF80:
	.ascii	"__SHRT_WIDTH__ 16\000"
.LASF717:
	.ascii	"IsSurrogateL(c) ((c) >= 0xDC00 && (c) <= 0xDFFF)\000"
.LASF587:
	.ascii	"INTPTR_MAX (__INTPTR_MAX__)\000"
.LASF445:
	.ascii	"__weak __attribute__((weak))\000"
.LASF702:
	.ascii	"ATA_GET_MODEL 21\000"
.LASF348:
	.ascii	"__USA_FBIT__ 16\000"
.LASF835:
	.ascii	"FSI_Free_Count 488\000"
.LASF179:
	.ascii	"__LDBL_MIN_10_EXP__ (-307)\000"
.LASF233:
	.ascii	"__FLT32X_EPSILON__ 2.2204460492503131e-16F32x\000"
.LASF159:
	.ascii	"__FLT_HAS_QUIET_NAN__ 1\000"
.LASF363:
	.ascii	"__GCC_ATOMIC_CHAR_LOCK_FREE 2\000"
.LASF1098:
	.ascii	"dir_alloc\000"
.LASF262:
	.ascii	"__LFRACT_EPSILON__ 0x1P-31LR\000"
.LASF808:
	.ascii	"XDIR_Type 0\000"
.LASF926:
	.ascii	"WCHAR\000"
.LASF933:
	.ascii	"n_fats\000"
.LASF396:
	.ascii	"__ARM_SIZEOF_MINIMAL_ENUM 1\000"
.LASF907:
	.ascii	"unsigned char\000"
.LASF231:
	.ascii	"__FLT32X_NORM_MAX__ 1.7976931348623157e+308F32x\000"
.LASF400:
	.ascii	"__arm__ 1\000"
.LASF682:
	.ascii	"STA_NODISK 0x02\000"
.LASF921:
	.ascii	"UINT\000"
.LASF195:
	.ascii	"__FLT32_MIN_10_EXP__ (-37)\000"
.LASF661:
	.ascii	"FA_CREATE_NEW 0x04\000"
.LASF511:
	.ascii	"__ISO_C_VISIBLE 2011\000"
.LASF595:
	.ascii	"INT16_MIN (-__INT16_MAX__ - 1)\000"
.LASF924:
	.ascii	"DWORD\000"
.LASF415:
	.ascii	"__ARM_FP16_FORMAT_ALTERNATIVE\000"
.LASF185:
	.ascii	"__LDBL_NORM_MAX__ 1.7976931348623157e+308L\000"
.LASF622:
	.ascii	"INT_FAST64_MIN (-__INT_FAST64_MAX__ - 1)\000"
.LASF987:
	.ascii	"FR_NOT_ENABLED\000"
.LASF25:
	.ascii	"__BIGGEST_ALIGNMENT__ 8\000"
.LASF989:
	.ascii	"FR_MKFS_ABORTED\000"
.LASF345:
	.ascii	"__TA_IBIT__ 64\000"
.LASF884:
	.ascii	"TBL_CT860 {0x80,0x9A,0x90,0x8F,0x8E,0x91,0x86,0x80,"
	.ascii	"0x89,0x89,0x92,0x8B,0x8C,0x98,0x8E,0x8F, 0x90,0x91,"
	.ascii	"0x92,0x8C,0x99,0xA9,0x96,0x9D,0x98,0x99,0x9A,0x9B,0"
	.ascii	"x9C,0x9D,0x9E,0x9F, 0x86,0x8B,0x9F,0x96,0xA5,0xA5,0"
	.ascii	"xA6,0xA7,0xA8,0xA9,0xAA,0xAB,0xAC,0xAD,0xAE,0xAF, 0"
	.ascii	"xB0,0xB1,0xB2,0xB3,0xB4,0xB5,0xB6,0xB7,0xB8,0xB9,0x"
	.ascii	"BA,0xBB,0xBC,0xBD,0xBE,0xBF, 0xC0,0xC1,0xC2,0xC3,0x"
	.ascii	"C4,0xC5,0xC6,0xC7,0xC8,0xC9,0xCA,0xCB,0xCC,0xCD,0xC"
	.ascii	"E,0xCF, 0xD0,0xD1,0xD2,0xD3,0xD4,0xD5,0xD6,0xD7,0xD"
	.ascii	"8,0xD9,0xDA,0xDB,0xDC,0xDD,0xDE,0xDF, 0xE0,0xE1,0xE"
	.ascii	"2,0xE3,0xE4,0xE5,0xE6,0xE7,0xE8,0xE9,0xEA,0xEB,0xEC"
	.ascii	",0xED,0xEE,0xEF, 0xF0,0xF1,0xF2,0xF3,0xF4,0xF5,0xF6"
	.ascii	",0xF7,0xF8,0xF9,0xFA,0xFB,0xFC,0xFD,0xFE,0xFF}\000"
.LASF560:
	.ascii	"__LEAST64 \"ll\"\000"
.LASF903:
	.ascii	"CODEPAGE FF_CODE_PAGE\000"
.LASF816:
	.ascii	"XDIR_ModTime 12\000"
.LASF384:
	.ascii	"__ARM_FEATURE_QRDMX\000"
.LASF971:
	.ascii	"fattrib\000"
.LASF767:
	.ascii	"BPB_BkBootSec32 50\000"
.LASF1075:
	.ascii	"dir_read\000"
.LASF409:
	.ascii	"__ARM_ARCH_ISA_THUMB 2\000"
.LASF72:
	.ascii	"__LONG_LONG_MAX__ 0x7fffffffffffffffLL\000"
.LASF85:
	.ascii	"__WINT_WIDTH__ 32\000"
.LASF476:
	.ascii	"FF_LBA64 0\000"
.LASF538:
	.ascii	"long\000"
.LASF1081:
	.ascii	"nent\000"
.LASF535:
	.ascii	"short\000"
.LASF831:
	.ascii	"RDDEM 0x05\000"
.LASF1014:
	.ascii	"disk_write\000"
.LASF480:
	.ascii	"FF_FS_EXFAT 1\000"
.LASF254:
	.ascii	"__UFRACT_IBIT__ 0\000"
.LASF923:
	.ascii	"WORD\000"
.LASF651:
	.ascii	"f_error(fp) ((fp)->err)\000"
.LASF105:
	.ascii	"__INT8_C(c) c\000"
.LASF259:
	.ascii	"__LFRACT_IBIT__ 0\000"
.LASF630:
	.ascii	"SIG_ATOMIC_MAX (__STDINT_EXP(INT_MAX))\000"
.LASF712:
	.ascii	"IsDigit(c) ((c) >= '0' && (c) <= '9')\000"
.LASF163:
	.ascii	"__DBL_MIN_EXP__ (-1021)\000"
.LASF817:
	.ascii	"XDIR_AccTime 16\000"
.LASF446:
	.ascii	"ARM_MATH_CM4 1\000"
.LASF365:
	.ascii	"__GCC_ATOMIC_CHAR32_T_LOCK_FREE 2\000"
.LASF814:
	.ascii	"XDIR_Attr 4\000"
.LASF984:
	.ascii	"FR_INVALID_OBJECT\000"
.LASF753:
	.ascii	"BPB_TotSec32 32\000"
.LASF1030:
	.ascii	"clst\000"
.LASF119:
	.ascii	"__UINT16_C(c) c\000"
.LASF646:
	.ascii	"UINTMAX_C(x) __UINTMAX_C(x)\000"
.LASF1055:
	.ascii	"tsect\000"
.LASF718:
	.ascii	"FA_SEEKEND 0x20\000"
.LASF529:
	.ascii	"__EXP\000"
.LASF596:
	.ascii	"INT16_MAX (__INT16_MAX__)\000"
.LASF524:
	.ascii	"___int64_t_defined 1\000"
.LASF189:
	.ascii	"__LDBL_HAS_DENORM__ 1\000"
.LASF898:
	.ascii	"MAXDIRB(nc) ((nc + 44U) / 15 * SZDIRE)\000"
.LASF522:
	.ascii	"___int16_t_defined 1\000"
.LASF936:
	.ascii	"n_rootdir\000"
.LASF290:
	.ascii	"__ACCUM_MIN__ (-0X1P15K-0X1P15K)\000"
.LASF382:
	.ascii	"__ARM_FEATURE_CRYPTO\000"
.LASF51:
	.ascii	"__INT_LEAST32_TYPE__ long int\000"
.LASF469:
	.ascii	"FF_FS_RPATH 0\000"
.LASF1024:
	.ascii	"dclst\000"
.LASF122:
	.ascii	"__UINT_LEAST64_MAX__ 0xffffffffffffffffULL\000"
.LASF249:
	.ascii	"__FRACT_IBIT__ 0\000"
.LASF969:
	.ascii	"fdate\000"
.LASF764:
	.ascii	"BPB_FSVer32 42\000"
.LASF497:
	.ascii	"__NEWLIB_PATCHLEVEL__ 0\000"
.LASF860:
	.ascii	"GPTH_PteSize 84\000"
.LASF862:
	.ascii	"SZ_GPTE 128\000"
.LASF26:
	.ascii	"__ORDER_LITTLE_ENDIAN__ 1234\000"
.LASF1127:
	.ascii	"size\000"
.LASF153:
	.ascii	"__FLT_NORM_MAX__ 3.4028234663852886e+38F\000"
.LASF873:
	.ascii	"SS(fs) ((UINT)FF_MAX_SS)\000"
.LASF916:
	.ascii	"long long unsigned int\000"
.LASF612:
	.ascii	"UINT_LEAST64_MAX (__UINT_LEAST64_MAX__)\000"
.LASF304:
	.ascii	"__ULACCUM_IBIT__ 32\000"
.LASF69:
	.ascii	"__SHRT_MAX__ 0x7fff\000"
.LASF615:
	.ascii	"UINT_FAST8_MAX (__UINT_FAST8_MAX__)\000"
.LASF317:
	.ascii	"__ULLACCUM_EPSILON__ 0x1P-32ULLK\000"
.LASF403:
	.ascii	"__APCS_32__ 1\000"
.LASF324:
	.ascii	"__DQ_FBIT__ 63\000"
.LASF510:
	.ascii	"__GNU_VISIBLE 0\000"
.LASF918:
	.ascii	"uint16_t\000"
.LASF867:
	.ascii	"GPTE_Flags 48\000"
.LASF331:
	.ascii	"__UHQ_IBIT__ 0\000"
.LASF885:
	.ascii	"TBL_CT861 {0x80,0x9A,0x90,0x41,0x8E,0x41,0x8F,0x80,"
	.ascii	"0x45,0x45,0x45,0x8B,0x8B,0x8D,0x8E,0x8F, 0x90,0x92,"
	.ascii	"0x92,0x4F,0x99,0x8D,0x55,0x97,0x97,0x99,0x9A,0x9D,0"
	.ascii	"x9C,0x9D,0x9E,0x9F, 0xA4,0xA5,0xA6,0xA7,0xA4,0xA5,0"
	.ascii	"xA6,0xA7,0xA8,0xA9,0xAA,0xAB,0xAC,0xAD,0xAE,0xAF, 0"
	.ascii	"xB0,0xB1,0xB2,0xB3,0xB4,0xB5,0xB6,0xB7,0xB8,0xB9,0x"
	.ascii	"BA,0xBB,0xBC,0xBD,0xBE,0xBF, 0xC0,0xC1,0xC2,0xC3,0x"
	.ascii	"C4,0xC5,0xC6,0xC7,0xC8,0xC9,0xCA,0xCB,0xCC,0xCD,0xC"
	.ascii	"E,0xCF, 0xD0,0xD1,0xD2,0xD3,0xD4,0xD5,0xD6,0xD7,0xD"
	.ascii	"8,0xD9,0xDA,0xDB,0xDC,0xDD,0xDE,0xDF, 0xE0,0xE1,0xE"
	.ascii	"2,0xE3,0xE4,0xE5,0xE6,0xE7,0xE8,0xE9,0xEA,0xEB,0xEC"
	.ascii	",0xED,0xEE,0xEF, 0xF0,0xF1,0xF2,0xF3,0xF4,0xF5,0xF6"
	.ascii	",0xF7,0xF8,0xF9,0xFA,0xFB,0xFC,0xFD,0xFE,0xFF}\000"
.LASF361:
	.ascii	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 1\000"
.LASF58:
	.ascii	"__INT_FAST16_TYPE__ int\000"
.LASF1136:
	.ascii	"ld_word\000"
.LASF280:
	.ascii	"__SACCUM_MIN__ (-0X1P7HK-0X1P7HK)\000"
.LASF266:
	.ascii	"__ULFRACT_MAX__ 0XFFFFFFFFP-32ULR\000"
.LASF54:
	.ascii	"__UINT_LEAST16_TYPE__ short unsigned int\000"
.LASF1086:
	.ascii	"xname_sum\000"
.LASF301:
	.ascii	"__LACCUM_MAX__ 0X7FFFFFFFFFFFFFFFP-31LK\000"
.LASF38:
	.ascii	"__CHAR16_TYPE__ short unsigned int\000"
.LASF880:
	.ascii	"TBL_CT850 {0x43,0x55,0x45,0x41,0x41,0x41,0x41,0x43,"
	.ascii	"0x45,0x45,0x45,0x49,0x49,0x49,0x41,0x41, 0x45,0x92,"
	.ascii	"0x92,0x4F,0x4F,0x4F,0x55,0x55,0x59,0x4F,0x55,0x4F,0"
	.ascii	"x9C,0x4F,0x9E,0x9F, 0x41,0x49,0x4F,0x55,0xA5,0xA5,0"
	.ascii	"xA6,0xA7,0xA8,0xA9,0xAA,0xAB,0xAC,0xAD,0xAE,0xAF, 0"
	.ascii	"xB0,0xB1,0xB2,0xB3,0xB4,0x41,0x41,0x41,0xB8,0xB9,0x"
	.ascii	"BA,0xBB,0xBC,0xBD,0xBE,0xBF, 0xC0,0xC1,0xC2,0xC3,0x"
	.ascii	"C4,0xC5,0x41,0x41,0xC8,0xC9,0xCA,0xCB,0xCC,0xCD,0xC"
	.ascii	"E,0xCF, 0xD1,0xD1,0x45,0x45,0x45,0x49,0x49,0x49,0x4"
	.ascii	"9,0xD9,0xDA,0xDB,0xDC,0xDD,0x49,0xDF, 0x4F,0xE1,0x4"
	.ascii	"F,0x4F,0x4F,0x4F,0xE6,0xE8,0xE8,0x55,0x55,0x55,0x59"
	.ascii	",0x59,0xEE,0xEF, 0xF0,0xF1,0xF2,0xF3,0xF4,0xF5,0xF6"
	.ascii	",0xF7,0xF8,0xF9,0xFA,0xFB,0xFC,0xFD,0xFE,0xFF}\000"
.LASF224:
	.ascii	"__FLT32X_DIG__ 15\000"
.LASF1033:
	.ascii	"f_closedir\000"
.LASF664:
	.ascii	"FA_OPEN_APPEND 0x30\000"
.LASF600:
	.ascii	"UINT_LEAST16_MAX (__UINT_LEAST16_MAX__)\000"
.LASF336:
	.ascii	"__UTQ_FBIT__ 128\000"
.LASF904:
	.ascii	"DIR_READ_FILE(dp) dir_read(dp, 0)\000"
.LASF312:
	.ascii	"__LLACCUM_EPSILON__ 0x1P-31LLK\000"
.LASF15:
	.ascii	"__FINITE_MATH_ONLY__ 0\000"
.LASF126:
	.ascii	"__INT_FAST16_MAX__ 0x7fffffff\000"
.LASF519:
	.ascii	"__have_longlong64 1\000"
.LASF268:
	.ascii	"__LLFRACT_FBIT__ 63\000"
.LASF827:
	.ascii	"XDIR_FstClus 52\000"
.LASF528:
	.ascii	"___int_least64_t_defined 1\000"
.LASF556:
	.ascii	"__FAST64 \"ll\"\000"
.LASF895:
	.ascii	"TBL_DC950 {0x81, 0xFE, 0x00, 0x00, 0x40, 0x7E, 0xA1"
	.ascii	", 0xFE, 0x00, 0x00}\000"
.LASF577:
	.ascii	"_UINTPTR_T_DECLARED \000"
.LASF990:
	.ascii	"FR_TIMEOUT\000"
.LASF955:
	.ascii	"n_cont\000"
.LASF306:
	.ascii	"__ULACCUM_MAX__ 0XFFFFFFFFFFFFFFFFP-32ULK\000"
.LASF108:
	.ascii	"__INT16_C(c) c\000"
.LASF944:
	.ascii	"volbase\000"
.LASF265:
	.ascii	"__ULFRACT_MIN__ 0.0ULR\000"
.LASF852:
	.ascii	"GPTH_Bcc 16\000"
.LASF628:
	.ascii	"SIZE_MAX (__SIZE_MAX__)\000"
.LASF1019:
	.ascii	"f_rename\000"
.LASF325:
	.ascii	"__DQ_IBIT__ 0\000"
.LASF439:
	.ascii	"__ARM_BF16_FORMAT_ALTERNATIVE\000"
.LASF43:
	.ascii	"__INT32_TYPE__ long int\000"
.LASF116:
	.ascii	"__UINT_LEAST8_MAX__ 0xff\000"
.LASF785:
	.ascii	"BPB_VolFlagEx 106\000"
.LASF864:
	.ascii	"GPTE_UpGuid 16\000"
.LASF544:
	.ascii	"__int20__ +2\000"
.LASF467:
	.ascii	"FF_LFN_BUF 255\000"
.LASF1103:
	.ascii	"ibuf\000"
.LASF581:
	.ascii	"__int_least64_t_defined 1\000"
.LASF571:
	.ascii	"_INT64_T_DECLARED \000"
.LASF1026:
	.ascii	"f_getfree\000"
.LASF687:
	.ascii	"GET_BLOCK_SIZE 3\000"
.LASF788:
	.ascii	"BPB_NumFATsEx 110\000"
.LASF722:
	.ascii	"AM_LFN 0x0F\000"
.LASF746:
	.ascii	"BPB_RootEntCnt 17\000"
.LASF1074:
	.ascii	"hash\000"
.LASF847:
	.ascii	"PTE_StLba 8\000"
.LASF1139:
	.ascii	"C:/Users/Cuba/Documents/uni/STM32/STM32L432KC/Debug"
	.ascii	"\000"
.LASF659:
	.ascii	"FA_WRITE 0x02\000"
.LASF337:
	.ascii	"__UTQ_IBIT__ 0\000"
.LASF953:
	.ascii	"sclust\000"
.LASF340:
	.ascii	"__SA_FBIT__ 15\000"
.LASF272:
	.ascii	"__LLFRACT_EPSILON__ 0x1P-63LLR\000"
.LASF230:
	.ascii	"__FLT32X_MAX__ 1.7976931348623157e+308F32x\000"
.LASF762:
	.ascii	"BPB_FATSz32 36\000"
.LASF487:
	.ascii	"FF_FS_REENTRANT 0\000"
.LASF856:
	.ascii	"GPTH_LstLba 48\000"
.LASF592:
	.ascii	"INT_LEAST8_MIN (-__INT_LEAST8_MAX__ - 1)\000"
.LASF201:
	.ascii	"__FLT32_MIN__ 1.1754943508222875e-38F32\000"
.LASF601:
	.ascii	"INT32_MIN (-__INT32_MAX__ - 1)\000"
.LASF407:
	.ascii	"__THUMBEL__ 1\000"
.LASF1001:
	.ascii	"RES_PARERR\000"
.LASF766:
	.ascii	"BPB_FSInfo32 48\000"
.LASF379:
	.ascii	"__ARM_FEATURE_DSP 1\000"
.LASF1079:
	.ascii	"nlen\000"
.LASF319:
	.ascii	"__QQ_IBIT__ 0\000"
.LASF655:
	.ascii	"f_rewinddir(dp) f_readdir((dp), 0)\000"
.LASF680:
	.ascii	"_DISKIO_DEFINED \000"
.LASF704:
	.ascii	"MAX_DIR 0x200000\000"
.LASF822:
	.ascii	"XDIR_AccTZ 24\000"
.LASF644:
	.ascii	"UINT64_C(x) __UINT64_C(x)\000"
.LASF308:
	.ascii	"__LLACCUM_FBIT__ 31\000"
.LASF597:
	.ascii	"UINT16_MAX (__UINT16_MAX__)\000"
.LASF150:
	.ascii	"__FLT_MAX_10_EXP__ 38\000"
.LASF594:
	.ascii	"UINT_LEAST8_MAX (__UINT_LEAST8_MAX__)\000"
.LASF333:
	.ascii	"__USQ_IBIT__ 0\000"
.LASF6:
	.ascii	"__GNUC_MINOR__ 3\000"
.LASF55:
	.ascii	"__UINT_LEAST32_TYPE__ long unsigned int\000"
.LASF838:
	.ascii	"SZ_PTE 16\000"
.LASF394:
	.ascii	"__ARM_FEATURE_NUMERIC_MAXMIN\000"
.LASF36:
	.ascii	"__INTMAX_TYPE__ long long int\000"
.LASF663:
	.ascii	"FA_OPEN_ALWAYS 0x10\000"
.LASF368:
	.ascii	"__GCC_ATOMIC_INT_LOCK_FREE 2\000"
.LASF679:
	.ascii	"AM_ARC 0x20\000"
.LASF1000:
	.ascii	"RES_NOTRDY\000"
.LASF905:
	.ascii	"DIR_READ_LABEL(dp) dir_read(dp, 1)\000"
.LASF705:
	.ascii	"MAX_DIR_EX 0x10000000\000"
.LASF870:
	.ascii	"LEAVE_FF(fs,res) return res\000"
.LASF380:
	.ascii	"__ARM_FEATURE_QBIT 1\000"
.LASF260:
	.ascii	"__LFRACT_MIN__ (-0.5LR-0.5LR)\000"
.LASF287:
	.ascii	"__USACCUM_EPSILON__ 0x1P-8UHK\000"
.LASF175:
	.ascii	"__DBL_HAS_QUIET_NAN__ 1\000"
.LASF222:
	.ascii	"__FLT64_HAS_QUIET_NAN__ 1\000"
.LASF618:
	.ascii	"UINT_FAST16_MAX (__UINT_FAST16_MAX__)\000"
.LASF471:
	.ascii	"FF_STR_VOLUME_ID 0\000"
.LASF271:
	.ascii	"__LLFRACT_MAX__ 0X7FFFFFFFFFFFFFFFP-63LLR\000"
.LASF606:
	.ascii	"UINT_LEAST32_MAX (__UINT_LEAST32_MAX__)\000"
.LASF281:
	.ascii	"__SACCUM_MAX__ 0X7FFFP-7HK\000"
.LASF65:
	.ascii	"__INTPTR_TYPE__ int\000"
.LASF853:
	.ascii	"GPTH_CurLba 24\000"
.LASF66:
	.ascii	"__UINTPTR_TYPE__ unsigned int\000"
.LASF665:
	.ascii	"CREATE_LINKMAP ((FSIZE_t)0 - 1)\000"
.LASF728:
	.ascii	"NS_LAST 0x04\000"
.LASF465:
	.ascii	"FF_MAX_LFN 255\000"
.LASF354:
	.ascii	"__REGISTER_PREFIX__ \000"
.LASF199:
	.ascii	"__FLT32_MAX__ 3.4028234663852886e+38F32\000"
.LASF162:
	.ascii	"__DBL_DIG__ 15\000"
.LASF267:
	.ascii	"__ULFRACT_EPSILON__ 0x1P-32ULR\000"
.LASF23:
	.ascii	"__SIZEOF_SIZE_T__ 4\000"
.LASF840:
	.ascii	"PTE_StHead 1\000"
.LASF1087:
	.ascii	"name\000"
.LASF48:
	.ascii	"__UINT64_TYPE__ long long unsigned int\000"
.LASF466:
	.ascii	"FF_LFN_UNICODE 0\000"
.LASF114:
	.ascii	"__INT64_C(c) c ## LL\000"
.LASF299:
	.ascii	"__LACCUM_IBIT__ 32\000"
.LASF472:
	.ascii	"FF_VOLUME_STRS \"RAM\",\"NAND\",\"CF\",\"SD\",\"SD2"
	.ascii	"\",\"USB\",\"USB2\",\"USB3\"\000"
.LASF604:
	.ascii	"INT_LEAST32_MIN (-__INT_LEAST32_MAX__ - 1)\000"
.LASF648:
	.ascii	"_T(x) x\000"
.LASF186:
	.ascii	"__LDBL_MIN__ 2.2250738585072014e-308L\000"
.LASF1093:
	.ascii	"put_lfn\000"
.LASF434:
	.ascii	"__ARM_FEATURE_CDE\000"
.LASF289:
	.ascii	"__ACCUM_IBIT__ 16\000"
.LASF1020:
	.ascii	"f_mkdir\000"
.LASF533:
	.ascii	"unsigned\000"
.LASF1092:
	.ascii	"sreg\000"
.LASF1013:
	.ascii	"disk_read\000"
.LASF1073:
	.ascii	"dir_find\000"
.LASF1031:
	.ascii	"f_stat\000"
.LASF681:
	.ascii	"STA_NOINIT 0x01\000"
.LASF908:
	.ascii	"short int\000"
.LASF841:
	.ascii	"PTE_StSec 2\000"
.LASF639:
	.ascii	"INT16_C(x) __INT16_C(x)\000"
.LASF954:
	.ascii	"objsize\000"
.LASF1017:
	.ascii	"path_old\000"
.LASF417:
	.ascii	"__ARM_FEATURE_FP16_SCALAR_ARITHMETIC\000"
.LASF653:
	.ascii	"f_size(fp) ((fp)->obj.objsize)\000"
.LASF1106:
	.ascii	"pclst\000"
.LASF351:
	.ascii	"__UDA_IBIT__ 32\000"
.LASF1050:
	.ascii	"mode\000"
.LASF950:
	.ascii	"FATFS\000"
.LASF357:
	.ascii	"__NO_INLINE__ 1\000"
.LASF676:
	.ascii	"AM_HID 0x02\000"
.LASF607:
	.ascii	"INT64_MIN (-__INT64_MAX__ - 1)\000"
.LASF948:
	.ascii	"bitbase\000"
.LASF809:
	.ascii	"XDIR_NumLabel 1\000"
.LASF9:
	.ascii	"__ATOMIC_RELAXED 0\000"
.LASF432:
	.ascii	"__ARM_FEATURE_COPROC\000"
.LASF553:
	.ascii	"__FAST8 \000"
.LASF174:
	.ascii	"__DBL_HAS_INFINITY__ 1\000"
.LASF93:
	.ascii	"__SIG_ATOMIC_MAX__ 0x7fffffff\000"
.LASF208:
	.ascii	"__FLT64_MANT_DIG__ 53\000"
.LASF1076:
	.ascii	"get_fileinfo\000"
.LASF946:
	.ascii	"dirbase\000"
.LASF1006:
	.ascii	"DirBuf\000"
.LASF20:
	.ascii	"__SIZEOF_FLOAT__ 4\000"
.LASF638:
	.ascii	"UINT8_C(x) __UINT8_C(x)\000"
.LASF751:
	.ascii	"BPB_NumHeads 26\000"
.LASF700:
	.ascii	"ISDIO_MRITE 57\000"
.LASF850:
	.ascii	"GPTH_Rev 8\000"
.LASF520:
	.ascii	"__have_long32 1\000"
.LASF1114:
	.ascii	"cofs\000"
.LASF512:
	.ascii	"__LARGEFILE_VISIBLE 0\000"
.LASF652:
	.ascii	"f_tell(fp) ((fp)->fptr)\000"
.LASF97:
	.ascii	"__INT16_MAX__ 0x7fff\000"
.LASF81:
	.ascii	"__INT_WIDTH__ 32\000"
.LASF395:
	.ascii	"__ARM_FEATURE_SIMD32 1\000"
.LASF996:
	.ascii	"DSTATUS\000"
.LASF516:
	.ascii	"__XSI_VISIBLE 0\000"
.LASF1036:
	.ascii	"nsect\000"
.LASF768:
	.ascii	"BS_DrvNum32 64\000"
.LASF318:
	.ascii	"__QQ_FBIT__ 7\000"
.LASF1101:
	.ascii	"dir_sdi\000"
.LASF725:
	.ascii	"NSFLAG 11\000"
.LASF1120:
	.ascii	"put_utf\000"
.LASF95:
	.ascii	"__SIG_ATOMIC_WIDTH__ 32\000"
.LASF218:
	.ascii	"__FLT64_EPSILON__ 2.2204460492503131e-16F64\000"
.LASF654:
	.ascii	"f_rewind(fp) f_lseek((fp), 0)\000"
.LASF499:
	.ascii	"__GNUC_PREREQ__(ma,mi) __GNUC_PREREQ(ma, mi)\000"
.LASF803:
	.ascii	"LDIR_Ord 0\000"
.LASF353:
	.ascii	"__UTA_IBIT__ 64\000"
.LASF1032:
	.ascii	"f_readdir\000"
.LASF871:
	.ascii	"LD2PD(vol) (BYTE)(vol)\000"
.LASF749:
	.ascii	"BPB_FATSz16 22\000"
.LASF277:
	.ascii	"__ULLFRACT_EPSILON__ 0x1P-64ULLR\000"
.LASF491:
	.ascii	"_MACHINE__DEFAULT_TYPES_H \000"
.LASF760:
	.ascii	"BS_BootCode 62\000"
.LASF377:
	.ascii	"__SIZEOF_WINT_T__ 4\000"
.LASF383:
	.ascii	"__ARM_FEATURE_UNALIGNED 1\000"
.LASF270:
	.ascii	"__LLFRACT_MIN__ (-0.5LLR-0.5LLR)\000"
.LASF183:
	.ascii	"__LDBL_DECIMAL_DIG__ 17\000"
.LASF855:
	.ascii	"GPTH_FstLba 40\000"
.LASF1094:
	.ascii	"pick_lfn\000"
.LASF756:
	.ascii	"BS_BootSig 38\000"
.LASF193:
	.ascii	"__FLT32_DIG__ 6\000"
.LASF427:
	.ascii	"__ARM_EABI__ 1\000"
.LASF204:
	.ascii	"__FLT32_HAS_DENORM__ 1\000"
.LASF172:
	.ascii	"__DBL_DENORM_MIN__ ((double)4.9406564584124654e-324"
	.ascii	"L)\000"
.LASF315:
	.ascii	"__ULLACCUM_MIN__ 0.0ULLK\000"
.LASF129:
	.ascii	"__INT_FAST32_WIDTH__ 32\000"
.LASF366:
	.ascii	"__GCC_ATOMIC_WCHAR_T_LOCK_FREE 2\000"
.LASF473:
	.ascii	"FF_MULTI_PARTITION 0\000"
.LASF800:
	.ascii	"DIR_ModTime 22\000"
.LASF551:
	.ascii	"__INT32 \"l\"\000"
.LASF431:
	.ascii	"__ARM_ASM_SYNTAX_UNIFIED__ 1\000"
.LASF747:
	.ascii	"BPB_TotSec16 19\000"
.LASF47:
	.ascii	"__UINT32_TYPE__ long unsigned int\000"
.LASF602:
	.ascii	"INT32_MAX (__INT32_MAX__)\000"
.LASF386:
	.ascii	"__ARM_FEATURE_DOTPROD\000"
.LASF1034:
	.ascii	"f_opendir\000"
.LASF456:
	.ascii	"FF_USE_CHMOD 0\000"
.LASF692:
	.ascii	"CTRL_FORMAT 8\000"
.LASF500:
	.ascii	"_DEFAULT_SOURCE\000"
.LASF426:
	.ascii	"__ARM_PCS_VFP 1\000"
.LASF976:
	.ascii	"FR_DISK_ERR\000"
.LASF805:
	.ascii	"LDIR_Type 12\000"
.LASF275:
	.ascii	"__ULLFRACT_MIN__ 0.0ULLR\000"
.LASF562:
	.ascii	"_INT8_T_DECLARED \000"
.LASF568:
	.ascii	"_INT32_T_DECLARED \000"
.LASF16:
	.ascii	"__SIZEOF_INT__ 4\000"
.LASF832:
	.ascii	"LLEF 0x40\000"
.LASF269:
	.ascii	"__LLFRACT_IBIT__ 0\000"
.LASF640:
	.ascii	"UINT16_C(x) __UINT16_C(x)\000"
.LASF536:
	.ascii	"__int20\000"
.LASF452:
	.ascii	"FF_USE_FIND 0\000"
.LASF919:
	.ascii	"uint32_t\000"
.LASF530:
	.ascii	"_SYS__INTSUP_H \000"
.LASF1125:
	.ascii	"str_chr\000"
.LASF282:
	.ascii	"__SACCUM_EPSILON__ 0x1P-7HK\000"
.LASF404:
	.ascii	"__GCC_ASM_FLAG_OUTPUTS__ 1\000"
.LASF376:
	.ascii	"__SIZEOF_WCHAR_T__ 4\000"
.LASF623:
	.ascii	"INT_FAST64_MAX (__INT_FAST64_MAX__)\000"
.LASF413:
	.ascii	"__ARM_FP 4\000"
.LASF488:
	.ascii	"FF_FS_TIMEOUT 1000\000"
.LASF794:
	.ascii	"DIR_Attr 11\000"
.LASF458:
	.ascii	"FF_USE_FORWARD 0\000"
.LASF62:
	.ascii	"__UINT_FAST16_TYPE__ unsigned int\000"
.LASF347:
	.ascii	"__UHA_IBIT__ 8\000"
.LASF707:
	.ascii	"MAX_FAT16 0xFFF5\000"
.LASF669:
	.ascii	"FM_ANY 0x07\000"
.LASF292:
	.ascii	"__ACCUM_EPSILON__ 0x1P-15K\000"
.LASF307:
	.ascii	"__ULACCUM_EPSILON__ 0x1P-32ULK\000"
.LASF338:
	.ascii	"__HA_FBIT__ 7\000"
.LASF177:
	.ascii	"__LDBL_DIG__ 15\000"
.LASF1096:
	.ascii	"st_clust\000"
.LASF806:
	.ascii	"LDIR_Chksum 13\000"
.LASF87:
	.ascii	"__SIZE_WIDTH__ 32\000"
.LASF484:
	.ascii	"FF_NORTC_YEAR 2022\000"
.LASF975:
	.ascii	"FR_OK\000"
.LASF449:
	.ascii	"FF_FAST_STM32 1\000"
.LASF76:
	.ascii	"__WINT_MIN__ 0U\000"
.LASF693:
	.ascii	"MMC_GET_TYPE 10\000"
.LASF209:
	.ascii	"__FLT64_DIG__ 15\000"
.LASF548:
	.ascii	"_INT32_EQ_LONG \000"
.LASF75:
	.ascii	"__WINT_MAX__ 0xffffffffU\000"
.LASF688:
	.ascii	"CTRL_TRIM 4\000"
.LASF106:
	.ascii	"__INT_LEAST8_WIDTH__ 8\000"
.LASF558:
	.ascii	"__LEAST16 \"h\"\000"
.LASF50:
	.ascii	"__INT_LEAST16_TYPE__ short int\000"
.LASF1008:
	.ascii	"ExCvt\000"
.LASF796:
	.ascii	"DIR_CrtTime10 13\000"
.LASF734:
	.ascii	"ET_BITMAP 0x81\000"
.LASF168:
	.ascii	"__DBL_MAX__ ((double)1.7976931348623157e+308L)\000"
.LASF909:
	.ascii	"short unsigned int\000"
.LASF983:
	.ascii	"FR_EXIST\000"
.LASF205:
	.ascii	"__FLT32_HAS_INFINITY__ 1\000"
.LASF877:
	.ascii	"TBL_CT737 {0x80,0x81,0x82,0x83,0x84,0x85,0x86,0x87,"
	.ascii	"0x88,0x89,0x8A,0x8B,0x8C,0x8D,0x8E,0x8F, 0x90,0x92,"
	.ascii	"0x92,0x93,0x94,0x95,0x96,0x97,0x80,0x81,0x82,0x83,0"
	.ascii	"x84,0x85,0x86,0x87, 0x88,0x89,0x8A,0x8B,0x8C,0x8D,0"
	.ascii	"x8E,0x8F,0x90,0x91,0xAA,0x92,0x93,0x94,0x95,0x96, 0"
	.ascii	"xB0,0xB1,0xB2,0xB3,0xB4,0xB5,0xB6,0xB7,0xB8,0xB9,0x"
	.ascii	"BA,0xBB,0xBC,0xBD,0xBE,0xBF, 0xC0,0xC1,0xC2,0xC3,0x"
	.ascii	"C4,0xC5,0xC6,0xC7,0xC8,0xC9,0xCA,0xCB,0xCC,0xCD,0xC"
	.ascii	"E,0xCF, 0xD0,0xD1,0xD2,0xD3,0xD4,0xD5,0xD6,0xD7,0xD"
	.ascii	"8,0xD9,0xDA,0xDB,0xDC,0xDD,0xDE,0xDF, 0x97,0xEA,0xE"
	.ascii	"B,0xEC,0xE4,0xED,0xEE,0xEF,0xF5,0xF0,0xEA,0xEB,0xEC"
	.ascii	",0xED,0xEE,0xEF, 0xF0,0xF1,0xF2,0xF3,0xF4,0xF5,0xF6"
	.ascii	",0xF7,0xF8,0xF9,0xFA,0xFB,0xFC,0xFD,0xFE,0xFF}\000"
.LASF1044:
	.ascii	"wbuff\000"
.LASF1082:
	.ascii	"load_obj_xdir\000"
.LASF410:
	.ascii	"__ARMEL__ 1\000"
.LASF866:
	.ascii	"GPTE_LstLba 40\000"
.LASF711:
	.ascii	"IsLower(c) ((c) >= 'a' && (c) <= 'z')\000"
.LASF839:
	.ascii	"PTE_Boot 0\000"
.LASF320:
	.ascii	"__HQ_FBIT__ 15\000"
.LASF291:
	.ascii	"__ACCUM_MAX__ 0X7FFFFFFFP-15K\000"
.LASF720:
	.ascii	"FA_DIRTY 0x80\000"
.LASF78:
	.ascii	"__SIZE_MAX__ 0xffffffffU\000"
.LASF742:
	.ascii	"BPB_BytsPerSec 11\000"
.LASF930:
	.ascii	"fs_type\000"
.LASF784:
	.ascii	"BPB_FSVerEx 104\000"
.LASF902:
	.ascii	"LEAVE_MKFS(res) return res\000"
.LASF401:
	.ascii	"__ARM_ARCH\000"
.LASF591:
	.ascii	"UINT8_MAX (__UINT8_MAX__)\000"
.LASF71:
	.ascii	"__LONG_MAX__ 0x7fffffffL\000"
.LASF851:
	.ascii	"GPTH_Size 12\000"
.LASF578:
	.ascii	"__int_least8_t_defined 1\000"
.LASF988:
	.ascii	"FR_NO_FILESYSTEM\000"
.LASF1016:
	.ascii	"ff_oem2uni\000"
.LASF546:
	.ascii	"long +4\000"
.LASF772:
	.ascii	"BS_VolLab32 71\000"
.LASF1048:
	.ascii	"rbuff\000"
.LASF418:
	.ascii	"__ARM_FEATURE_FP16_VECTOR_ARITHMETIC\000"
.LASF677:
	.ascii	"AM_SYS 0x04\000"
.LASF392:
	.ascii	"__ARM_FEATURE_LDREX 7\000"
.LASF775:
	.ascii	"BPB_ZeroedEx 11\000"
.LASF32:
	.ascii	"__SIZE_TYPE__ unsigned int\000"
.LASF1009:
	.ascii	"disk_initialize\000"
.LASF332:
	.ascii	"__USQ_FBIT__ 32\000"
.LASF750:
	.ascii	"BPB_SecPerTrk 24\000"
.LASF241:
	.ascii	"__SFRACT_MAX__ 0X7FP-7HR\000"
.LASF223:
	.ascii	"__FLT32X_MANT_DIG__ 53\000"
.LASF686:
	.ascii	"GET_SECTOR_SIZE 2\000"
.LASF494:
	.ascii	"_NEWLIB_VERSION \"4.1.0\"\000"
.LASF84:
	.ascii	"__WCHAR_WIDTH__ 32\000"
.LASF719:
	.ascii	"FA_MODIFIED 0x40\000"
.LASF1046:
	.ascii	"remain\000"
.LASF660:
	.ascii	"FA_OPEN_EXISTING 0x00\000"
.LASF343:
	.ascii	"__DA_IBIT__ 32\000"
.LASF86:
	.ascii	"__PTRDIFF_WIDTH__ 32\000"
.LASF1083:
	.ascii	"init_alloc_info\000"
.LASF542:
	.ascii	"short +1\000"
.LASF1109:
	.ascii	"fill_first_frag\000"
.LASF13:
	.ascii	"__ATOMIC_ACQ_REL 4\000"
.LASF934:
	.ascii	"wflag\000"
.LASF674:
	.ascii	"FS_EXFAT 4\000"
.LASF164:
	.ascii	"__DBL_MIN_10_EXP__ (-307)\000"
.LASF273:
	.ascii	"__ULLFRACT_FBIT__ 64\000"
.LASF613:
	.ascii	"INT_FAST8_MIN (-__INT_FAST8_MAX__ - 1)\000"
.LASF563:
	.ascii	"_UINT8_T_DECLARED \000"
.LASF741:
	.ascii	"BS_OEMName 3\000"
.LASF1043:
	.ascii	"csect\000"
.LASF858:
	.ascii	"GPTH_PtOfs 72\000"
.LASF1062:
	.ascii	"part\000"
.LASF200:
	.ascii	"__FLT32_NORM_MAX__ 3.4028234663852886e+38F32\000"
.LASF709:
	.ascii	"MAX_EXFAT 0x7FFFFFFD\000"
.LASF980:
	.ascii	"FR_NO_PATH\000"
.LASF586:
	.ascii	"INTPTR_MIN (-__INTPTR_MAX__ - 1)\000"
.LASF863:
	.ascii	"GPTE_PtGuid 0\000"
.LASF882:
	.ascii	"TBL_CT855 {0x81,0x81,0x83,0x83,0x85,0x85,0x87,0x87,"
	.ascii	"0x89,0x89,0x8B,0x8B,0x8D,0x8D,0x8F,0x8F, 0x91,0x91,"
	.ascii	"0x93,0x93,0x95,0x95,0x97,0x97,0x99,0x99,0x9B,0x9B,0"
	.ascii	"x9D,0x9D,0x9F,0x9F, 0xA1,0xA1,0xA3,0xA3,0xA5,0xA5,0"
	.ascii	"xA7,0xA7,0xA9,0xA9,0xAB,0xAB,0xAD,0xAD,0xAE,0xAF, 0"
	.ascii	"xB0,0xB1,0xB2,0xB3,0xB4,0xB6,0xB6,0xB8,0xB8,0xB9,0x"
	.ascii	"BA,0xBB,0xBC,0xBE,0xBE,0xBF, 0xC0,0xC1,0xC2,0xC3,0x"
	.ascii	"C4,0xC5,0xC7,0xC7,0xC8,0xC9,0xCA,0xCB,0xCC,0xCD,0xC"
	.ascii	"E,0xCF, 0xD1,0xD1,0xD3,0xD3,0xD5,0xD5,0xD7,0xD7,0xD"
	.ascii	"D,0xD9,0xDA,0xDB,0xDC,0xDD,0xE0,0xDF, 0xE0,0xE2,0xE"
	.ascii	"2,0xE4,0xE4,0xE6,0xE6,0xE8,0xE8,0xEA,0xEA,0xEC,0xEC"
	.ascii	",0xEE,0xEE,0xEF, 0xF0,0xF2,0xF2,0xF4,0xF4,0xF6,0xF6"
	.ascii	",0xF8,0xF8,0xFA,0xFA,0xFC,0xFC,0xFD,0xFE,0xFF}\000"
.LASF504:
	.ascii	"_POSIX_C_SOURCE\000"
.LASF90:
	.ascii	"__UINTMAX_MAX__ 0xffffffffffffffffULL\000"
.LASF161:
	.ascii	"__DBL_MANT_DIG__ 53\000"
.LASF264:
	.ascii	"__ULFRACT_IBIT__ 0\000"
.LASF974:
	.ascii	"FILINFO\000"
.LASF959:
	.ascii	"c_ofs\000"
.LASF645:
	.ascii	"INTMAX_C(x) __INTMAX_C(x)\000"
.LASF818:
	.ascii	"XDIR_CrtTime10 20\000"
.LASF70:
	.ascii	"__INT_MAX__ 0x7fffffff\000"
.LASF886:
	.ascii	"TBL_CT862 {0x80,0x81,0x82,0x83,0x84,0x85,0x86,0x87,"
	.ascii	"0x88,0x89,0x8A,0x8B,0x8C,0x8D,0x8E,0x8F, 0x90,0x91,"
	.ascii	"0x92,0x93,0x94,0x95,0x96,0x97,0x98,0x99,0x9A,0x9B,0"
	.ascii	"x9C,0x9D,0x9E,0x9F, 0x41,0x49,0x4F,0x55,0xA5,0xA5,0"
	.ascii	"xA6,0xA7,0xA8,0xA9,0xAA,0xAB,0xAC,0xAD,0xAE,0xAF, 0"
	.ascii	"xB0,0xB1,0xB2,0xB3,0xB4,0xB5,0xB6,0xB7,0xB8,0xB9,0x"
	.ascii	"BA,0xBB,0xBC,0xBD,0xBE,0xBF, 0xC0,0xC1,0xC2,0xC3,0x"
	.ascii	"C4,0xC5,0xC6,0xC7,0xC8,0xC9,0xCA,0xCB,0xCC,0xCD,0xC"
	.ascii	"E,0xCF, 0xD0,0xD1,0xD2,0xD3,0xD4,0xD5,0xD6,0xD7,0xD"
	.ascii	"8,0xD9,0xDA,0xDB,0xDC,0xDD,0xDE,0xDF, 0xE0,0xE1,0xE"
	.ascii	"2,0xE3,0xE4,0xE5,0xE6,0xE7,0xE8,0xE9,0xEA,0xEB,0xEC"
	.ascii	",0xED,0xEE,0xEF, 0xF0,0xF1,0xF2,0xF3,0xF4,0xF5,0xF6"
	.ascii	",0xF7,0xF8,0xF9,0xFA,0xFB,0xFC,0xFD,0xFE,0xFF}\000"
.LASF1070:
	.ascii	"last\000"
.LASF815:
	.ascii	"XDIR_CrtTime 8\000"
.LASF435:
	.ascii	"__ARM_FEATURE_CDE_COPROC\000"
.LASF513:
	.ascii	"__MISC_VISIBLE 1\000"
.LASF234:
	.ascii	"__FLT32X_DENORM_MIN__ 4.9406564584124654e-324F32x\000"
.LASF8:
	.ascii	"__VERSION__ \"10.3.1 20210824 (release)\"\000"
	.ident	"GCC: (GNU Tools for STM32 10.3-2021.10.20211105-1100) 10.3.1 20210824 (release)"

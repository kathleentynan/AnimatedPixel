	.cpu arm7tdmi
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.arm
	.syntax divided
	.file	"main.c"
	.text
	.align	2
	.global	drawHead
	.type	drawHead, %function
drawHead:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L71
	ldr	r0, [r3]
	stmfd	sp!, {r4, r5, r6, lr}
	add	ip, r0, #61440
	add	lr, r0, #64768
	ldr	r1, .L71+4
	add	ip, ip, #168
	add	lr, lr, #200
.L2:
	mov	r3, ip
	add	r2, ip, #20
.L3:
	strh	r1, [r3, #2]!	@ movhi
	cmp	r3, r2
	bne	.L3
	add	ip, ip, #480
	cmp	ip, lr
	bne	.L2
	add	r2, r0, #60928
	add	lr, r0, #55808
	ldr	r1, .L71+4
	add	ip, r2, #200
	add	lr, lr, #18
	add	r2, r2, #224
.L6:
	mov	r3, ip
.L5:
	strh	r1, [r3], #2	@ movhi
	cmp	r2, r3
	bne	.L5
	sub	ip, ip, #480
	sub	ip, ip, #2
	sub	r2, r2, #476
	cmp	ip, lr
	sub	r2, r2, #2
	bne	.L6
	add	ip, r0, #46592
	add	lr, r0, #56064
	ldr	r1, .L71+4
	add	ip, ip, #112
	add	lr, lr, #240
.L9:
	mov	r3, ip
	add	r2, ip, #68
.L8:
	strh	r1, [r3, #2]!	@ movhi
	cmp	r3, r2
	bne	.L8
	add	ip, ip, #480
	cmp	ip, lr
	bne	.L9
	add	r2, r0, #46080
	add	lr, r0, #38912
	ldr	r1, .L71+4
	add	ip, r2, #146
	add	lr, lr, #144
	add	r2, r2, #214
.L12:
	mov	r3, ip
.L11:
	strh	r1, [r3], #2	@ movhi
	cmp	r2, r3
	bne	.L11
	sub	ip, ip, #476
	sub	ip, ip, #2
	sub	r2, r2, #480
	cmp	ip, lr
	sub	r2, r2, #2
	bne	.L12
	add	lr, r0, #69632
	add	r4, r0, #80896
	ldr	r1, .L71+8
	add	ip, lr, #112
	add	r4, r4, #848
.L15:
	mov	r3, ip
	add	r2, ip, #70
.L14:
	strh	r1, [r3, #2]!	@ movhi
	cmp	r3, r2
	bne	.L14
	add	ip, ip, #480
	cmp	ip, r4
	bne	.L15
	add	r4, r0, #64256
	ldr	r1, .L71+8
	add	r4, r4, #218
	add	ip, lr, #100
	add	r2, lr, #196
.L18:
	mov	r3, ip
.L17:
	strh	r1, [r3], #2	@ movhi
	cmp	r2, r3
	bne	.L17
	sub	ip, ip, #476
	sub	ip, ip, #2
	sub	r2, r2, #480
	cmp	ip, r4
	sub	r2, r2, #2
	bne	.L18
	add	r4, r0, #71680
	ldr	r1, .L71+4
	add	r5, r4, #448
	add	ip, lr, #96
.L21:
	mov	r3, ip
	add	r2, ip, #16
.L20:
	strh	r1, [r3, #2]!	@ movhi
	cmp	r3, r2
	bne	.L20
	add	ip, ip, #480
	cmp	ip, r5
	bne	.L21
	ldr	r5, .L71+12
	ldr	r6, .L71+16
	ldr	ip, .L71+4
	add	r5, r0, r5
	add	r6, r0, r6
.L24:
	mov	r3, r5
	add	r1, r5, #4736
	add	r1, r1, #44
.L23:
	add	r2, r3, #476
	strh	ip, [r3]	@ movhi
	add	r3, r2, #2
	cmp	r1, r3
	bne	.L23
	add	r5, r5, #2
	cmp	r5, r6
	bne	.L24
	ldr	ip, .L71+20
	ldr	r1, .L71+4
	add	lr, lr, #182
	add	ip, r0, ip
.L27:
	mov	r3, lr
	add	r2, lr, #16
.L26:
	strh	r1, [r3, #2]!	@ movhi
	cmp	r2, r3
	bne	.L26
	add	lr, lr, #480
	cmp	lr, ip
	bne	.L27
	ldr	r0, .L71+4
	add	ip, r4, #536
	add	r4, r4, #552
.L30:
	mov	r3, ip
	add	r1, ip, #4800
	add	r1, r1, #20
.L29:
	add	r2, r3, #480
	strh	r0, [r3]	@ movhi
	add	r3, r2, #2
	cmp	r1, r3
	bne	.L29
	add	ip, ip, #2
	cmp	ip, r4
	bne	.L30
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L72:
	.align	2
.L71:
	.word	.LANCHOR0
	.word	21277
	.word	16582
	.word	72130
	.word	72146
	.word	72214
	.size	drawHead, .-drawHead
	.align	2
	.global	drawRect
	.type	drawRect, %function
drawRect:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}
	cmp	r2, #0
	ldrh	ip, [sp, #12]
	ble	.L73
	mov	r4, #0
	ldr	lr, .L82
	rsb	r0, r0, r0, lsl #4
	ldr	lr, [lr]
	add	r0, r1, r0, lsl #4
	add	lr, lr, r0, lsl #1
	mov	r5, r3, asl #1
.L77:
	cmp	r3, #0
	ble	.L78
	mov	r1, lr
	add	r0, lr, r5
.L76:
	strh	ip, [r1], #2	@ movhi
	cmp	r1, r0
	bne	.L76
.L78:
	add	r4, r4, #1
	cmp	r2, r4
	add	lr, lr, #480
	bne	.L77
.L73:
	ldmfd	sp!, {r4, r5, lr}
	bx	lr
.L83:
	.align	2
.L82:
	.word	.LANCHOR0
	.size	drawRect, .-drawRect
	.align	2
	.global	drawCurveR
	.type	drawCurveR, %function
drawCurveR:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	cmp	r3, #0
	ldrh	r9, [sp, #32]
	ble	.L84
	mov	r7, #0
	ldr	ip, .L98
	ldr	r8, [ip]
.L91:
	cmp	r2, #0
	movgt	r6, r1
	movgt	r5, r0
	movgt	lr, #0
	bgt	.L90
	b	.L93
.L97:
	cmp	lr, #0
	rsbeq	r10, r5, r5, lsl #4
	addeq	r10, r6, r10, lsl #4
	addeq	r10, r10, r7
	moveq	r10, r10, asl #1
	add	r5, r5, #1
	streqh	r9, [r8, r10]	@ movhi
	add	r10, r5, lr
	rsb	r10, r10, r10, lsl #4
	add	r4, r4, r10, lsl #4
	add	lr, lr, #1
	mov	r4, r4, asl #1
	cmp	r2, lr
	strh	r9, [r8, ip]	@ movhi
	strh	r9, [r8, r4]	@ movhi
	beq	.L93
.L90:
	add	ip, r5, lr
	add	r4, r6, lr
	add	r4, r4, r7
	rsb	ip, ip, ip, lsl #4
	add	ip, r4, ip, lsl #4
	tst	lr, #1
	mov	ip, ip, asl #1
	beq	.L97
	add	r10, r6, lr
	add	ip, r5, lr
	add	r6, r6, #1
	add	r4, r6, lr
	rsb	ip, ip, ip, lsl #4
	mov	ip, ip, asl #4
	add	r4, r4, r7
	add	r10, r10, r7
	add	r10, r10, ip
	add	lr, lr, #1
	add	ip, r4, ip
	mov	ip, ip, asl #1
	mov	r4, r10, asl #1
	cmp	r2, lr
	strh	r9, [r8, r4]	@ movhi
	strh	r9, [r8, ip]	@ movhi
	bne	.L90
.L93:
	add	r7, r7, #1
	cmp	r3, r7
	bne	.L91
.L84:
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L99:
	.align	2
.L98:
	.word	.LANCHOR0
	.size	drawCurveR, .-drawCurveR
	.align	2
	.global	drawCurveL
	.type	drawCurveL, %function
drawCurveL:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	cmp	r3, #0
	ldrh	r9, [sp, #32]
	ble	.L100
	mov	r7, #0
	ldr	ip, .L115
	ldr	r8, [ip]
.L107:
	cmp	r2, #0
	movgt	r5, r1
	movgt	r6, r0
	movgt	ip, #0
	bgt	.L106
	b	.L109
.L114:
	cmp	ip, #0
	beq	.L113
.L104:
	add	r4, r6, ip
	add	r6, r6, #1
	add	r10, r6, ip
	rsb	r4, r4, r4, lsl #4
	rsb	r10, r10, r10, lsl #4
	add	r4, lr, r4, lsl #4
	add	ip, ip, #1
	add	lr, lr, r10, lsl #4
	mov	r4, r4, asl #1
	mov	lr, lr, asl #1
	cmp	r2, ip
	strh	r9, [r8, r4]	@ movhi
	strh	r9, [r8, lr]	@ movhi
	beq	.L109
.L106:
	rsb	lr, ip, r5
	tst	ip, #1
	rsb	lr, r7, lr
	beq	.L114
	add	lr, r6, ip
	rsb	r4, ip, r5
	sub	r5, r5, #1
	rsb	r10, lr, lr, lsl #4
	rsb	lr, ip, r5
	mov	r10, r10, asl #4
	rsb	r4, r7, r4
	rsb	lr, r7, lr
	add	r4, r4, r10
	add	lr, lr, r10
	add	ip, ip, #1
	mov	r4, r4, asl #1
	mov	lr, lr, asl #1
	cmp	r2, ip
	strh	r9, [r8, r4]	@ movhi
	strh	r9, [r8, lr]	@ movhi
	bne	.L106
.L109:
	add	r7, r7, #1
	cmp	r3, r7
	bne	.L107
.L100:
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L113:
	rsb	r4, r6, r6, lsl #4
	add	r4, r5, r4, lsl #4
	add	r4, r4, r7
	mov	r4, r4, asl #1
	strh	r9, [r8, r4]	@ movhi
	add	r6, r6, #1
	b	.L104
.L116:
	.align	2
.L115:
	.word	.LANCHOR0
	.size	drawCurveL, .-drawCurveL
	.align	2
	.global	drawLetsParty
	.type	drawLetsParty, %function
drawLetsParty:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, lr}
	ldr	r5, .L281
	ldr	r2, [r5]
	mov	r4, r0
	add	r3, r2, #9600
	add	r0, r2, #19200
	sub	sp, sp, #12
	add	r3, r3, #40
	add	r1, r0, #40
.L118:
	strh	r4, [r3]	@ movhi
	strh	r4, [r3, #2]	@ movhi
	strh	r4, [r3, #4]	@ movhi
	add	r3, r3, #480
	cmp	r3, r1
	bne	.L118
	add	ip, r2, #17664
	add	lr, ip, #140
	add	r6, r0, #44
.L121:
	mov	r3, lr
	add	r1, lr, #20
.L120:
	strh	r4, [r3, #2]!	@ movhi
	cmp	r1, r3
	bne	.L120
	add	lr, lr, #480
	cmp	lr, r6
	bne	.L121
	add	lr, r2, #9664
	add	r3, lr, #12
	add	r1, r0, #76
.L123:
	strh	r4, [r3]	@ movhi
	strh	r4, [r3, #2]	@ movhi
	strh	r4, [r3, #4]	@ movhi
	add	r3, r3, #480
	cmp	r1, r3
	bne	.L123
	add	ip, ip, #176
	add	r6, r0, #80
.L126:
	mov	r3, ip
	add	r1, ip, #20
.L125:
	strh	r4, [r3, #2]!	@ movhi
	cmp	r1, r3
	bne	.L125
	add	ip, ip, #480
	cmp	ip, r6
	bne	.L126
	add	ip, r2, #13504
	add	r6, r2, #14912
	add	ip, ip, #16
	add	r6, r6, #48
.L129:
	mov	r3, ip
	add	r1, ip, #20
.L128:
	strh	r4, [r3, #2]!	@ movhi
	cmp	r1, r3
	bne	.L128
	add	ip, ip, #480
	cmp	ip, r6
	bne	.L129
	add	r6, r2, #11072
	add	r6, r6, #48
	add	ip, lr, #16
.L132:
	mov	r3, ip
	add	r1, ip, #20
.L131:
	strh	r4, [r3, #2]!	@ movhi
	cmp	r1, r3
	bne	.L131
	add	ip, ip, #480
	cmp	ip, r6
	bne	.L132
	add	r1, r2, #11136
	add	lr, lr, #46
	add	r6, r1, #14
.L135:
	mov	r3, lr
	add	ip, lr, #38
.L134:
	strh	r4, [r3, #2]!	@ movhi
	cmp	ip, r3
	bne	.L134
	add	lr, lr, #480
	cmp	lr, r6
	bne	.L135
	add	r3, r1, #32
	add	r1, r0, #128
.L137:
	strh	r4, [r3]	@ movhi
	strh	r4, [r3, #2]	@ movhi
	strh	r4, [r3, #4]	@ movhi
	add	r3, r3, #480
	cmp	r3, r1
	bne	.L137
	add	lr, r2, #9728
	add	r3, lr, #32
	add	r1, r2, #12160
.L138:
	strh	r4, [r3]	@ movhi
	strh	r4, [r3, #2]	@ movhi
	strh	r4, [r3, #4]	@ movhi
	add	r3, r3, #480
	cmp	r1, r3
	bne	.L138
	add	r1, r2, #11200
	add	lr, lr, #46
	add	r6, r1, #14
.L141:
	mov	r3, lr
	add	ip, lr, #32
.L140:
	strh	r4, [r3, #2]!	@ movhi
	cmp	ip, r3
	bne	.L140
	add	lr, lr, #480
	cmp	lr, r6
	bne	.L141
	add	lr, r2, #15040
	add	r3, r1, #16
	add	r1, lr, #16
.L143:
	strh	r4, [r3]	@ movhi
	strh	r4, [r3, #2]	@ movhi
	strh	r4, [r3, #4]	@ movhi
	add	r3, r3, #480
	cmp	r1, r3
	bne	.L143
	add	ip, r2, #13568
	add	lr, lr, #20
	add	ip, ip, #52
.L146:
	mov	r3, ip
	add	r1, ip, #20
.L145:
	strh	r4, [r3, #2]!	@ movhi
	cmp	r1, r3
	bne	.L145
	add	ip, ip, #480
	cmp	ip, lr
	bne	.L146
	add	ip, r2, #13632
	add	r1, r2, #18432
	add	r3, ip, #10
	add	r1, r1, #10
.L148:
	strh	r4, [r3]	@ movhi
	strh	r4, [r3, #2]	@ movhi
	strh	r4, [r3, #4]	@ movhi
	add	r3, r3, #480
	cmp	r1, r3
	bne	.L148
	add	lr, r2, #17920
	add	lr, lr, #14
	add	r6, r0, #174
.L151:
	mov	r3, lr
	add	r1, lr, #32
.L150:
	strh	r4, [r3, #2]!	@ movhi
	cmp	r1, r3
	bne	.L150
	add	lr, lr, #480
	cmp	lr, r6
	bne	.L151
	add	lr, r2, #9792
	add	r0, r0, #242
	add	r3, lr, #50
.L153:
	strh	r4, [r3]	@ movhi
	strh	r4, [r3, #2]	@ movhi
	strh	r4, [r3, #4]	@ movhi
	add	r3, r3, #480
	cmp	r0, r3
	bne	.L153
	add	r3, r2, #11264
	add	lr, lr, #54
	add	r6, r3, #22
.L156:
	mov	r1, lr
	add	r0, lr, #14
.L155:
	strh	r4, [r1, #2]!	@ movhi
	cmp	r0, r1
	bne	.L155
	add	lr, lr, #480
	cmp	lr, r6
	bne	.L156
	add	r6, r2, #9856
	add	lr, r2, #15104
	add	r1, r6, #6
	add	r0, lr, #38
.L158:
	strh	r4, [r1]	@ movhi
	strh	r4, [r1, #2]	@ movhi
	strh	r4, [r1, #4]	@ movhi
	add	r1, r1, #480
	cmp	r0, r1
	bne	.L158
	add	ip, ip, #54
	add	r7, lr, #22
.L161:
	mov	r1, ip
	add	r0, ip, #14
.L160:
	strh	r4, [r1, #2]!	@ movhi
	cmp	r0, r1
	bne	.L160
	add	ip, ip, #480
	cmp	ip, r7
	bne	.L161
	add	ip, r6, #26
	add	r6, r3, #58
.L164:
	mov	r1, ip
	add	r0, ip, #20
.L163:
	strh	r4, [r1, #2]!	@ movhi
	cmp	r0, r1
	bne	.L163
	add	ip, ip, #480
	cmp	ip, r6
	bne	.L164
	add	r0, r2, #19456
	add	r3, r3, #54
	add	r1, r0, #22
.L166:
	strh	r4, [r3]	@ movhi
	strh	r4, [r3, #2]	@ movhi
	strh	r4, [r3, #4]	@ movhi
	add	r3, r3, #480
	cmp	r1, r3
	bne	.L166
	add	r6, r2, #11328
	add	r3, r6, #16
	add	r1, r0, #48
.L167:
	strh	r4, [r3]	@ movhi
	strh	r4, [r3, #2]	@ movhi
	strh	r4, [r3, #4]	@ movhi
	add	r3, r3, #480
	cmp	r1, r3
	bne	.L167
	add	ip, r2, #13696
	add	lr, lr, #58
	add	ip, ip, #26
.L170:
	mov	r3, ip
	add	r1, ip, #20
.L169:
	strh	r4, [r3, #2]!	@ movhi
	cmp	r1, r3
	bne	.L169
	add	ip, ip, #480
	cmp	ip, lr
	bne	.L170
	add	r1, r2, #9920
	mov	r3, r1
	add	r0, r0, #64
.L172:
	strh	r4, [r3]	@ movhi
	strh	r4, [r3, #2]	@ movhi
	strh	r4, [r3, #4]	@ movhi
	add	r3, r3, #480
	cmp	r0, r3
	bne	.L172
	add	r6, r6, #36
	add	ip, r1, #4
.L175:
	mov	r3, ip
	add	r0, ip, #14
.L174:
	strh	r4, [r3, #2]!	@ movhi
	cmp	r0, r3
	bne	.L174
	add	ip, ip, #480
	cmp	ip, r6
	bne	.L175
	add	r0, r2, #15168
	add	r3, r1, #20
	add	r1, r0, #52
.L177:
	strh	r4, [r3]	@ movhi
	strh	r4, [r3, #2]	@ movhi
	strh	r4, [r3, #4]	@ movhi
	add	r3, r3, #480
	cmp	r1, r3
	bne	.L177
	add	r2, r2, #13760
	add	r2, r2, #4
	add	r0, r0, #36
.L180:
	mov	r3, r2
	add	r1, r2, #14
.L179:
	strh	r4, [r3, #2]!	@ movhi
	cmp	r1, r3
	bne	.L179
	add	r2, r2, #480
	cmp	r2, r0
	bne	.L180
	mov	r2, #8
	mov	r0, #28
	str	r4, [sp]
	mov	r3, #3
	mov	r1, #161
	bl	drawCurveR
	ldr	r0, [r5]
	add	ip, r0, #9920
	add	r2, r0, #11392
	add	ip, ip, #34
	add	lr, r2, #2
.L182:
	mov	r3, ip
	add	r1, ip, #38
.L183:
	strh	r4, [r3, #2]!	@ movhi
	cmp	r1, r3
	bne	.L183
	add	ip, ip, #480
	cmp	ip, lr
	bne	.L182
	add	r1, r0, #19456
	add	r1, r1, #116
	add	r3, r2, #20
.L185:
	strh	r4, [r3]	@ movhi
	strh	r4, [r3, #2]	@ movhi
	strh	r4, [r3, #4]	@ movhi
	add	r3, r3, #480
	cmp	r1, r3
	bne	.L185
	mov	r3, #3
	mov	r2, #5
	str	r4, [sp]
	mov	r1, #202
	mov	r0, #20
	bl	drawCurveR
	ldr	r2, [r5]
	add	r3, r2, #13824
	add	r2, r2, #19456
	add	r3, r3, #36
	add	r2, r2, #164
.L186:
	strh	r4, [r3]	@ movhi
	strh	r4, [r3, #2]	@ movhi
	strh	r4, [r3, #4]	@ movhi
	add	r3, r3, #480
	cmp	r2, r3
	bne	.L186
	mov	r3, #3
	mov	r2, #5
	mov	r1, #219
	str	r4, [sp]
	mov	r0, #20
	bl	drawCurveL
	ldr	r1, [r5]
	add	r2, r1, #16640
	add	r2, r2, #128
	add	r3, r1, #10048
.L187:
	strh	r4, [r3]	@ movhi
	strh	r4, [r3, #2]	@ movhi
	strh	r4, [r3, #4]	@ movhi
	add	r3, r3, #480
	cmp	r3, r2
	bne	.L187
	add	r3, r1, #16384
	add	r2, r3, #1824
	add	r1, r1, #18688
	add	r3, r3, #2784
	strh	r4, [r2]	@ movhi
	strh	r4, [r2, #2]	@ movhi
	strh	r4, [r2, #4]	@ movhi
	strh	r4, [r1]	@ movhi
	strh	r4, [r1, #2]	@ movhi
	strh	r4, [r1, #4]	@ movhi
	strh	r4, [r3]	@ movhi
	strh	r4, [r3, #2]	@ movhi
	strh	r4, [r3, #4]	@ movhi
	add	sp, sp, #12
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, lr}
	bx	lr
.L282:
	.align	2
.L281:
	.word	.LANCHOR0
	.size	drawLetsParty, .-drawLetsParty
	.align	2
	.global	drawLine
	.type	drawLine, %function
drawLine:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r2, #0
	bxle	lr
	ldr	ip, .L288
	rsb	r0, r0, r0, lsl #4
	add	r1, r1, r0, lsl #4
	ldr	ip, [ip]
	add	r2, r1, r2
	add	r2, ip, r2, lsl #1
	add	r1, ip, r1, lsl #1
.L285:
	strh	r3, [r1], #2	@ movhi
	cmp	r1, r2
	bne	.L285
	bx	lr
.L289:
	.align	2
.L288:
	.word	.LANCHOR0
	.size	drawLine, .-drawLine
	.align	2
	.global	drawDiagonalLineLeft
	.type	drawDiagonalLineLeft, %function
drawDiagonalLineLeft:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	cmp	r3, #0
	ldrh	lr, [sp, #8]
	ble	.L290
	ldr	ip, .L300
	rsb	r0, r0, r0, lsl #4
	add	r0, r1, r0, lsl #4
	ldr	r1, [ip]
	rsb	ip, r2, r2, lsl #4
	add	r3, r3, r0
	rsb	ip, r2, ip, lsl #4
	add	r4, r1, r3, lsl #1
	add	r0, r1, r0, lsl #1
	mov	ip, ip, asl #1
.L294:
	cmp	r2, #0
	movgt	r3, #0
	ble	.L296
.L293:
	add	r1, r3, #476
	strh	lr, [r0, r3]	@ movhi
	add	r3, r1, #2
	cmp	ip, r3
	bne	.L293
.L296:
	add	r0, r0, #2
	cmp	r0, r4
	bne	.L294
.L290:
	ldmfd	sp!, {r4, lr}
	bx	lr
.L301:
	.align	2
.L300:
	.word	.LANCHOR0
	.size	drawDiagonalLineLeft, .-drawDiagonalLineLeft
	.align	2
	.global	drawDiagonalLineRight
	.type	drawDiagonalLineRight, %function
drawDiagonalLineRight:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	cmp	r3, #0
	ldrh	lr, [sp, #8]
	ble	.L302
	ldr	ip, .L312
	rsb	r0, r0, r0, lsl #4
	add	r0, r1, r0, lsl #4
	ldr	r1, [ip]
	rsb	ip, r2, r2, lsl #4
	add	r3, r3, r0
	add	ip, r2, ip, lsl #4
	add	r4, r1, r3, lsl #1
	add	r0, r1, r0, lsl #1
	mov	ip, ip, asl #1
.L306:
	cmp	r2, #0
	movgt	r3, #0
	ble	.L308
.L305:
	add	r1, r3, #480
	strh	lr, [r0, r3]	@ movhi
	add	r3, r1, #2
	cmp	ip, r3
	bne	.L305
.L308:
	add	r0, r0, #2
	cmp	r0, r4
	bne	.L306
.L302:
	ldmfd	sp!, {r4, lr}
	bx	lr
.L313:
	.align	2
.L312:
	.word	.LANCHOR0
	.size	drawDiagonalLineRight, .-drawDiagonalLineRight
	.align	2
	.global	drawOval
	.type	drawOval, %function
drawOval:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}
	cmp	r2, #0
	ldrh	lr, [sp, #28]
	ble	.L315
	ldr	r5, .L336
	rsb	r4, r0, r0, lsl #4
	mov	r6, r4, asl #4
	ldr	r7, [r5]
	add	r4, r2, r1
	add	ip, r1, r6
	add	r4, r4, r6
	add	ip, r7, ip, lsl #1
	add	r4, r7, r4, lsl #1
.L316:
	strh	lr, [ip], #2	@ movhi
	cmp	ip, r4
	bne	.L316
	cmp	r3, #0
	add	r0, r0, #1
	add	r8, r2, #4
	ble	.L323
.L326:
	mov	r6, #0
	ldr	r7, [r5]
	sub	ip, r1, #2
	rsb	r5, r0, r0, lsl #4
	add	r5, ip, r5, lsl #4
	add	r5, r7, r5, lsl #1
	mov	r9, r8, asl #1
.L319:
	cmp	r8, #0
	movgt	ip, r5
	addgt	r4, r9, r5
	ble	.L322
.L321:
	strh	lr, [ip], #2	@ movhi
	cmp	r4, ip
	bne	.L321
.L322:
	add	r6, r6, #1
	cmp	r3, r6
	add	r0, r0, #1
	add	r5, r5, #480
	bgt	.L319
	cmp	r2, #0
	ble	.L314
.L323:
	mov	r3, #0
	rsb	r0, r0, r0, lsl #4
	add	r1, r1, r0, lsl #4
	add	r1, r7, r1, lsl #1
.L324:
	add	r3, r3, #1
	cmp	r2, r3
	strh	lr, [r1], #2	@ movhi
	bgt	.L324
.L314:
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L315:
	cmp	r3, #0
	ble	.L314
	add	r0, r0, #1
	add	r8, r2, #4
	ldr	r5, .L336
	b	.L326
.L337:
	.align	2
.L336:
	.word	.LANCHOR0
	.size	drawOval, .-drawOval
	.align	2
	.global	drawPupils
	.type	drawPupils, %function
drawPupils:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	mov	r5, r0
	mov	r7, r2
	mov	r8, r3
	sub	sp, sp, #8
	ldrh	r4, [sp, #32]
	mov	r6, r1
	str	r4, [sp]
	bl	drawOval
	mov	r3, r8
	mov	r2, r7
	mov	r0, r5
	add	r1, r6, #15
	str	r4, [sp, #32]
	add	sp, sp, #8
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	b	drawOval
	.size	drawPupils, .-drawPupils
	.align	2
	.global	drawFace
	.type	drawFace, %function
drawFace:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	mov	r4, #0
	sub	sp, sp, #8
	mov	r3, #1
	mov	r2, #3
	mov	r1, #91
	mov	r0, #107
	str	r4, [sp]
	bl	drawCurveR
	mov	r1, r4
	ldr	r5, .L364
	ldr	r3, [r5]
	add	r0, r3, #57344
	add	r2, r3, #53248
	add	r2, r2, #692
	add	ip, r0, #424
	strh	r4, [r2]	@ movhi
	strh	r4, [r2, #2]	@ movhi
	add	r2, r3, #58112
	strh	r4, [ip, #2]	@ movhi
	add	r3, r2, #138
	add	r2, r2, #154
.L341:
	strh	r1, [r3, #2]!	@ movhi
	cmp	r2, r3
	mov	r6, #0
	bne	.L341
	ldr	r2, .L364+4
	add	r0, r0, #444
	strh	r6, [r0]	@ movhi
	mov	r3, #5
	str	r2, [sp]
	mov	r1, #80
	mov	r2, #6
	mov	r0, #99
	ldr	r4, .L364+8
	bl	drawPupils
	mov	r3, #3
	mov	r2, #2
	mov	r1, #82
	mov	r0, #100
	str	r6, [sp]
	bl	drawPupils
	mov	r3, #18
	mov	r1, #90
	mov	r0, #81
	str	r4, [sp]
	mov	r2, #12
	bl	drawCurveR
	mov	r1, r4
	ldr	r3, [r5]
	ldr	ip, .L364+12
	add	r0, r3, #46592
	add	r0, r0, #178
	add	ip, r3, ip
.L342:
	mov	r3, r0
	add	r2, r0, #36
.L343:
	strh	r1, [r3, #2]!	@ movhi
	cmp	r2, r3
	ldr	r4, .L364+8
	bne	.L343
	add	r0, r0, #480
	cmp	r0, ip
	bne	.L342
	mov	r1, #90
	mov	r0, #80
	str	r4, [sp]
	mov	r3, #18
	mov	r2, #12
	bl	drawCurveL
	ldr	r0, [r5]
	add	r1, r0, #46592
	add	ip, r0, #65536
	add	r1, r1, #80
	add	ip, ip, #336
.L345:
	mov	r3, r1
	add	r2, r1, #36
.L346:
	strh	r4, [r3, #2]!	@ movhi
	cmp	r3, r2
	bne	.L346
	add	r1, r1, #480
	cmp	r1, ip
	bne	.L345
	add	r3, r0, #38400
	add	lr, r0, #34048
	ldr	r1, .L364+8
	add	ip, r3, #146
	add	r2, r3, #218
	add	lr, lr, #196
.L349:
	mov	r3, ip
.L348:
	strh	r1, [r3], #2	@ movhi
	cmp	r3, r2
	bne	.L348
	sub	ip, ip, #476
	sub	ip, ip, #2
	sub	r3, r3, #480
	cmp	lr, ip
	sub	r2, r3, #2
	bne	.L349
	ldr	r4, .L364+16
	add	r2, r0, #65280
	ldr	ip, .L364+8
	add	r4, r0, r4
	add	lr, r2, #212
	add	r1, r2, #248
.L351:
	mov	r3, lr
.L350:
	strh	ip, [r3], #2	@ movhi
	cmp	r1, r3
	bne	.L350
	add	lr, lr, #480
	add	lr, lr, #2
	add	r1, r1, #476
	cmp	r4, lr
	add	r1, r1, #2
	bne	.L351
	add	r0, r0, #68608
	ldr	r1, .L364+8
	add	ip, r0, #160
	add	r0, r2, #114
	add	r2, r2, #150
.L353:
	mov	r3, r0
.L352:
	strh	r1, [r3], #2	@ movhi
	cmp	r2, r3
	bne	.L352
	add	r0, r0, #480
	add	r0, r0, #2
	add	r2, r2, #476
	cmp	r0, ip
	add	r2, r2, #2
	bne	.L353
	add	sp, sp, #8
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L365:
	.align	2
.L364:
	.word	.LANCHOR0
	.word	32767
	.word	403
	.word	65970
	.word	68866
	.size	drawFace, .-drawFace
	.align	2
	.global	drawEyes
	.type	drawEyes, %function
drawEyes:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrh	ip, [sp]
	str	ip, [sp]
	b	drawPupils
	.size	drawEyes, .-drawEyes
	.align	2
	.global	drawArms1
	.type	drawArms1, %function
drawArms1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, lr}
	ldr	r4, .L405
	ldr	ip, [r4]
	ldr	r1, .L405+4
	add	r0, ip, #69632
	add	r5, ip, #71680
	sub	sp, sp, #12
	add	lr, r0, #96
	add	r6, r5, #448
.L368:
	mov	r3, lr
	add	r2, lr, #16
.L369:
	strh	r1, [r3, #2]!	@ movhi
	cmp	r2, r3
	bne	.L369
	add	lr, lr, #480
	cmp	lr, r6
	bne	.L368
	mov	lr, #0
	ldr	r6, .L405+8
	ldr	r7, .L405+12
	add	r6, ip, r6
	add	r7, ip, r7
.L372:
	mov	r3, r6
	add	r1, r6, #4736
	add	r1, r1, #44
.L371:
	add	r2, r3, #476
	strh	lr, [r3]	@ movhi
	add	r3, r2, #2
	cmp	r3, r1
	bne	.L371
	add	r6, r6, #2
	cmp	r6, r7
	bne	.L372
	ldr	r6, .L405+16
	ldr	r1, .L405+4
	add	r6, ip, r6
	add	lr, r0, #182
.L375:
	mov	r3, lr
	add	r2, lr, #16
.L374:
	strh	r1, [r3, #2]!	@ movhi
	cmp	r2, r3
	bne	.L374
	add	lr, lr, #480
	cmp	lr, r6
	bne	.L375
	mov	lr, #0
	add	r6, r5, #536
	add	r5, r5, #552
.L378:
	mov	r3, r6
	add	r1, r6, #4800
	add	r1, r1, #20
.L377:
	add	r2, r3, #480
	strh	lr, [r3]	@ movhi
	add	r3, r2, #2
	cmp	r1, r3
	bne	.L377
	add	r6, r6, #2
	cmp	r6, r5
	bne	.L378
	ldr	lr, .L405+20
	ldr	r1, .L405+4
	add	r0, r0, #198
	add	lr, ip, lr
.L381:
	mov	r3, r0
	add	r2, r0, #40
.L380:
	strh	r1, [r3, #2]!	@ movhi
	cmp	r3, r2
	ldr	r5, .L405+4
	bne	.L380
	add	r0, r0, #480
	cmp	r0, lr
	bne	.L381
	mov	r3, #8
	mov	r1, #135
	mov	r2, r3
	mov	r0, #143
	str	r5, [sp]
	bl	drawOval
	ldr	r2, [r4]
	add	r3, r2, #65536
	add	r1, r3, #2896
	add	lr, r3, #2416
	strh	r5, [lr, #2]	@ movhi
	strh	r5, [lr, #4]	@ movhi
	strh	r5, [r1, #2]	@ movhi
	strh	r5, [r1, #4]	@ movhi
	mov	r1, r5
	add	r3, r3, #3376
	ldr	ip, .L405+24
	add	r0, r2, #69632
	strh	r5, [r3, #2]	@ movhi
	strh	r5, [r3, #4]	@ movhi
	add	r0, r0, #62
	add	ip, r2, ip
.L383:
	mov	r3, r0
	add	r2, r0, #40
.L384:
	strh	r1, [r3, #2]!	@ movhi
	cmp	r3, r2
	ldr	r5, .L405+4
	bne	.L384
	add	r0, r0, #480
	cmp	r0, ip
	bne	.L383
	mov	r3, #8
	str	r5, [sp]
	mov	r2, r3
	mov	r1, #38
	mov	r0, #143
	bl	drawOval
	ldr	r3, [r4]
	add	r3, r3, #65536
	add	r1, r3, #2224
	add	r2, r3, #2704
	add	r3, r3, #3184
	strh	r5, [r1, #2]	@ movhi
	strh	r5, [r1, #4]	@ movhi
	strh	r5, [r2, #2]	@ movhi
	strh	r5, [r2, #4]	@ movhi
	strh	r5, [r3, #2]	@ movhi
	strh	r5, [r3, #4]	@ movhi
	add	sp, sp, #12
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, lr}
	bx	lr
.L406:
	.align	2
.L405:
	.word	.LANCHOR0
	.word	21277
	.word	72130
	.word	72146
	.word	72214
	.word	72230
	.word	72094
	.size	drawArms1, .-drawArms1
	.align	2
	.global	drawFrame2
	.type	drawFrame2, %function
drawFrame2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}
	mov	lr, #0
	mov	r1, lr
	ldr	r3, .L417
	ldr	r3, [r3]
	add	r0, r3, #53248
	add	ip, r3, #57344
	add	r2, r0, #4032
	add	r4, ip, #424
	strh	lr, [r2, #8]	@ movhi
	add	r2, r3, #58112
	strh	lr, [r4, #2]	@ movhi
	add	r3, r2, #138
	sub	sp, sp, #28
	add	r2, r2, #154
.L408:
	strh	r1, [r3, #2]!	@ movhi
	cmp	r2, r3
	mov	r4, #0
	bne	.L408
	mov	r3, #6
	ldr	lr, .L417+4
	add	ip, ip, #444
	add	r0, r0, #4048
	strh	r4, [ip]	@ movhi
	mov	r2, r3
	strh	r4, [r0, #14]	@ movhi
	mov	r1, #80
	str	lr, [sp]
	mov	r0, #98
	bl	drawPupils
	mov	r3, #4
	mov	r2, #2
	mov	r1, #82
	mov	r0, #99
	str	r4, [sp]
	bl	drawPupils
	bl	drawArms1
	ldr	r0, .L417+8
	bl	drawLetsParty
	ldr	r5, .L417+12
	str	r4, [sp, #20]
.L409:
	ldr	r3, [sp, #20]
	subs	r5, r5, #1
	add	r3, r3, #1
	str	r3, [sp, #20]
	bne	.L409
	ldr	r0, .L417+16
	bl	drawLetsParty
	ldr	r4, .L417+12
	str	r5, [sp, #16]
.L410:
	ldr	r3, [sp, #16]
	subs	r4, r4, #1
	add	r3, r3, #1
	str	r3, [sp, #16]
	bne	.L410
	mov	r0, #31
	bl	drawLetsParty
	str	r4, [sp, #12]
	ldr	r2, .L417+12
.L411:
	ldr	r3, [sp, #12]
	subs	r2, r2, #1
	add	r3, r3, #1
	str	r3, [sp, #12]
	bne	.L411
	ldr	r0, .L417+20
	bl	drawLetsParty
	add	sp, sp, #28
	@ sp needed
	ldmfd	sp!, {r4, r5, lr}
	bx	lr
.L418:
	.align	2
.L417:
	.word	.LANCHOR0
	.word	32767
	.word	32736
	.word	70000
	.word	31775
	.word	1023
	.size	drawFrame2, .-drawFrame2
	.align	2
	.global	drawArms2
	.type	drawArms2, %function
drawArms2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #0
	stmfd	sp!, {r4, r5, lr}
	ldr	r4, .L437
	ldr	r3, [r4]
	ldr	ip, .L437+4
	add	r0, r3, #69632
	sub	sp, sp, #12
	add	r0, r0, #198
	add	ip, r3, ip
.L420:
	mov	r3, r0
	add	r2, r0, #40
.L421:
	strh	r1, [r3, #2]!	@ movhi
	cmp	r2, r3
	mov	r5, #0
	bne	.L421
	add	r0, r0, #480
	cmp	r0, ip
	bne	.L420
	mov	r3, #8
	mov	r1, #135
	mov	r2, r3
	mov	r0, #143
	str	r5, [sp]
	bl	drawOval
	ldr	r2, [r4]
	add	r3, r2, #65536
	add	r1, r3, #2416
	strh	r5, [r1, #2]	@ movhi
	strh	r5, [r1, #4]	@ movhi
	mov	r1, r5
	add	lr, r3, #2896
	ldr	ip, .L437+8
	add	r3, r3, #3376
	strh	r5, [lr, #2]	@ movhi
	strh	r5, [lr, #4]	@ movhi
	add	r0, r2, #69632
	strh	r5, [r3, #2]	@ movhi
	strh	r5, [r3, #4]	@ movhi
	add	r0, r0, #62
	add	ip, r2, ip
.L423:
	mov	r3, r0
	add	r2, r0, #40
.L424:
	strh	r1, [r3, #2]!	@ movhi
	cmp	r3, r2
	mov	r5, #0
	bne	.L424
	add	r0, r0, #480
	cmp	r0, ip
	bne	.L423
	mov	r3, #8
	mov	r1, #38
	mov	r2, r3
	mov	r0, #143
	str	r5, [sp]
	bl	drawOval
	ldr	lr, [r4]
	add	r3, lr, #65536
	add	r1, r3, #2224
	add	r2, r3, #2704
	add	r3, r3, #3184
	strh	r5, [r1, #2]	@ movhi
	strh	r5, [r1, #4]	@ movhi
	add	lr, lr, #59904
	strh	r5, [r2, #2]	@ movhi
	strh	r5, [r2, #4]	@ movhi
	ldr	r0, .L437+12
	strh	r5, [r3, #2]	@ movhi
	strh	r5, [r3, #4]	@ movhi
	add	ip, lr, #176
	add	lr, lr, #196
.L426:
	mov	r3, ip
	add	r1, ip, #12032
	add	r1, r1, #18
.L427:
	add	r2, r3, #480
	strh	r0, [r3]	@ movhi
	add	r3, r2, #2
	cmp	r1, r3
	ldr	r5, .L437+12
	bne	.L427
	add	ip, ip, #2
	cmp	ip, lr
	bne	.L426
	mov	r3, #10
	mov	r2, #8
	mov	r1, #133
	mov	r0, #115
	str	r5, [sp]
	bl	drawOval
	ldr	r3, [r4]
	add	r0, r3, #57856
	strh	r5, [r0, #2]	@ movhi
	mov	r0, r5
	add	r2, r3, #57344
	add	r1, r2, #516
	add	lr, r2, #992
	add	r2, r2, #996
	strh	r5, [r1]	@ movhi
	strh	r5, [r1, #2]	@ movhi
	add	r3, r3, #60160
	strh	r5, [lr, #2]	@ movhi
	strh	r5, [r2]	@ movhi
	strh	r5, [r2, #2]	@ movhi
	add	ip, r3, #104
	add	lr, r3, #124
.L429:
	mov	r3, ip
	add	r1, ip, #11904
	add	r1, r1, #46
.L430:
	add	r2, r3, #476
	strh	r0, [r3]	@ movhi
	add	r3, r2, #2
	cmp	r1, r3
	ldr	r5, .L437+12
	bne	.L430
	add	ip, ip, #2
	cmp	ip, lr
	bne	.L429
	str	r5, [sp]
	mov	r3, #10
	mov	r2, #8
	mov	r1, #41
	mov	r0, #115
	bl	drawOval
	ldr	r3, [r4]
	add	r3, r3, #57344
	add	r2, r3, #360
	add	r0, r3, #356
	add	r1, r3, #836
	add	r3, r3, #840
	strh	r5, [r0, #2]	@ movhi
	strh	r5, [r2]	@ movhi
	strh	r5, [r2, #2]	@ movhi
	strh	r5, [r1, #2]	@ movhi
	strh	r5, [r3]	@ movhi
	strh	r5, [r3, #2]	@ movhi
	add	sp, sp, #12
	@ sp needed
	ldmfd	sp!, {r4, r5, lr}
	bx	lr
.L438:
	.align	2
.L437:
	.word	.LANCHOR0
	.word	72230
	.word	72094
	.word	21277
	.size	drawArms2, .-drawArms2
	.align	2
	.global	drawFrame3
	.type	drawFrame3, %function
drawFrame3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L457
	ldr	r1, [r3]
	mov	r0, #0
	stmfd	sp!, {r4, r5, r6, lr}
	add	lr, r1, #58112
	add	r2, lr, #138
	mov	r3, r2
	add	r5, r1, #53248
	add	r4, r5, #3552
	strh	r0, [r4, #6]	@ movhi
	add	r6, r1, #57344
	add	r4, r5, #4032
	strh	r0, [r4, #8]	@ movhi
	add	r4, r6, #424
	mov	ip, r0
	strh	r0, [r4, #2]	@ movhi
	sub	sp, sp, #24
	add	r0, lr, #154
.L440:
	strh	ip, [r3, #2]!	@ movhi
	cmp	r0, r3
	mov	r4, #0
	bne	.L440
	mov	ip, r4
	add	r3, r1, #56832
	add	r0, r1, #56576
	add	r6, r6, #444
	add	r5, r5, #4048
	strh	r4, [r6]	@ movhi
	strh	r4, [r5, #14]	@ movhi
	strh	r4, [r3]	@ movhi
	add	r3, r0, #228
	add	r0, r0, #254
.L441:
	strh	ip, [r3, #2]!	@ movhi
	cmp	r0, r3
	bne	.L441
	mvn	ip, #32768
	add	r0, r1, #57088
	add	r3, r0, #200
	add	r0, r0, #218
.L442:
	strh	ip, [r3, #2]!	@ movhi
	cmp	r0, r3
	bne	.L442
	mov	r0, #0
	add	r1, r1, #57600
	add	r3, r1, #168
	add	r1, r1, #186
.L443:
	strh	r0, [r3, #2]!	@ movhi
	cmp	r3, r1
	bne	.L443
	mov	r3, #0
	add	lr, lr, #152
.L444:
	strh	r3, [r2, #2]!	@ movhi
	cmp	r2, lr
	mov	r4, #0
	bne	.L444
	ldr	r2, .L457+4
	mov	r3, #7
	str	r2, [sp]
	mov	r1, #80
	mov	r2, #6
	mov	r0, #97
	bl	drawPupils
	mov	r3, #5
	mov	r2, #2
	mov	r1, #82
	mov	r0, #98
	str	r4, [sp]
	bl	drawPupils
	bl	drawArms2
	mov	r0, #992
	bl	drawLetsParty
	ldr	r5, .L457+8
	str	r4, [sp, #20]
.L445:
	ldr	r3, [sp, #20]
	subs	r5, r5, #1
	add	r3, r3, #1
	str	r3, [sp, #20]
	bne	.L445
	mov	r0, #31744
	bl	drawLetsParty
	ldr	r4, .L457+8
	str	r5, [sp, #16]
.L446:
	ldr	r3, [sp, #16]
	subs	r4, r4, #1
	add	r3, r3, #1
	str	r3, [sp, #16]
	bne	.L446
	ldr	r0, .L457+12
	bl	drawLetsParty
	str	r4, [sp, #12]
	ldr	r2, .L457+8
.L447:
	ldr	r3, [sp, #12]
	subs	r2, r2, #1
	add	r3, r3, #1
	str	r3, [sp, #12]
	bne	.L447
	ldr	r0, .L457+16
	bl	drawLetsParty
	add	sp, sp, #24
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L458:
	.align	2
.L457:
	.word	.LANCHOR0
	.word	32767
	.word	70000
	.word	32736
	.word	31775
	.size	drawFrame3, .-drawFrame3
	.align	2
	.global	drawFrame1
	.type	drawFrame1, %function
drawFrame1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r0, #0
	stmfd	sp!, {r4, r5, r6, lr}
	ldr	r4, .L475
	ldr	lr, [r4]
	add	lr, lr, #59904
	add	ip, lr, #176
	sub	sp, sp, #24
	add	lr, lr, #196
.L460:
	mov	r3, ip
	add	r1, ip, #12032
	add	r1, r1, #18
.L461:
	add	r2, r3, #480
	strh	r0, [r3]	@ movhi
	add	r3, r2, #2
	cmp	r1, r3
	mov	r5, #0
	bne	.L461
	add	ip, ip, #2
	cmp	ip, lr
	bne	.L460
	mov	r3, #10
	mov	r2, #8
	mov	r1, #133
	mov	r0, #115
	str	r5, [sp]
	bl	drawOval
	ldr	r3, [r4]
	add	r0, r3, #57856
	strh	r5, [r0, #2]	@ movhi
	mov	r0, r5
	add	r2, r3, #57344
	add	r1, r2, #516
	add	lr, r2, #992
	add	r2, r2, #996
	strh	r5, [r1]	@ movhi
	strh	r5, [r1, #2]	@ movhi
	add	r3, r3, #60160
	strh	r5, [lr, #2]	@ movhi
	strh	r5, [r2]	@ movhi
	strh	r5, [r2, #2]	@ movhi
	add	ip, r3, #104
	add	lr, r3, #124
.L463:
	mov	r3, ip
	add	r1, ip, #11904
	add	r1, r1, #46
.L464:
	add	r2, r3, #476
	strh	r0, [r3]	@ movhi
	add	r3, r2, #2
	cmp	r3, r1
	mov	r6, #0
	bne	.L464
	add	ip, ip, #2
	cmp	ip, lr
	bne	.L463
	mov	r3, #10
	mov	r2, #8
	mov	r1, #41
	mov	r0, #115
	str	r6, [sp]
	bl	drawOval
	ldr	r3, [r4]
	add	r3, r3, #57344
	add	r2, r3, #360
	add	r0, r3, #356
	add	r1, r3, #836
	add	r3, r3, #840
	strh	r6, [r0, #2]	@ movhi
	strh	r6, [r2]	@ movhi
	strh	r6, [r2, #2]	@ movhi
	strh	r6, [r1, #2]	@ movhi
	strh	r6, [r3]	@ movhi
	strh	r6, [r3, #2]	@ movhi
	bl	drawHead
	ldr	r5, .L475+4
	bl	drawFace
	str	r6, [sp, #20]
.L466:
	ldr	r3, [sp, #20]
	subs	r5, r5, #1
	add	r3, r3, #1
	str	r3, [sp, #20]
	bne	.L466
	ldr	r0, .L475+8
	bl	drawLetsParty
	ldr	r4, .L475+4
	str	r5, [sp, #16]
.L467:
	ldr	r3, [sp, #16]
	subs	r4, r4, #1
	add	r3, r3, #1
	str	r3, [sp, #16]
	bne	.L467
	mov	r0, #992
	bl	drawLetsParty
	str	r4, [sp, #12]
	ldr	r2, .L475+4
.L468:
	ldr	r3, [sp, #12]
	subs	r2, r2, #1
	add	r3, r3, #1
	str	r3, [sp, #12]
	bne	.L468
	mov	r0, #31744
	bl	drawLetsParty
	add	sp, sp, #24
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L476:
	.align	2
.L475:
	.word	.LANCHOR0
	.word	70000
	.word	1023
	.size	drawFrame1, .-drawFrame1
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.type	main, %function
main:
	@ Function supports interworking.
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #67108864
	ldr	r2, .L480
	stmfd	sp!, {r7, lr}
	ldr	r6, .L480+4
	ldr	r7, .L480+8
	strh	r2, [r3]	@ movhi
	ldr	r5, .L480+12
	ldr	r4, .L480+16
.L478:
	mov	r0, #31
	mov	lr, pc
	bx	r7
	mov	lr, pc
	bx	r6
	mov	lr, pc
	bx	r5
	mov	lr, pc
	bx	r4
	b	.L478
.L481:
	.align	2
.L480:
	.word	1027
	.word	drawFrame1
	.word	drawLetsParty
	.word	drawFrame2
	.word	drawFrame3
	.size	main, .-main
	.text
	.align	2
	.global	setPixel
	.type	setPixel, %function
setPixel:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L483
	rsb	r0, r0, r0, lsl #4
	add	r1, r1, r0, lsl #4
	ldr	r3, [r3]
	mov	r1, r1, asl #1
	strh	r2, [r3, r1]	@ movhi
	bx	lr
.L484:
	.align	2
.L483:
	.word	.LANCHOR0
	.size	setPixel, .-setPixel
	.align	2
	.global	delay
	.type	delay, %function
delay:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #0
	sub	sp, sp, #8
	ldr	r2, .L489
	str	r3, [sp, #4]
.L486:
	ldr	r3, [sp, #4]
	subs	r2, r2, #1
	add	r3, r3, #1
	str	r3, [sp, #4]
	bne	.L486
	add	sp, sp, #8
	@ sp needed
	bx	lr
.L490:
	.align	2
.L489:
	.word	70000
	.size	delay, .-delay
	.global	height
	.global	width
	.global	videoBuffer
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	videoBuffer, %object
	.size	videoBuffer, 4
videoBuffer:
	.word	100663296
	.type	height, %object
	.size	height, 4
height:
	.word	160
	.type	width, %object
	.size	width, 4
width:
	.word	240
	.ident	"GCC: (devkitARM release 45) 5.3.0"

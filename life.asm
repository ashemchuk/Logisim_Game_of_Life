### SECTION: .text
rsect _life_c_16807

push: ext
getCount: ext
pop: ext
init: ext


macro movens/2
push $1
pop $2
mend

pushCeil>                               # -- Begin function pushCeil
# %bb.0:                                # %entry
	push	fp
	ldsp	fp
	addsp	-26
	ssw	r0, -2
	ssw	r1, -4
	lsw	r0, -2
	ssb	r0, -6
	lsw	r1, -4
	ldi	r0, -6
	add	r0, fp, r0
	ldi	r2, 1
	ssw	r2, -24                         # 2-byte Folded Spill
	stb	r0, r2, r1
	jsr	push
	lsw	r2, -24                         # 2-byte Folded Reload
	lsw	r0, -2
	ssb	r0, -8
	lsw	r0, -4
	add	r0, 1
	shra	r0, r1, 8
	shra	r1, r1, 15-8
	shr	r1, r1, 8
	shr	r1, r1, 12-8
	add r0, r1, r1
	ldi	r3, 240
	ssw	r3, -26                         # 2-byte Folded Spill
	and r1, r3, r1
	sub r0, r1, r1
	ldi	r0, -8
	add	r0, fp, r0
	stb	r0, r2, r1
	jsr	push
	lsw	r3, -26                         # 2-byte Folded Reload
	lsw	r2, -24                         # 2-byte Folded Reload
	lsw	r0, -2
	ssb	r0, -10
	lsw	r0, -4
	sub	r0, 1
	shra	r0, r1, 8
	shra	r1, r1, 15-8
	shr	r1, r1, 8
	shr	r1, r1, 12-8
	add r0, r1, r1
	and r1, r3, r1
	sub r0, r1, r1
	ldi	r0, -10
	add	r0, fp, r0
	stb	r0, r2, r1
	jsr	push
	lsw	r3, -26                         # 2-byte Folded Reload
	lsw	r2, -24                         # 2-byte Folded Reload
	lsw	r0, -2
	add	r0, 1
	shra	r0, r1, 8
	shra	r1, r1, 15-8
	shr	r1, r1, 8
	shr	r1, r1, 12-8
	add r0, r1, r1
	and r1, r3, r1
	sub r0, r1, r0
	ssb	r0, -12
	lsw	r1, -4
	ldi	r0, -12
	add	r0, fp, r0
	stb	r0, r2, r1
	jsr	push
	lsw	r3, -26                         # 2-byte Folded Reload
	lsw	r2, -24                         # 2-byte Folded Reload
	lsw	r0, -2
	add	r0, 1
	shra	r0, r1, 8
	shra	r1, r1, 15-8
	shr	r1, r1, 8
	shr	r1, r1, 12-8
	add r0, r1, r1
	and r1, r3, r1
	sub r0, r1, r0
	ssb	r0, -14
	lsw	r0, -4
	add	r0, 1
	shra	r0, r1, 8
	shra	r1, r1, 15-8
	shr	r1, r1, 8
	shr	r1, r1, 12-8
	add r0, r1, r1
	and r1, r3, r1
	sub r0, r1, r1
	ldi	r0, -14
	add	r0, fp, r0
	stb	r0, r2, r1
	jsr	push
	lsw	r3, -26                         # 2-byte Folded Reload
	lsw	r2, -24                         # 2-byte Folded Reload
	lsw	r0, -2
	add	r0, 1
	shra	r0, r1, 8
	shra	r1, r1, 15-8
	shr	r1, r1, 8
	shr	r1, r1, 12-8
	add r0, r1, r1
	and r1, r3, r1
	sub r0, r1, r0
	ssb	r0, -16
	lsw	r0, -4
	sub	r0, 1
	shra	r0, r1, 8
	shra	r1, r1, 15-8
	shr	r1, r1, 8
	shr	r1, r1, 12-8
	add r0, r1, r1
	and r1, r3, r1
	sub r0, r1, r1
	ldi	r0, -16
	add	r0, fp, r0
	stb	r0, r2, r1
	jsr	push
	lsw	r3, -26                         # 2-byte Folded Reload
	lsw	r2, -24                         # 2-byte Folded Reload
	lsw	r0, -2
	sub	r0, 1
	shra	r0, r1, 8
	shra	r1, r1, 15-8
	shr	r1, r1, 8
	shr	r1, r1, 12-8
	add r0, r1, r1
	and r1, r3, r1
	sub r0, r1, r0
	ssb	r0, -18
	lsw	r1, -4
	ldi	r0, -18
	add	r0, fp, r0
	stb	r0, r2, r1
	jsr	push
	lsw	r3, -26                         # 2-byte Folded Reload
	lsw	r2, -24                         # 2-byte Folded Reload
	lsw	r0, -2
	sub	r0, 1
	shra	r0, r1, 8
	shra	r1, r1, 15-8
	shr	r1, r1, 8
	shr	r1, r1, 12-8
	add r0, r1, r1
	and r1, r3, r1
	sub r0, r1, r0
	ssb	r0, -20
	lsw	r0, -4
	add	r0, 1
	shra	r0, r1, 8
	shra	r1, r1, 15-8
	shr	r1, r1, 8
	shr	r1, r1, 12-8
	add r0, r1, r1
	and r1, r3, r1
	sub r0, r1, r1
	ldi	r0, -20
	add	r0, fp, r0
	stb	r0, r2, r1
	jsr	push
	lsw	r3, -26                         # 2-byte Folded Reload
	lsw	r2, -24                         # 2-byte Folded Reload
	lsw	r0, -2
	sub	r0, 1
	shra	r0, r1, 8
	shra	r1, r1, 15-8
	shr	r1, r1, 8
	shr	r1, r1, 12-8
	add r0, r1, r1
	and r1, r3, r1
	sub r0, r1, r0
	ssb	r0, -22
	lsw	r0, -4
	sub	r0, 1
	shra	r0, r1, 8
	shra	r1, r1, 15-8
	shr	r1, r1, 8
	shr	r1, r1, 12-8
	add r0, r1, r1
	and r1, r3, r1
	sub r0, r1, r1
	ldi	r0, -22
	add	r0, fp, r0
	stb	r0, r2, r1
	jsr	push
	addsp	26
	pop	fp
	rts
                                        # -- End function
NextGen>                                # -- Begin function NextGen
# %bb.0:                                # %entry
	push	fp
	ldsp	fp
	addsp	-46
	ssw	r4, -2                          # 2-byte Folded Spill
	ssw	r5, -4                          # 2-byte Folded Spill
	ssw	r6, -6                          # 2-byte Folded Spill
	shr	r0, r2, 8
	ldi	r3, -8
	add	r3, fp, r4
	ldi	r3, 1
	stb	r4, r3, r2
	ssb	r0, -8
	shr	r1, r0, 8
	ldi	r2, -10
	add	r2, fp, r2
	stb	r2, r3, r0
	ssb	r1, -10
	jsr	getCount
	ssw	r0, -12
	br	__LBB1_1
__LBB1_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	lsw	r0, -12
	ldi	r1, 1
	cmp	r0, r1
	blt	__LBB1_12
	br	__LBB1_2
__LBB1_2:                               # %while.body
                                        #   in Loop: Header=BB1_1 Depth=1
	lsw	r0, -12
	sub	r0, 1
	ssw	r0, -12
	ldi	r0, -14
	add	r0, fp, r0
	ssw	r0, -34                         # 2-byte Folded Spill
	jsr	pop
	lsw	r2, -34                         # 2-byte Folded Reload
	ldi	r0, 0
	ssw	r0, -16
	lssb	r1, -14
	ssw	r1, -18
	ldi	r1, 1
	ssw	r1, -30                         # 2-byte Folded Spill
	ldsb	r2, r1, r2
	ssw	r2, -20
	ldi	r2, -8
	add	r2, fp, r3
	ssw	r3, -26                         # 2-byte Folded Spill
	ldb	r3, r1, r1
	shl	r1, r1, 8
	lsb	r2, -8
	or r1, r2, r1
	lsw	r4, -18
	add	r4, 1
	shra	r4, r2, 8
	shra	r2, r2, 15-8
	shr	r2, r2, 8
	shr	r2, r2, 12-8
	add r4, r2, r5
	ldi	r2, 4080
	ssw	r2, -28                         # 2-byte Folded Spill
	and r5, r2, r5
	sub r4, r5, r4
	shl	r4, r4, 4
	add r1, r4, r4
	lsw	r5, -20
	shra	r5, r1, 8
	shra	r1, r1, 15-8
	shr	r1, r1, 8
	shr	r1, r1, 12-8
	add r5, r1, r1
	ldi	r6, -16
	ssw	r6, -32                         # 2-byte Folded Spill
	and r1, r6, r1
	sub r5, r1, r5
	lsw	r1, -30                         # 2-byte Folded Reload
	ldsb	r4, r5, r5
	lsw	r4, -16
	add r4, r5, r4
	ssw	r4, -16
	ldb	r3, r1, r1
	shl	r1, r1, 8
	lsb	r4, -8
	or r1, r4, r1
	lsw	r4, -18
	sub	r4, 1
	shra	r4, r5, 8
	shra	r5, r5, 15-8
	shr	r5, r5, 8
	shr	r5, r5, 12-8
	add r4, r5, r5
	and r5, r2, r5
	sub r4, r5, r4
	shl	r4, r4, 4
	add r1, r4, r4
	lsw	r5, -20
	shra	r5, r1, 8
	shra	r1, r1, 15-8
	shr	r1, r1, 8
	shr	r1, r1, 12-8
	add r5, r1, r1
	and r1, r6, r1
	sub r5, r1, r5
	lsw	r1, -30                         # 2-byte Folded Reload
	ldsb	r4, r5, r5
	lsw	r4, -16
	add r4, r5, r4
	ssw	r4, -16
	ldb	r3, r1, r1
	shl	r1, r1, 8
	lsb	r4, -8
	or r1, r4, r1
	lsw	r4, -18
	shra	r4, r5, 8
	shra	r5, r5, 15-8
	shr	r5, r5, 8
	shr	r5, r5, 12-8
	add r4, r5, r5
	and r5, r2, r5
	sub r4, r5, r4
	shl	r4, r4, 4
	add r1, r4, r4
	lsw	r5, -20
	add	r5, 1
	shra	r5, r1, 8
	shra	r1, r1, 15-8
	shr	r1, r1, 8
	shr	r1, r1, 12-8
	add r5, r1, r1
	and r1, r6, r1
	sub r5, r1, r5
	lsw	r1, -30                         # 2-byte Folded Reload
	ldsb	r4, r5, r5
	lsw	r4, -16
	add r4, r5, r4
	ssw	r4, -16
	ldb	r3, r1, r1
	shl	r1, r1, 8
	lsb	r4, -8
	or r1, r4, r1
	lsw	r4, -18
	shra	r4, r5, 8
	shra	r5, r5, 15-8
	shr	r5, r5, 8
	shr	r5, r5, 12-8
	add r4, r5, r5
	and r5, r2, r5
	sub r4, r5, r4
	shl	r4, r4, 4
	add r1, r4, r4
	lsw	r5, -20
	sub	r5, 1
	shra	r5, r1, 8
	shra	r1, r1, 15-8
	shr	r1, r1, 8
	shr	r1, r1, 12-8
	add r5, r1, r1
	and r1, r6, r1
	sub r5, r1, r5
	lsw	r1, -30                         # 2-byte Folded Reload
	ldsb	r4, r5, r5
	lsw	r4, -16
	add r4, r5, r4
	ssw	r4, -16
	ldb	r3, r1, r1
	shl	r1, r1, 8
	lsb	r4, -8
	or r1, r4, r1
	lsw	r4, -18
	add	r4, 1
	shra	r4, r5, 8
	shra	r5, r5, 15-8
	shr	r5, r5, 8
	shr	r5, r5, 12-8
	add r4, r5, r5
	and r5, r2, r5
	sub r4, r5, r4
	shl	r4, r4, 4
	add r1, r4, r4
	lsw	r5, -20
	add	r5, 1
	shra	r5, r1, 8
	shra	r1, r1, 15-8
	shr	r1, r1, 8
	shr	r1, r1, 12-8
	add r5, r1, r1
	and r1, r6, r1
	sub r5, r1, r5
	lsw	r1, -30                         # 2-byte Folded Reload
	ldsb	r4, r5, r5
	lsw	r4, -16
	add r4, r5, r4
	ssw	r4, -16
	ldb	r3, r1, r1
	shl	r1, r1, 8
	lsb	r4, -8
	or r1, r4, r1
	lsw	r4, -18
	sub	r4, 1
	shra	r4, r5, 8
	shra	r5, r5, 15-8
	shr	r5, r5, 8
	shr	r5, r5, 12-8
	add r4, r5, r5
	and r5, r2, r5
	sub r4, r5, r4
	shl	r4, r4, 4
	add r1, r4, r4
	lsw	r5, -20
	sub	r5, 1
	shra	r5, r1, 8
	shra	r1, r1, 15-8
	shr	r1, r1, 8
	shr	r1, r1, 12-8
	add r5, r1, r1
	and r1, r6, r1
	sub r5, r1, r5
	lsw	r1, -30                         # 2-byte Folded Reload
	ldsb	r4, r5, r5
	lsw	r4, -16
	add r4, r5, r4
	ssw	r4, -16
	ldb	r3, r1, r1
	shl	r1, r1, 8
	lsb	r4, -8
	or r1, r4, r1
	lsw	r4, -18
	add	r4, 1
	shra	r4, r5, 8
	shra	r5, r5, 15-8
	shr	r5, r5, 8
	shr	r5, r5, 12-8
	add r4, r5, r5
	and r5, r2, r5
	lsw	r2, -30                         # 2-byte Folded Reload
	sub r4, r5, r4
	shl	r4, r4, 4
	add r1, r4, r4
	lsw	r5, -20
	sub	r5, 1
	shra	r5, r1, 8
	shra	r1, r1, 15-8
	shr	r1, r1, 8
	shr	r1, r1, 12-8
	add r5, r1, r1
	and r1, r6, r1
	sub r5, r1, r5
	lsw	r1, -28                         # 2-byte Folded Reload
	ldsb	r4, r5, r5
	lsw	r4, -16
	add r4, r5, r4
	ssw	r4, -16
	ldb	r3, r2, r3
	shl	r3, r3, 8
	lsb	r4, -8
	or r3, r4, r3
	lsw	r4, -18
	sub	r4, 1
	shra	r4, r5, 8
	shra	r5, r5, 15-8
	shr	r5, r5, 8
	shr	r5, r5, 12-8
	add r4, r5, r5
	and r5, r1, r5
	lsw	r1, -26                         # 2-byte Folded Reload
	sub r4, r5, r4
	shl	r4, r4, 4
	add r3, r4, r3
	lsw	r4, -20
	add	r4, 1
	shra	r4, r5, 8
	shra	r5, r5, 15-8
	shr	r5, r5, 8
	shr	r5, r5, 12-8
	add r4, r5, r5
	and r5, r6, r5
	sub r4, r5, r4
	ldsb	r3, r4, r4
	lsw	r3, -16
	add r3, r4, r3
	ssw	r3, -16
	ldb	r1, r2, r1
	shl	r1, r1, 8
	lsb	r3, -8
	or r1, r3, r1
	lsw	r3, -18
	shl	r3, r3, 4
	add r1, r3, r1
	lsw	r3, -20
	ldsb	r1, r3, r1
	cmp	r1, r2
	ssw	r0, -24                         # 2-byte Folded Spill
	bne	__LBB1_6
	br	__LBB1_3
__LBB1_3:                               # %land.rhs
                                        #   in Loop: Header=BB1_1 Depth=1
	lsw	r1, -16
	ldi	r0, 1
	ldi	r2, 2
	cmp	r1, r2
	ssw	r0, -36                         # 2-byte Folded Spill
	beq	__LBB1_5
	br	__LBB1_4
__LBB1_4:                               # %lor.rhs
                                        #   in Loop: Header=BB1_1 Depth=1
	lsw	r1, -16
	ldi	r0, 0
	ssw	r0, -40                         # 2-byte Folded Spill
	ldi	r0, 1
	ldi	r2, 3
	cmp	r1, r2
	ssw	r0, -38                         # 2-byte Folded Spill
	beq	__LBB1_14
# %bb.13:                               # %lor.rhs
                                        #   in Loop: Header=BB1_1 Depth=1
	lsw	r0, -40                         # 2-byte Folded Reload
	ssw	r0, -38                         # 2-byte Folded Spill
__LBB1_14:                              # %lor.rhs
                                        #   in Loop: Header=BB1_1 Depth=1
	lsw	r0, -38                         # 2-byte Folded Reload
	ssw	r0, -36                         # 2-byte Folded Spill
	br	__LBB1_5
__LBB1_5:                               # %lor.end
                                        #   in Loop: Header=BB1_1 Depth=1
	lsw	r0, -36                         # 2-byte Folded Reload
	ssw	r0, -24                         # 2-byte Folded Spill
	br	__LBB1_6
__LBB1_6:                               # %land.end
                                        #   in Loop: Header=BB1_1 Depth=1
	lsw	r0, -24                         # 2-byte Folded Reload
	ldi	r1, 1
	and r0, r1, r0
	ssb	r0, -21
	ldi	r0, -8
	add	r0, fp, r0
	ldb	r0, r1, r0
	shl	r0, r0, 8
	lsb	r1, -8
	or r0, r1, r0
	lsw	r1, -18
	shl	r1, r1, 4
	add r0, r1, r0
	lsw	r1, -20
	ldsb	r0, r1, r1
	ldi	r0, 0
	cmp	r1, r0
	ssw	r0, -42                         # 2-byte Folded Spill
	bne	__LBB1_8
	br	__LBB1_7
__LBB1_7:                               # %land.rhs73
                                        #   in Loop: Header=BB1_1 Depth=1
	lsw	r1, -16
	ldi	r0, 0
	ssw	r0, -46                         # 2-byte Folded Spill
	ldi	r0, 1
	ldi	r2, 3
	cmp	r1, r2
	ssw	r0, -44                         # 2-byte Folded Spill
	beq	__LBB1_16
# %bb.15:                               # %land.rhs73
                                        #   in Loop: Header=BB1_1 Depth=1
	lsw	r0, -46                         # 2-byte Folded Reload
	ssw	r0, -44                         # 2-byte Folded Spill
__LBB1_16:                              # %land.rhs73
                                        #   in Loop: Header=BB1_1 Depth=1
	lsw	r0, -44                         # 2-byte Folded Reload
	ssw	r0, -42                         # 2-byte Folded Spill
	br	__LBB1_8
__LBB1_8:                               # %land.end76
                                        #   in Loop: Header=BB1_1 Depth=1
	lsw	r0, -42                         # 2-byte Folded Reload
	ldi	r4, 1
	and r0, r4, r0
	ssb	r0, -22
	lsb	r0, -21
	lsb	r1, -22
	or r0, r1, r0
	ldi	r1, -10
	add	r1, fp, r1
	ldb	r1, r4, r2
	shl	r2, r2, 8
	lsb	r3, -10
	or r2, r3, r2
	lsw	r3, -18
	shl	r3, r3, 4
	add r2, r3, r2
	lsw	r3, -20
	stb	r2, r3, r0
	ldi	r0, -8
	add	r0, fp, r0
	ldb	r0, r4, r0
	shl	r0, r0, 8
	lsb	r2, -8
	or r0, r2, r0
	lsw	r2, -18
	shl	r2, r3, 4
	add r0, r3, r0
	lsw	r2, -20
	ldsb	r0, r2, r0
	ldb	r1, r4, r1
	shl	r1, r1, 8
	lsb	r4, -10
	or r1, r4, r1
	add r1, r3, r1
	ldsb	r1, r2, r1
	cmp	r0, r1
	bne	__LBB1_10
	br	__LBB1_9
__LBB1_9:                               # %lor.lhs.false
                                        #   in Loop: Header=BB1_1 Depth=1
	ldi	r0, -10
	add	r0, fp, r0
	ldi	r1, 1
	ldb	r0, r1, r0
	shl	r0, r0, 8
	lsb	r1, -10
	or r0, r1, r0
	lsw	r1, -18
	shl	r1, r1, 4
	add r0, r1, r0
	lsw	r1, -20
	ldsb	r0, r1, r0
	ldi	r1, 0
	cmp	r0, r1
	beq	__LBB1_11
	br	__LBB1_10
__LBB1_10:                              # %if.then
                                        #   in Loop: Header=BB1_1 Depth=1
	lsw	r0, -18
	lsw	r1, -20
	jsr	pushCeil
	br	__LBB1_11
__LBB1_11:                              # %if.end
                                        #   in Loop: Header=BB1_1 Depth=1
	br	__LBB1_1
__LBB1_12:                              # %while.end
	lsw	r6, -6                          # 2-byte Folded Reload
	lsw	r5, -4                          # 2-byte Folded Reload
	lsw	r4, -2                          # 2-byte Folded Reload
	addsp	46
	pop	fp
	rts
                                        # -- End function
initFstGen>                             # -- Begin function initFstGen
# %bb.0:                                # %entry
	push	fp
	ldsp	fp
	addsp	-6
	shr	r0, r1, 8
	ldi	r2, -2
	add	r2, fp, r2
	ldi	r3, 1
	stb	r2, r3, r1
	ssb	r0, -2
	jsr	init
	ldi	r0, 0
	ssw	r0, -4
	br	__LBB2_1
__LBB2_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_3 Depth 2
	lsw	r0, -4
	ldi	r1, 15
	cmp	r0, r1
	bgt	__LBB2_10
	br	__LBB2_2
__LBB2_2:                               # %for.body
                                        #   in Loop: Header=BB2_1 Depth=1
	ldi	r0, 0
	ssw	r0, -6
	br	__LBB2_3
__LBB2_3:                               # %for.cond1
                                        #   Parent Loop BB2_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lsw	r0, -6
	ldi	r1, 15
	cmp	r0, r1
	bgt	__LBB2_8
	br	__LBB2_4
__LBB2_4:                               # %for.body3
                                        #   in Loop: Header=BB2_3 Depth=2
	ldi	r0, -2
	add	r0, fp, r0
	ldi	r1, 1
	ldb	r0, r1, r0
	shl	r0, r0, 8
	lsb	r2, -2
	or r0, r2, r0
	lsw	r2, -4
	shl	r2, r2, 4
	add r0, r2, r0
	lsw	r2, -6
	ldsb	r0, r2, r0
	cmp	r0, r1
	bne	__LBB2_6
	br	__LBB2_5
__LBB2_5:                               # %if.then
                                        #   in Loop: Header=BB2_3 Depth=2
	lsw	r0, -4
	lsw	r1, -6
	jsr	pushCeil
	br	__LBB2_6
__LBB2_6:                               # %if.end
                                        #   in Loop: Header=BB2_3 Depth=2
	br	__LBB2_7
__LBB2_7:                               # %for.inc
                                        #   in Loop: Header=BB2_3 Depth=2
	lsw	r0, -6
	add	r0, 1
	ssw	r0, -6
	br	__LBB2_3
__LBB2_8:                               # %for.end
                                        #   in Loop: Header=BB2_1 Depth=1
	br	__LBB2_9
__LBB2_9:                               # %for.inc7
                                        #   in Loop: Header=BB2_1 Depth=1
	lsw	r0, -4
	add	r0, 1
	ssw	r0, -4
	br	__LBB2_1
__LBB2_10:                              # %for.end9
	addsp	6
	pop	fp
	rts
                                        # -- End function
end.

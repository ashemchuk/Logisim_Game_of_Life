### SECTION: .text
rsect _life_c_16807



macro movens/2
push $1
pop $2
mend

nextGeneration>                         # -- Begin function nextGeneration
# %bb.0:                                # %entry
	push	fp
	ldsp	fp
	addsp	-40
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
	ldi	r0, 0
	ssw	r0, -12
	br	__LBB0_1
__LBB0_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
	lsw	r0, -12
	ldi	r1, 15
	cmp	r0, r1
	bgt	__LBB0_14
	br	__LBB0_2
__LBB0_2:                               # %for.body
                                        #   in Loop: Header=BB0_1 Depth=1
	ldi	r0, 0
	ssw	r0, -14
	br	__LBB0_3
__LBB0_3:                               # %for.cond1
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lsw	r0, -14
	ldi	r1, 15
	cmp	r0, r1
	bgt	__LBB0_12
	br	__LBB0_4
__LBB0_4:                               # %for.body3
                                        #   in Loop: Header=BB0_3 Depth=2
	ldi	r0, 0
	ssw	r0, -16
	ldi	r1, -8
	add	r1, fp, r3
	ssw	r3, -22                         # 2-byte Folded Spill
	ldi	r1, 1
	ssw	r1, -26                         # 2-byte Folded Spill
	ldb	r3, r1, r1
	shl	r1, r1, 8
	lsb	r2, -8
	or r1, r2, r1
	lsw	r4, -12
	add	r4, 1
	shra	r4, r2, 8
	shra	r2, r2, 15-8
	shr	r2, r2, 8
	shr	r2, r2, 12-8
	add r4, r2, r5
	ldi	r2, 4080
	ssw	r2, -24                         # 2-byte Folded Spill
	and r5, r2, r5
	sub r4, r5, r4
	shl	r4, r4, 4
	add r1, r4, r4
	lsw	r5, -14
	shra	r5, r1, 8
	shra	r1, r1, 15-8
	shr	r1, r1, 8
	shr	r1, r1, 12-8
	add r5, r1, r1
	ldi	r6, -16
	ssw	r6, -28                         # 2-byte Folded Spill
	and r1, r6, r1
	sub r5, r1, r5
	lsw	r1, -26                         # 2-byte Folded Reload
	ldsb	r4, r5, r5
	lsw	r4, -16
	add r4, r5, r4
	ssw	r4, -16
	ldb	r3, r1, r1
	shl	r1, r1, 8
	lsb	r4, -8
	or r1, r4, r1
	lsw	r4, -12
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
	lsw	r5, -14
	shra	r5, r1, 8
	shra	r1, r1, 15-8
	shr	r1, r1, 8
	shr	r1, r1, 12-8
	add r5, r1, r1
	and r1, r6, r1
	sub r5, r1, r5
	lsw	r1, -26                         # 2-byte Folded Reload
	ldsb	r4, r5, r5
	lsw	r4, -16
	add r4, r5, r4
	ssw	r4, -16
	ldb	r3, r1, r1
	shl	r1, r1, 8
	lsb	r4, -8
	or r1, r4, r1
	lsw	r4, -12
	shra	r4, r5, 8
	shra	r5, r5, 15-8
	shr	r5, r5, 8
	shr	r5, r5, 12-8
	add r4, r5, r5
	and r5, r2, r5
	sub r4, r5, r4
	shl	r4, r4, 4
	add r1, r4, r4
	lsw	r5, -14
	add	r5, 1
	shra	r5, r1, 8
	shra	r1, r1, 15-8
	shr	r1, r1, 8
	shr	r1, r1, 12-8
	add r5, r1, r1
	and r1, r6, r1
	sub r5, r1, r5
	lsw	r1, -26                         # 2-byte Folded Reload
	ldsb	r4, r5, r5
	lsw	r4, -16
	add r4, r5, r4
	ssw	r4, -16
	ldb	r3, r1, r1
	shl	r1, r1, 8
	lsb	r4, -8
	or r1, r4, r1
	lsw	r4, -12
	shra	r4, r5, 8
	shra	r5, r5, 15-8
	shr	r5, r5, 8
	shr	r5, r5, 12-8
	add r4, r5, r5
	and r5, r2, r5
	sub r4, r5, r4
	shl	r4, r4, 4
	add r1, r4, r4
	lsw	r5, -14
	sub	r5, 1
	shra	r5, r1, 8
	shra	r1, r1, 15-8
	shr	r1, r1, 8
	shr	r1, r1, 12-8
	add r5, r1, r1
	and r1, r6, r1
	sub r5, r1, r5
	lsw	r1, -26                         # 2-byte Folded Reload
	ldsb	r4, r5, r5
	lsw	r4, -16
	add r4, r5, r4
	ssw	r4, -16
	ldb	r3, r1, r1
	shl	r1, r1, 8
	lsb	r4, -8
	or r1, r4, r1
	lsw	r4, -12
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
	lsw	r5, -14
	add	r5, 1
	shra	r5, r1, 8
	shra	r1, r1, 15-8
	shr	r1, r1, 8
	shr	r1, r1, 12-8
	add r5, r1, r1
	and r1, r6, r1
	sub r5, r1, r5
	lsw	r1, -26                         # 2-byte Folded Reload
	ldsb	r4, r5, r5
	lsw	r4, -16
	add r4, r5, r4
	ssw	r4, -16
	ldb	r3, r1, r1
	shl	r1, r1, 8
	lsb	r4, -8
	or r1, r4, r1
	lsw	r4, -12
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
	lsw	r5, -14
	sub	r5, 1
	shra	r5, r1, 8
	shra	r1, r1, 15-8
	shr	r1, r1, 8
	shr	r1, r1, 12-8
	add r5, r1, r1
	and r1, r6, r1
	sub r5, r1, r5
	lsw	r1, -26                         # 2-byte Folded Reload
	ldsb	r4, r5, r5
	lsw	r4, -16
	add r4, r5, r4
	ssw	r4, -16
	ldb	r3, r1, r1
	shl	r1, r1, 8
	lsb	r4, -8
	or r1, r4, r1
	lsw	r4, -12
	add	r4, 1
	shra	r4, r5, 8
	shra	r5, r5, 15-8
	shr	r5, r5, 8
	shr	r5, r5, 12-8
	add r4, r5, r5
	and r5, r2, r5
	lsw	r2, -26                         # 2-byte Folded Reload
	sub r4, r5, r4
	shl	r4, r4, 4
	add r1, r4, r4
	lsw	r5, -14
	sub	r5, 1
	shra	r5, r1, 8
	shra	r1, r1, 15-8
	shr	r1, r1, 8
	shr	r1, r1, 12-8
	add r5, r1, r1
	and r1, r6, r1
	sub r5, r1, r5
	lsw	r1, -24                         # 2-byte Folded Reload
	ldsb	r4, r5, r5
	lsw	r4, -16
	add r4, r5, r4
	ssw	r4, -16
	ldb	r3, r2, r3
	shl	r3, r3, 8
	lsb	r4, -8
	or r3, r4, r3
	lsw	r4, -12
	sub	r4, 1
	shra	r4, r5, 8
	shra	r5, r5, 15-8
	shr	r5, r5, 8
	shr	r5, r5, 12-8
	add r4, r5, r5
	and r5, r1, r5
	lsw	r1, -22                         # 2-byte Folded Reload
	sub r4, r5, r4
	shl	r4, r4, 4
	add r3, r4, r3
	lsw	r4, -14
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
	lsw	r3, -12
	shl	r3, r3, 4
	add r1, r3, r1
	lsw	r3, -14
	ldsb	r1, r3, r1
	cmp	r1, r2
	ssw	r0, -20                         # 2-byte Folded Spill
	bne	__LBB0_8
	br	__LBB0_5
__LBB0_5:                               # %land.rhs
                                        #   in Loop: Header=BB0_3 Depth=2
	lsw	r1, -16
	ldi	r0, 1
	ldi	r2, 2
	cmp	r1, r2
	ssw	r0, -30                         # 2-byte Folded Spill
	beq	__LBB0_7
	br	__LBB0_6
__LBB0_6:                               # %lor.rhs
                                        #   in Loop: Header=BB0_3 Depth=2
	lsw	r1, -16
	ldi	r0, 0
	ssw	r0, -34                         # 2-byte Folded Spill
	ldi	r0, 1
	ldi	r2, 3
	cmp	r1, r2
	ssw	r0, -32                         # 2-byte Folded Spill
	beq	__LBB0_16
# %bb.15:                               # %lor.rhs
                                        #   in Loop: Header=BB0_3 Depth=2
	lsw	r0, -34                         # 2-byte Folded Reload
	ssw	r0, -32                         # 2-byte Folded Spill
__LBB0_16:                              # %lor.rhs
                                        #   in Loop: Header=BB0_3 Depth=2
	lsw	r0, -32                         # 2-byte Folded Reload
	ssw	r0, -30                         # 2-byte Folded Spill
	br	__LBB0_7
__LBB0_7:                               # %lor.end
                                        #   in Loop: Header=BB0_3 Depth=2
	lsw	r0, -30                         # 2-byte Folded Reload
	ssw	r0, -20                         # 2-byte Folded Spill
	br	__LBB0_8
__LBB0_8:                               # %land.end
                                        #   in Loop: Header=BB0_3 Depth=2
	lsw	r0, -20                         # 2-byte Folded Reload
	ldi	r1, 1
	and r0, r1, r0
	ssb	r0, -17
	ldi	r0, -8
	add	r0, fp, r0
	ldb	r0, r1, r0
	shl	r0, r0, 8
	lsb	r1, -8
	or r0, r1, r0
	lsw	r1, -12
	shl	r1, r1, 4
	add r0, r1, r0
	lsw	r1, -14
	ldsb	r0, r1, r1
	ldi	r0, 0
	cmp	r1, r0
	ssw	r0, -36                         # 2-byte Folded Spill
	bne	__LBB0_10
	br	__LBB0_9
__LBB0_9:                               # %land.rhs74
                                        #   in Loop: Header=BB0_3 Depth=2
	lsw	r1, -16
	ldi	r0, 0
	ssw	r0, -40                         # 2-byte Folded Spill
	ldi	r0, 1
	ldi	r2, 3
	cmp	r1, r2
	ssw	r0, -38                         # 2-byte Folded Spill
	beq	__LBB0_18
# %bb.17:                               # %land.rhs74
                                        #   in Loop: Header=BB0_3 Depth=2
	lsw	r0, -40                         # 2-byte Folded Reload
	ssw	r0, -38                         # 2-byte Folded Spill
__LBB0_18:                              # %land.rhs74
                                        #   in Loop: Header=BB0_3 Depth=2
	lsw	r0, -38                         # 2-byte Folded Reload
	ssw	r0, -36                         # 2-byte Folded Spill
	br	__LBB0_10
__LBB0_10:                              # %land.end77
                                        #   in Loop: Header=BB0_3 Depth=2
	lsw	r0, -36                         # 2-byte Folded Reload
	ldi	r2, 1
	and r0, r2, r0
	ssb	r0, -18
	lsb	r0, -17
	lsb	r1, -18
	or r0, r1, r0
	ldi	r1, -10
	add	r1, fp, r1
	ldb	r1, r2, r1
	shl	r1, r1, 8
	lsb	r2, -10
	or r1, r2, r1
	lsw	r2, -12
	shl	r2, r2, 4
	add r1, r2, r1
	lsw	r2, -14
	stb	r1, r2, r0
	br	__LBB0_11
__LBB0_11:                              # %for.inc
                                        #   in Loop: Header=BB0_3 Depth=2
	lsw	r0, -14
	add	r0, 1
	ssw	r0, -14
	br	__LBB0_3
__LBB0_12:                              # %for.end
                                        #   in Loop: Header=BB0_1 Depth=1
	br	__LBB0_13
__LBB0_13:                              # %for.inc85
                                        #   in Loop: Header=BB0_1 Depth=1
	lsw	r0, -12
	add	r0, 1
	ssw	r0, -12
	br	__LBB0_1
__LBB0_14:                              # %for.end87
	lsw	r6, -6                          # 2-byte Folded Reload
	lsw	r5, -4                          # 2-byte Folded Reload
	lsw	r4, -2                          # 2-byte Folded Reload
	addsp	40
	pop	fp
	rts
                                        # -- End function
end.

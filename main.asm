### SECTION: .text
rsect _main_c_16807

print: ext


macro movens/2
push $1
pop $2
mend

main>                                   # -- Begin function main
# %bb.0:                                # %entry
	push	fp
	ldsp	fp
	addsp	0
	ldi	r0, FIELD_0
	jsr	print
	ldi	r0, 0
	addsp	0
	pop	fp
	rts
                                        # -- End function
### SECTION: .data
FIELD_0>                                # @FIELD_0
	dc	47104                           # 0xb800
	dc	0                               # 0x0
	dc	0                               # 0x0
	dc	0                               # 0x0
	dc	0                               # 0x0
	dc	0                               # 0x0
	dc	0                               # 0x0
	dc	0                               # 0x0
	dc	0                               # 0x0
	dc	256                             # 0x100
	dc	1280                            # 0x500
	dc	1792                            # 0x700
	dc	0                               # 0x0
	dc	0                               # 0x0
	dc	0                               # 0x0
	dc	0                               # 0x0

### SECTION: .bss
FIELD_1>                                # @FIELD_1
	ds	32

end.

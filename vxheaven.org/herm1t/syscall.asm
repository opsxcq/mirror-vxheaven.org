; doing syscall via sysenter
; sysctl -w kernel.vdso=1
; warning: it might lead to crash on some broken kernels
		BITS	32
		CPU	386
		global	_start
		section	.text

_start:		push	esp
		call	get_vsyscall
		xchg	ebp,eax

		mov	eax, 20
		call	ebp
		
		mov	eax, 1
		call	ebp

get_vsyscall:	push	esi
		push	ecx
		mov	eax, [esp + 12]		; orig_esp
		mov	esi, [eax]		; argc
		lea	eax, [eax + 4]		; argv
		lea	esi, [eax + esi*4 + 4]	; envp
		cld
		; skip	environment
.skipenv:	lodsd
		or	eax, eax
		jnz	.skipenv
		; look through the aux vector
.nextaux:	lodsd
		mov	ecx,eax
		or	eax,eax
		jz	.notfound
		lodsd
		cmp	ecx, 32			; AT_SYSINFO
		jne	.nextaux
.notfound:	pop	ecx
		pop	esi
		ret

		section	.data

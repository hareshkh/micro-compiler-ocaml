extern printf
extern scanf

section .data
    inf: db '%d', 0
    ouf: db '%d', 10, 0

section .text
    global main

main:
    sub   esp, 1000
    mov   dword [esp+0], 3
    mov   dword [esp+0], 2
    push  dword [esp+0]
    push  ouf
    call  printf
    add   esp, 8
    add   esp, 1000
exit:
    mov  eax, 1 ; sys_exit
    mov  ebx, 0
    int  80h

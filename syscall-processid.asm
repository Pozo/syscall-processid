extern      printf
global      _start

section     .text

_start:
    mov     eax,20          ;system call number (sys_write)
    int     0x80

    push    eax
    push    format
    call    printf

    mov     ebx,0
    mov     eax,1           ;system call number (sys_exit)
    int     0x80            ;call kernel
section     .data
    format     db  '%d',0xa ;print format

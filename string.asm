[org 0x7c00]

mov ah, 0x0e ; ax -> ah and al
mov bx, 0

print_name:
    mov al, [name + bx]
    int 0x10
    inc bx
    cmp bx, len
    je exit
    jmp print_name

name:
    db "Tushar", 0

len equ $ - name

exit:
    jmp $
    times 0x1FE-($-$$) db 0
    db 0x55, 0xaa
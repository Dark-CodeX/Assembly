mov ah, 0x0e
mov al, 'a'

here:
    sub al, 32
    int 0x10
    add al, 32
    int 0x10
    inc al
    cmp al, 'z' + 1
    je exit
    jmp here

exit:
    jmp $
    times 0x1FE-($-$$) db 0
    db 0x55, 0xaa
print:
    pusha

start:
    move al, [bx]
    cmp al, 0
    je done

    move ah, 0x0e
    int 0x10

    add bx, 1
    jmp start

done:
    popa
    ret


print_nl:
    pusha

    mov ah, 0x0e
    mov al, 0x0a ;new line char
    int 0x10
    mov al, 0x0d ;carriage return
    int 0x10

    popa
    ret
    
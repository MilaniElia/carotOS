
[org 0x7c00]

mov bx, my_string
call print

call print_nl

mov bx, my_string2
call print

call print_nl

mov dx, 0x12fe
call boot_sect_print_hex


jmp $

%include 'boot_sect_print_hex.asm'
%include 'boot_sect_print.asm'


my_string:
    db 'Hello, World', 0

my_string2:
    db 'Goodbye!', 0

; Fill with 510 zeros minus the size of the previous code
times 510-($-$$) db 0
; Magic number
dw 0xaa55 
; boot.asm
[org 0x7c00]        ; Boot sector loads at memory address 0x7c00
mov ah, 0x0E        ; BIOS teletype function
mov si, message     ; Load message address

print_loop:
    lodsb           ; Load next byte from message into AL
    cmp al, 0       ; Check for null terminator
    je done
    int 0x10        ; BIOS interrupt to print character
    jmp print_loop

done:
    hlt             ; Halt CPU

message db 'Hello, Kaushalya!', 0
times 510-($-$$) db 0   ; Pad until 510 bytes
dw 0xAA55               ; Boot signature

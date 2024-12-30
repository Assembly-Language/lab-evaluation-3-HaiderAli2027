

INCLUDE Irvine32.inc
.data
;public asmfunc
msg db "assebly procedure end now",0


.code

asmfunc PROC p1:DWORD, p2:DWORD         ; There are 2 parameters
    
    mov esi,p1      ; esi = address of parameter 1
    mov edi,p2      ; edi = address of the parameter 2
    mov ebx,0       ; ebx = will have total zeros
    mov ecx,8       ; Counter for the loop 


    next:
        mov eax, [esi]      ; eax = value at esi
        cmp eax,0           ; compare eax with 0
        pushfd              ; Push all the flags
        add esi,4           ; move esi to next index
        popfd               ; pop all the flags
        jz count            ; if zero flag is set then jump to count

    CheckAgain:             ; Otherwise check again
        loop next           ; loop to the next element

        jmp EndFunc         ; if ecx = 0 then jump to the end

             
    count:                  ; Label for counting total zero's

        inc ebx             ; increment in ebx if zero found
        jmp CheckAgain      ; Then jump to check again

    EndFunc:                ; label to end the function
        mov [edi],ebx       ; move the ebx value to the pointing index of edi
        
        ; Print Message string

        mov edx,offset msg  
        call writestring

    
    ret
asmfunc ENDP
end
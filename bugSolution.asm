mov ecx, [input_size]
; Validate ecx to prevent it from being too large 
mov eax, [limit]
 cmp ecx, eax
jge handle_error ; jump to handle_error if ecx >= eax

mov eax, [ebx+ecx*4]
;... rest of the code

handle_error:
; Handle the error appropriately, perhaps by returning an error code
mov eax, -1
ret
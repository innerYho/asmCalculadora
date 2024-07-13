.model small ; Directiva de segmento.
.data                                       ; inicio datos.
     nom  DB 'Yhoiner Morales Rios','$'     ; declarar var tipo byte.
     id   DB '1098723456','$'
     msg1 DB 10,13, 'Name: $'
     msg2 DB 10,13, 'ID: $'

.code                       ;seccion de código.
main PROC                   ;Definen el inicio y el final de un procedimiento
          mov ax, @DATA     ; Mov: Transfiere datos entre celdas de memoria y registros
     ; AX (acumulador) se usa para almacenar el resultado de las operaciones.
          mov ds,ax         ; (data segment) contiene el segmento donde están los datos.
    
     ;show console msg1.
          lea dx, msg1      ; LEA carga en un registro especificado la dirección efectiva especificada como en el operando origen
     ; DX (datos) es usado para almacenar los datos de las operaciones.
          mov ah, 9         ;ah (acumulator high) es el mismo acumulador pero en la parte alta.
          int 21h           ; devolución del control a (DOS)

     ;show console name
          lea dx, nom
          mov ah, 9
          int 21h

     ;show msg2
          lea dx, msg2
          mov ah, 9
          int 21h

     ;show ID
          lea dx, id
          mov ah, 9
          int 21h

          mov ah, 4ch       ; finalización del programa
          int 21h

main endp                   ; final de un procedimiento
end main
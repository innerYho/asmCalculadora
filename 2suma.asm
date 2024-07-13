.model small 
.stack
.data
     m1      db 'Digite un numero: $'
     m2      db 10, 13, 'Digite otro numero: $'
     m3      db 10, 13, 'la suma es igual a: $'
     numero1 db 0
     numero2 db 0
     suma    db 0
.code
     sumaProc:
              mov ax, @data       ; Mov: Transfiere datos entre celdas de memoria y registros
              mov ds, ax

              mov ah, 9           ;despliega para texto
              lea dx, m1
              int 21H             ; devolución del control a (DOS)

              mov ah, 1           ;esperamos el valor 1
              int 21H
              sub AL, 30H         ;dx de bajo nivel, pasar de ASCII a Hexadecimal
              mov numero1, al

              mov ah, 9
              lea dx, m2
              int 21H

              mov ah, 1           ;esperamos el valor 2
              int 21H
              sub AL, 30H
              mov numero2, al

              mov al, numero1
              add al, numero2
              add al, 30H         ; operación
              mov suma, al

              mov ah, 9           ; ax de alto nivel
              Lea dx, m3          ;registro de 16bits y copia en mensaje3
              int 21H

              mov ah, 2           ;output en pantalla
              mov dl, suma        ;dx de bajo nivel y copia el resultdo en suma
              int 21H

              mov ax, 4C00H       ; Finaliza el código
              int 21h
end sumaProc
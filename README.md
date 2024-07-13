Assembler

# Directivas

Directiva EQU (EQUivalence)
   • Asigna un nombre simbólico al valor de una expresión.

Directiva DB (Define Byte)
    • Reserva memoria para datos de tipo byte.
    El nombre de la variable es opcional, y se asigna dicho nombre para el primer byte.
```
DB (Define Byte) Reservar datos de tamaño byte (8 bits)
DW (Define Word) Reservar datos de tipo palabra (16 bits)
DD (Define Doubleword) Reservar datos de tipo doble palabra (32 bits)
DQ (Define Quadword) Reservar datos de tipo quádruple palabra (64 bits)
DT (Define Terabyte) Reservar datos de tipo terabyte (80 bits o 10 bytes) 
```

Directiva SEGMENT
    • Las directivas SEGMENT y ENDS marcan el principio y el final del segmento cuyo nombre se especifica.
    • Un segmento es un bloque de sentencias que puede contener definiciones de variables y/o instrucciones
    • Sus posibles valores son los siguientes:
        PUBLIC : El segmento se concatenará a otros del mismo 'nombre' en la fase de montaje (link).
        STACK : Define el segmento como segmento de pila (stack).
        MEMORY : El segmento se ubicará en una dirección superior a la de los otros segmentos. Sólo puede haber un segmento de este tipo.

Las directivas PROC y ENDP 
    • Definen el inicio y el final de un procedimiento, que es un conjunto de sentencias a las que se puede acceder directamente llamando al procedimiento. 
    • Un procedimiento posee un nombre, el cual es utilizado para ser llamado. 

Directiva END
    • Indica el final del programa fuente.



# INSTRUCCIONES

Instrucción MOV (MOVe)
    • Mueve o transfiere un byte o una palabra desde el operando fuente al operando destino. El dato transferido se copia, por lo que no desaparece del operando fuente. Tanto el operando fuente como el operando destino pueden ser un registro o un elemento de memoria.


INSTRUCCIONES ARITMETICAS
Instruccion INC (INCrement)
    Incrementa (suma 1 a) el contenido de un registro o de una posición de memoria.
      ```  • Ejemplos:
            INC AX ; AX=AX+1
            INC DL ; DL=DL+1
            INC WORD PTR ES:[DI+4] ; Increm. palabra contenida
                                   ; en ES:DI+4```

Instruccion DEC (DECrement)
    •Decrementa (resta 1 a) el contenido de un registro o de una posición de memoria.
      ```  • Ejemplos:
            DEC AX ; AX=AX-1
            DEC DL ; DL=DL-1
            DEC BYTE PTR ES:[DI+4] ; Decrem. byte coontenido en
                                   ; ES:DI+4
                                   ```




`Operaciones`

## ADD : Adición de los operandos.

Sintaxis:        ``` ADD destino, fuente```

Suma los dos operandos y guarda el resultado en el operando destino.

## SUB : Substracción

Sintaxis:        ``` SUB destino, fuente```

Resta el operando fuente del destino.

## MUL
Multiplicación sin signo

Sintaxis:        ``` MUL fuente```

El ensamblador asume que el multiplicando sera del mismo tamaño que el del multiplicador, por lo tanto multiplica el valor almacenado en el registro que se le da como operando por el que se encuentre contenido en AH si el multiplicador es de 8 bits o por AX si el multiplicador es de 16 bits.

Cuando se realiza una multiplicación con valores de 8 bits el resultado se almacena en el registro AX y cuando la multiplicación es con valores de 16 bits el resultado se almacena en el registro par DX:AX.

## DIV : División sin signo

Sintaxis:        ``` DIV fuente```

El divisor puede ser un byte o palabra y es el operando que se le da a la instrucción.

Si el divisor es de 8 bits se toma como dividendo el registro de 16 bits AX y si el divisor es de 16 bits se tomara como dividendo el registro par DX:AX, tomando como palabra alta DX y como baja AX.

Si el divisor fué un byte el cociente se almacena en el registro AL y el residuo en AH, si fué una palabra el cociente se guarda en AX y el residuo en DX.



## INTRUCCIONES LOGICAS

## Instruccion AND (AND)
Sintaxis: 
```
AND reg,reg
AND reg,mem
AND reg,inmediato
AND mem,reg
AND mem,inmediato
```
    • Realiza un AND lógico, bit a bit, entre el operando destino y el operando fuente, almacenando el resultado en el operando destino. Como la filosofía de esta operación es "valor 1 si los dos bits son 1", se puede utilizar como máscara, filtrando sólo aquellos bits (1) del primer operando que coincidan con los bits (1) del segundo operando.
    ```    • Ejemplos:
            AND AX,BX ; AX=AX AND BX
            AND SI,ES:[DI] ; SI=SI AND ES:[DI]
            AND BX,0A34H ; BX=BX AND 0A34H ```


## Instruccion OR (OR)
Sintaxis: 
```
OR reg,reg
OR reg,mem
OR reg,inmediato
OR mem,reg
OR mem,inmediato
```
• Realiza un OR lógico, bit a bit, entre el operando destino y el operando fuente,
almacenando el resultado en el operando destino. La filosofía de esta
operación es "valor 0 si los dos bits son 0". Su utilidad es poner algunos bits a
1, inalterando el resto.
```
• Ejemplos:
OR AL,BL ; AL=AL OR BL
OR DI,[BX] ; DI=DI OR [BX]
OR CL,34 ; CL=CL OR 34
OR [DI],BX ; [DI]=[DI] OR BX 
```

.STACK         ; Almacenamiento de datos temporales.


# Cibergrafía

* UTM. (S.F.). Juan Juárez. Apuntes de lenguaje ensamblador. [Tomado de:](https://www.utm.mx/~jjf/le/LE_APENDICE_D.pdf)
* Universidad Nacional del sur. Módulo 10 lenguaje ensamblador. (S.F.).[Tomado de:](https://cs.uns.edu.ar/~ldm/mypage/data/oc/apuntes/2019-modulo10.pdf)


Operaciones assembly. (mayo 2024). Andres L.[Tomado de:](https://www.youtube.com/watch?v=OvciyPX01O4)
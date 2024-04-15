#B.10 Escriba un programa llamado “DIV8.s”. El mismo debe tomar un valor en el registro x5 y
#dividirlo por 8. NO se puede usar el método de restas sucesivas, y el mismo debe funcionar
#para valores positivos o negativos. Ej: si x5 = -25, el resultado es -3. Repase la instrucción
#SRAI.

.data
    num: .word -25
    negativo: .string "El Resultado es: -"
    positivo: .string "El Resultado es: "
    cero: .string "El resultado es : 0"
.text
    #cargo el numero al registro x1
    la x5, num
    lw x5,0(x5)
    
    #convierto el numero a positivo
    bgtz x5, mayorACero
    not x5, x5
    addi x5, x5, 1 #le sumo uno porque es complemento a 1
    
    #muestro el resultado negativo
    la a0, negativo
    li a7, 4
    ecall
    jal x1, mostrarNumero
    
mayorACero:
    #muestro resultado positivo
    la a0, positivo
    li a7, 4
    ecall
    srai x1, x1, 3 #srai desplaza para la derecha la cantidad de bits que quiera

mostrarNumero:    
    add a0, x0, x5
    addi a7, x0, 1
    ecall

    

    

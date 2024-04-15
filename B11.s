#B.11 Escriba el programa “ITOA1024.s” basado en el punto B.09, de forma tal
# que el número impreso por consola sea “1234” y no “4321”. 
#Recomendamos almacenar cada dígito en memoria e ir recorriendo la memoria 
#en orden inverso para imprimir por consola. Puede crear en memoria 
#.data una variable de 4 bytes que almacene ceros inicialmente y utilizar este
#espacio de memoria para invertir el número.

.data
    num: .word 1234
    vec: .word 0 0 0 0
    resto: .string "\nResto: "

.text
    la x5, num #cargo el numero en x5
    lw x5, 0(x5)
    
    li x6, 10 #numero para resta
    li x7, 0 #pongo en cero el contador de cociente
    
main:
    add a0, x0, x5 #cargo el numero a a0 para que la funcion acceda
    add a1, x0, x6 #idem
    add a2, x0,x7 #idem
    
    jal division #llamo a la division
    
    add x21, x0, a0 #en x21 guardo a0 (el resto)
    
    add a0, x0, a2 # aca guardo el nuevo cociente en a0
    li a2, 0 # pongo el contador de cociente en 0
    jal division #llamo a la funcion
    
    add x20, x0, a0 #en x20 guardo a0
    
    add a0, x0, a2 # aca guardo el nuevo cociente en a0
    li a2, 0 # pongo el contador de cociente en 0
    jal division
    
    add x19, x0, a0 #en x19 guardo a0
    
    add x18, x0, a2 #guardo el resto
    
    jal imprimir
    
    #fin programa
    li a7, 10 
    ecall
    
division:
    addi a2, a2, 1 #guardo el cociente
    sub a0, a0, a1 # en x5 voy guardando el resto
    bgt a0, a1 division
    ret
    
imprimir:
    add a0,x0, x18
    addi a7, x0, 1
    ecall
    
    add a0,x0, x19
    addi a7, x0, 1
    ecall
    
    add a0,x0, x20
    addi a7, x0, 1
    ecall
    
    add a0,x0, x21
    addi a7, x0, 1
    ecall
    ret
    
    

    
    
    
    
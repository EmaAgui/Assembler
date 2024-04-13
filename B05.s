#B.05 Escriba el valor 100 en x7 y luego programe un bucle utili
#zando el registro x8 como
#contador de 10 a 0. En cada iteración del bucle debe 
#incrementar en uno el valor de x7. Indique
#con qué valor comienza x7 y en qué valor termina luego del bucle

.text
    li x7, 100 #inicializo x7 con 100
    li x8, 10 #inicializo x8 con 10
    add a0, x0, x7 #cargo en a0 lo que quiero mostrar en pantalla
    addi a7, x0, 1 #en a7 le pongo 1 porque es entero 4 si es string
    ecall #imprime lo que esta en a0
loop:
    addi x7, x7, 1 # entro al bucle incremento 1 a x7
    addi x8, x8, -1 #decremento x8
    bnez x8, loop #condicion para entrar al bucle si no es igual a cero salta
#imprimo el contenido de x7 despues del loop
    add a0, x0, x7 
    addi a7,x0, 1
    ecall
    
    
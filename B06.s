#B.06 Escriba un programa que almacene el número 2 en x5 , 
#el número 3 en x6 y 0 en x7 Realice un bucle de forma
# tal que “x7 = x7 + x5” mientras que x6>0 
#(decrementando x6 en cada iteración ). Indique el valor que
# queda en x7 luego del bucle. ¿Qué sucedería si el mismo
#programa se ejecuta cambiando los valores de x5=10 y x6=8 ? 
#Almacene el programa en su computadora como “mult_x5_por_x6.s”.
.text 
    addi x5, x0, 2 #declaro x5 con el numero 2
    addi x6, x0, 3 #declaro x6 con el numero 3
    addi x7, x0, 0 #declaro x7 con el numero 0
loop:
    add x7, x7, x5 #sumo x7 +x5 y lo guardo en x7
    addi x6, x6, -1 #decremento x6
    bgtz x6, loop #si x6 > 0 salta a loop
#imprimo por consola 
    add a0, x0, x7
    addi a7, x0, 1
    ecall
    
    
    
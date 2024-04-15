#B.09 Escriba un programa llamado �ITOAREVERSE.s�.
#El mismo debe grabar en el registro x5
#el valor decimal 1234. Luego debe dividir el mismo por 10 
#utilizando el m�todo de restas sucesivas de B.07
#, mostrar el valor del resto por consola
#recuerde que el ASCII del car�cter 0 es 0x30 y el 9 es 0x39
#, y almacenar el resultado nuevamente en x5.
#Continuar ejecutando esta secuencia hasta que x5 sea cero.
#Ejemplo: en la primera iteraci�n, se imprime 4 en 
#consola (resto), y el n�mero queda 123.
#En la segunda iteraci�n, se imprime 3 en consola (resto), 
#y el n�mero queda 12. En la tercera iteraci�n, 
#se imprime 2 en consola y el n�mero queda 1.
# En la cuarta iteraci�n se imprime 1 en la consola 
#y el programa termina.

.data
    num: .word 1234
    num10: .word 10
    resto: .string "\nResto: "

.text
    la x5, num #cargo en x5 la dir de num
    lw x5, 0(x5) #cargo el contenido de x5
    
    la x6, num10 #cargo en x10 la dir de num10
    lw x6, 0(x6)#cargo el contenido de la palabra, osea el 10

ponerEnCero:
    addi x7, x0, 0 #acumulador en 0
    
loop:
    addi x7, x7, 1 #guardo el cociente
    sub x5, x5, x6 #voy restando, ac� esta el resto 
    
    bgt x5, x6, loop # va a loop si es mayor a 10
    
    #imprimir el resto 
    add a0, x0, x5
    addi a7, x0, 1
    ecall
    
    add x5, x0, x7 #a x5 le pongo el valor del cociente

    bgt x5, x10, ponerEnCero #salto a ponerEnCero el acumulador
    
    #imprimo si queda algo en el cociente
    add a0, x0, x7
    addi a7, x0, 1
    ecall
    
    
    
    

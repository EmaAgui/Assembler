#B.07 Escriba un programa que dado un número almacenado en x5
# (ej: x5=234), el mismo sea dividido por 10, 
#dejando en x7 la cantidad de veces que entra 10 en ese número,
# y en x8 el resto. 
#NO utilizar la instrucción de división, 
#se puede resolver con un bucle contando cuantas veces 
#se le pueden restar 10 a x5 y que el mismo sea mayor que 10.
#Almacene el programa en su computadora como “div_x5_por_10.s”
.data 
    num: .word 234 #declaro un numero cualquiera
    num10: .word 10 #declaro el 10 para hacer restas
    espacio: .string "\n"
    resto: .string "\nResto: "
    resultado: .string "\nResultado: "
.text 
    la x5, num #cargo en x5 la dir de un numero
    lw x5, 0(x5) #cargo en x5 el valor almacenado en num
    la x10, num10 #cargo en x10 el num10
    lw x10,0(x10) #cargo en x10 el valor del num almacenado
    addi x7, x0, 0 #pongo x7 en cero, lo voy a usar como contador
loop:
    addi x7, x7, 1 #voy sumando la cantidad de veces resta
    sub x5, x5, x10 #a x5 le resto 10
    bgt x5, x10, loop # va a loop si es mayor a 10
    add x8, x0, x5 #guardo el resto en x8
    
    la a0, resultado #muestro resultado
    li a7, 4
    ecall
    
    add a0, x0, x7 #muestro el valor del cociente
    addi a7, x0, 1
    ecall
    
    la a0, resto #muestro el mensaje resto
    li a7, 4
    ecall
    
    add a0, x0, x8 #muestro el resto
    addi a7, x0, 1
    ecall
    
    
#B17 IDEM B16 PARA 4 DIGITOS
.data
    numero: .string "1234"
    mil: .word 0, 1000, 2000, 3000, 4000, 5000, 6000, 7000, 8000, 9000
    centena: .word 0,100,200,300,400,500,600,700,800,900
    decena: .word 0,10 ,20, 30, 40, 50, 60, 70, 80, 90
    unidad: .word 0,1 ,2 ,3, 4, 5, 6, 7, 8, 9
.text
    #Lectura
    la x5,numero #CARGO LA DIR DE MEMORIA DE NUM
    lb x6,0(x5) #CARGO EL PRIMER BYTE
    addi x6,x6,-48 #TENGO EL NUMERO LITERAL OSEA EL 1
    lb x7,1(x5)
    addi x7,x7,-48 # 2
    lb x8,2(x5)
    addi x8,x8,-48 # 7
    lb x17, 3(x5)
    addi x17, x17, -48
    
    #calculo mil
    addi x9,x0,0 #X9 = 0
    la x10, mil
    slli x6, x6, 2
    add x10, x10, x6
    lh x11, 0(x10)
    add x9,x9, x11 
    #Calculo Centena
    la x10,centena #CARGO EN X10 LA DIR DE CENTENA
    slli x7,x7,2 #direccion al byte a palabra desplazo x6  *2
    add x10,x10,x7
    lh x11,0(x10) #centena almacena valores mayores al rango [-128:127]
    add x9,x9,x11
    #Calculo Decena
    la x10,decena
    slli x8,x8,2 #direccion al byte a palabra
    add x10,x10,x8
    lb x11,0(x10)
    add x9,x9,x11
    #Calculo Unidad
    la x10,unidad
    slli x17, x17,2 #direccion al byte a palabra
    add x10,x10,x17
    lb x11,0(x10)
    add x9,x9,x11
    
    #imprime el 127 en entero
    addi a0, x9, 0
    addi a7, x0, 1
    ecall
    
    #este programa srve para convertir de array a int

#14/05/2024
.data
    str: .string: .asciiz "Imprimir Ola Mundo"

    .text
    main:
        li a0, 4
        la a1, str
        ecall           #imprime string str
        li s0, 4        #s0 usado no loop for

for:
    beq s0,zero, fim
    li a0, 11
    li a1, 13
    ecall       #imprime uma quebra de linha
    addi s0, s0, -1
    j for
fim:
    li a0, 10
    ecall       #encerra o programa
    ret
#lang racket      ;; define a linguagem default
; ------------------------------------------------
(display "  UENF-CCT-LCMAT-CC, 2024")
(newline)
(display "  Paradigmas de Linguagens de Programacao (Prof. Ausberto Castro)")
(newline)
(display "  Aluno:  Mateus Magalhães C. Ferreira ")
(newline)
(display "----------------------------------------------------")
(newline)   ;;(3 + x)/(7y- 2) – (xy + 9)
(display "Problema 1: (3 + x)/(7y- 2) – (xy + 9)")
(newline)
(define (P x y)
(define numerador (+ 3 x))
(define denominador (- (- (* 7 y) 2) (+ (* x y) 9)))
 (define resp (/ numerador denominador))
  resp)
(display "Resposta: ") (display (P 5 4)) (newline)
(display "----------------------------------------------------")
(newline)   ;;Raiz quadrada de  x^2 + 3x -5

(display "Problema 2: raiz quadrada de x^2 + 3x - 5") (newline)
(define (Q x)
    (let ([exp2 (+ (* x x) (* 3 x) -5)])
        (if (negative? exp2)
            (display "erro: A expressão dentro da raiz é negativa")
            (sqrt exp2)
        )
    )
)
(display "Resposta: se x = 6, resultado é ") (display (Q 6)) (newline)
(display "----------------------------------------------------")
(newline)   ;;Cria lista, define 2º e antepenúltimo elemento

(define lista '(0 1 2 3 4))
(define segundo (list-ref lista 1))
(define antepenultimo (list-ref lista (- (length lista) 3)))
(display "Problema 3: criar lista e definir elementos pela posição") (newline)
(display "Resposta: ") (display "na lista ") (display lista) (display ", ")
(display segundo) (display " é o segundo elemento e ")
(display antepenultimo) (display " é o antepenúltimo elemento.") (newline)
(display "----------------------------------------------------")
(newline)  ;;Ver se o elemento pertence à lista

(display "Problema 4: verificar se o elemento pertence à lista") (newline)
(define (pertence x lista) 
    (if (member x lista) #t #f))
(display "Resposta: ") (newline)
(display "      a)O elemento ") (display 3) (display " pertence à lista? ") (display (if (pertence 3 lista) "Sim" "Não"))
(newline)
(display "      b)O elemento ") (display 12) (display " pertence à lista? ") (display (if (pertence 12 lista) "Sim" "Não"))
(newline)
(display "----------------------------------------------------")
(newline);; inserir 3º elemento em listaA e listaB

(display "Problema 5: inserir o 3º elemento da lista no final duma listaA e no início duma listaB")
(newline)
(define listaA '(-2 -1 0 1))
(define listaB '(3 4 5 6))
(display "ListaA: ") (display listaA) (display " e listaB: ") (display listaB) (newline)
(define ter-elem (list-ref lista 2))
(display "O terceiro elemento é: ") (display ter-elem) (newline)
(define listaA1 (append listaA(list ter-elem)))
(define listaB1 (cons ter-elem listaB))
(display "Resposta: ")
(display "listaA modificada: ") (display listaA1) (display " e listaB modificada:") (display listaB1)
(newline)
(display "----------------------------------------------------")
(newline) ;;calcular perímetro

(display "Problema 6: calcular o perímetro de um quadrado, de círcuo ou de triângulo") (newline)
(define (p-quad l)
    (* 4 l)
 )
 (display "Resposta: o perímetro de um quadrado de lado 5 é ") (display (p-quad 5))
(newline)
(display "----------------------------------------------------")
(newline) ;;k-ésimo
(display "Problema 7: calcular k-ésimo de um número inteiro")

(define (k-par k)
  (* 2 (- k 1)))
(define (k-impar k)
  (+ 1 (* 2 (- k 1))))
(display "Resposta: ") (newline)
(display "      a)O 5º número par é: ") (display (k-par 5)) (newline)
(display "      b)O 5º número ímpar é: ") (display (k-impar 5)) (newline)
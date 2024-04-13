;; Introdução à Linguagem Scheme-Racket
;; Prof. Ausberto S. Castro Vera       (ascv@uenf.br)
;; UENF-CCT-LCMAT - Curso de Ciencia da Computacao
;; 2024
;; Aluno: Fulano      <===========  escreva seu nome aqui

;;;;;;;;;;;;;;;;   Escolha a linguagem R5RS
;;
;; Ajuda:  http://docs.racket-lang.org/guide/syntax-overview.html#(part._.Conditionals_with_if__and__or__and_cond)
;;
#lang racket      ;; define a linguagem default
; ------------------------------------------------
(display "  UENF-CCT-LCMAT-CC, 2024")
(newline)
(display "  Paradigmas de Linguagens de Programacao (Prof. Ausberto Castro)")
(newline)
(display "  Aluno:  Fulano ")
(newline)
;;
;;
;; Condicionais    (if  (condicao) (alternativa1) (alternativa2 ) )
;; ---------------------------------------------------

(define P 528)
(display "P = ")
P
(if (> P 57) 
    (display "P maior que 57")
    (display "P menor que 57")
    )
;;----------------------------

(define (reply s)
  (if (equal? "Oi" (substring s 0 2))
      "Tudo Bem?"
      "Nao entendi."))

;;----------------------------
(define quadrado
     (lambda ( a )    ; parametro formal
       ( * a a)
       )
  )
;;----------------------------
(newline)
(define minquadrado 
             (lambda (a b)   ; parametros formais
             (if (< a b) 
                         (quadrado a) 
                         (quadrado b) ) ) ) 

;;----------------------------

(display "MinQadrado de 6 e 9 = ") (minquadrado 6 9)
(newline)

(display "Oi pessoal da Computacao UENF! ")
(reply "Oi pessoal da Computacao UENF!")

(display "Vai chover na madrugada? ")
(reply "Vai chover na madrugada?")


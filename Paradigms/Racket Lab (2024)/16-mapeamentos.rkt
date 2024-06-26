;; Introdução à Linguagem Scheme-Racket
;; Prof. Ausberto S. Castro Vera       (ascv@uenf.br)
;; UENF-CCT-LCMAT - Curso de Ciencia da Computacao
;;  2024
;; Aluno: Fulano      <===========  seu nome aqui e abaixo
;;
#lang racket      ;; define a linguagem default
; ------------------------------------------------
(newline)
(display "  UENF-CCT-LCMAT-CC, 2024")
(newline)
(display "  Paradigmas de Linguagens de Programacao (Prof. Ausberto Castro)")
(newline)
(display "  Aluno(a):  Fulano ")
(newline)
;;
;;
;; Mapeamentos
; ------------------------------------------------

(define quadrado
  (lambda ( x ) (* x x)
  )
)  
;;;;
(define dobro
  (lambda (y) (* 2 y)
  )
)  
;;;;
(define proximo
  (lambda ( x ) (+ x 1)
  )
)  

;;
;;

(define Lista (list  9 49 81 37 83))
(display "Lista:  ") Lista
(display "Raiz Lista:  ") (map sqrt Lista) 
;;
;;
(newline)
(define dados '(11 6 35 51))
(newline)
(display "Dados:  ") dados
(newline)
;;mapeamentos 
(display "Mapeamentos: Dados-Proximo  ") (newline)
(map proximo dados)

(display "Mapeamentos: Dados-Quadrado  ") (newline)
(map quadrado dados)

(display "Mapeamentos: Dados-Dobro  ") (newline)
(map dobro dados)



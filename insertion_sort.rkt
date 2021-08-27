#lang plai

(define (insert novo lista)
  (if (null? lista)
      (cons novo '())
      (if (< novo (car lista))
          (cons novo lista)
          (cons (car lista) (insert novo (cdr lista)))
      )
  )
)

(define (insertion-sort lista)
  (if (null? lista) lista
      (insert (car lista) (insertion-sort (cdr lista)))
  )
)
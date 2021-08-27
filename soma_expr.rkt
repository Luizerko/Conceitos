#lang plai

(define (soma-expr lista)
  (if (nunll? lista) 0
      (if (number? lista) lista
          (+ (soma-expr (car lista)) (soma-expr (cdr lista)))
      )
  )
)
#lang racket/base

(define (rgz lst (res '()) (count 0))
  (cond
    ((null? lst)            res)
    ((string? (car lst))    (rgz (cdr lst) (append res (list(car lst))) count))
  (else
      (if (< count (car(car lst)))
        (rgz lst (append res (cdr (car lst))) (+ count 1))
        (rgz (cdr lst) res))
  ))
)

(rgz '("b" (3 "a") "b" (2 "c")))
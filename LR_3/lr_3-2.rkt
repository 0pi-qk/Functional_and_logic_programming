#lang racket/base

(define (count lst (k 1))
  (cond
    ((null? lst)          k)
    ((list? (car lst))    (count (append (car lst) (cdr lst)) (+ k 1)))
  (else
    (count (cdr lst) k)
  ))
)


(count '(1 2 (4 (17 (18))) 7 6))
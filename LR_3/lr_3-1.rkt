#lang racket/base

(define (fib depth)
  (if (> depth 1)
    (+ (fib (- depth 1)) (fib (- depth 2)))
    depth
  )
)

(fib 10)

(define (f lst n (count 1))
  (cond
    ((null? lst)    '())
    ((= n count)    (f (cdr lst) n 1))
  (else
    (cons (car lst) (f (cdr lst) n (+ 1 count)))
  ))
)

(f '(1 2 3 4 5 6 7 8 9 0) 2)
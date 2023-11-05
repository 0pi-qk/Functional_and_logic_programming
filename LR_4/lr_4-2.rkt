#lang racket/base

(define (func lst (res '()))
(append res (car lst))
)

(map func '((1 2)(2 4)(3 4)))


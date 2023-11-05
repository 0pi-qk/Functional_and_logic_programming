#lang racket/base

(define (func lst (res (list)) (count 0))
  (cond ((null? lst) res)
      (else
      (cond ((list? (car lst))
      (func (append (car lst) (cdr lst)) res))
      (else (cond ((null? (cdr lst))
      (func (cdr lst) (append res (list (+ count 1)))))
      (else

      (cond ((list? (car(cdr lst)))
      (func (cdr lst) (append res (list (+ count 1)))))
      (else (func (cdr lst) res (+ count 1))
      )
      )
      )
      )
      )
      )
      )
    )
  )

(func '((1 2)(1 2 3 6 7 4 5)(1 2 3 4)))

(define (func lst (res (list)) (count 0))
  (cond
    ((null? lst)              res)
    ((list? (car lst))        (func (append (car lst) (cdr lst)) res))
    ((null? (cdr lst))        (func (cdr lst) (append res (list (+ count 1)))))
    ((list? (car(cdr lst)))   (func (cdr lst) (append res (list (+ count 1)))))
  (else (func (cdr lst) res (+ count 1)))
  )
)

(func '((1 2)(1 2 3 6 7 4 5)(1 2 3 4)))


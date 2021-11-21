#lang racket
(define (deep-reverse items)
  (define (reverse-iter items result)
    (if (null? items)
      result
      (reverse-iter (cdr items) (cons (deep-reverse (car items)) result))))
  (if (pair? items)
    (reverse-iter items (list))
    items))

(define x (list (list 1 2) (list 3 4)))

(deep-reverse x)


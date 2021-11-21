#lang racket
(define (subsets s)
  (if (null? s)
    (list (list))
    (let ((rest (subsets (cdr s))))
      (append rest (map (lambda (x) (append (list (car s)) x)) rest)))))

(subsets (list 1 2 3))

#lang racket
(load "t2.40.scm")

(define (accumulate op initial sequence)
  (if (null? sequence)
    initial
    (op (car sequence)
	(accumulate op initial (cdr sequence)))))

(define (equ-trip n s)
  (filter (lambda (x) (= (accumulate + 0 x) s)) (unique-list n 3)))

(equ-trip 5 8)


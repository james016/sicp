#lang racket
(define (iterative-imporve good-enough? new_guess)
  (define (iter x)
    (if (good-enough? x)
      x
      (iter (new_guess x))))
  iter)

(define tolerance 0.000001)
(define (average x y) (/ (+ x y) 2))
(define (average-damp f) (lambda (x) (average x (f x))))

(define (sqrt x)
  (define (good-enough? y)
    (< (abs (- x (* y y))) tolerance))
  ((iterative-imporve good-enough?
		      (average-damp (lambda (y) (/ x y))))
   1.)
)

(sqrt 10.)

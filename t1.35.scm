#lang racket
; (load "t1.6.lisp")

(define tolerance 0.000001)
(define (fixed-point f first-guess)
  (define (close-enough? v1 v2) (< (abs (- v1 v2)) tolerance))
  (define (try guess)
    (let ((new-guess (f guess)))
      (cond ((close-enough? guess new-guess) new-guess)
	    (else (try new-guess)))))
  (try first-guess))

(fixed-point (lambda (x) (+ 1. (/ 1. x))) 1)

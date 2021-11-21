#lang racket
(load "t1.35.scm")

(define (average x y)
  (/ (+ x y) 2))


(fixed-point (lambda (x) 
	      (newline)
	      (display x)
	      (/ (log 1000) (log x)))
	     10)

(fixed-point (lambda (x) 
	      (newline)
	      (display x)
	      (average (/ (log 1000) (log x)) x))
	     10)

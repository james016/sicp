#lang racket
(load "t1.43.scm")

(define dx 0.00001)
(define (smooth f) (lambda (x) (/ (+ (f (- x dx)) (f x) (f (+ x dx))) 3)))

((smooth (lambda (x) (* x x))) 0)

(((repeated smooth 10) (lambda (x) (* x x))) 0)

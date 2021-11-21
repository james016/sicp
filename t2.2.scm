#lang racket
(define (make-point x y) (cons x y))
(define (x-point point) (car point))
(define (y-point point) (cdr point))

(define (make-segment point-start point-end) (cons point-start point-end))
(define (start-segment segment) (car segment))
(define (end-segment segment) (cdr segment))

(define (average x y)
  (/ (+ x y) 2))

(define (midpoint-segment s)
  (make-point (average (x-point (start-segment s)) (x-point (end-segment s)))
	      (average (y-point (start-segment s)) (y-point (end-segment s)))))


(define (print-point p)
  (newline)
  (display "(")
  (display (x-point p))
  (display ",")
  (display (y-point p))
  (display ")"))

(define segment (make-segment (make-point 1. 2.) (make-point 1. 3.)))

(print-point (midpoint-segment segment))


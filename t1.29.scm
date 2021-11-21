#lang racket
(define (sum func start next end)
  (if (> start end)
    0
    (+ (func start)
       (sum func (next start) next end))))

(define (inc x) (+ x 1))
(define (indentity x) x)

(sum indentity 1 inc 4)

(define (integral f a b dx)
  (* (sum f (+ a (/ dx 2)) (lambda (x) (+ x dx)) b) dx))

(define (cube x) (* x x x))
(integral cube 0 1 0.01)
(integral cube 0 1 0.001)

(define (integral-s f a b n)
  (define (coef i)
    (cond ((= i 0) 1)
	  ((= i n) 1)
	  ((= (remainder i 2) 1) 4)
	  ((= (remainder i 2) 0) 2)))
  (let ((h (/ (- b a) n))) 
    (/ (* (sum (lambda (i) (* (f (+ a (* i h))) (coef i))) 0 inc n) h) 3)))

(integral-s cube 0. 1. 100)
(integral-s cube 0. 1. 1000)

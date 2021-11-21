#lang racket
(define zero (lambda (f) (lambda (x) x)))
(define (add-1 n)
  (lambda (f) (lambda (x) (f ((n f) x)))))

(define one (lambda (f) (lambda (x) (f x))))
(define two (lambda (f) (lambda (x) (f (f x)))))

(define (add m n)
  (lambda (f) (lambda (x) ((m f) ((n f) x)))))

(define (to-int m)
  ((m (lambda (x) (+ x 1))) 0))

((zero (lambda (x) (* 2 x))) 1)
((one (lambda (x) (* 2 x))) 1)
((two (lambda (x) (* 2 x))) 1)
(((add-1 zero) (lambda (x) (* 2 x))) 1)
(((add-1 (add-1 zero)) (lambda (x) (* 2 x))) 1)

(((add two two) (lambda (x) (* 2 x))) 1)
(to-int two)
(to-int (add two two))


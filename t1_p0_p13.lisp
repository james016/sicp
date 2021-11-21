(+ 1 2)
(define pi 3.1415926)
(define radius 10)
(define circumference (* 2 pi radius))
circumference
(define plus +)
(plus 10 20)
(define (square x) (* x x))
(square 10)

(define (sum-of-square x y) (+ (square x) (square y)))
(sum-of-square 3 4)
(define (f a) 
  (sum-of-square (+ a 1) (* a 2)))
(f 5)

(define (abs_f x) 
  (cond ((> x 0) x) ((< x 0) (- x)) ((= x 0) 0) ))
(abs_f -2)


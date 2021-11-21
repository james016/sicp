(load "t1.43.scm")
(load "t1.40.scm")

(define (identity x) x)
(define (average x y) (/ (+ x y) 2))
(define (average-damp f) (lambda (x) (average x (f x))))

(define (sqrt x)
  (fixed-point-for-transform (lambda (y) (newline)(display y)(/ x y)) average-damp 1.)
)

(define (qrt4 x)
  (fixed-point-for-transform (lambda (y) (newline)(display y)(/ x (* y y y))) (repeated average-damp 2) 1.)
)

(define (qrtn x n)
  (fixed-point-for-transform (lambda (y) (newline)(display y)(/ x (expt y (- n 1)))) (repeated average-damp 4) 1.)
)

; (sqrt 10.)
; (qrt4 10.)
(qrtn 10. 16)

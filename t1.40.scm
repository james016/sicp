(load "t1.35.scm")

(define (fixed-point-for-transform g transform guess)
  (fixed-point (transform g) guess))

(define (newtons-method g guess)
  (fixed-point-for-transform g newtons-transform guess))

(define (newtons-transform g)
  (lambda (x) (- x (/ (g x) ((deriv g) x)))))

(define (deriv g)
  (lambda (x) (/ (- (g (+ x dx)) (g (- x dx))) (* 2 dx))))

(define dx 0.000001)

(define (cubic a b c)
  (lambda (x) (+ (* x x x) (* a x x) (* b x) c)))

(newtons-method (cubic 0 0 -1) 1)

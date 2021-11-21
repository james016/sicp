(define (square x) (* x x))
(define (smallest-divisor n)
  (define (divisor-iter n test-divisor)
    (cond ((> (square test-divisor) n) n)
	  ((= (remainder n test-divisor) 0) test-divisor)
	  (else (divisor-iter n (+ test-divisor 1)))))
  (divisor-iter n 2))

(smallest-divisor 199)
(smallest-divisor 1999)
(smallest-divisor 19999)

(define (prime? n)
  (= (smallest-divisor n) n))

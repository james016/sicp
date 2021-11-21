#lang racket
(load "t1.21.scm")

(define (timed-prime-test n)
  (newline)
  (display n)
  (start-prime-test n (runtime))
  n)

(define (start-prime-test n start-time)
  (if (prime? n)
    (report-prime (- (runtime) start-time))))

(define (report-prime elapsed-time)
  (display " *** ")
  (display elapsed-time))

(define (search-for-primes n)
  (define (search-for-primes-num n num)
    (cond ((= num 0) 0)
      ((even? n) (search-for-primes-num (+ n 1) num))
      ((prime? n) (timed-prime-test n) (search-for-primes-num (+ n 2) (- num 1)))
      (else (search-for-primes-num (+ n 2) num))))
  (search-for-primes-num n 3))

; (search-for-primes 1000)
; (search-for-primes 10000)
; (search-for-primes 100000)
; (search-for-primes 1000000)
; (search-for-primes 10000000)
(search-for-primes 100000000)
(search-for-primes 1000000000)
(search-for-primes 10000000000)
(search-for-primes 100000000000)

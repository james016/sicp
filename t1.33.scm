(load "t1.21.scm")
(load "t1.29.scm")

(define (filtered-accumulate combiner null-value term a next b filter)
  (define (iter result a)
    (cond ((> a b) result)
          ((filter a) (iter (combiner result (term a)) (next a)))
	  (else (iter result (next a)))))
  (iter null-value a))

(define (sum-prime a b)
  (filtered-accumulate + 0 indentity a inc b prime?))


(define (gcd-sum n)
  (define (gcd? m)
    (= (gcd m n) 1))
  (filtered-accumulate + 0 indentity 1 inc (- n 1) gcd?))

(sum-prime 2 8)  ; 2+3+5+7=17

(gcd-sum 6) ; 1+5=6

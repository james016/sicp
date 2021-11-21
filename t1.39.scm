(define (cont-frac n d k)
  (define (iter res m)
    (cond ((< m 1) res)
	  (else (iter (/ (n m) (+ (d m) res)) (- m 1)))))
  (iter 0 k))


(define (tan-cf x k)
  (define (n i)
    (if (= i 1) x
      (- (* x x))))
  (define (d i)
    (- (* i 2) 1))
  (cont-frac n d k))

(tan-cf (/ 3.1415926 4) 12)
(tan-cf 0 12)
(tan-cf (/ 3.1415926 2) 14)

(define (cont-frac n d k)
  (define (iter res m)
    (cond ((< m 1) res)
	  (else (iter (/ (n m) (+ (d m) res)) (- m 1)))))
  (iter 0 k))

(define (cont-frac-recur n d k)
  (if (= k 0) 0
    (/ (n 1) (+ (d 1)
		(cont-frac-recur (lambda (i) (n (+ i 1))) (lambda (i) (d (+ i 1))) (- k 1)))))
  )

(let ((k 11)) 
  (- (cont-frac (lambda (x) 1.) (lambda (x) 1.) k)
     (cont-frac (lambda (x) 1.) (lambda (x) 1.) (- k 1))
     )
  )

(cont-frac-recur (lambda (x) 1.) (lambda (x) 1.) 15)

; T1.38.scm

(define (d i)
  (let ((res (if (= (remainder i 3) 2) (+ (* (quotient i 3) 2) 2) 
    1.)))
    (newline)
    (display i)
    (display "   ")
    (display res)
    res)
  )

;(d 1)

(+ (cont-frac (lambda (x) 1.) d 20) 2)

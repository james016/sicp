(define (compose f1 f2)
  (lambda (x) (f1 (f2 x))))

(define (square x) (* x x))
(define (inc x) (+ x 1))

((compose square inc) 6)

; 1.43

(define (repeated f n)
  (define (iter a b m)
    (cond ((= m 0) a)
	  ((even? m) (iter a (compose b b) (/ m 2)))
	  (else (iter (compose a b) b (- m 1)))))
  (iter (lambda (x) x) f n))

((repeated square 2) 5)
((repeated inc 10) 5)

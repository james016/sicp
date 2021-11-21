(define (same-parity . w)
  (define (iter w)
    (cond ((null? w) `())
	  ((null? (cdr w)) w)
	  (else (cons (car w) (iter (cdr (cdr w))) ))))
  (iter w))

(same-parity 1 2 3 4 5 6 7)
(same-parity 2 3 4 5 6 7)

#lang racket
(define (make-rat n d)
  (let ((g (gcd n d))
	(sign (if (< d 0) (- 1) 1)))
    (cons (* sign (/ n g)) (* sign (/ d g)))))

(make-rat (- 1) (- 2))
(make-rat (- 1) 2)
(make-rat 1 (- 2))

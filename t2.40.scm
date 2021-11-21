#lang racket
(define (flatmap proc seq)
  (accumulate append `() (map proc seq)))

(define (enumerate-interval low high)
  (if (> low high)
    `()
    (cons low (enumerate-interval (+ low 1) high))))

(define (unique-pairs n)
  (if (= n 0)
    `()
    (append (map (lambda (j) (list n j)) (enumerate-interval 1 (- n 1))) (unique-pairs (- n 1)))))


(define (unique-list n nk)
  (cond ((= n 0) `())
    	((= nk 1) (map (lambda (x) (list x)) (enumerate-interval 1 n)))
	(else (append (map (lambda (items) (cons n items)) (unique-list (- n 1) (- nk 1))) (unique-list (- n 1) nk)))))

(unique-list 4 3)

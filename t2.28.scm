#lang racket
(define x (list (list 1 2) (list 3 4)))

(define (islist? y)
  (cond ((null? y) #t)
        ((pair? (car y)) #f)
        (else (islist? (cdr y)))))

(islist? x)
(islist? (list))
(islist? (list 1 2))

(define (fringe x)
  (cond ((islist? x) x)
	((not (pair? (car x))) (cons (car x) (fringe (cdr x))))
	((islist? (car x)) (append (car x) (fringe (cdr x))))
	(else (append (fringe (car x)) (fringe (cdr x)))))
	)

(fringe x)
(fringe (list x x))


; (append (list 1 2) (list))

; (fringe x)

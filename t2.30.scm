#lang racket
; (define (square-tree tree)
;   (cond ((null? tree) `())
; 	((not (pair? tree)) (* tree tree))
; 	(else (cons (square-tree (car tree)) (square-tree (cdr tree))))))

(define (square-tree tree)
  (map (lambda (sub-tree)
	 (if (not (pair? sub-tree))
	   (* sub-tree sub-tree)
	   (square-tree sub-tree)))
       tree))

(square-tree (list 1
		   (list 2 (list 3 4) 5)
		   (list 6 7)))



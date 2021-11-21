#lang racket
(load "t2.33.scm")

(define (enumerate-tree tree)
  (cond ((null? tree) `())
	((not (pair? tree)) (list tree))
	(else (append (enumerate-tree (car tree)) (enumerate-tree (cdr tree))))))

(define (count-leaves t)
  (accumulate (lambda (x y) (+ 1 y)) 0 (enumerate-tree t)))

(count-leaves (list 1 (list 2 (list 3))))

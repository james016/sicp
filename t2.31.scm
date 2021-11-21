#lang racket
(define (tree-map func tree)
  (map (lambda (sub-tree)
	 (if (not (pair? sub-tree))
	   (func sub-tree)
	   (tree-map func sub-tree)))
       tree))

(define (square x) (* x x))

(define (square-tree tree)
  (tree-map square tree))


(square-tree (list 1
                   (list 2 (list 3 4) 5)
                   (list 6 7)))

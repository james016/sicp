#lang racket
(define (make-mobile left right)
  (cons left right))

(define (make-branch length structure)
  (cons length structure))

(define (left-branch mobile)
  (car mobile))

(define (right-branch mobile)
  (cdr mobile))

(define (branch-length branch)
  (car branch))

(define (branch-structure branch)
  (cdr branch))

(define (total-weight structure)
  (cond ((not (pair? structure)) structure)
	(else (+ (total-weight (branch-structure (left-branch structure)))
		 (total-weight (branch-structure (right-branch structure)))))))

(define (balance? x)
  (define (torque branch)
    (* (total-weight (branch-structure branch)) (branch-length branch)))
  (if (not (pair? x))
    #t
    (and (= (torque (left-branch x)) (torque (right-branch x)))
	 (balance? (branch-structure (left-branch x)))
	 (balance? (branch-structure (right-branch x))))))

(define x (make-mobile (make-branch 2 (make-mobile (make-branch 2 1) (make-branch 2 2))) (make-branch 2 3)))
(define y (make-mobile (make-branch 2 (make-mobile (make-branch 2 2) (make-branch 2 2))) (make-branch 2 4)))

(total-weight x)
(balance? x)
(balance? y)

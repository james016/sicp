#lang racket
(load "t1.29.scm")

(define (sum-iter term a next b)
  (define (iter start result)
    (if (> start b)
      result
      (iter (next start) (+ result (term start)))))
  (iter a 0))

(sum-iter indentity 0 inc 4)

#lang racket
(define (indentity x) x)
(define (inc x) (+ x 1))

(define (accumulate combiner null-value term a next b)
  (if (> a b)
    null-value
    (combiner (accumulate combiner null-value term (next a) next b) (term a))))

(define (sum term a next b)
  (accumulate + 0 term a next b))

(define (product term a next b)
  (accumulate * 1 term a next b))

(sum indentity 0 inc 4)
(product indentity 1 inc 4)

(define (accumulate-iter combiner null-value term a next b)
  (define (iter a result)
    (if (> a b)
      result
      (iter (next a) (combiner result (term a)))))
  (iter a null-value))

(define (sum-iter term a next b)
  (accumulate-iter + 0 term a next b))

(define (product-iter term a next b)
  (accumulate-iter * 1 term a next b))

(sum-iter indentity 0 inc 4)
(product-iter indentity 1 inc 4)


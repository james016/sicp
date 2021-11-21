(load "t1.30.scm")
(define (product term a next b)
  (if (> a b)
    1
    (* (term a) (product term (next a) next b))))

(product indentity 1 inc 4)

(define (pi-term i)
  (/ (+ i (remainder i 2)) (+ i 1 (- (remainder i 2)))))

(* (product pi-term 2 inc 800) 4.)

(define (product-new term a next b)
  (define (iter a result)
    (if (> a b)
      result
      (iter (next a) (* result (term a)))))
  (iter a 1))

(product-new indentity 1 inc 4)


(define (even? n) (= (remainder n 2) 0))
(define (double n) (+ n n))
(define (halve n) (/ n 2))
(define (* a b)
  (cond ((= b 1) a)
    ((even? b) (* (double a) (halve b)))
    (else (+ (* a (- b 1)) a))))

(* 10 50)
  

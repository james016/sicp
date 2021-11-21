(define (cons a b) (* (expt 2 a) (expt 3 b)))
(define (car z)
  (define (iter z res)
    (if (= (remainder z 2) 0)
      (iter (/ z 2) (+ res 1))
      res))
  (iter z 0))

(define (cdr z)
  (define (iter z res)
    (if (= (remainder z 3) 0)
      (iter (/ z 3) (+ res 1))
      res))
  (iter z 0))

(define z (cons 2 3))

(car z)
(cdr z)

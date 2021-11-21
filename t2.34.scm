(load "t2.33.scm")

(define (horner-eval x coef-seq)
  (accumulate (lambda (this-coeff higher-terms) (+ this-coeff (* higher-terms x))) 0 coef-seq))

(horner-eval 2 (list 1 3 0 5 0 1))

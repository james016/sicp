(load "t2.36.scm")

(define (dot-product v w)
  (accumulate + 0 (map * v w)))

(define (matrix-*-vector m v)
  (map (lambda (w) (dot-product w v)) m))

(define (transpose mat)
  (accumulate-n cons `() mat))

(define (matrix-*-matrix m n)
  (let ((cols (transpose n)))
    (map (lambda (w) (matrix-*-vector cols w)) m)))

(dot-product (list 1 2) (list 1 2))

(matrix-*-vector (list (list 1 2) (list 2 2)) (list 1 2))

(transpose (list (list 1 2) (list 1 2)))

(matrix-*-matrix (list (list 1 2) (list 1 2)) (list (list 1 2) (list 1 2)))

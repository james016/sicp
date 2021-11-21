(define (accumulate op initial sequence)
  (if (null? sequence)
    initial
    (op (car sequence)
	(accumulate op initial (cdr sequence)))))

(define (map p sequence)
  (accumulate (lambda (x y) (cons (p x) y)) `() sequence))

(define (append seq1 seq2)
  (accumulate cons seq2 seq1))

(define (length sequence)
  (accumulate (lambda (x y) (+ 1 y)) 0 sequence))

(accumulate + 0 (list 1 2 3 4 5))

(map (lambda (x) (* x 2)) (list 1 2 3 4 5))

(append (list 1 2 3) (list 2 3 4))

(length (list 1 2 3 4))

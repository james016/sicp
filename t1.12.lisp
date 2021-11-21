(define (triangle row col)
  (if (or (= col 1) (= col row))
    1
    (+ (triangle (- row 1) (- col 1)) (triangle (- row 1) col))))

(triangle 1 1)
(triangle 2 1)
(triangle 2 2)
(triangle 3 1)
(triangle 3 2)
(triangle 3 3)
(triangle 4 2)
(triangle 4 3)
(triangle 4 4)
(triangle 5 3)
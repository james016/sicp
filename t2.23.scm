(define (for-each func items)
  (if (null? items)
    #t
    (let ((g (func (car items))))
      (for-each func (cdr items)))))

(for-each (lambda (x) (newline) (display x)) (list 57 321 88))

;Function 1 reverses the contents of a list
(define (reverse-general L)
  (cond ((null? L) '())
        ((list? L)
         (append (reverse-general (cdr L))
                 (list (reverse-general (car L)))))
         (else L)))

;Function 1 reverses the contents of a list
(define (reverse-general L)
  (cond ((null? L) '())
        ((list? L)
         (append (reverse-general (cdr L))
                 (list (reverse-general (car L)))))
         (else L)))

;Function 2 "sum-up-numbers-simple" sums up the numbers in a list
(define (sum-up-numbers-simple L)
  (cond 
   ((null? L) 0)
   ((number? (car L))
    (+ (car L) (sum-up-numbers-simple (cdr L))))
   (else (+ 0 (sum-up-numbers-simple (cdr L))))))

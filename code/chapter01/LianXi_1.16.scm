(define (square x)
        (* x x))

(define (even? n)
        (= (remainder n 2) 0))

(define (expt-iter a b n)
        (cond ((= n 0) a)
              ((even? n) (expt-iter a (square b) (/ n 2)))
              (else (expt-iter (* a b) b (- n 1)))))
(define (expt b n)
        (expt-iter 1 b n))

(display (expt 3 4))
(exit)
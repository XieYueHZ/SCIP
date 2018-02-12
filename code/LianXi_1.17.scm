(define (double x) (+ x x))
(define (halve x) (/ x 2))

(define (mult a b)
        (cond ((= b 0) 0)
              ((even? b) (mult (double a) (halve b)))
              (else (+ a (mult a (- b 1))))))

(display (mult 5 4))
(display "\n")
(display (mult 7 10))

(exit)
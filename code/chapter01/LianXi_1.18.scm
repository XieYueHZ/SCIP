(define (double x) (+ x x))
(define (halve x) (/ x 2))

(define (mult-iter a b n)
        (cond ((= b 0) n)
              ((even? b) (mult-iter (double a) (halve b) n))
              (else (mult-iter a (- b 1) (+ a n)))))

(define (mult a b)
        (mult-iter a b 0))
(display (mult 2 4))
(display "\n")
(display (mult 7 21))
(exit)
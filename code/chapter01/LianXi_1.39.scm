(load "LianXi_1.37.scm")

(define (tan-cf x k)
        (define (n i)
                (if (= i 1)
                    x
                    (- (* x x))))
        (define (d i)
                (- (* i 2) 1))
;        (cont-frac n d k))
        (exact->inexact (cont-frac n d k)))
(display (tan 10))
(newline)
(display (tan-cf 10.0 100))
(newline)
(exit)
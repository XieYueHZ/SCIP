(load "1.3.3_fixed_point.scm")
(define (phi)
        (fixed-point (lambda (x) (+ 1 (/ 1 x)))
                     1.0))

(display (phi))
(exit)
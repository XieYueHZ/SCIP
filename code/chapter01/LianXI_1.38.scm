(load "LianXi_1.37.scm")
;e=2.718281828459
(define (n x) 1.0)

(define (d x)
        (if (= (mod x 3) 2)
            (* 2 (/ (+ x 1) 3))
            1))

(define (e k)
        (+ 2
           (cont-frac n d k)))
(display (e 1000))
(exit)
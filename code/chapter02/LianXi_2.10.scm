(load "LianXi_2.7.scm")

(define (div-interval x y)
        (if (<= (* (upper-bound y) (lower-bound y)) 0)
            (error "y" y)
            (mul-interval x
                           (make-interval (/ 1.0 (upper-bound y))
                                          (/ 1.0 (lower-bound y))))))

(define a (make-interval 1 3))
(define b (make-interval -2 4))
(print-interval (div-interval a b))
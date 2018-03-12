(load "LianXi_2.7.scm")

(define (sub-interval a b)
        (make-interval (- (lower-bound a) (upper-bound b))
                       (- (upper-bound a) (lower-bound b))))

(define a (make-interval 1 6))
(define b (make-interval 2 4))
(print-interval (sub-interval a b))
(exit)
(load "2.1.4_interval.scm")

(define (make-center-percent c p)
        (make-interval (+ c (* c p))
                       (- c (* c p))))

(define (percent i)
        (/ (- (upper-bound i) (lower-bound i))
           2
           (center i)))
(define (cube x) (* x x x))

(define (sum term a next b)
        (if (> a b)
            0
            (+ (term a)
               (sum term (next a) next b))))

(define (integral f a b k n)
        (define (h a b n) (/ (- b a) n))
        (define (term x)
                (cond ((= x 0) (f a))
                      ((= x n) (f b))
                      ((even? x) (* 2 (f (+ a (* x (h a b n))))))
                      (else (* 4 (f (+ a (* x (h a b n))))))))
        (define (next x) (+ x 1))
        (* (sum term k next n)
           (/ (h a b n) 3.0)))

(display (integral cube 0 1 0 1000))

(exit)
(define (improve guess x)
        (/ (+ (/ x (square guess)) (* 2 guess)) 3))

(define (square x)
        (* x x))

(define (good-enough? guess x)
        (< (abs (- (/ (improve guess x) guess) 1))
           0.0001))

(define (cube-iter guess x)
        (if (good-enough? guess x)
            guess
            (cube-iter (improve guess x)
                       x)))

(define (cube x)
        (cube-iter 1.0 x))

(display (cube 64))
(exit)
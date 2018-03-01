;;;sqrt-iter是一个递归的过程，不断调用自身来获取更好的猜测值，直到猜测值满足要求。
(define (sqrt-iter guess x)
        (if (new-good-enough? guess x)
        guess
        (sqrt-iter (improve guess x)
                   x)))

(define (improve guess x)
        (average guess (/ x guess)))

(define (new-good-enough? guess x)
        (< (abs (- (/ (improve guess x) guess) 1))
           0.0001))
;;;平均值
(define (average x y)
        (/ (+ x y) 2))

(define (sqrt x)
        (sqrt-iter 1.0 x))

(display (sqrt 123456789012345678901234567890))
(display "\n")
(display (sqrt 9))
(display "\n")
(display (sqrt 0.000001))
(exit)
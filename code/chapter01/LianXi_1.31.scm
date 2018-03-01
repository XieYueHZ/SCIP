(define (product term a next b)
        (if (> a b)
            1
            (* (term a)
               (product term (next a) next b))))

(define (factorial n)
        (define (next x) (+ 1 x))
        (define (identity x) x)
        (product identity 1 next n))

(define (product-iter term a next b)
        (define (iter a result)
                (if (> a b)
                    result
                    (iter (next a) (* (term a) result))))
        (iter 1 1))

(define (factorial-iter n)
        (define (next x) (+ 1 x))
        (define (identity x) x)
        (product-iter identity 1 next n))
;;;分子
(define (term-numerator a)
        (if (even? a)
            (* 2 (+ (/ a 2) 1))
            (* 2 (+ (/ (- a 1) 2) 1))))
;;;分母
(define (term-denominator a)
        (- (term-numerator (+ 1 a)) 1))

(define (t a)
        (exact->inexact (/ (term-numerator a) (term-denominator a))))

(define (pi)
        (define (next x) (+ 1 x))
        (* 4 (product-iter t 1 next 10000000)))

; (display (term-denominator 2))
; (newline)
; (display (term-denominator 3))
; (newline)
; (display (term-denominator 4))
; (newline)
; (display (term-denominator 5))
; (newline)
; (display (factorial 6))
; (newline)
; (display (factorial-iter 6))
(display (pi))
(exit)
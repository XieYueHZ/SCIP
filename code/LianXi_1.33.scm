(define (filtered-accumulate combiner null-value term a next b filter)
        (if (> a b)
            null-value
            (if (filter a)
                (combiner (term a) (filtered-accumulate combiner null-value term (next a) next b filter))
                (combiner null-value (filtered-accumulate combiner null-value term (next a) next b filter)))))

(define (sum-a a b)
        (define (next x) (+ 1 x))
        (define (identity x) x)
        (filtered-accumulate + 0 identity a next b even?))


(define (gcd a b)
        (if (= b 0)
            a
            (gcd b (remainder a b))))        

(define (product-coprime n)
        (define (coprime? x)
                (= (gcd x n) 1))
        (define (next x) (+ 1 x))
        (define (identity x) x)
        (filtered-accumulate * 1 identity 1 next n coprime?))
(display (sum-a 1 4))
(newline)
(display (product-coprime 10))
(exit)
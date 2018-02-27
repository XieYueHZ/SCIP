(define (accumulate combiner null-value term a next b)
        (if (> a b)
            null-value
            (combiner (term a)
                      (accumulate combiner null-value term (next a) next b))))

(define (sum a b)
        (define (next x) (+ 1 x))
        (define (identity x) x)
        (accumulate + 0 identity a next b))

(define (accumulate-iter combiner null-value term a next b)
        (define (iter a result)
                (if (> a b)
                    result
                    (iter (next a) (combiner (term a) result))))
        (iter a null-value))

(define (product a b)
        (define (next x) (+ 1 x))
        (define (identity x) x)
        (accumulate-iter * 1 identity a next b))

(display (sum 1 9))
(newline)
(display (product 1 5))
(exit)
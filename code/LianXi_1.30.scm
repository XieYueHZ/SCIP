(define (sum term a next b)
        (define (iter a result)
                (if (= a b)
                    result
                    (iter (next a) (+ (term (next a)) result))))
        (iter a (term a)))

(define (aa x) (* x x))
(define (bb x) (+ x 1))

(display (sum aa 1 bb 5))
(exit)
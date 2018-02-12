(load "00.scm")
;;;最小质因数
(define (smallest-divisor n)
        (find-divisor n 2))
(define (find-divisor n test-divisor)
        (cond ((> (square test-divisor) n) n)
              ((divides? test-divisor n) test-divisor)
              (else (find-divisor n (+ test-divisor 1)))))
(define (divides? a b)
        (= (remainder b a) 0))
;;;检查是否素数
(define (prime? n)
        (= n (smallest-divisor n)))

(define (timed-prime-test n)
        (newline)
        (display n)
        (start-prime-test n (runtime)))
(define (start-prime-test n start-time)
        (if (prime? n)
            (report-prime (- (runtime) start-time))))
(define (report-prime elapsed-time)
        (display " *** ")
        (display elapsed-time))

(define (search-iter s e)
        (if (< s e) (timed-prime-test s))
        (if (< s e) (search-iter (+ 2 s) e)))

(define (search-for-primes s e)
        (if (even? s)
            (search-iter (+ 1 s) e)
            (seach-iter (s e))))


(search-for-primes 10000000000 10000000050)
(search-for-primes 100000000000 100000000050)
(exit)
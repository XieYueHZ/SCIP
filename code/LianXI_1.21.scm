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

(display (smallest-divisor 199))
(display "\n")
(display (smallest-divisor 1999))
(display "\n")
(display (smallest-divisor 19999))

(exit)
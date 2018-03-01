(load "..\\00.scm")

;;;1.计算一个数的幂对另一个数取模的结果
;;; base^exp mod m
(define (expmod base e m)
        (cond ((= e 0) 1)
              ((even? e)
               (remainder (square (expmod base (/ e 2) m)) m))
              (else
               (remainder (* base (expmod base (- e 1) m)) m))))
;;;执行检查
;;;(random n)获取0--(n-1)之间的随机数
(define (fermat-test n)
        (define (try-it a)
                (= (expmod a n n) a))
        (try-it (+ 1 (random (- n 1)))))
;;;运行指定次数的检查
(define (fast-prime? n times)
        (cond ((= times 0) #t)
              ((fermat-test n) (fast-prime? n (- times 1)))
              (else #f)))
;;;指定检查次数为100次
(define (prime? n)
        (fast-prime? n 100))

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


(search-for-primes 1000000000000000000000000000000000000000000 1000000000000000000000000000000000000000100)
(search-for-primes 10000000000000000000000000000000000000000000 10000000000000000000000000000000000000000100)
(exit)
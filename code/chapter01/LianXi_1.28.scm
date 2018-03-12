(load "..\\00.scm")

(define (expmod base e m)
        (cond ((= e 0) 1)
        ;;;加入bases是否是1取模n的非平凡平方根的判断
              ((test? base m) 0)
              ((even? e)
               (remainder (square (expmod base (/ e 2) m)) m))
              (else
               (remainder (* base (expmod base (- e 1) m)) m))))
;;;判断a是否是1取模n的非平凡平方根
(define (test? a n)
        (cond ((= a 1) #f)
              ((= a (- n 1)) #f)
              (else 
               (= (remainder (square a) n) 1))))
;;;a的(n-1)次幂对n的模是否等于1
(define (fermat-test n)
        (define (try-it a)
                (= (expmod a (- n 1) n) 1))
        (try-it (+ 1 (random (- n 1)))))
;;;运行指定次数的检查
(define (fast-prime? n times)
        (cond ((= times 0) #t)
              ((fermat-test n) (fast-prime? n (- times 1)))
              (else #f)))

(define (prime? n)
        (if (even? n)
            #f
            (fast-prime? n (/ (+ n 1) 2))))
; (display (fast-prime? 561 39))
; (newline)
; (display (fast-prime? 2821 100))
; (newline)
; (display (fast-prime? 6601 1500))
; (newline)
; (display (fast-prime? 100000000000403 100))
; (newline)

; (define (test)
;         (if (prime? 561)
;             (display "END")
;             (test)))

; ;(test)

; (define (test n)
;         (if (fast-prime? 561 200)
;             (display n)
;             (test (+ n 1))))

; (test 1)

; (exit)
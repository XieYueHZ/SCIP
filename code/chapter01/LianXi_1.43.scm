(load "..\\00.scm")
(define (compose f g)
        (lambda (x)
                (f (g x))))
(define (repeated f n)
        (define (iter i g)
                (if (= i n)
                    g
                    (iter (+ i 1) (compose f g))))
        (iter 1 f))

; (display ((repeated square 2) 5))
; (exit)
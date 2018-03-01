(load "..\\00.scm")

(define (expmod base e m)
        (cond ((= e 0) 1)
              ((even? e)
               (remainder (square (expmod base (/ e 2) m)) m))
              (else
               (remainder (* base (expmod base (- e 1) m)) m))))

(define (mod-equal? a n)
        (= (expmod a n n) a))

(define (test a n)
        (cond ((> a (- n 1)) (display "Carmichael"))
              ((mod-equal? a n) (test (+ a 1) n))
              (else (display a))))
(define (test-carmichael n)
        (display n)
        (display ":")
        (test 1 n)
        (newline))


(test-carmichael 561)
(test-carmichael 1105)
(test-carmichael 1729)
(test-carmichael 2465)
(test-carmichael 2821)
(test-carmichael 6601)
(test-carmichael 562)
(test-carmichael 6600)
(test-carmichael 6666)
(exit)
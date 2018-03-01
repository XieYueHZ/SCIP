(load "..\\00.scm")
(define tolerance 0.0001)
(define (fixed-point f first-guess)
        (define (close-enough? v1 v2)
                (< (abs (- v1 v2)) tolerance))
        (define (try guess)
                (display guess)
                (newline)
                (let ((next (f guess)))
                (if (close-enough? guess next)
                    next
                    (try next))))
        (try first-guess))

(define (xx n)
        (fixed-point (lambda (x) (/ (log n) (log x))) 2.0))

(xx 1000)
(display "-------------------------")
(newline)
;;平均阻尼
(define (xx2 n)
        (fixed-point (lambda (x) (average x (/ (log n) (log x)))) 2.0))
(xx2 1000)
(exit)
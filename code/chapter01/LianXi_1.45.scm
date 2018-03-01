(load "..\\00.scm")
(load "LianXi_1.43.scm")
(define tolerance 0.00001)

(define (fixed-point f first-guess)
        (define (close-enough? v1 v2)
                (< (abs (- v1 v2)) tolerance))
        (define (try guess)
                (let ((next (f guess)))
                     (if (close-enough? guess next)
                         next
                         (try next))))
        (try first-guess))

(define (average-damp f)
        (lambda (x) (average x (f x))))

(define (ex-g x n guess)
        (define (f y) (/ x (expt y (- n 1))))
        (if (even? n)
            (fixed-point ((repeated average-damp (/ n 2)) f) guess)
            (fixed-point (average-damp f) guess)))

(define (ex x n)
        (ex-g x n 0.1))

; (display (ex 256 8))
; (exit)
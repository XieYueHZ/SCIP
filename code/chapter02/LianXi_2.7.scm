(load "2.1.4_interval.scm")
(define (upper-bound n)
        (max (car n) (cdr n)))

(define (lower-bound n)
        (min (car n) (cdr n)))

; (define t (make-interval 3 5))
; (display (upper-bound t))
; (newline)
; (display (lower-bound t))
; (exit)
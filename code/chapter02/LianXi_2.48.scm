(define (make-segment sv ev)
        (cons sv ev))

(define (start-segment s)
        (car s))

(define (end-segment s)
        (cdr s))
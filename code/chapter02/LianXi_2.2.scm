(define (print-point p)
        (newline)
        (display "(")
        (display (x-point p))
        (display ",")
        (display (y-point p))
        (display ")"))

(define (make-segment s e)
        (cons s e))

(define (start-segment segment)
        (car segment))
  
(define (end-segment segment)
        (cdr segment))

(define (make-point x y)
        (cons x y))

(define (x-point p)
        (car p))

(define (y-point p)
        (cdr p))

(define (midpoint-segment segment)
        (make-point (/ (+ (x-point (start-segment segment)) (x-point (end-segment segment))) 2)
                    (/ (+ (y-point (start-segment segment)) (y-point (end-segment segment))) 2)))

(define test (make-segment (make-point 1 3) (make-point 4 5)))

(define test-mid (midpoint-segment test))

; (print-point (start-segment test))
; (print-point (end-segment test))
; (print-point test-mid)

; (exit)
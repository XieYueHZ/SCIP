(load "2.3.3_set.scm")
(define (adjoin x set)
        (cond ((null? set) (list x))
              ((= x (car set)) set)
              ((< x (car set)) (cons x set))
              (else (cons (car set) (adjoin x (cdr set))))))

; (display (adjoin 5 (list 2 3)))
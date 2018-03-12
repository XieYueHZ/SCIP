(load "2.2.3_accumulate.scm")
(define (flatmap proc seq)
        (accumulate append (list) (map proc seq)))
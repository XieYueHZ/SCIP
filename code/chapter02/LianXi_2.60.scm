(load "2.3.3_set.scm")

(define (adjoin-set x set)
        (cons x set))

(define (union-set set1 set2)
        (append set1 set2))

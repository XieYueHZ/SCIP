(load "2.3.3_set.scm")
(define (union-set set1 set2)
        (if (null? set2)
            set1
            (if (element-of-set? (car set2) set1)
                (union-set set1 (cdr set2))
                (union-set (append set1 (list (car set2)))
                           (cdr set2)))))
(define (union-set set1 set2)
        (if (null? set2)
            set1
            (union-set (adjoin-set (car set2) set1) (cdr set2))))
            
;;(display (union-set (list 1 2 3 4) (list 3 4 5 6)))
            
            
            

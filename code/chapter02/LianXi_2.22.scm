(load "..\\00.scm")
(define (square-list items)
        (define (iter things answer)
                (if (null? things)
                    answer
                    (iter (cdr things)
                          (cons (square (car things))
                                answer))))
        (iter items nil))


(define (square-list2 items)
        (define (iter things answer)
                (if (null? things)
                    answer
                    (iter (cdr things)
                          (cons answer
                                (square (car things))))))
        (iter items nil))

(display (square-list2 (list 1 2 3 4)))
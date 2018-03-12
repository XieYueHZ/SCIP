(load "..\\00.scm")
(define (square-list items)
         (if (null? items)
             nil
             (cons (square (car items)) (square-list (cdr items)))))

(define (square-list-map items)
        (map square items))



(define t (list 1 2 3 4 5))
(display (square-list t))
(newline)
(display (square-list-map t))
(exit)
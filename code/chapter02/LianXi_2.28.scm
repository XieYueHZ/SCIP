; (define (fringe items)
;         (if (pair? items)
;             (append (fringe (car items)) (fringe (cdr items)))
;             (if (null? items)
;                 items
;                 (list items))))

(define (fringe items)
        (define (append-not-pair i)
                (if (null? i)
                    i
                    (list i)))
        (define (iter r next)
                (if (pair? next)
                    (append (iter r (car next)) (iter r (cdr next)))
                    (append-not-pair next)))
        (iter (list) items))

(define x (list (list 1 2) (list 3 4 5)))
(display (fringe x))
(newline)
(display (fringe (list x x)))
(exit)
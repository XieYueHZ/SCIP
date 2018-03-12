(load "LianXi_2.38.scm")
(define (reverse1 sequence)
        (fold-right (lambda (x y)
                            (append y (list x))) (list) sequence))

(define (reverse2 sequence)
        (fold-left (lambda (x y)
                            (append (list y) x)) (list) sequence))

(define t (list 1 2 3 4 (list 7 8 9)))

(display (reverse1 t))
(newline)
(display (reverse2 t))
(exit)
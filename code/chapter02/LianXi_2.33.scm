(load "2.2.3_accumulate.scm")

(define (map p sequence)
        (accumulate (lambda (x y) (cons (p x) y)) 
                    (list)
                    sequence))

(define (append seq1 seq2)
        (accumulate cons seq2 seq1))

(define (length sequence)
        (accumulate (lambda (x y)
                            (+ 1 y)) 
                    0
                    sequence))

(define sq1 (list 1 2 3))
(define sq2 (list 6 7 8))

(define (p x) (+ 1 x))

(display (map p sq1))
(newline)
(display (map p sq2))
(newline)
(display (append sq1 sq2))
(newline)
(display (length sq1))
(exit)
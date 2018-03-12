(load "LianXi_2.36.scm")

(define (dot-product v w)
        (accumulate + 0 (map * v w)))

(define (matrix-*-vector m v)
        (map (lambda (x)
                     (dot-product x v))
             m))

(define (transpose mat)
        (accumulate-n cons (list) mat))

(define (matrix-*-matrix m n)
        (let ((cols (transpose n)))
             (map (lambda (x)
                          (accumulate cons
                                      (list)
                                      (map (lambda (y)
                                                   (dot-product x y))
                                            cols))) m)))

(define m (list (list 1 2 3 4) (list 4 5 6 6) (list 6 7 8 9)))
(define v (list 1 2 3 4))
(display (matrix-*-vector m v))
(newline)
(display (transpose m))
(newline)
(display (matrix-*-matrix m (transpose m)))
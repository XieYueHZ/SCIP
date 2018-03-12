(load "LianXi_2.7.scm")

(define t1 (make-interval 0.5 3))

(display "par1:")
(print-interval (par1 t1 t1))
(newline)
(display "par2:")
(print-interval (par2 t1 t1))
(newline)
(exit)
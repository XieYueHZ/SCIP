(load "..\\00.scm")
(define (tree-map proc tree)
        (map (lambda (sub-tree)
                     (if (pair? sub-tree)
                         (tree-map proc sub-tree)
                         (proc sub-tree)))
              tree))

(define (square-tree tree) (tree-map square tree))

(define t (list 1
                (list 2 (list 3 4) 5)
                (list 6 7)))

(display (square-tree t))
(exit)
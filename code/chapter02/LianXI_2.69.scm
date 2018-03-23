(load "2.3.4_huffman.scm")
(define (generate-huffman-tree pairs)
        (successive-merge (make-leaf-set pairs)))

(define (successive-merge leaf-set)
        (cond ((null? leaf-set) `())
              ((null? (cdr leaf-set))
               leaf-set)
              (else (let ((tree (make-code-tree (car leaf-set)
                                                (cadr leaf-set))))
                         (successive-merge (adjoin-set tree (cddr leaf-set)))))))


(define p '((A 8) (B 3) (C 1) (D 1) (E 1) (F 1) (G 1) (H 1)))
(define ls (generate-huffman-tree p))

(newline)
(display ls)
(exit)
(define (union-set set1 set2)
        (let ((l1 (tree->list-2 set1))
              (l2 (tree->list-2 set2)))
             (list->tree (union-set-list l1 l2))))


(define (intersection-set set1 set2)
        (let ((l1 (tree->list-2 set1))
              (l2 (tree->list-2 set2)))
             (list->tree (intersection-set-list l1 l2))))
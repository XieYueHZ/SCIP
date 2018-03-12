(load "LianXi_2.18.scm")

;;递归
;;如果items不是序对，空或者数，返回自身
;;否则，反转(car items),并将其添加到反转(cdr items)得到的表之后
; (define (deep-reverse items)
;         (if (pair? items)
;             (append (deep-reverse (cdr items)) (list (deep-reverse (car items))))
;             items))

;;迭代
(define (deep-reverse items)
        (define (iter r next)
                (if (pair? next)
                    (append (iter r (cdr next)) (list (iter r (car next))))
                    next))
        (iter (list) items))
(display (deep-reverse (list (list 2 9 (list 3 7)) (list 1 4 5))))
(exit)
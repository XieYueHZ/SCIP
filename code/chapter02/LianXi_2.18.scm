; (define (reverse items)
;         (let ((p (- (length items) 1)))
;              (define (iter p newlist)
;                      (if (= p 0)
;                          (cons (car items) newlist)
;                          (cons (list-ref items p) (iter (- p 1) newlist))))
;         (iter p (list))))

; ;;;递归实现
; (r ((1 2) (3 4)))
; (a (r ((3 4))) ((1 2)))
; (a (a (r ()) ((3 4))) ((1 2)))
; (a (a () ((3 4))) ((1 2))))
; (a ((3 4)) ((1 2)))
; ((3 4) (1 2))
; (define (reverse items)
;         (if (null? items)
;             items
;             (append (reverse (cdr items)) (list (car items)))))


; (define (reverse items)
;         (let ((p (- (length items) 1)))
;              (define (iter n p newlist)
;                      (if (= n p)
;                          (append newlist (list (list-ref items p)))
;                          (append (iter (+ 1 n) p newlist) (list (list-ref items n)))))
;         (iter 0 p (list))))

;;;迭代实现
(define (reverse items)
        (define (iter r next)
                (if (null? next)
                    r
                    (iter (cons (car next) r) (cdr next))))
        (iter (list) items))

; (define t (list (list 1 4) (list 9 16 25)))
; (display (reverse t))
; (exit)
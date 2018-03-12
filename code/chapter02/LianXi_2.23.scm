; (define (for-each f l)
;         (define (f-run f n)
;                 (f n)
;                 f)
;         (if (null? l)
;             f
;             (for-each (f-run f (car l)) (cdr l))))

; (define (for-each f items)
;         (cond ((null? (cdr items)) (f (car items)))
;               (else
;                 ((f (car items))
;                  (for-each f (cdr items))))))

(define (for-each f items)
        (define (f-run n)
                (f n)
                f-run)
        (define (iter r next)
                (if (null? next)
                    f
                    (iter (r (car next)) (cdr next))))
        (iter f-run items))
(for-each (lambda (x) (newline) (display x))
          (list 57 321 88))

(exit)
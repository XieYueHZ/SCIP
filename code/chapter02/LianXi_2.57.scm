(load "2.3.2_deriv.scm")

(define (addend s) (cadr s))

(define (augend s)
        (let ((aug (cddr s)))
             (if (null? (cdr aug))
                 (car aug)
                 (cons '+ aug))))

(define (multiplier p)
        (cadr p))

(define (multiplicand p)
        (let ((cand (cddr p)))
             (if (null? (cdr cand))
                 (car cand)
                 (cons '* (cddr p)))))
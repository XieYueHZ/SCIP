(load "2.3.2_deriv.scm")
(define (make-sum a b)
        (cond ((= a 0) b)
              ((= b 0) a)
              ((and (number? a) (number? b))
               (+ a b))
              (else (list a '+ b))))

(define (sum? e)
        (and (pair? e) (eq? (cadr e) '+)))

(define (addend e)
        (car e))

(define (augend e)
        (caddr e))

(define (make-product a b)
        (cond ((= a 0) 0)
              ((= b 0) 0)
              ((and (number? a) (number? b))
               (* a b))
              (else (list a '* b))))

(define (product? e)
        (and (pair? e) (eq? (cadr e) '*)))

(define (multiplier e)
        (car e))

(define (multiplicand e)
        (caddr e))


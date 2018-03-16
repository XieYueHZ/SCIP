(load "2.3.2_deriv.scm")

(define (make-sum a b)
        (cond 
              ((=number? a 0) b)
              ((=number? b 0) a)
              ((and (number? a) (number? b))
               (+ a b))
              ((pair? a)
               (if (pair? b)
                   (append a (cons '+ b))
                   (append a (list '+ b))))
              (else (if (pair? b)
                        (cons a (cons '+ b))
                        (cons a (list '+ b))))))



(define (sum? e)
        (and (pair? e) (eq? (cadr e) '+)))
    
(define (addend e)
        (car e))
    
(define (augend e)
        (let ((x (cddr e)))
             (if (or (pair? (car x)) (pair? (cdr x)))
                 x
                 (car x))))


(define (make-product a b)
        (cond 
              ((=number? a 0) 0)
              ((=number? b 0) 0)
              ((and (number? a) (number? b))
               (* a b))
              ((pair? a)
               (if (sum? a)
                   (cond ((sum? b) (list a '* b))
                         ((pair? b) (cons a (cons '* b)))
                         (else (cons a (cons '* (list b)))))
                   (cond ((sum? b) (append a (list '* b)))
                         ((pair? b) (append a (cons '* b)))
                         (else (append a (cons '* (list b)))))))
              (else (cond ((sum? b)
                           (list a '* b))
                          ((pair? b)
                           (cons a (cons '* b)))
                          (else (cons a (cons '* (list b))))))))

(define (product? e)
        (and (pair? e) (eq? (cadr e) '*)))

(define (multiplier e)
        (car e))

(define (multiplicand e)
        (let ((x (cddr e)))
             (if (or (pair? (car x)) (pair? (cdr x)))
                 (if (sum? (car x))
                     (car x)
                     x)
                 (car x))))
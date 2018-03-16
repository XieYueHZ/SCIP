(load "2.3.2_deriv.scm")

(define (** a n)
        (expt a n))

(define (make-exponentiation a n)
        (cond ((=number? n 0) 1)
              ((=number? n 1) a)
              (else (list '** a n))))

(define (base e)
        (cadr e))

(define (exponent e)
        (caddr e))

(define (exponentiation? e)
        (and (pair? e) (eq? (car e) '**)))

(define (deriv exp var)
        (cond ((number? exp) 0)
              ((variable? exp)
               (if (same-variable? exp var)
                   1
                   0))
              ((sum? exp)
               (make-sum (deriv (addend exp) var)
                         (deriv (augend exp) var)))
              ((product? exp)
               (make-sum (make-product (multiplier exp)
                                       (deriv (multiplicand exp) var))
                         (make-product (deriv (multiplier exp) var)
                                       (multiplicand exp))))
              ((exponentiation? exp)
               (make-product (make-product (exponent exp)
                                           (make-exponentiation (base exp)
                                                                (make-sum (exponent exp) -1)))
                             (deriv (base exp) var)))
              (else (error "unknown expression type--DERIV" exp))))


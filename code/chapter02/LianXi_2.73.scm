(define (install-deriv-package)
        (define (deriv-sum exp var)
                (make-sum (deriv (addend exp) var)
                          (deriv (augend exp) var)))
        (define (deriv-product exp var)
                (make-sum (make-product (multiplier exp)
                                        (deriv (multiplicand exp) var))
                          (make-product (deriv (multiplier exp) var)
                                        (multiplicand exp))))
        (define (deriv-expt exp var)
                (make-product (make-product (exponent exp))
                              (make-exponentiation (base exp)
                                                   (make-sum (exponent exp) -1))))


        ;(define (tag x) (attach-tag 'deriv x))
        (put 'deriv '+ deriv-sum)
        (put 'deriv '* deriv-product)
        (put 'deriv '** deriv-expt)
        'done)


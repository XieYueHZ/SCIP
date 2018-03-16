(define (splite op1 op2)
        (lambda (painter n)
                (if (= n 0)
                    painter
                    (let ((smaller ))
                         (op1 painter (op2 smaller smaller))))))
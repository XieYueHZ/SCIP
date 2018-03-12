(load "2.1.1_rat.scm")
(load "..\\chapter01\\1.2.5_gcd.scm")

(define (make-rat n d)
        (let ((g (gcd (abs n) (abs d))))
             (cond ((> d 0) (cons (/ n g) (/ d g)))
                   ((< d 0) (cons (- (/ n g)) (- (/ d g))))
                   (else (error "error" d)))))

(define x (make-rat 3 -6))
(display (car x))
(newline)
(display (cdr x))
(exit)
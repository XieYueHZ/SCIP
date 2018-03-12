(load "2.2.3_flatmap.scm")

(define (enumerate-interval low high)
        (if (> low high)
            (list)
            (append (list low) (enumerate-interval (+ 1 low) high))))

(define (unique-pairs n)
            (flatmap (lambda (i)
                             (map (lambda (j)
                                          (list i j))
                                          (enumerate-interval (+ i 1) n)))
                     (enumerate-interval 1 n)))

(define (unique-triples n)
        (flatmap (lambda (x)
                         (map (lambda (y)
                                      (cons x y))
                              (unique-pairs (- x 1))))
                 (enumerate-interval 1 n)))


(define (ns-pairs n s)
        (define (sum-eq-s? l)
        (= (+ (car l) (cadr l) (caddr l))
          s))
        (filter sum-eq-s? (unique-triples n)))

(display (ns-pairs 5 8))
; (display (enumerate-interval 1 5))
; (display (unique-triples 5))
(exit)
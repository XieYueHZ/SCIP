(load "2.2.3_flatmap.scm")
(load "..\\chapter01\\LianXi_1.28.scm")
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


(define (prime-sum? pair)
        (prime? (+ (car pair) (cadr pair))))

(define (make-pair-sum pair)
        (list (car pair) (cadr pair) (+ (car pair) (cadr pair))))

(define (prime-sum-pairs n)
        (map make-pair-sum
             (filter prime-sum? (unique-pairs n))))


; (display (enumerate-interval 3 5))
; (newline)
(display (unique-pairs 4))
(newline)
; (display (prime-sum-pairs 5))
(exit)


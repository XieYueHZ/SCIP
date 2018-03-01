; (define (cont-frac n d k)
;         (if (= k 1)
;             1
;             (/ (n k) (+ (d k)
;                         (cont-frac n d (- k 1))))))

;迭代1
(define (cont-frac n d k)
        (define (iter i result)
                (if (= i k)
                    result
                    (iter (+ i 1) (/ (n (- k i))
                                     (+ (d (- k i)) result)))))
        (iter 1 (/ (n k) (d k))))
;迭代2
; (define (cont-frac n d k)
;         (define (iter i result)
;                 (if (= i 1)
;                     result
;                     (iter (- i 1) (/ (n (- i 1))
;                                      (+ (d (- i 1)) result)))))
;         (iter k (/ (n 1) (d 1))))
;递归

; (define (cont-frac n d k)
;         (define (cont i)
;                 (if (= i k)
;                     (/ (n i) (d i))
;                     (/ (n i)
;                        (+ (d i) (cont (+ i 1))))))
;         (cont 1))

; (display (cont-frac (lambda (x) 1.0)
;                     (lambda (x) 1.0)
;                     11))

;(exit)
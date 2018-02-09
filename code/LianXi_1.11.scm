;;;递归
(define (f n)
        (if (< n 3) n
            (+ (f (- n 1))
               (* 2 (f (- n 2)))
               (* 3 (f (- n 3))))))

(display (f 1))
(display "\n")
(display (f 5))
(display "\n---------------\n")
;;;迭代

(define (f-iter a b c n)
        (if (= n 2)
            a
            (f-iter (+ a (* 2 b) (* 3 c))
                    a
                    b 
                    (- n 1))))
(define (ff n)
        (if (< n 3) n
          (f-iter 2 1 0 n)))

(display (ff 1))
(display "\n")
(display (ff 5))
(exit)
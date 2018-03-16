(define (corner-split painter n)
        (if (= n 0)
            painter
            (beside (below painter (up-split (- n 1)))
                    (below (right-split (- n 1)) (corner-split (- n 1))))))

(define (square-limit painter n)
        (let ((combine4 (square-of-four identity flip-horiz
                                        flip-vert rotate180)))
             (combine4 (corner-split painter n))))        
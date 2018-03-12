(define (last-pair items)
        (let ((p (- (length items) 1)))
             (list (list-ref items p))))

; (display (last-pair (list 32 72 149 34)))
; (exit)
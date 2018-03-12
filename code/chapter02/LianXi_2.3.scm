(load "LianXi_2.2.scm")
(load "..\\00.scm")

;;;实现:点
(define (rectangle point-A point-B point-C point-D)
        (cons (make-segment point-A point-B) (make-segment point-C point-D)))
;;;实现:边
; (define (rectangle segment-AB segment-CD)
;         (cons segment-AB segment-CD))

;;;选择函数
(define (point-A rec)
        (car (car rec)))
(define (point-B rec)
        (cdr (car rec)))
(define (point-C rec)
        (car (cdr rec)))
(define (point-D rec)
        (cdr (cdr rec)))

(define (segment-AB rec)
        (car rec))
(define (segment-BC rec)
        (make-segment (point-B rec) (point-C rec)))
(define (segment-DA rec)
        (make-segment (point-D rec) (point-A rec)))
(define (segment-CD rec)
        (cdr rec))

(define (segment-length segment)
        (define x-length
                (- (x-point (start-segment segment))
                   (x-point (end-segment segment))))
        (define y-length
                (- (y-point (start-segment segment))
                   (y-point (end-segment segment))))
        (sqrt (+ (square x-length) (square y-length))))

(define (r-length rec)
        (segment-length (segment-AB rec)))
(define (r-width rec)
        (segment-length (segment-BC rec)))

(define (perimeter rect)
        (* 2 (+ (r-length rect) (r-width rect))))

(define (area rect)
        (* (r-length rect) (r-width rect)))

(define test-r (rectangle (make-point 0 0) (make-point 10 0) (make-point 10 4) (make-point 0 4)))
(display (perimeter test-r))
(newline)
(display (area test-r))
(exit)
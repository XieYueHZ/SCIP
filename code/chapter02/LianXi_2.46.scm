(define (make-vect x y)
        (cons x y))

(define (xcor-vect vect)
        (car vect))

(define (ycor-vect vect)
        (cdr vect))

(define (add-vect a b)
        (make-vect (+ (xcor-vect a) (xcor-vect b))
                   (+ (ycor-vect a) (ycor-vect b))))

(define (sub-vect a b)
        (make-vect (- (xcor-vect a) (xcor-vect b))
                   (- (ycor-vect a) (ycor-vect b))))

(define (scale-vect n a)
        (make-vect (* n (xcor-vect a))
                   (* n (ycor-vect a))))
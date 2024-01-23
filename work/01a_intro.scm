(define square (lambda (x) (* x x)))
(define (myabs x)
  (cond ((< x 0 ) (- x))
         ((= x 0) 0)
         ((> x 0) x)))
(define (d) (* 5 5))
(define (average m n)
  (/ (+ m n) 2))

(define (good-enough? guess x)
  ( < (myabs (- (square guess) x)) .001))

(define (improve guess x)
  (average guess (/ x guess)))

(define (try guess x)
  (if (good-enough? guess x)
      guess
      (try (improve guess x) x)))
(define (mysqrt x) (try 1 x))
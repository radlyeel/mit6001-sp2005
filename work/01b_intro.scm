(define (sos x y)
  (+ (sq x) (sq y)))

(define (sq x)
  (* x x))

; Peano Arithmetic
;; Because scheme doesn't hav 1+ and 1-:
(define (1+ x) (+ x 1))
(define (1- x) (- x 1)) 

;; Iterative process
(define (plus-a x y)
  (if (= x 0)
      y
      (plus-a (1- x) (1+ y))))
;; Recursive process
(define (plus-b x y)
  (if (= x 0)
      y
      (1+ (plus-a (1- x) y))))

; An AWFUL implementation, since it's O(k^n) in time
; and O(n) in space
(define (fib n)
  (if (< n 2)
      n
      (+ (fib (- n 1)) (fib (- n 2)))))

(define (hanoi n from to spare)
  (cond ((= n ) "Done")
        (#t  (hanoi (- n 1) from spare to)
             (display from to)
             (hanoi (- n 1) spare to from)))) 
             
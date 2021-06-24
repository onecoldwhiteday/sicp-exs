Theory examples

; Helpers: 
(define (square x) (* x x))
(define (abs x)
  (cond ((> x 0) x)
        ((< x 0) ( - x))
        ((= x 0) 0)))
(define (average x y) 
  (/ (+ x y) 2))



; Find square root with Newton's method
;;; Guess:
;1
;;; Quituent x / y, where x - number which root we are searching,
;;; and y - our guess
;(define x 2)
;(define y 1)
;;; x / y
;(define quotient (/ x y)) 	; (/ 2 1) = 2
;;; Average between guess and quotient("частное")
;(define average (/ (+ y quotient) 2)) ; (/ (+ 2 1) 2) = 1.5
;;; Then take our average(we call it approximate) and iterate whole cycle again

;; Let's define our condition for desirable approximation accuracy
(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (improve guess x)
  (average guess (/ x guess)))


(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))

(define (sqrt x)
  (sqrt-iter 1.0 x))

(sqrt 3)
(sqrt 9)
(sqrt 4)
(sqrt 16)

; Exercise 1.2
;Translate the following expression into prefix form:
;5 + 4 + (2 − (3 − (6 + 4/5))) / 3(6 − 2)(2 − 7)

;Answer: 
(/ (+ 5 
      4 
      (- 2 (- 3 (+ 6 (/ 4 5))))) 
   (* 3 
      (- 6 2) 
      (- 2 7)))


; Exercise 1.3
;Define a procedure that takes three numbers
;as arguments and returns the sum of the squares of the two
;larger numbers.

(define (sq a) 
  (* a a))
(define (ssq a b)
  (+ (sq a) (sq b)))

(define (sum-max-sq a b c)
  (cond ((and (> b a) (> c a)) (ssq b c) ) 
        ((and (> a b) (> c b)) (ssq a c) ) 
  		(else (ssq a b))))

; Excercise 1.4
; Observe that our model of evaluation allows
;for combinations whose operators are compound expressions. Use this observation to describe the behavior of the
;following procedure:
(define (a-plus-abs-b a b)
((if (> b 0) + -) a b)
)

(a-plus-abs-b 2 -1)
((if (> b 0) + -) a b)
((if (> -1 0) + -) 2 -1)
((if #f + -) 2 -1)
(- 2 -1)
3

; Excercise 1.7

(define (square x) (* x x))

(define (abs x)
  (cond ((> x 0) x)
        ((< x 0) ( - x))
        ((= x 0) 0)))

(define (average x y) 
  (/ (+ x y) 2))

(define (good-enough? guess x)
  (= guess (improve guess x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))

(define (sqrt x)
  (sqrt-iter x/2 x))

; Exercise 1.8


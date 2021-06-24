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

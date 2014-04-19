(define (abs x)
  (if (< x 0) (- 0 x) x))

(define (square x)
  (* x x))

(define (good-enough? guess x)
  (display (format "~a\n" guess))
  (< (abs (- (square guess) x)) 0.0001))

(define (improve guess x)
  (/ (+ guess (/ x guess)) 2))

(define (sqrt-iter guess x)
  (if (good-enough? guess x) guess
      (sqrt-iter (improve guess x) x)))

(define (sqrt x)
  (sqrt-iter 1.0 x))

(sqrt 9)

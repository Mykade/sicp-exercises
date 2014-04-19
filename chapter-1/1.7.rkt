(define (abs x)
  (if (< x 0) (- 0 x) x))

(define (square x)
  (* x x))

(define (good-enough? old-guess new-guess)
  (display (format "~a\n" old-guess))
  (< (/ (abs (- new-guess old-guess)) old-guess) 0.0001))

(define (improve guess x)
  (/ (+ guess (/ x guess)) 2))

(define (sqrt-iter guess x)
  (let ((new-guess (improve guess x)))
    (if (good-enough? guess new-guess) guess
        (sqrt-iter new-guess x))))

(define (sqrt x)
  (sqrt-iter 1.0 x))

(sqrt 0.0000000000000000000009)

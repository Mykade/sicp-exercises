(define (abs x)
  (if (< x 0) (- 0 x) x))

(define (square x)
  (* x x))

(define (good-enough? old-guess new-guess)
  (display (format "~a\n" old-guess))
  (< (/ (abs (- new-guess old-guess)) old-guess) 0.0001))

(define (improve guess x)
  (/ (+ (* 2 guess) (/ x (* guess guess))) 3))

(define (cube-root-iter guess x)
  (let ((new-guess (improve guess x)))
    (if (good-enough? guess new-guess) guess
        (cube-root-iter new-guess x))))

(define (cube-root x)
  (cube-root-iter 1.0 x))

(cube-root 0.000000008)

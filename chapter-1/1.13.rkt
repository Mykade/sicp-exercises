(define (fib n)
  (cond ((< n 0) (error "n is less then 0"))
        ((= n 0) 0)
        ((= n 1) 1)
        ((= n 2) 1)
        (else (+ (fib (- n 1)) (fib (- n 2))))))

(displayln (fib 5))

(define (fib n)
  ( / (- (expt (/ (+ 1 (sqrt 5)) 2) n)
         (expt (/ (- 1 (sqrt 5)) 2) n))
      (sqrt 5)))

(displayln (fib 5))

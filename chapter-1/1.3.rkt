(define (bigger x y)
  (if (> x y) x y))

(define (smaller x y)
  (if (< x y) x y))

(define (bigger-sum a b c)
  (+ (sqr (bigger a b)) (sqr (bigger (smaller a b) c))))

(bigger-sum 1 2 3)

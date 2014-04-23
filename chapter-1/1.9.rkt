(define (inc x)
  (display (format "inc ~a\n" x))
  (+ x 1))

(define (dec x)
  (display (format "dec ~a\n" x))
  (- x 1))



(define (plus-1 a b)
  (display (format "plus ~a ~a\n" a b))
  (if (= a 0)
      b
      (inc (plus-1 (dec a) b))))

(plus-1 4 5)


(define (plus-2 a b)
  (display (format "plus ~a ~a\n" a b))
  (if (= a 0)
      b
      (plus-2 (dec a) (inc b))))

(plus-2 4 5)

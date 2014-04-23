(define (rec-f n)
  (display (format "n=~a\n" n))
  (if (< n 3)
      n
      (+ (rec-f (- n 1))
         (* 2 (rec-f (- n 2)))
         (* 3 (rec-f (- n 3))))))


(display (rec-f 4))


(define (iter-f-iter a b c i n)
  (display (format "a=~a, b=~a, c=~a, i=~a\n" a b c i))
  (if (= i n)
      c
      (iter-f-iter (+ a (* 2 b) (* 3 c))
                   a
                   b
                   (+ i 1)
                   n)))

(define (iter-f n)
  (iter-f-iter 2 1 0 0 n))

(display (iter-f 4))

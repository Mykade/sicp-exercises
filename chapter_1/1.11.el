(defun f (n)
  (cond ((< n 3) n)
        ((+ (f (- n 1))
            (* 2 (f (- n 2)))
            (* 3 (f (- n 3)))))))

(defun f (n)
  (defun f-iter (a b c i)
    (cond ((= i n) c)
          ((f-iter (+ a (* 2 b) (* 3 c)) a b (+ i 1)))))
  (f-iter 2 1 0 0))


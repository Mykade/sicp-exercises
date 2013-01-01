(defun dec (x)
  (- x 1))

(defun inc (x)
  (+ x 1))

(defun plus1 (a b)
  (if (= a 0) b
    (inc (plus1 (dec a) b))))

(plus1 2 2)
;(inc (plus1 1 2))
;(inc (inc (plus1 0 2)))
;(inc (inc 2))
;(inc 3)
;(4)


(defun plus2 (a b)
  (if (= a 0) b
    (plus2 (dec a) (inc b))))

(plus2 2 2)
;(plus2 1 3)
;(plus2 0 4)
;(4)


;看看就好,elisp木有尾递归

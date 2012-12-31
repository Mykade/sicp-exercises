(defun a-plus-abs-b (a b)
  (+ (if (> b 0) b -b) a))

(a-plus-abs-b 1 2)

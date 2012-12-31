(defun sqrt-inter (guess x)
  (if (good-enough guess x)
      guess
    (sqrt-inter (improve guess x) x))
  )

(defun improve (guess x)
  (average guess (/ x guess)))

(defun average (x y)
  (/ (+ x y) 2.0))

(defun good-enough (guess x)
  (< (/ (abs (- (improve guess x) guess)) guess) 0.01))

(defun sqrt (x)
  (sqrt-inter 1.0 x))

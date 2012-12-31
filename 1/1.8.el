(defun cube-root (x)
  (cube-root-inter 1.0 x))

(defun cube-root-inter (guess x)
  (if (good-enough guess x)
      guess
    (cube-root-inter (improve guess x) x)))

(defun improve (guess x)
  (/ (+ (/ x (* guess guess)) (* 2 guess)) 3))

(defun good-enough (guess x)
  (< (abs (- (* guess guess guess) x)) 0.001))

(cube-root 27)

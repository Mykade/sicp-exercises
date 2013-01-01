(defun expt-iter (x n s)
  (cond ((= n 0) s)
        ((= 0 (% n 2)) (expt-iter (* x x) (/ n 2) s))
        ((= 1 (% n 2)) (expt-iter x (- n 1) (* x s)))))

(defun expt (x n)
  (expt-iter x n 1))

(defun double (x)
  (* x 2))

(defun halve (x)
  (/ x 2))

(defun multi (a b)
  (multi-iter a b 0))

(defun multi-iter (a b s)
  (cond ((= b 0) 0)
        ((= b 1) a)
        ((= 0 (% b 2)) (multi-iter (double a) (halve b) s))
        ((= 1 (% b 2)) (multi-iter a (- b 1) (+ s a)))))

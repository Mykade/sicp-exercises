(defun carmichael (n)
  (carmichael-iter 1 n))

(defun carmichael-iter (a n)
  (print a)
  (cond ((= a n) t)
	((carmichael-test a n) (carmichael-iter (+ a 1) n))
	(nil)))

(defun carmichael-test (a n)
  (= (% (power a n) n) (% a n)))

(defun power (a n)
  (power-iter a n 1))

(defun power-iter (a n s)
  (if (= 0 n) s
    (power-iter a (- n 1) (* s a))))

; elisp 算不过来,省省吧

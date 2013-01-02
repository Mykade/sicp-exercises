(defun gcd (a b)
  (if (= 0 b) a (gcd b (% a b))))

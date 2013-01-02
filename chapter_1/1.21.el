(defun smalllest-divisor (n)
  (find-divisor n 2))

(defun find-divisor (n test-divisor)
  (cond ((> (* test-divisor test-divisor) n) n)
        ((divides test-divisor n) test-divisor)
        ((find-divisor n (+ test-divisor 1)))))

(defun divides (a b)
  (= (% b a) 0))

(smalllest-divisor 199) ; 199

(smalllest-divisor 1999) ; 1999

(smalllest-divisor 19999) ; 7


(defun new-if (pre then else)
  (cond (pre then)
	(else else)))

(new-if t (print "1") (print "2"))

(if t (print "1") (print "2"))

;对于保留字"if",只对true分支求值,对于新实现的函数会对所有表达式求值.

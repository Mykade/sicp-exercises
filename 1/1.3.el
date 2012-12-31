(defun biger (x y)
  (if (> x y) x y))

(defun smaller (x y)
  (if (> x y) y x))

(defun fun (a b c)
  (+ (biger a b) (biger (smaller a b) c))
  )

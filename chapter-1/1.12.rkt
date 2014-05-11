(define (pascal row col)
  (cond ((> col row) (error "row less then cow"))
        ((or (= col 0) (= row col)) 1)
        (else (+ (pascal (- row 1) (- col 1)) (pascal (- row 1) col)))))

(displayln (pascal 1 1))

(displayln (pascal 3 2))

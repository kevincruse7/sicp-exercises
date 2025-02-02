#lang sicp

(define (pascal row col)
  (cond ((or (< row 0)
             (< col 0)
             (> col row))
         0)
        ((and (= row 0)
              (= col 0))
         1)
        (else (+ (pascal (- row 1) (- col 1))
                 (pascal (- row 1) col)))))

(pascal 2 1)
; `2`

(pascal 4 2)
; `6`

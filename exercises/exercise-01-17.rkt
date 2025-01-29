#lang sicp

(#%require "../libraries/chapter-01.rkt")

; y is even:
;   x * y = x * (y / 2) * 2
; y is odd:
;   x * y = x * (y - 1) + x

(define (fast-mult x y)
  (cond ((= y 0) 0)
        ((even? y) (double (fast-mult x (halve y))))
        (else (+ x (fast-mult x (- y 1))))))

(fast-mult 2 4)
; `8`

(fast-mult 7 9)
; `63`

(fast-mult 1000 129)
; `129000`

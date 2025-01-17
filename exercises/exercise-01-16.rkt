#lang sicp

(#%require "../libraries/chapter-01.rkt")

; a * b^n
; 1 * 3^9
; 3 * (3^2)^4
; 3 * (3^4)^2
; 3 * (3^8)^1
; 3^9 * (3^8)^0
; 3^9

(define (fast-expt b n)
  (define (iter b n a)
    (cond ((= n 0) a)
          ((even? n) (iter (square b) (/ n 2) a))
          (else (iter b (- n 1) (* a b)))))
  (iter b n 1))

(fast-expt 2 8)
; `256`

(fast-expt 3 5)
; `243`

(fast-expt 5 1)
; `5`

(fast-expt 6 0)
; `1`

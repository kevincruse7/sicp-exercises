#lang sicp

(#%require "../libraries/chapter-01.rkt")

; a + x * y
; 0 + 4 * 5
; 4 + 4 * 4
; 4 + (4 * 2) * (4 / 2)
; 4 + 8 * 2
; 4 + (8 * 2) * (2 / 2)
; 4 + 16 * 1
; 20 + 16 * 0
; 20

(define (fast-mult x y)
  (define (iter a x y)
    (cond ((= y 0) a)
          ((even? y) (iter a (double x) (halve y)))
          (else (iter (+ a x) x (- y 1)))))
  (iter 0 x y))

(fast-mult 2 4)
; `8`

(fast-mult 7 9)
; `63`

(fast-mult 1000 129)
; `129000`

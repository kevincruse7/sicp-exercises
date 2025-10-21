#lang sicp

(#%require "../libraries/chapter-01.rkt")

; The golden ratio is the real number which satisfies the equation x ^ 2 = x + 1. Divide both sides by
; x, and this equation becomes x = 1 + 1 / x. Therefore, the golden ratio can be expressed as the
; fixed point of the function x -> 1 + 1 / x.

(fixed-point (lambda (x) (+ 1 (/ 1 x))) 1.0)
; 1.6180327868852458

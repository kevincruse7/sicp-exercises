#lang sicp

(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

; This procedure achieves the effect of adding 'a' to the absolute value of 'b' by swapping out which
; arithmetic operator to use depending on the sign of 'b'. If 'b' is non-negative, addition is used.
; If 'b' is negative, subtraction is used.

(a-plus-abs-b 1 2)
; 3

(a-plus-abs-b 1 -2)
; 3

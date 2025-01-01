#lang sicp

(#%require "../libraries/sicp-library-01.rkt")

(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
          guess
          (sqrt-iter (improve guess x)
                     x)))

; Because we have an applicate-order interpreter, and because we're not using the if special form,
; attempting to compute square roots with this program will result in infinite recursion, as all
; operands are evaluated before being passed to the new-if procedure.

(sqrt-iter 1 4)

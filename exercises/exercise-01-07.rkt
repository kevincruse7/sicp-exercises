#lang sicp

(#%require "../libraries/chapter-01.rkt")

; By using a static threshold of `0.001`, the `good-enough?` procedure will prove ineffetcive for both
; very small and very large numbers. With very small numbers, the threshold will be too large,
; producing inaccurate results. E.g.:

(good-enough? 0.0002 0.00000001)
; `#t`

; As for very large numbers, since floating point numbers have limited precision, the threshold will
; be too small. This will result in the procedure rejecting the actual square root of a very large
; number. E.g.:

(good-enough? 10000000000.1 100000000002000000000.01)
; `#f`

(define (new-good-enough? guess prev-guess)
  (< (/ (abs (- guess prev-guess))
        guess)
      0.0001))

(define (sqrt-iter guess prev-guess x)
  (if (new-good-enough? guess prev-guess)
      guess
      (sqrt-iter (improve guess x)
                 guess
                 x)))

(define (sqrt x)
  (sqrt-iter 1.0 x x))

(sqrt 4)
; `2.000000000000002`

(sqrt 0.00000001)
; `0.00010000000000082464`

(sqrt 100000000002000000000.01)
; `10000000000.12308`

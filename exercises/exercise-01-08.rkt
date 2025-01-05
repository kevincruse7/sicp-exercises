#lang sicp

(#%require "../libraries/chapter-01.rkt")

(define (good-enough? guess prev-guess x)
  (< (/ (abs (- guess prev-guess))
        guess)
     0.0001))

(define (improve guess x)
  (/ (+ (/ x (square guess))
        (* 2 guess))
     3))

(define (cube-root-iter guess prev-guess x)
  (if (good-enough? guess prev-guess x)
      guess
      (cube-root-iter (improve guess x)
                      guess
                      x)))

(define (cube-root x)
  (cube-root-iter 1.0 x x))

(cube-root 27)
; `3.0000000000000977`

(cube-root 3.375)
; `1.5000000000008251`

(cube-root 1000000)
; `100.00000000005313`

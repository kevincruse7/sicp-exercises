#lang sicp

(#%provide square)
(define (square x)
  (* x x))

(#%provide sum-of-squares)
(define (sum-of-squares x y)
  (+ (square x) (square y)))

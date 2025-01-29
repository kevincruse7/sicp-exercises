#lang sicp

(#%provide square)
(define (square x)
  (* x x))

(#%provide sum-of-squares)
(define (sum-of-squares x y)
  (+ (square x) (square y)))

(#%provide average)
(define (average x y)
  (/ (+ x y) 2))

(#%provide improve)
(define (improve guess x)
  (average guess (/ x guess)))

(#%provide good-enough?)
(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(#%provide double)
(define (double x)
  (* x 2))

(#%provide halve)
(define (halve x)
  (/ x 2))

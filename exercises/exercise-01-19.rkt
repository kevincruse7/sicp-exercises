#lang sicp

(#%require "../libraries/chapter-01.rkt")

(define (fib n)
  (define (iter a b p q n)
    (cond ((= n 0) b)
          ((even? n) (iter a
                           b
                           (+ (square p) (square q))
                           (+ (square q) (* 2 p q))
                           (/ n 2)))
          (else (iter (+ (* b q) (* a q) (* a p))
                      (+ (* b p) (* a q))
                      p
                      q
                      (- n 1)))))
  (iter 1 0 0 1 n))

(fib 5)
; `5`

(fib 12)
; `144`

(fib 17)
; `1597`

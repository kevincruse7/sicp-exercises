#lang sicp

(define (+-rec a b)
  (if (= a 0)
      b
      (inc (+-rec (dec a) b))))

(+-rec 4 5)
; `(inc (+-rec 3 5))`
; `(inc (inc (+-rec 2 5)))`
; `(inc (inc (inc (+-rec 1 5))))`
; `(inc (inc (inc (inc (+-rec 0 5)))))`
; `(inc (inc (inc (inc 5))))`
; `(inc (inc (inc 6)))`
; `(inc (inc 7))`
; `(inc 8)`
; `9`

(define (+-iter a b)
  (if (= a 0)
      b
      (+-iter (dec a) (inc b))))

(+-iter 4 5)
; `(+-iter 3 6)`
; `(+-iter 2 7)`
; `(+-iter 1 8)`
; `(+-iter 0 9)`
; `9`

#lang sicp

(define (product term a next b)
  (if (> a b)
      1
      (* (term a)
         (product term
                  (next a)
                  next
                  b))))

(define (factorial n)
  (product identity 1 inc n))

(factorial 5)
; 120

(define (pi-approx n)
  (define (term a)
    (if (odd? a)
        (/ (+ a 1.0)
           (+ a 2.0))
        (/ (+ a 2.0)
           (+ a 1.0))))
  (* 4.0
     (product term 1 inc n)))

(pi-approx 100)
; 3.1570301764551645

(define (product-iter term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a)
              (* (term a)
                 result))))
  (iter a 1))

(product-iter identity 1 inc 5)
; 120

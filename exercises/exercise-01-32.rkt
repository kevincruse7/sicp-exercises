#lang sicp

(define (accumulate combiner null-value term a next b)
  (if (> a b)
      null-value
      (combiner (term a)
                (accumulate combiner
                            null-value
                            term
                            (next a)
                            next
                            b))))

(define (sum term a next b)
  (accumulate + 0 term a next b))

(sum identity 1 inc 10)
; 55

(define (product term a next b)
  (accumulate * 1 term a next b))

(product identity 1 inc 5)
; 120

(define (accumulate-iter combiner null-value term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a)
              (combiner (term a)
                        result))))
  (iter a null-value))

(accumulate-iter + 0 identity 1 inc 10)
; 55

(accumulate-iter * 1 identity 1 inc 5)
; 120

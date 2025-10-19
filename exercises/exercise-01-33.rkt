#lang sicp

(#%require "../libraries/chapter-01.rkt")

(define (filtered-accumulate combiner null-value term a next b filter)
  (cond ((> a b) null-value)
        ((filter a) (combiner (term a)
                              (filtered-accumulate combiner null-value term (next a) next b filter)))
        (else (filtered-accumulate combiner null-value term (next a) next b filter))))

(define (sum-of-prime-squares a b)
  (filtered-accumulate + 0 square a inc b prime?))

(sum-of-prime-squares 2 10)
; 87

(define (product-of-relative-primes n)
  (define (relative-prime? a)
    (= (gcd a n) 1))
  (filtered-accumulate * 1 identity 1 inc (- n 1) relative-prime?))

(product-of-relative-primes 10)
; 189

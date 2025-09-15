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

(#%provide divides?)
(define (divides? a b)
  (= (remainder b a) 0))

(#%provide find-divisor)
(define (find-divisor n test-divisor)
  (cond ((> (square test-divisor) n) n)
        ((divides? test-divisor n) test-divisor)
        (else (find-divisor n (+ test-divisor 1)))))

(#%provide smallest-divisor)
(define (smallest-divisor n)
  (find-divisor n 2))

(#%provide prime?)
(define (prime? n)
  (= n (smallest-divisor n)))

(#%provide expmod)
(define (expmod base exp m)
  (cond ((= exp 0) 1)
        ((even? exp)
         (remainder (square (expmod base (/ exp 2) m))
                    m))
        (else
         (remainder (* base (expmod base (- exp 1) m))
                    m))))

(#%provide fermat-test)
(define (fermat-test n)
  (define (try-it a)
    (= (expmod a n n) a))
  (try-it (+ 1 (random (- n 1)))))

(#%provide fast-prime?)
(define (fast-prime? n times)
  (cond ((= times 0) true)
        ((fermat-test n) (fast-prime? n (- times 1)))
        (else false)))

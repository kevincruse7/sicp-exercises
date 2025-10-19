#lang sicp

; 1.1.4 - Compound Procedures

(#%provide square)
(define (square x)
  (* x x))

(#%provide sum-of-squares)
(define (sum-of-squares x y)
  (+ (square x) (square y)))

; 1.1.7 - Example: Square Roots by Newton's Method

(#%provide average)
(define (average x y)
  (/ (+ x y) 2))

(#%provide improve)
(define (improve guess x)
  (average guess (/ x guess)))

(#%provide good-enough?)
(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

; 1.2.4 - Exponentiation

(#%provide double)
(define (double x)
  (* x 2))

(#%provide halve)
(define (halve x)
  (/ x 2))

; 1.2.5 - Greatest Common Divisors

(define (gcd a b)
  (if (= b 0)
      a
      (gcd b (remainder a b))))

; 1.2.6 - Example: Testing for Primality

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

; 1.3.1 - Procedures as Arguments

(#%provide cube)
(define (cube x) (* x x x))

(#%provide sum)
(define (sum term a next b)
  (if (> a b)
      0
      (+ (term a)
         (sum term (next a) next b))))

(#%provide integral)
(define (integral f a b dx)
  (define (add-dx x) (+ x dx))
  (* (sum f (+ a (/ dx 2.0)) add-dx b)
     dx))

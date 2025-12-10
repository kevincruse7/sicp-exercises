#lang sicp

(#%require "./chapter-01.rkt")

(#%provide (all-from "./chapter-01.rkt"))
(#%provide (all-defined))

; 2.1.1 - Example: Arithmetic Operations for Rational Numbers

(define (make-rat n d)
  (let ((g (gcd n d)))
    (cons (/ n g) (/ d g))))

(define (numer x)
  (car x))

(define (denom x)
  (cdr x))

(define (print-rat x)
  (newline)
  (display (numer x))
  (display "/")
  (display (denom x)))

; 2.1.4 - Extended Exercise: Interval Arithmetic

(define (make-interval a b)
  (cons a b))

(define (lower-bound interval)
  (car interval))

(define (upper-bound interval)
  (cdr interval))

(define (print-interval interval)
  (newline)
  (display "[")
  (display (lower-bound interval))
  (display ",")
  (display (upper-bound interval))
  (display "]"))

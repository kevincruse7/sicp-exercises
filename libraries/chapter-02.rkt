#lang sicp

; 2.1.1 - Example: Arithmetic Operations for Rational Numbers

(#%provide make-rat)
(define (make-rat n d)
  (let ((g (gcd n d)))
    (cons (/ ((if (> (* n d) 0) + -) (abs n)) g)
          (/ (abs d) g))))

(#%provide numer)
(define (numer x)
  (car x))

(#%provide denom)
(define (denom x)
  (cdr x))

(#%provide print-rat)
(define (print-rat x)
  (newline)
  (display (numer x))
  (display "/")
  (display (denom x)))

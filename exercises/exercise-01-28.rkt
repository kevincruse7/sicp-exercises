#lang sicp

(#%require "../libraries/chapter-01.rkt")

(define (expmod base exp m)
  (define (square-or-signal a)
    (define square-mod-m (remainder (square a) m))
    (if (or (= a 1)
            (= a (- m 1))
            (> square-mod-m 1))
        square-mod-m
        0))
  (cond ((= exp 0) 1)
        ((even? exp)
         (square-or-signal (expmod base (/ exp 2) m)))
        (else
         (remainder (* base (expmod base (- exp 1) m))
                    m))))

(define (miller-rabin-test n)
  (define (try-it a)
    (= (expmod a (- n 1) n) 1))
  (display n)
  (display " *** ")
  (display
   (if (try-it (+ 1 (random (- n 1))))
       "Test passed!"
       "Test failed!"))
  (newline))

(miller-rabin-test 7)
; 7 *** Test passed!

(miller-rabin-test 10)
; 10 *** Test failed!

(miller-rabin-test 561)
; 561 *** Test failed!

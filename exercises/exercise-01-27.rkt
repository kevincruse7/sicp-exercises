#lang sicp

(#%require "../libraries/chapter-01.rkt")

(define (carmichael-test n)
  (define (carmichael-test-helper a)
    (cond ((>= a n) (display "Test passed!"))
          ((= (expmod a n n) a) (carmichael-test-helper (inc a)))
          (else (display "Test failed!"))))
  (display n)
  (display " *** ")
  (carmichael-test-helper 2)
  (newline))

(carmichael-test 10)
; 10 *** Test failed!

(carmichael-test 561)
; 561 *** Test passed!

(carmichael-test 1105)
; 1105 *** Test passed!

(carmichael-test 1729)
; 1729 *** Test passed!

(carmichael-test 2465)
; 2465 *** Test passed!

(carmichael-test 2821)
; 2821 *** Test passed!

(carmichael-test 6601)
; 6601 *** Test passed!

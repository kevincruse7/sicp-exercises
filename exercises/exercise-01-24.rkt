#lang sicp

(#%require "../libraries/chapter-01.rkt")

(define (timed-prime-test n)
  (newline)
  (display n)
  (start-prime-test n (runtime)))

(define (start-prime-test n start-time)
  (if (fast-prime? n 5)
      (report-prime (- (runtime) start-time))))

(define (report-prime elapsed-time)
  (display " *** ")
  (display elapsed-time))

(timed-prime-test 1009)
; 1009 *** 5

(timed-prime-test 1013)
; 1013 *** 2

(timed-prime-test 1019)
; 1019 *** 2

(timed-prime-test 10007)
; 10007 *** 2

(timed-prime-test 10009)
; 10009 *** 1

(timed-prime-test 10037)
; 10037 *** 1

(timed-prime-test 100003)
; 100003 *** 2

(timed-prime-test 100019)
; 100019 *** 2

(timed-prime-test 100043)
; 100043 *** 2

(timed-prime-test 1000003)
; 1000003 *** 2

(timed-prime-test 1000033)
; 1000033 *** 1

(timed-prime-test 1000037)
; 1000037 *** 1

(timed-prime-test 10000019)
; 10000019 *** 2

(timed-prime-test 10000079)
; 10000079 *** 3

(timed-prime-test 10000103)
; 10000103 *** 2

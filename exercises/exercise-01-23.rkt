#lang sicp

(#%require "../libraries/chapter-01.rkt")

(define (timed-prime-test n)
  (newline)
  (display n)
  (start-prime-test n (runtime)))

(define (start-prime-test n start-time)
  (if (prime? n)
      (report-prime (- (runtime) start-time))))

(define (report-prime elapsed-time)
  (display " *** ")
  (display elapsed-time))

(define (prime? n)
  (= n (smallest-divisor n)))

(define (smallest-divisor n)
  (find-divisor n 2))

(define (find-divisor n test-divisor)
  (cond ((> (square test-divisor) n) n)
        ((divides? test-divisor n) test-divisor)
        (else (find-divisor n (next test-divisor)))))

(define (next n)
  (if (= n 2) 3 (+ n 2)))

(timed-prime-test 1009)
; 1009 *** 2

(timed-prime-test 1013)
; 1013 *** 0

(timed-prime-test 1019)
; 1019 *** 0

(timed-prime-test 10007)
; 10007 *** 0

(timed-prime-test 10009)
; 10009 *** 1

(timed-prime-test 10037)
; 10037 *** 0

(timed-prime-test 100003)
; 100003 *** 1

(timed-prime-test 100019)
; 100019 *** 1

(timed-prime-test 100043)
; 100043 *** 2

(timed-prime-test 1000003)
; 1000003 *** 3

(timed-prime-test 1000033)
; 1000033 *** 3

(timed-prime-test 1000037)
; 1000037 *** 3

(timed-prime-test 10000019)
; 10000019 *** 8

(timed-prime-test 10000079)
; 10000079 *** 8

(timed-prime-test 10000103)
; 10000103 *** 8

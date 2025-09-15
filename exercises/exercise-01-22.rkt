#lang sicp

(#%require "../libraries/chapter-01.rkt")

(define (timed-prime-test n)
  (newline)
  (display n)
  (start-prime-test n (runtime)))

(define (start-prime-test n start-time)
  (if (prime? n)
      (report-prime (- (runtime) start-time))
      false))

(define (report-prime elapsed-time)
  (display " *** ")
  (display elapsed-time))

(define (search-for-primes start num)
  (define (search-for-primes-helper start num)
    (cond ((= num 0)
           (newline)
           (display "Done!")
           (newline))
          (else (search-for-primes-helper (+ start 2)
                                          (if (timed-prime-test start)
                                              (- num 1)
                                              num)))))
  (display "Searching for primes...")
  (search-for-primes-helper (if (even? start)
                                (+ start 1)
                                start)
                            num))

(search-for-primes 1000 3)
; 1009 *** 1
; 1013 *** 0
; 1019 *** 0

(search-for-primes 10000 3)
; 10007 *** 1
; 10009 *** 0
; 10037 *** 1

(search-for-primes 100000 3)
; 100003 *** 2
; 100019 *** 1
; 100043 *** 1

(search-for-primes 1000000 3)
; 1000003 *** 3
; 1000033 *** 3
; 1000037 *** 4

(search-for-primes 10000000 3)
; 10000019 *** 26
; 10000079 *** 12
; 10000103 *** 12

#lang sicp

(define (f-rec n)
  (if (< n 3)
      n
      (+ (f-rec (- n 1))
         (* 2 (f-rec (- n 2)))
         (* 3 (f-rec (- n 3))))))

(f-rec 30)
; `61354575194`

(define (f-iter n)
  (define (iter i prev1 prev2 prev3)
    (if (> i n)
        prev1
        (iter (inc i)
              (+ prev1
                 (* 2 prev2)
                 (* 3 prev3))
              prev1
              prev2)))
  (if (< n 3)
      n
      (iter 3 2 1 0)))

(f-iter 30)
; `61354575194`

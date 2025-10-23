#lang sicp

(define (cont-frac n d k)
  (define (helper i)
    (if (> i k)
        0
        (/ (n i)
           (+ (d i)
              (helper (+ i 1))))))
  (helper 1))

(cont-frac (lambda (_i) 1.0)
           (lambda (_i) 1.0)
           10)
; 0.6179775280898876

(cont-frac (lambda (_i) 1.0)
           (lambda (_i) 1.0)
           11)
; 0.6180555555555556

(define (cont-frac-iter n d k)
  (define (iter i result)
    (if (= i 0)
        result
        (iter (- i 1)
              (/ (n i)
                 (+ (d i) result)))))
  (iter k 0))

(cont-frac-iter (lambda (_i) 1.0)
                (lambda (_i) 1.0)
                11)
; 0.6180555555555556

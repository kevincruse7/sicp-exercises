#lang sicp

(#%require "../libraries/chapter-01.rkt")

(define (proc x y z)
  (cond ((and (< x y) (< x z)) (sum-of-squares y z))
        ((and (< y x) (< y z)) (sum-of-squares x z))
        (else (sum-of-squares x y))))

(proc 1 2 3)
; `13`

(proc 3 2 4)
; `25`

(proc 4 5 3)
; `41`

#lang sicp

(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y))

(test 0 (p))

; With an applicative-order interpreter, this program would recurse indefinitely, as the interpreter
; would attempt to evaluate the infintely recursive expression (p) before passing it as a parameter to
; the test procedure. With a normal-order interpreter, the program would immediately return 0, as the
; operands for the test procedure are not evaluated until needed. Since x is 0, the y parameter is not
; needed and thus does not get evaluated.

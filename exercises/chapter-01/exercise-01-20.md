# Exercise 1.20

Normal-order evaluation:

```scheme
(gcd 206 40)

(if (= 40 0)
    206
    (gcd 40 (remainder 206 40)))
; 0 times

(if (= (remainder 206 40) 0)
    40
    (gcd (remainder 206 40)
         (remainder 40
                    (remainder 206 40))))
; 1 time

(if (= (remainder 40 (remainder 206 40)) 0)
    (remainder 206 40)
    (gcd (remainder 40 (remainder 206 40))
         (remainder (remainder 206 40)
                    (remainder 40 (remainder 206 40)))))
; 2 times

(if (= (remainder (remainder 206 40)
                  (remainder 40 (remainder 206 40)))
       0)
    (remainder 40 (remainder 206 40))
    (gcd (remainder (remainder 206 40)
                    (remainder 40 (remainder 206 40)))
         (remainder (remainder 40 (remainder 206 40))
                    (remainder (remainder 206 40)
                               (remainder 40 (remainder 206 40))))))
; 4 times

(if (= (remainder (remainder 40 (remainder 206 40))
                  (remainder (remainder 206 40)
                             (remainder 40 (remainder 206 40))))
       0)
    (remainder (remainder 206 40)
               (remainder 40 (remainder 206 40)))
    (gcd (remainder (remainder 40 (remainder 206 40))
                    (remainder (remainder 206 40)
                               (remainder 40 (remainder 206 40))))
         (remainder (remainder (remainder 206 40)
                               (remainder 40 (remainder 206 40)))
                    (remainder (remainder 40 (remainder 206 40))
                               (remainder (remainder 206 40)
                                          (remainder 40 (remainder 206 40)))))))
; 7 times

(remainder (remainder 206 40)
           (remainder 40 (remainder 206 40)))
; 4 times

2
```

Under normal-order evaluation, `(gcd 206 40)` calls `remainder` 18 times.

Applicative-order evaluation:

```scheme
(gcd 206 40)

(if (= 40 0)
    206
    (gcd 40 (remainder 206 40)))
; 1 time

(if (= 6 0)
    40
    (gcd 6 (remainder 40 6)))
; 1 time

(if (= 4 0)
    6
    (gcd 4 (remainder 6 4)))
; 1 time

(if (= 2 0)
    4
    (gcd 2 (remainder 4 2)))
; 1 time

(if (= 0 0)
    2
    (gcd 0 (remainder 2 0)))
; 0 times

2
```

Under applicative-order evaluation, `(gcd 206 40)` calls `remainder` 4 times.

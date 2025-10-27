# Exercise 1.25

```scm
(define (expmod base exp m)
  (remainder (fast-expt base exp) m))
```

In the scenario where we use this implementation of `expmod` to compute `(fast-prime? 10000103 5)`, for instance, we
would end up with an intermediate computation of `(fast-expt n 10000103)`, where `n` is a random integer between 1
and 10000102. The resulting value would be so large as to exhaust the memory of the computer. As such, this
implementation is not suitable for testing primes.

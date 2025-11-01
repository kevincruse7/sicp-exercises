# Exercise 1.26

```scm
(define (expmod base expt m)
  (cond ((= exp 0) 1)
        ((even? exp)
         (remainder (* (expmod base (/ exp 2) m)
                       (expmod base (/ exp 2) m))
                    m))
        (else
         (remainder (* base (expmod base (- exp 1) m))
                    m))))
```

By explicitly multiplying `(expmod base (/ exp 2) m)` with itself instead of passing it to `square`, you generate an
extra call to `expmod` per invocation. Before, the recurrence relation could be expressed as:

```math
\begin{aligned}

T(n) &= \Theta(1) + T{\left(\frac{n}{2}\right)} \\[1.5em]

&= 2\Theta(1) + T{\left(\frac{n}{4}\right)} \\[1.5em]

&= 3\Theta(1) + T{\left(\frac{n}{8}\right)} \\[1.5em]

&\dots \\[1.5em]

&= (\log_{2}{n})\Theta(1) \\[1.5em]

&= \Theta(\log{n})

\end{aligned}
```

By introducing an extra invocation of `expmod`, the recurrence relation now looks like:

```math
\begin{aligned}

T(n) &= \Theta(1) + 2T{\left(\frac{n}{2}\right)} \\[1.5em]

&= 3\Theta(1) + 4T{\left(\frac{n}{4}\right)} \\[1.5em]

&= 7\Theta(1) + 8T{\left(\frac{n}{8}\right)} \\[1.5em]

&\dots \\[1.5em]

&= n\Theta(1) \\[1.5em]

&= \Theta(n)

\end{aligned}
```

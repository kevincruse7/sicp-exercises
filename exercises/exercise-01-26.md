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
\begin{align*}
T(n) &= \Theta(1) + T(n / 2) \\
&= 2\Theta(1) + T(n / 4) \\
&= 3\Theta(1) + T(n / 8) \\
&\dots \\
&= (\log_{2}{n})\Theta(1) \\
&= \Theta(\log{n})
\end{align*}
```

By introducing an extra invocation of `expmod`, the recurrence relation now looks like:

```math
\begin{align*}
T(n) &= \Theta(1) + 2T(n / 2) \\
&= 3\Theta(1) + 4T(n / 4) \\
&= 7\Theta(1) + 8T(n / 8) \\
&\dots \\
&= n\Theta(1) \\
&= \Theta(n)
\end{align*}
```

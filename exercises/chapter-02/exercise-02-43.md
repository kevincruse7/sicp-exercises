# Exercise 2.43

If we let $n$ be the size of the board and $W_n$ be the amount of work performed for a given board size, the recurrence equation for the algorithm in exercise 2.42 can be expressed as the following:

```math
\begin{aligned}
    T_n &= T_{n - 1} + W_n
    \\[1.5em]

    &= \Theta(nW_n)
\end{aligned}
```

By instead recursing in the inner `map`, the recurrence equation becomes the following:

```math
\begin{aligned}
    T'_n &= nT'_{n - 1} + W_n
    \\[1.5em]

    &= \Theta(n!W_n)
    \\[1.5em]

    &\approx T_n \times (n - 1)!
\end{aligned}
```

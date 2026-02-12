# Exercise 2.43

If we let $n$ be the size of the board, the recurrence equation for the algorithm in exercise 2.42 can be expressed as the following:

```math
\begin{aligned}
    T_1(n) &= T_1(n - 1) + \Theta(n)
    \\[1.5em]

    &= \sum^n \Theta(n)
    \\[1.5em]

    T_1(n) &= \Theta(n^2)
\end{aligned}
```

By instead recursing in the inner `map`, the recurrence equation becomes the following:

```math
\begin{aligned}
    T_2(n) &= T_2(n - 1) \times \Theta(n)
    \\[1.5em]

    &= \prod^n \Theta(n)
    \\[1.5em]

    &= \Theta(n^n)
    \\[1.5em]

    T_2(n) &= T_1(n)^{n / 2}
\end{aligned}
```

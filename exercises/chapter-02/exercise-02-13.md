# Exercise 2.13

For an interval $n$ with a lower bound $a_n$ and an upper bound $b_n$, let us define its center, $c_n = (a_n + b_n) / 2$, and its tolerance, $t_n = (b_n - a_n) / (a_n + b_n)$. For fully positive intervals $i$ and $j$, we've previously defined their product $k$ such that $a_k = a_ia_j$ and $b_k = b_ib_j$. Now, let us observe the following:

```math
\begin{aligned}
    c_n(1 - t_n) &= \frac{a_n + b_n}{2}\left(1 - \frac{b_n - a_n}{a_n + b_n}\right)
    \qquad
    &c_n(1 + t_n) &= \frac{a_n + b_n}{2}\left(1 + \frac{b_n - a_n}{a_n + b_n}\right)
    \\[1.5em]

    &= \frac{a_n + b_n}{2}\left(\frac{a_n + b_n}{a_n + b_n} - \frac{b_n - a_n}{a_n + b_n}\right)
    &&= \frac{a_n + b_n}{2}\left(\frac{a_n + b_n}{a_n + b_n} + \frac{b_n - a_n}{a_n + b_n}\right)
    \\[1.5em]

    &= \frac{a_n + b_n}{2}\left(\frac{2a_n}{a_n + b_n}\right)
    &&= \frac{a_n + b_n}{2}\left(\frac{2b_n}{a_n + b_n}\right)
    \\[1.5em]

    &= a_n
    &&= b_n
\end{aligned}
\\[2em]

\begin{aligned}
    t_k &= \frac{b_k - a_k}{a_k + b_k}
    \\[1.5em]

    &= \frac{b_ib_j - a_ia_j}{a_ia_j + b_ib_j}
    \\[1.5em]

    &= \frac{c_ic_j(1 + t_i)(1 + t_j) - c_ic_j(1 - t_i)(1 - t_j)}{c_ic_j(1 - t_i)(1 - t_j) + c_ic_j(1 + t_i)(1 + t_j)}
    \\[1.5em]

    &= \frac{(1 + t_i)(1 + t_j) - (1 - t_i)(1 - t_j)}{(1 - t_i)(1 - t_j) + (1 + t_i)(1 + t_j)}
    \\[1.5em]

    &= \frac{1 + t_i + t_j + t_it_j - (1 - t_i - t_j + t_it_j)}{1 - t_i - t_j + t_it_j + (1 + t_i + t_j + t_it_j)}
    \\[1.5em]

    &= \frac{2t_i + 2t_j}{2 + 2t_it_j}
    \\[1.5em]

    &= \frac{t_i + t_j}{1 + t_it_j}
\end{aligned}
```

For small values of $t_i$ and $t_j$, the product $t_it_j$ becomes negligible. Therefore, $t_k \approx t_i + t_j$.

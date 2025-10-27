# Exercise 1.14

```mermaid
flowchart TD
    countchange11["(count-change 11)"] <-- 4 --> cc1105["(cc 11 5)"]
    cc1105 <-- 4 --> cc1104["(cc 11 4)"]
    cc1104 <-- 4 --> cc1103["(cc 11 3)"]
    cc1103 <-- 3 --> cc1102["(cc 11 2)"]
    cc1102 <-- 1 --> cc1101["(cc 11 1)"]
    cc1101 <-- 0 --> cc1100["(cc 11 0)"]
    cc1101 <-- 1 --> cc1001["(cc 10 1)"]
    cc1001 <-- 0 --> cc1000["(cc 10 0)"]
    cc1001 <-- 1 --> cc0901["(cc 9 1)"]
    cc0901 <-- 0 --> cc0900["(cc 9 0)"]
    cc0901 <-- 1 --> cc0801["(cc 8 1)"]
    cc0801 <-- 0 --> cc0800["(cc 8 0)"]
    cc0801 <-- 1 --> cc0701["(cc 7 1)"]
    cc0701 <-- 0 --> cc0700["(cc 7 0)"]
    cc0701 <-- 1 --> cc0601["(cc 6 1)"]
    cc0601 <-- 0 --> cc0600["(cc 6 0)"]
    cc0601 <-- 1 --> cc0501["(cc 5 1)"]
    cc0501 <-- 0 --> cc0500["(cc 5 0)"]
    cc0501 <-- 1 --> cc0401["(cc 4 1)"]
    cc0401 <-- 0 --> cc0400["(cc 4 0)"]
    cc0401 <-- 1 --> cc0301["(cc 3 1)"]
    cc0301 <-- 0 --> cc0300["(cc 3 0)"]
    cc0301 <-- 1 --> cc0201["(cc 2 1)"]
    cc0201 <-- 0 --> cc0200["(cc 2 0)"]
    cc0201 <-- 1 --> cc0101["(cc 1 1)"]
    cc0101 <-- 0 --> cc0100["(cc 1 0)"]
    cc0101 <-- 1 --> cc0001["(cc 0 1)"]
    cc1102 <-- 2 --> cc0602["(cc 6 2)"]
    cc0602 <-- 1 --> cc0601
    cc0602 <-- 1 --> cc0102["(cc 1 2)"]
    cc0102 <-- 1 --> cc0101
    cc0102 <-- 0 --> cc-0402["(cc -4 2)"]
    cc1103 <-- 1 --> cc0103["(cc 1 3)"]
    cc0103 <-- 1 --> cc0102
    cc0103 <-- 0 --> cc-0903["(cc -9 3)"]
    cc1104 <-- 0 --> cc-1404["(cc -14 4)"]
    cc1105 <-- 0 --> cc-3905["(cc -39 5)"]
```

With respect to the amount being changed, the order of growth of space for `count-change` is $\Theta(n)$, as the call
graph never exceeds $n$ layers.

To determine the order of growth of steps for `count-change`, we can analyze the following recurrence relation:

```math
T(n, k) = T(n, k - 1) + T(n - f(k), k)
```

In this relation, $n$ is the amount being changed, $k$ is the kinds of coins, and $f$ is the mapping between kinds of
coins and the value of the first denomination.

For $k = 1$, we can see:

```math
\begin{align*}

T(n, 1) &= T(n, 0) + T(n - 1, 1) \\[2ex]

&= 1 + T(n - 1, 1) \\[2ex]

&= \Theta(n)

\end{align*}
```

For $k = 2$:

```math
\begin{align*}

T(n, 2) &= T(n, 1) + T(n - 5, 2) \\[2ex]

&= \Theta(n) + T(n - 5, 2) \\[2ex]

&= \Theta(n^2)

\end{align*}
```

For $k = 3$:

```math
\begin{align*}

T(n, 3) &= T(n, 2) + T(n - 10, 3) \\[2ex]

&= \Theta(n^2) + T(n - 10, 3) \\[2ex]

&= \Theta(n^3)

\end{align*}
```

For $k = 4$:

```math
\begin{align*}

T(n, 4) &= T(n, 3) + T(n - 25, 4) \\[2ex]

&= \Theta(n^3) + T(n - 25, 4) \\[2ex]

&= \Theta(n^4)

\end{align*}
```

And finally, for $k = 5$:

```math
\begin{align*}

T(n, 5) &= T(n, 4) + T(n - 50, 5) \\[2ex]

&= \Theta(n^4) + T(n - 50, 5) \\[2ex]

&= \Theta(n^5)

\end{align*}
```

Therefore, the order of growth of number of steps for `count-change` is $\Theta(n^5)$.

Let $T_{pq}$ be the transformation over a pair $(a, b)$ such that:

```math
\begin{align*}
a &\leftarrow bq + aq + ap \\
b &\leftarrow bp + aq
\end{align*}
```

Observe, for $T_{pq}^2$, that:

```math
\begin{align*}
a &\leftarrow (bp + aq)q + (bq + aq + ap)q + (bq + aq + ap)p \\
&\leftarrow bpq + aq^2 + bq^2 + aq^2 + apq + bpq + apq + ap^2 \\
&\leftarrow bq^2 + 2bpq + ap^2 + 2aq^2 + 2apq \\
&\leftarrow b(q^2 + 2pq) + a(p^2 + 2q^2 + 2pq) \\
&\leftarrow b(q^2 + 2pq) + a(q^2 + 2pq) + a(p^2 + q^2) \\
\\
b &\leftarrow (bp + aq)p + (bq + aq + ap)q \\
&\leftarrow bp^2 + apq + bq^2 + aq^2 + apq \\
&\leftarrow bp^2 + bq^2 + aq^2 + 2apq \\
&\leftarrow b(p^2 + q^2) + a(q^2 + 2pq)
\end{align*}
```

Therefore, $T_{pq}^2 = T_{p'q'}$, where $p'$ and $q'$ are defined as such:

```math
\begin{align*}
p' &= p^2 + q^2 \\
q' &= q^2 + 2pq
\end{align*}
```

# Exercise 2.9

Given an interval $n$, let us define the width $w_n$ as follows:

```math
w_n = \frac{n_{\max} - n_{\min}}{2}
```

Now, to show that the width of an interval sum is a function of the widths of the operands, let us define intervals $a$, $b$, and $c = a + b$ and observe the following:

```math
\begin{aligned}

w_c &= \frac{c_{\max} - c_{\min}}{2} \\[1.5em]

&= \frac{(a_{\max} + b_{\max}) - (a_{\min} + b_{\min})}{2} \\[1.5em]

&= \frac{a_{\max} - a_{\min}}{2} + \frac{b_{\max} - b_{\min}}{2} \\[1.5em]

&= w_a + w_b

\end{aligned}
```

To show that the width of an interval product is not a function of a width of the operands, let us define intervals $d = [1, 5]$, $e = [2, 3]$, and $f = d \times e$ and observe the following:

```math
\begin{aligned}

f &= [1, 5] \times [2, 3] \qquad
&w_f &= \frac{15 - 2}{2} \\[1.5em]

&= [2, 15]
&&= \frac{13}{2}

\end{aligned}
```

If we were to instead define $d = [2, 6]$ and $e = [3, 4]$, noting that their widths remain the same, let us observe the following:

```math
\begin{aligned}

f &= [2, 6] \times [3, 4] \qquad
&w_f &= \frac{24 - 6}{2} \\[1.5em]

&= [6, 24]
&&= 9

\end{aligned}
```

Since the width of the interval product differed between the two scenarios, despite the widths of the operands remaining constant, the width of the interval product cannot be a function of the widths of the operands.

Let us repeat the previous exercise, but instead define $f = d \div e$ to demonstrate the same holds true for division:

```math
\begin{aligned}

f &= [1, 5] \div [2, 3] \qquad
&w_f &= \frac{\frac{5}{2} - \frac{1}{3}}{2} \\[1.5em]

&= [1, 5] \times {\left[ \frac{1}{3}_{\textstyle{,}} \frac{1}{2} \right]}
&&= \frac{15 - 2}{12} \\[1.5em]

&= {\left[ \frac{1}{3}_{\textstyle{,}} \frac{5}{2} \right]}
&&= \frac{13}{12} \\[3em]

f &= [2, 6] \div [3, 4]
&w_f &= \frac{2 - \frac{1}{2}}{2} \\[1.5em]

&= [2, 6] \times {\left[ \frac{1}{4}_{\textstyle{,}} \frac{1}{3} \right]}
&&= \frac{3}{4} \\[1.5em]

&= {\left[ \frac{1}{2}, 2 \right]}

\end{aligned}
```

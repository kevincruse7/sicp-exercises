Let $\phi$, $\psi$, and $Fib(n)$ be defined as such:

```math
\displaystyle
\begin{array}{c}
\phi = \frac{1 + \sqrt{5}}{2} \\[2ex]
\psi = \frac{1 - \sqrt{5}}{2} \\[4ex]
Fib(0) = 0 \\[4ex]
Fib(1) = 1 \\[4ex]
Fib(n) = Fib(n - 1) + Fib(n - 2), \: \forall n \in \mathbb{Z} \mid n > 1 \\[4ex]
\end{array}
```

Observe the following property of $\phi$ and $\psi$:

```math
\displaystyle
\begin{aligned}
\phi^2 &= {\left( \frac{1 + \sqrt{5}}{2} \right)}^2 &\qquad \psi^2 &= {\left( \frac{1 - \sqrt{5}}{2} \right)}^2 \\[2ex]
&= \frac{1 + 2\sqrt{5} + 5}{4} &&= \frac{1 - 2\sqrt{5} + 5}{4} \\[2ex]
&= \frac{6 + 2\sqrt{5}}{4} &&= \frac{6 - 2\sqrt{5}}{4} \\[2ex]
&= \frac{3 + \sqrt{5}}{2} &&= \frac{3 - \sqrt{5}}{2} \\[2ex]
&= \frac{1 + \sqrt{5}}{2} + 1 &&= \frac{1 - \sqrt{5}}{2} + 1 \\[4ex]
&= \phi + 1 &&= \psi + 1 \\[4ex]
\end{aligned}
```

Now, observe the following relations between $\phi$, $\psi$, and $Fib(n)$:

```math
\displaystyle
\begin{aligned}
\frac{\phi^0 - \psi^0}{\sqrt{5}} &= \frac{1 - 1}{\sqrt{5}} &\qquad \frac{\phi^1 - \psi^1}{\sqrt{5}} &= \frac{\frac{1 + \sqrt{5}}{2} - \frac{1 - \sqrt{5}}{2}}{\sqrt{5}} \\[2ex]
&= 0 &&= \frac{1 + \sqrt{5} - (1 - \sqrt{5})}{2\sqrt{5}} \\[2ex]
&= Fib(0) &&= \frac{2\sqrt{5}}{2\sqrt{5}} \\[4ex]
&&&= 1 \\[4ex]
&&&= Fib(1) \\[4ex]
\end{aligned}
```

Let us assume the following relations:

```math
\displaystyle
\begin{array}{c}
Fib(n - 1) = \frac{\phi^{n - 1} - \psi^{n - 1}}{\sqrt{5}} \\[2ex]
Fib(n - 2) = \frac{\phi^{n - 2} - \psi^{n - 2}}{\sqrt{5}} \\[2ex]
\end{array}
```

With the assumed relations, we can observe the following:

```math
\displaystyle
\begin{aligned}
Fib(n) &= Fib(n - 1) + Fib(n - 2) \\[2ex]
&= \frac{\phi^{n - 1} - \psi^{n - 1}}{\sqrt{5}} + \frac{\phi^{n - 2} - \psi^{n - 2}}{\sqrt{5}} \\[2ex]
&= \frac{\phi^{n - 1} - \psi^{n - 1} + \phi^{n - 2} - \psi^{n - 2}}{\sqrt{5}} \\[2ex]
&= \frac{\phi^{n - 1} + \phi^{n - 2} - (\psi^{n - 1}  + \psi^{n - 2})}{\sqrt{5}} \\[2ex]
&= \frac{\phi^{n - 2}(\phi + 1) - \psi^{n - 2}(\psi + 1)}{\sqrt{5}} \\[2ex]
&= \frac{\phi^{n - 2}(\phi^2) - \psi^{n - 2}(\psi^2)}{\sqrt{5}} \\[2ex]
&= \frac{\phi^n - \psi^n}{\sqrt{5}} \\[2ex]
\end{aligned}
```

Therefore, by the principle of induction, $Fib(n) = \frac{\phi^n - \psi^n}{\sqrt{5}}$, $\forall n \in \mathbb{Z} \mid n \ge 0$.

Let us now observe the following property of $\psi$:

```math
\displaystyle
\begin{aligned}
\left| \frac{\psi^0}{\sqrt{5}} \right| &= \left| \frac{1}{\sqrt{5}} \right| \\[2ex]
&= \frac{1}{\sqrt{5}} \\[2ex]
&< \frac{1}{2} \\[2ex]
\end{aligned}
```

Assuming that $\left| \frac{\psi^{n - 1}}{\sqrt{5}} \right| < \frac{1}{2}$, let us observe the following:

```math
\displaystyle
\begin{aligned}
{\left| \frac{\psi^n}{\sqrt{5}} \right|} &= {\left| \frac{\psi(\psi^{n - 1})}{\sqrt{5}} \right|} \\[2ex]
&= |\psi| \cdot {\left| \frac{\psi^{n - 1}}{\sqrt{5}} \right|} \\[2ex]
&< {\left| \frac{1 - \sqrt{5}}{2} \right|} \cdot \frac{1}{2} \\[2ex]
&< 0.618... \cdot \frac{1}{2} \\[2ex]
&< \frac{1}{2} \\[2ex]
\end{aligned}
```

Therefore, by the principle of induction, ${\left| \frac{\psi^n}{\sqrt{5}} \right|} < \frac{1}{2}$, $\forall n \in \mathbb{Z} \mid n \ge 0$.

Therefore, since $Fib(n)$ is always an integer, since $Fib(n) = \frac{\phi^n - \psi^n}{\sqrt{5}}$, $\forall n \in \mathbb{Z} \mid n \ge 0$, and since ${\left| \frac{\psi^n}{\sqrt{5}} \right|} < \frac{1}{2}$, $\forall n \in \mathbb{Z} \mid n \ge 0$, $Fib(n)$ must be the closest integer to $\frac{\phi^n}{\sqrt{5}}$, $\forall n \in \mathbb{Z} \mid n \ge 0$.

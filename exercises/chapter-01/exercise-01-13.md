# Exercise 1.13

Let $\phi$, $\psi$, and $Fib(n)$ be defined as such:\

$$
\begin{gather*}

\phi = \frac{1 + \sqrt{5}}{2} \\[1.5em]

\psi = \frac{1 - \sqrt{5}}{2} \\[1.5em]

Fib(0) = 0 \\[1.5em]

Fib(1) = 1 \\[1.5em]

Fib(n) = Fib(n - 1) + Fib(n - 2), \: \forall{n} \in \mathbb{Z} \mid n > 1

\end{gather*}
$$

Observe the following property of $\phi$ and $\psi$:

$$
\begin{align*}

\phi^2 &= {\left(\frac{1 + \sqrt{5}}{2}\right)}^2 \qquad
&\psi^2 &= {\left(\frac{1 - \sqrt{5}}{2}\right)}^2 \\[1.5em]

&= \frac{1 + 2\sqrt{5} + 5}{4} &&= \frac{1 - 2\sqrt{5} + 5}{4} \\[1.5em]

&= \frac{6 + 2\sqrt{5}}{4} &&= \frac{6 - 2\sqrt{5}}{4} \\[1.5em]

&= \frac{3 + \sqrt{5}}{2} &&= \frac{3 - \sqrt{5}}{2} \\[1.5em]

&= \frac{1 + \sqrt{5}}{2} + 1 &&= \frac{1 - \sqrt{5}}{2} + 1 \\[1.5em]

&= \phi + 1 &&= \psi + 1

\end{align*}
$$

Now, observe the following relations between $\phi$, $\psi$, and $Fib(n)$:

$$
\begin{align*}

\frac{\phi^0 - \psi^0}{\sqrt{5}} &= \frac{1 - 1}{\sqrt{5}} \qquad
&\frac{\phi^1 - \psi^1}{\sqrt{5}} &= \frac{\frac{1 + \sqrt{5}}{2} - \frac{1 - \sqrt{5}}{2}}{\sqrt{5}} \\[1.5em]

&= 0 &&= \frac{1 + \sqrt{5} - (1 - \sqrt{5})}{2\sqrt{5}} \\[1.5em]

&= Fib(0) &&= \frac{2\sqrt{5}}{2\sqrt{5}} \\[1.5em]

&&&= 1 \\[1.5em]

&&&= Fib(1)

\end{align*}
$$

Let us assume the following relations:

$$
\begin{gather*}

Fib(n - 1) = \frac{\phi^{n - 1} - \psi^{n - 1}}{\sqrt{5}} \\[1.5em]

Fib(n - 2) = \frac{\phi^{n - 2} - \psi^{n - 2}}{\sqrt{5}}

\end{gather*}
$$

With the assumed relations, we can observe the following:

$$
\begin{align*}

Fib(n) &= Fib(n - 1) + Fib(n - 2) \\[1.5em]

&= \frac{\phi^{n - 1} - \psi^{n - 1}}{\sqrt{5}} + \frac{\phi^{n - 2} - \psi^{n - 2}}{\sqrt{5}} \\[1.5em]

&= \frac{\phi^{n - 1} - \psi^{n - 1} + \phi^{n - 2} - \psi^{n - 2}}{\sqrt{5}} \\[1.5em]

&= \frac{\phi^{n - 1} + \phi^{n - 2} - (\psi^{n - 1}  + \psi^{n - 2})}{\sqrt{5}} \\[1.5em]

&= \frac{\phi^{n - 2}(\phi + 1) - \psi^{n - 2}(\psi + 1)}{\sqrt{5}} \\[1.5em]

&= \frac{\phi^{n - 2}(\phi^2) - \psi^{n - 2}(\psi^2)}{\sqrt{5}} \\[1.5em]

&= \frac{\phi^n - \psi^n}{\sqrt{5}}

\end{align*}
$$

Therefore, by the principle of induction,
$Fib(n) = \frac{\phi^n - \psi^n}{\sqrt{5}}$, $\forall n \in \mathbb{Z} \mid n \ge 0$.

Let us now observe the following property of $\psi$:

$$
\begin{align*}

{\left|\frac{\psi^0}{\sqrt{5}}\right|} &= {\left|\frac{1}{\sqrt{5}}\right|} \\[1.5em]

&= \frac{1}{\sqrt{5}} \\[1.5em]

&< \frac{1}{2}

\end{align*}
$$

Assuming that ${\left|\frac{\psi^{n - 1}}{\sqrt{5}}\right|} < \frac{1}{2}$, let us observe the following:

$$
\begin{align*}

{\left|\frac{\psi^n}{\sqrt{5}}\right|} &= {\left|\frac{\psi(\psi^{n - 1})}{\sqrt{5}}\right|} \\[1.5em]

&= |\psi| \times {\left|\frac{\psi^{n - 1}}{\sqrt{5}}\right|} \\[1.5em]

&< {\left|\frac{1 - \sqrt{5}}{2}\right|} \times \frac{1}{2} \\[1.5em]

&< 0.618... \times \frac{1}{2} \\[1.5em]

&< \frac{1}{2}

\end{align*}
$$

Therefore, by the principle of induction, ${\left|\frac{\psi^n}{\sqrt{5}}\right|} < \frac{1}{2}$,
$\forall n \in \mathbb{Z} \mid n \ge 0$.

Therefore, since $Fib(n)$ is always an integer, since $Fib(n) = \frac{\phi^n - \psi^n}{\sqrt{5}}$,
$\forall n \in \mathbb{Z} \mid n \ge 0$, and since ${\left|\frac{\psi^n}{\sqrt{5}}\right|} < \frac{1}{2}$,
$\forall n \in \mathbb{Z} \mid n \ge 0$, $Fib(n)$ must be the closest integer to $\frac{\phi^n}{\sqrt{5}}$,
$\forall n \in \mathbb{Z} \mid n \ge 0$.

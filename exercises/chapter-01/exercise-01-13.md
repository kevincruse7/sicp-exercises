# Exercise 1.13

Let $\phi$, $\psi$, and $Fib(n)$ be defined as such:

$$
\begin{gather*}

\phi = \dfrac{1 + \sqrt{5}}{2} \\[1.5em]

\psi = \dfrac{1 - \sqrt{5}}{2} \\[1.5em]

Fib(0) = 0 \\[1.5em]

Fib(1) = 1 \\[1.5em]

Fib(n) = Fib(n - 1) + Fib(n - 2), \: \forall{n} \in \mathbb{Z} \mid n > 1

\end{gather*}
$$

Observe the following property of $\phi$ and $\psi$:

$$
\begin{align*}

\phi^2 &= {\left(\dfrac{1 + \sqrt{5}}{2}\right)}^2 \qquad
&\psi^2 &= {\left(\dfrac{1 - \sqrt{5}}{2}\right)}^2 \\[1.5em]

&= \dfrac{1 + 2\sqrt{5} + 5}{4} &&= \dfrac{1 - 2\sqrt{5} + 5}{4} \\[1.5em]

&= \dfrac{6 + 2\sqrt{5}}{4} &&= \dfrac{6 - 2\sqrt{5}}{4} \\[1.5em]

&= \dfrac{3 + \sqrt{5}}{2} &&= \dfrac{3 - \sqrt{5}}{2} \\[1.5em]

&= \dfrac{1 + \sqrt{5}}{2} + 1 &&= \dfrac{1 - \sqrt{5}}{2} + 1 \\[1.5em]

&= \phi + 1 &&= \psi + 1

\end{align*}
$$

Now, observe the following relations between $\phi$, $\psi$, and $Fib(n)$:

$$
\begin{align*}

\dfrac{\phi^0 - \psi^0}{\sqrt{5}} &= \dfrac{1 - 1}{\sqrt{5}} \qquad
&\dfrac{\phi^1 - \psi^1}{\sqrt{5}} &= \dfrac{\dfrac{1 + \sqrt{5}}{2} - \dfrac{1 - \sqrt{5}}{2}}{\sqrt{5}} \\[1.5em]

&= 0 &&= \dfrac{1 + \sqrt{5} - (1 - \sqrt{5})}{2\sqrt{5}} \\[1.5em]

&= Fib(0) &&= \dfrac{2\sqrt{5}}{2\sqrt{5}} \\[1.5em]

&&&= 1 \\[1.5em]

&&&= Fib(1)

\end{align*}
$$

Let us assume the following relations:

$$
\begin{gather*}

Fib(n - 1) = \dfrac{\phi^{n - 1} - \psi^{n - 1}}{\sqrt{5}} \\[1.5em]

Fib(n - 2) = \dfrac{\phi^{n - 2} - \psi^{n - 2}}{\sqrt{5}}

\end{gather*}
$$

With the assumed relations, we can observe the following:

$$
\begin{align*}

Fib(n) &= Fib(n - 1) + Fib(n - 2) \\[1.5em]

&= \dfrac{\phi^{n - 1} - \psi^{n - 1}}{\sqrt{5}} + \dfrac{\phi^{n - 2} - \psi^{n - 2}}{\sqrt{5}} \\[1.5em]

&= \dfrac{\phi^{n - 1} - \psi^{n - 1} + \phi^{n - 2} - \psi^{n - 2}}{\sqrt{5}} \\[1.5em]

&= \dfrac{\phi^{n - 1} + \phi^{n - 2} - (\psi^{n - 1}  + \psi^{n - 2})}{\sqrt{5}} \\[1.5em]

&= \dfrac{\phi^{n - 2}(\phi + 1) - \psi^{n - 2}(\psi + 1)}{\sqrt{5}} \\[1.5em]

&= \dfrac{\phi^{n - 2}(\phi^2) - \psi^{n - 2}(\psi^2)}{\sqrt{5}} \\[1.5em]

&= \dfrac{\phi^n - \psi^n}{\sqrt{5}}

\end{align*}
$$

Therefore, by the principle of induction,
$Fib(n) = \tfrac{\phi^n - \psi^n}{\sqrt{5}}$, $\forall n \in \mathbb{Z} \mid n \ge 0$.

Let us now observe the following property of $\psi$:

$$
\begin{align*}

{\left|\dfrac{\psi^0}{\sqrt{5}}\right|} &= {\left|\dfrac{1}{\sqrt{5}}\right|} \\[1.5em]

&= \dfrac{1}{\sqrt{5}} \\[1.5em]

&< \dfrac{1}{2}

\end{align*}
$$

Assuming that ${\left|\tfrac{\psi^{n - 1}}{\sqrt{5}}\right|} < \tfrac{1}{2}$, let us observe the following:

$$
\begin{align*}

{\left|\dfrac{\psi^n}{\sqrt{5}}\right|} &= {\left|\dfrac{\psi(\psi^{n - 1})}{\sqrt{5}}\right|} \\[1.5em]

&= |\psi| \times {\left|\dfrac{\psi^{n - 1}}{\sqrt{5}}\right|} \\[1.5em]

&< {\left|\dfrac{1 - \sqrt{5}}{2}\right|} \times \dfrac{1}{2} \\[1.5em]

&< 0.618... \times \dfrac{1}{2} \\[1.5em]

&< \dfrac{1}{2}

\end{align*}
$$

Therefore, by the principle of induction, ${\left|\tfrac{\psi^n}{\sqrt{5}}\right|} < \tfrac{1}{2}$,
$\forall n \in \mathbb{Z} \mid n \ge 0$.

Therefore, since $Fib(n)$ is always an integer, since $Fib(n) = \tfrac{\phi^n - \psi^n}{\sqrt{5}}$,
$\forall n \in \mathbb{Z} \mid n \ge 0$, and since ${\left|\tfrac{\psi^n}{\sqrt{5}}\right|} < \tfrac{1}{2}$,
$\forall n \in \mathbb{Z} \mid n \ge 0$, $Fib(n)$ must be the closest integer to $\tfrac{\phi^n}{\sqrt{5}}$,
$\forall n \in \mathbb{Z} \mid n \ge 0$.

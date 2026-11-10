# The divergence theorem

*Transcript of the handwritten note `The divergence theorem.tldr` / `The divergence theorem.svg`. Descriptions of drawings are in square brackets.*

What we can prove ourselves:

*[Diagram: a blob-shaped open set $U$ containing a rectangle $\Omega$.]*

$\vec\Phi : U \to \mathbb{R}^2$ diff. $\dfrac{\partial\Phi_x}{\partial x}$ and $\dfrac{\partial\Phi_y}{\partial y}$ integrable

$$\Rightarrow \int_\Omega \operatorname{div}\vec\Phi\,d\sigma = \int_{\partial\Omega} \vec\Phi\cdot\vec n\,d\ell$$

What actually holds:

$\vec\Phi : U \to \mathbb{R}^2$ diff. $\operatorname{div}\vec\Phi$ integrable

$$\Rightarrow \int_\Omega \operatorname{div}\vec\Phi\,d\sigma = \int_{\partial\Omega} \vec\Phi\cdot\vec n\,d\ell$$

This is good enough for us!

How we can prove this / the more fundamental result:

If we redefine $\int_\Omega$ to mean the generalized Perron integral (instead of the Lebesgue integral), then we have:

$$\vec\Phi : U \to \mathbb{R}^2 \text{ diff on } U \Rightarrow \operatorname{div}\vec\Phi \text{ is GP-integrable}$$

on $\Omega$ and

$$\int_\Omega \operatorname{div}\vec\Phi\,d\sigma = \int_{\partial\Omega} \vec\Phi\cdot\vec n\,d\ell$$

The GP belongs to the family of the generalized Riemann integrals; cf

> Formalizing the Divergence Theorem and the
> Cauchy Integral Formula in Lean
> Yury Kudryashov

for the exact statement.

Let's provide a glimpse of how that works in 1D.

We know that the div. theorem is a 2D generalisation of the fundamental theorem of calculus:

$f : [a,b] \to \mathbb{R}$ diff and $f'$ integrable *[the words "$f'$ integrable" are underlined in red]*

$$\Rightarrow \int_a^b f'(t)\,dt = f(b) - f(a)$$

Lebesgue integration does not guarantee that every derivative is integrable .... a shame!

Here is the Henstock-Kurzweil gauge integral def:

Gauge on $[a,b]$: fct $\delta : [a,b] \to \mathbb{R}$ st $\forall t \in [a,b]$, $\delta(t) > 0$.

$f : [a,b] \to \mathbb{R}$ HK integrable with integral $I$

if $\forall \varepsilon > 0$, there is a gauge $\delta$ on $[a,b]$, s.t. every pointed distribution $a = x_0 \leq t_0 \leq x_1 \leq \cdots \leq x_n = b$ subordinate to $\delta$: $\forall k$, $x_{k+1} - x_k < \delta(t_k)$

We have

$$\left| \sum_{k=0}^{n-1} f(t_k)(x_{k+1} - x_k) - I \right| \leq \varepsilon$$

Well, the "true" FTC works for the HK integral

$$f : [a,b] \to \mathbb{R} \text{ diff} \Rightarrow f' \text{ is HK integrable}$$

and

$$\int_a^b f'(t)\,dt = f(b) - f(a).$$

---

## Transcriber's notes

- The reference to Kudryashov's paper is the only typed text in the note. Everything else is handwritten.
- "$\forall \varepsilon > 0$": the $0$ is written so that it looks like an "a".
- Corrected here, still present in the handwritten original: the sum was written with lower index $i = 0$, no upper bound, and a summand indexed by $k$. It now reads $\sum_{k=0}^{n-1}$.

---
title: All roads lead to Cauchy
---

# 3+1 versions of local Cauchy

*Transcript of the handwritten note `3+1-versions-of-local-cauchy.tldr` / `3+1-versions-of-local-cauchy.svg`. Descriptions of drawings are in square brackets.*

## LOCAL CAUCHY

- LC RECT $\Rightarrow$ $\exists$ PRIM. (EXPLICIT CONSTR.)
- LC TRIANG $\Rightarrow$ LC RECT (SPLIT THE QUAD)
- LC TRIANG $\Rightarrow$ LC CIRC.
- $\exists$ PRIM $\Rightarrow$ EVERYTHING

*[Diagram: "$\exists$ LOC. PRIM" at the top, joined by a pair of double arrows (one in each direction) to each of three contours on the row below: a rectangle, a triangle and a circle, each with an orientation arrow. On that row: rectangle ($\Leftarrow$) triangle ($\Rightarrow$) circle.]*

- $\exists$ LOC PRIM $\Rightarrow$ $\exists$ $\int = 0$ LOC $\forall$ CLOSED PATH $\gamma$

  $f \to F' = f$.

  $$\int_\gamma f(z)\,dz = [F]_\gamma = F(\gamma(1)) - F(\gamma(0)) = 0$$

- LOC $\int = 0$ for *[rectangle contour]* $\Rightarrow$ $\exists$ PRIM LOC.

  DEFINE

  $$F(z) = \int_{\gamma_z} f(\mu)\,d\mu$$

  where

  *[Diagram: the path $\gamma_z$ goes from $z_0$ horizontally to the right, then vertically up to $z$.]*

  $F(z+h) - F(z)$:

  *[Diagram: from $z_0$, the path $\gamma_z$ goes right, then up to $z$. The path $\gamma_{z+h}$ continues further right along the same horizontal, then up to $z + h$.]*

  $$\int_{\gamma_{z+h}} f(\mu)\,d\mu - \int_{\gamma_z} f(\mu)\,d\mu = \int_{\mu} f(\mu)\,d\mu$$

  *[Diagram: a path labelled $\mu$ from $z$ down, then right, then up to $z + h$.]*

  $$= \int_{\lambda_{z,h}} f(\mu)\,d\mu$$

  *[Diagram: the path $\lambda_{z,h}$ from $z$ up, then right to $z + h$.]*

  *[In the next two equations, the divisions by $h$ are added in blue.]*

  $$\frac{F(z+h) - F(z) - f(z) \times h}{h} = \int_{\lambda_{z,h}} \frac{f(\mu)}{h}\,d\mu - \frac{f(z)}{h} \times \int_{\lambda_{z,h}} 1\,d\mu$$

  $$= \int_{\lambda_{z,h}} \frac{f(\mu) - f(z)}{h}\,d\mu$$

  $$\ell(\lambda_{z,h}) \leq 2|h|$$

  $$\left| \frac{F(z+h) - F(z)}{h} - f(z) \right| \leq 2|h| \max_{\mu \in \lambda_{z,h}([0,1])} \left| \frac{f(\mu) - f(z)}{h} \right|$$

  $$\leq 2 \max_{\mu \in \lambda_{z,h}([0,1])} |f(\mu) - f(z)|$$

  $$\xrightarrow[h \to 0]{} 0$$

  $\Rightarrow$ $F$ is a prim of $f$.

- *[circle contour]* $\Rightarrow$ $\exists$ PRIM. LOCALE: PROVE THE $\exists$ OF A LOCAL POWER SERIES EXPANSION, THEN SUM THE PRIMITIVE OF EACH TERM.

---

## Transcriber's notes

- Corrected here, still present in the handwritten original: the maximum was taken over $\gamma_{z,h}([0,1])$, while the path is named $\lambda_{z,h}$ just before. It now reads $\lambda_{z,h}([0,1])$.
- Kept as written: the subscript of $\int_\mu$ is the letter used for the integration variable. It also labels the U-shaped path in the diagram.

# The Cauchy-Goursat theorem for triangles

This is the classic proof of "LC TRIANG", by repeated subdivision of the triangle. It only uses the complex differentiability of $f$, and never assumes that $f'$ is continuous.

**Notation.** The closed triangle with vertices $a, b, c \in \mathbb{C}$ is $T = \operatorname{conv}\{a, b, c\}$. Its boundary $\partial T$ is the closed path that follows the segments $[a,b]$, $[b,c]$ and $[c,a]$, so that

$$\int_{\partial T} f(z)\,dz = \int_{[a,b]} f(z)\,dz + \int_{[b,c]} f(z)\,dz + \int_{[c,a]} f(z)\,dz.$$

We denote by $d$ the diameter of $T$ and by $L$ the length of $\partial T$.

**Theorem.** Let $U \subset \mathbb{C}$ be open and let $f : U \to \mathbb{C}$ be complex-differentiable at every point of $U$. If $T \subset U$ is a closed triangle, then

$$\int_{\partial T} f(z)\,dz = 0.$$

Since $f$ is differentiable, it is continuous, so all the integrals in this proof are well defined.

## Step 1: subdivide the triangle

Let $c' = \frac{a+b}{2}$, $a' = \frac{b+c}{2}$ and $b' = \frac{c+a}{2}$ be the midpoints of the sides. They split $T$ into four triangles, with the following orientations:

$$T^1 = (a, c', b'), \quad T^2 = (c', b, a'), \quad T^3 = (a', c, b'), \quad T^4 = (a', b', c').$$

Add the four boundary integrals. The inner segments are each traversed twice, in opposite directions:

- $[c', b']$ in $T^1$ and $[b', c']$ in $T^4$,
- $[a', c']$ in $T^2$ and $[c', a']$ in $T^4$,
- $[b', a']$ in $T^3$ and $[a', b']$ in $T^4$.

Their contributions cancel. The remaining pieces make up the three sides of $T$, hence

$$\int_{\partial T} f(z)\,dz = \sum_{j=1}^{4} \int_{\partial T^j} f(z)\,dz.$$

Each $T^j$ is contained in $T$ by convexity. Each $T^j$ is also the image of $T$ by a similarity of ratio $\frac{1}{2}$, so its diameter is $\frac{d}{2}$ and its perimeter is $\frac{L}{2}$.

## Step 2: keep the worst piece

Let $I = \left| \int_{\partial T} f(z)\,dz \right|$. By the triangle inequality, at least one of the four triangles $T^j$ satisfies

$$\left| \int_{\partial T^j} f(z)\,dz \right| \geq \frac{I}{4}.$$

Set $T_0 = T$ and repeat the construction. This gives a decreasing sequence of closed triangles $T_0 \supset T_1 \supset T_2 \supset \cdots$ such that, for every $n$,

$$\left| \int_{\partial T_n} f(z)\,dz \right| \geq \frac{I}{4^n}, \qquad \operatorname{diam} T_n = \frac{d}{2^n}, \qquad \operatorname{length} \partial T_n = \frac{L}{2^n}.$$

## Step 3: find the limit point

The $T_n$ are nonempty, compact and nested, so their intersection contains a point $z_0$. In particular $z_0 \in T \subset U$.

## Step 4: use differentiability at the limit point

Let $\varepsilon > 0$. Since $f$ is differentiable at $z_0$, there is an $r > 0$ such that $D(z_0, r) \subset U$ and

$$|z - z_0| < r \;\Rightarrow\; \left| f(z) - f(z_0) - f'(z_0)(z - z_0) \right| \leq \varepsilon\,|z - z_0|.$$

The affine function $g(z) = f(z_0) + f'(z_0)(z - z_0)$ has a primitive, so its integral over any closed path is zero. Pick $n$ large enough that $\frac{d}{2^n} < r$. Since $z_0 \in T_n$, we have $T_n \subset D(z_0, r)$ and $|z - z_0| \leq \frac{d}{2^n}$ on $\partial T_n$. Therefore

$$\left| \int_{\partial T_n} f(z)\,dz \right| = \left| \int_{\partial T_n} \left( f(z) - g(z) \right) dz \right| \leq \frac{L}{2^n} \times \varepsilon\,\frac{d}{2^n} = \frac{\varepsilon\,L\,d}{4^n}.$$

## Conclusion

Comparing with the lower bound of Step 2 gives

$$\frac{I}{4^n} \leq \frac{\varepsilon\,L\,d}{4^n}, \quad \text{that is} \quad I \leq \varepsilon\,L\,d.$$

This holds for every $\varepsilon > 0$, so $I = 0$. $\blacksquare$

The factors match exactly: each subdivision divides the integral by at most $4$, while the estimate gains a factor $2$ from the length and a factor $2$ from the size of the error term.

# How the divergence theorem would help

*Transcript of the handwritten note `How the divergence theorem would help.tldr` / `How the divergence theorem would help.svg`. Descriptions of drawings are in square brackets.*

In physics, you often have a vector field that "transfers some quantity" around the space.

For example, if $\vec v$ is the velocity field of a fluid and $\rho$ the scalar field of mass density, $\vec\Phi := \rho\vec v$ is the vector field that tells you how mass moves in time.

Let's assume that we work in $\mathbb{R}^n$ with $n = 2$.

The divergence "theorem" tells you that

- if $\Omega$ is a set with "smooth enough" boundary and $\vec n$ is its unit outer normal vector.
- if $\vec\Phi : U \subset \mathbb{R}^2 \to \mathbb{R}^2$ is "smooth enough" and $\Omega \subset U$

With $\operatorname{div}\vec\Phi := \displaystyle\sum_{i=1}^{2} \frac{\partial\Phi_i}{\partial x_i}$ (also denoted $\vec\nabla\cdot\vec\Phi$),

we have

$$\int_\Omega \operatorname{div}\vec\Phi\,d\sigma = \int_{\partial\Omega} (\vec\Phi\cdot\vec n)\,d\ell$$

where $\sigma$ is the measure of surface in $\mathbb{R}^2$ and $\ell$ the measure of length on $\partial\Omega$.

The r.h.s. can be interpreted as the flow of $\vec\Phi$ going out of $\Omega$ per unit of time ($> 0$ for outgoing, $< 0$ for incoming).

---

What we can prove easily with proper assumptions to the divergence theorem is a rectangular case:

- if $U \subset \mathbb{R}^2$ is open and $\Omega = \,]a,b[\,\times\,]c,d[\, \subset U$
- if $\vec\Phi : U \to \mathbb{R}^2$ is integrable and differentiable on $U$ and $\dfrac{\partial\Phi_x}{\partial x}$ and $\dfrac{\partial\Phi_y}{\partial y}$ are integrable on $U$

then

$$\int_\Omega \operatorname{div}\vec\Phi\,d\sigma = \int_{\partial\Omega} (\vec\Phi\cdot\vec n)\,d\ell$$

holds.

PROOF: By Fubini's theorem: $\displaystyle\int_\Omega \operatorname{div}\vec\Phi\,d\sigma = \dots$

$$\int_{]a,b[\times]c,d[} \left( \frac{\partial\Phi_x}{\partial x}(x,y) + \frac{\partial\Phi_y}{\partial y}(x,y) \right) dx\,dy$$

$$= \int_{]c,d[} \left[ \int_{]a,b[} \frac{\partial\Phi_x}{\partial x}(x,y)\,dx \right] dy + \int_{]a,b[} \left[ \int_{]c,d[} \frac{\partial\Phi_y}{\partial y}(x,y)\,dy \right] dx$$

*[Green annotations: the first inner integrand is marked "INTEGRABLE FOR A.E $y$", the second "INTEGRABLE FOR A.E. $x$".]*

$$= \int_{]c,d[} \left( \Phi_x(b,y) - \Phi_x(a,y) \right) dy + \int_{]a,b[} \left( \Phi_y(x,d) - \Phi_y(x,c) \right) dx$$

*[Diagram: the rectangle $\Omega$ with corners $(a,c)$ at the bottom left and $(b,d)$ at the top right. Outward normals in blue: $\vec n = (0,1)$ on top, $\vec n = (1,0)$ on the right, $\vec n = (-1,0)$ on the left, and $\vec n = (0,-1)$ on the bottom.]*

$$\dots = \int_{\partial\Omega} \vec\Phi\cdot\vec n\,d\ell$$

NOTE: the rectangular case of the divergence theorem is the 2dim (or $n$-dim.) generalisation of:

$f : I \to \mathbb{R}$ integrable, $]a,b[\, \subset I$, $f'$ exist and integrable $\Rightarrow$

$$\int_{]a,b[} f'(x)\,dx = f(b) - f(a)$$

---

Let's assume for a moment that the rectangular version of the divergence theorem works WITHOUT THE ASSUMPTION $\dfrac{\partial\Phi_x}{\partial x}$ and $\dfrac{\partial\Phi_y}{\partial y}$ are integrable on $U$ *[this assumption is written in orange]*

Why should we care?

Let $f : U \subset \mathbb{C} \to \mathbb{C}$ be complex-diff and $\Omega := \,]a,b[\,\times\,]c,d[\, \subset U$. Let $\gamma$ be the associated (counter-clockwise) closed path

Let $f(x + iy) = u(x,y) + iv(x,y)$ and set $\vec\Phi = (u, -v)$.

The Cauchy-Riemann equations yield

$$\operatorname{div}\vec\Phi = \frac{\partial u}{\partial x} - \frac{\partial v}{\partial y} = 0.$$

Thus,

$$\int_{]a,b[\times]c,d[} \operatorname{div}\vec\Phi\,d\sigma = 0 = \int_{\partial\Omega} \vec\Phi\cdot\vec n\,d\ell$$

$$= \int_c^d u(b,t)\,dt + \int_a^b (-v(t,d))\,dt$$

$$+ \int_c^d -u(a,t)\,dt + \int_a^b -(-v(t,c))\,dt$$

Picking $\vec\Phi = (v, u)$ also yields $\operatorname{div}\vec\Phi = \dfrac{\partial v}{\partial x} + \dfrac{\partial u}{\partial y} = 0$

and thus,

$$0 = \int_c^d v(b,t)\,dt + \int_a^b (u(t,d))\,dt$$

$$+ \int_c^d (-v(a,t))\,dt + \int_a^b (-u(t,c))\,dt$$

OTOH, we have:

$$\int_\gamma f(z)\,dz = \int_c^d (u+iv)(b,t)\,i\,dt + \int_a^b (u+iv)(t,d)\,(-dt)$$

$$+ \int_c^d (u+iv)(a,t)\,(-i\,dt) + \int_a^b (u+iv)(t,c)\,dt$$

$$= \left[ \int_c^d -v(b,t)\,dt - \int_a^b u(t,d)\,dt + \int_c^d v(a,t)\,dt + \int_a^b u(t,c)\,dt \right]$$

$$+ i \left[ \int_c^d u(b,t)\,dt - \int_a^b v(t,d)\,dt - \int_c^d u(a,t)\,dt + \int_a^b v(t,c)\,dt \right]$$

and we know that both integrals are $0$!

THUS, THE DIV THEOREM WITH "WEAK HYPOTHESES" WOULD UNLOCK RECTANGULAR CAUCHY!

---

## Transcriber's notes

- Corrected here, still present in the handwritten original: in the rectangle diagram, the bottom normal was labelled $\vec n = (0,1)$. Since it points downward, it now reads $(0,-1)$.
- "with proper assumptions": the word "proper" is hard to read and is my best guess.

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
> Cauchy Integral Formula in Lean\
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

# The speedrun

*Transcript of the handwritten note `the-speedrun.tldr` / `the-speedrun.svg`. Descriptions of drawings are in square brackets.*

CHEAT!

- DEFINE HOLOMORPHIC AS CONTINUOUSLY DIFF. INSTEAD OF MERELY DIFF.
- PRO: YOU UNLOCK A SIMPLE PROOF OF THE CIRCULAR VERSION OF LOC. CAUCHY, THUS YOU GET THE POWER SERIES EXPANSION REALLY FAST
- CON: YOU PAY A SMALL, USELESS EXTRA TAX FOR ALL YOUR PROOF (THE NEED TO PROVE THAT $f'$ IS CONTINUOUS).

## THE PROOF

*[Diagram: a circle $\gamma_r$ of centre $z$ (marked with a cross) and radius $r$, traversed counter-clockwise.]*

$$\int_{\gamma_r} f(w)\,dw = 0$$

def

$$\phi(r) := \int_{\gamma_r} f(w)\,dw$$

WE HAVE $\phi(0) = 0$ (and even continuity at $0$). SINCE

$$\phi(r) = \int_0^1 f(z + re^{i2\pi t})\, re^{i2\pi t}\,(i2\pi)\,dt$$

AND $f$ IS <u>$\mathcal{C}^1$</u>,

$$\phi'(r) = \int_0^1 \left( f'(z + re^{i2\pi t})\, e^{i2\pi t}\, r + f(z + re^{i2\pi t}) \right) e^{i2\pi t}\,(i2\pi)\,dt$$

$$= \frac{1}{r} \int_0^1 \left( f'(z + re^{i2\pi t})\, re^{i2\pi t} + f(z + re^{i2\pi t}) \right) re^{i2\pi t}\,(i2\pi)\,dt$$

$$= \frac{1}{r} \int_{\gamma_r} \left( f'(w)\,(w - z) + f(w) \right) dw$$

Note that $f'(w)(w - z) + f(w)$ has $(w - z) f(w)$ as a primitive.

Hence the derivative of $\phi$ is $= 0$ at any (small) $r > 0$.

Since $\phi(0^+) = \phi(0) = 0$, that yields $\phi(r) = 0$.

---

## Transcriber's notes

This transcript corrects the following slips, which remain in the handwritten original.

- In the first expression of $\phi'(r)$, the last factor read $(i\pi)$. It is now $(i2\pi)$, as in the next line.
- The original uses $z$ for both the centre of the circle and the integration variable. The integration variable is now $w$, so the last integrand, written $f'(z)z + f(z)$ in the original, is now $f'(w)(w - z) + f(w)$.
- The original reads "has $f(z)$ has a primitive". It now reads "has $(w - z) f(w)$ as a primitive".

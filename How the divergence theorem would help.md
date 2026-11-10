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

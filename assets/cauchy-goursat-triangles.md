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

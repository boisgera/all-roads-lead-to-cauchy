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

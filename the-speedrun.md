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

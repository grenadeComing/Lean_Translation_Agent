import Mathlib

/-- For all complex numbers z, the norm of sin z is at least the norm of sin (Re z). -/
axiom abs_sin_ge_sin_re (z : Complex) :
  Norm.norm (Complex.sin z) ≥ Norm.norm (Complex.sin (Complex.ofReal z.re))

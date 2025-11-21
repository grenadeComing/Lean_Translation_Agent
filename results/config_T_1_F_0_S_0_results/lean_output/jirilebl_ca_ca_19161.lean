import Mathlib

/-- For any complex z with sin z ≠ 0 and sin (Re z) ≠ 0, the complex cosecant of z has modulus at least that of the cosecant of Re z. -/
lemma abs_csc_ge_abs_csc_re (z : ℂ) (hz : Complex.sin z ≠ 0) (hre : Complex.sin (z.re : ℂ) ≠ 0) :
  Complex.abs (1 / Complex.sin z) ≥ Complex.abs (1 / Complex.sin (z.re : ℂ)) := by sorry
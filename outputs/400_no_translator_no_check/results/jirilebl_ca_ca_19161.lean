import Mathlib

/-- For z ∈ ℂ we have |csc z| ≥ |csc (Re z)|. -/
theorem abs_csc_ge_abs_csc_re (z : ℂ) (h1 : Complex.sin z ≠ 0) (h2 : Complex.sin (z.re : ℂ) ≠ 0) :
  Complex.abs (1 / Complex.sin z) ≥ Complex.abs (1 / Complex.sin (z.re : ℂ)) := by
  sorry

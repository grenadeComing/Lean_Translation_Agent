import Mathlib

/-- Statement (as a Prop) of the requested inequalities for z : ℂ. -/
def sinh_cosh_inequalities (z : Complex) : Prop :=
  Complex.nnnorm (Complex.sinh z) ≤ (1 / 2 : ℝ) * Real.exp (Complex.nnnorm z) ∧
  Complex.nnnorm (Complex.cosh z) ≤ (1 / 2 : ℝ) * Real.exp (Complex.nnnorm z)

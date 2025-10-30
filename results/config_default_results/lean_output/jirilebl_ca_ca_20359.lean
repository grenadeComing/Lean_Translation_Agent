import Mathlib

/-- Let z ∈ ℂ. Prove that |sin z| ≤ (1/2) e^{|z|} and |cos z| ≤ e^{|z|}. -/
theorem abs_sin_le_exp_bound_and_cos_le_exp (z : ℂ) :
  Complex.abs (sin z) ≤ ((1 : ℝ) / 2) * Real.exp (Complex.abs z) ∧
  Complex.abs (cos z) ≤ Real.exp (Complex.abs z) := by
  sorry

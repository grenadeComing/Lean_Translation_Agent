import Mathlib

/-- The functional B b : ℝ^n →L[ℝ] ℝ is given by x ↦ ⟪b, x⟫. -/
def B (b : ℝ^n) : ℝ^n →L[ℝ] ℝ := ContinuousLinearMap.innerSL b

/-- The operator norm of B b equals the Euclidean norm of b. -/
theorem opnorm_B_eq_norm (b : ℝ^n) : ‖B b‖ = ‖b‖ := by
  sorry

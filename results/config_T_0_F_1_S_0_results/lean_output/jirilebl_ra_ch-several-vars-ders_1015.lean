import Mathlib

/-- The vector space R[t] is represented by Polynomial R. The derivative operator D : R[t] → R[t]
    is linear. -/
theorem D_is_linear : IsLinearMap ℝ (fun p : Polynomial ℝ => Polynomial.derivative p) := by sorry

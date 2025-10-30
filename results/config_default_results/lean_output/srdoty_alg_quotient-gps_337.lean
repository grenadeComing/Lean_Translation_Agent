import Mathlib

/-- SL(n, ℝ) is a normal subgroup of GL(n, ℝ). -/
theorem normal_subgroup_SL_in_GL (n : ℕ) : NormalSubgroup (Matrix.SpecialLinearGroup n ℝ) (Matrix.GeneralLinearGroup n ℝ) := by
  sorry

/-- GL(n, ℝ) / SL(n, ℝ) is isomorphic to ℝˣ. -/
theorem quotient_GL_SL_is_Rx (n : ℕ) : (Matrix.GeneralLinearGroup n ℝ) ⧸ (Matrix.SpecialLinearGroup n ℝ) ≃* ℝˣ := by
  sorry

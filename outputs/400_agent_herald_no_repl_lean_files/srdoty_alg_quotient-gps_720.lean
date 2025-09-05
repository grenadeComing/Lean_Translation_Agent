import Mathlib

open Matrix

variable (n : ℕ)

/-- The special linear group SL(n, R) is normal in GL(n, R). -/
theorem SL_normal : IsNormal (SpecialLinearGroup n ℝ) := by sorry

/-- The determinant induces an isomorphism GL(n, R)/SL(n, R) ≃ ℝˣ. -/
theorem GL_quot_SL_equiv_R_units : (GeneralLinearGroup n ℝ).quotient (SpecialLinearGroup n ℝ) ≃* (Units ℝ) := by sorry

import Mathlib

open Matrix

/-- SL(n) is a normal subgroup of GL(n), and GL(n)/SL(n) is isomorphic (as a multiplicative group)
    to the units of the real field via the determinant map. -/
theorem gl_sl_det_quotient (n : ℕ) :
  IsNormal (Matrix.SpecialLinearGroup n ℝ) ∧
  (Matrix.GeneralLinearGroup n ℝ) ⧸ (Matrix.SpecialLinearGroup n ℝ) ≃* (Units ℝ) := by sorry
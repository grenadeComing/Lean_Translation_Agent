import Mathlib

/-!
Translations of the requested statements (no proofs; proofs replaced by `by sorry`).
-/

theorem abs_sin_le_half_exp_abs (z : Complex) :
  abs (Complex.sin z) ≤ Real.exp (abs z) / 2 := by sorry

/-- A corrected (weaker) general bound for cos: -/
theorem abs_cos_le_exp_abs (z : Complex) :
  abs (Complex.cos z) ≤ Real.exp (abs z) := by sorry

/-- The original claimed bound for cos is false; for example z = 0 is a counterexample. -/
theorem exists_cos_counterexample :
  ∃ z : Complex, abs (Complex.cos z) > Real.exp (abs z) / 2 := by sorry

import Mathlib

/-!
Addition formulas for sine and cosine.
We state the usual trigonometric addition formulas for real angles.
These are left as proof obligations (sorry) because the task asks for a translation
of the mathematical statement into Lean4 (with Mathlib imported) and not a full proof.
-/

theorem cos_add_formula (θ1 θ2 : ℝ) :
  Real.cos (θ1 + θ2) = Real.cos θ1 * Real.cos θ2 - Real.sin θ1 * Real.sin θ2 := by sorry

theorem sin_add_formula (θ1 θ2 : ℝ) :
  Real.sin (θ1 + θ2) = Real.sin θ1 * Real.cos θ2 + Real.cos θ1 * Real.sin θ2 := by sorry

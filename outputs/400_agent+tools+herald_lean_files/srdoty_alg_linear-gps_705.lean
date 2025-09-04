import Mathlib

/-!
Addition formulas for sine and cosine.
-/

theorem cos_add (θ1 θ2 : ℝ) :
  Real.cos (θ1 + θ2) = Real.cos θ1 * Real.cos θ2 - Real.sin θ1 * Real.sin θ2 := by sorry

theorem sin_add (θ1 θ2 : ℝ) :
  Real.sin (θ1 + θ2) = Real.sin θ1 * Real.cos θ2 + Real.cos θ1 * Real.sin θ2 := by sorry

import Mathlib

open Matrix

/-- Reflection across the line through the origin making angle θ with the x-axis. -/
noncomputable def H (θ : ℝ) : Matrix (Fin 2) (Fin 2) ℝ := ![![Real.cos (2 * θ), Real.sin (2 * θ)], ![Real.sin (2 * θ), -Real.cos (2 * θ)]]

/-- For each θ, the reflection matrix H θ is orthogonal and has determinant -1. -/
theorem reflection_is_linear_improper_orthogonal (θ : ℝ) :
  (H θ).transpose * H θ = 1 ∧ (H θ).det = -1 := by
  sorry

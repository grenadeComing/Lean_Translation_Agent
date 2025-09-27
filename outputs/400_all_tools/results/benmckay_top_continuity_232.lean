import Mathlib

/-- The one-point compactification of R^n is homeomorphic to the sphere S^n. -/
theorem one_point_compactification_homeomorphic_sphere (n : ℕ) :
  Nonempty (OnePoint (Fin n → ℝ) ≃ₜ {x : Fin (n + 1) → ℝ // dist x 0 = 1}) := by
  sorry

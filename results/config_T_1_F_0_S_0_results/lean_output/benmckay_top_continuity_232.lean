import Mathlib

/-- The one point compactification of R^n is homeomorphic to the sphere S^n. -/
theorem one_point_compactification_Rn_homeomorphic_sphere (n : ℕ) :
  OnePoint (Fin n → ℝ) ≃ₜ {x : Fin (n+1) → ℝ // ‖x‖ = 1} := by sorry
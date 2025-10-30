import Mathlib

/-- Rotation of a vector in R^2 by angle θ. -/
noncomputable def rho (θ : ℝ) : ℝ × ℝ → ℝ × ℝ :=
  fun p => (Real.cos θ * p.1 - Real.sin θ * p.2,
            Real.sin θ * p.1 + Real.cos θ * p.2)

/-- Show that the rotation operator fixes the origin. -/
theorem rotation_fixed_origin (θ : ℝ) : rho θ (0, 0) = (0, 0) := by
  simp [rho]

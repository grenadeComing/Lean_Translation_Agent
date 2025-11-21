import Mathlib

/-- The rotation operator rho_theta : R^2 -> R^2 given by the usual 2x2 rotation matrix.
    We represent vectors as pairs (x, y) : ℝ × ℝ. -/
noncomputable def rho (θ : ℝ) : (ℝ × ℝ) → (ℝ × ℝ) :=
  fun ⟨x, y⟩ => (Real.cos θ * x - Real.sin θ * y, Real.sin θ * x + Real.cos θ * y)

/-- For every θ, the rotation rho θ fixes the origin. -/
theorem rho_fixes_origin (θ : ℝ) : rho θ (0, 0) = (0, 0) := by sorry

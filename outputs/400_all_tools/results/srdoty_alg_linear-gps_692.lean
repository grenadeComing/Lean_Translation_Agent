import Mathlib

/-- The rotation operator rho_theta: R^2 -> R^2 which rotates a vector by angle theta. -/
noncomputable def rho_theta (θ : ℝ) : ℝ × ℝ → ℝ × ℝ := fun ⟨x, y⟩ =>
  (Real.cos θ * x - Real.sin θ * y, Real.sin θ * x + Real.cos θ * y)

/-- For every θ, rho_theta fixes the origin. -/
theorem rho_theta_fixes_origin (θ : ℝ) : rho_theta θ (0, 0) = (0, 0) := by
  sorry

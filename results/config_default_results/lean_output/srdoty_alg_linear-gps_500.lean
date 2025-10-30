import Mathlib

noncomputable def rho_theta (θ : ℝ) : ℝ × ℝ → ℝ × ℝ :=
  fun X => (Real.cos θ * X.1 - Real.sin θ * X.2,
            Real.sin θ * X.1 + Real.cos θ * X.2)

/-- ρ_θ is a rotation of ℝ^2 through θ radians: for any X, ρ_θ X is X rotated by θ about the origin. -/
theorem rotation_of_theta (θ : ℝ) (X : ℝ × ℝ) :
  rho_theta θ X = (Real.cos θ * X.1 - Real.sin θ * X.2,
                   Real.sin θ * X.1 + Real.cos θ * X.2) := by
  rfl

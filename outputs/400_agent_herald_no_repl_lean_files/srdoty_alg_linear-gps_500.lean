import Mathlib

open Real

/-- The linear map rho_theta rotates R^2 by angle θ. -/
def rho_theta (θ : ℝ) (X : ℝ × ℝ) : ℝ × ℝ :=
  (cos θ * X.1 - sin θ * X.2, sin θ * X.1 + cos θ * X.2)

/-- For every vector X in R^2 there exist polar coordinates (r, φ)
    such that X = (r cos φ, r sin φ) and rho_theta X = (r cos (φ+θ), r sin (φ+θ)).
    This expresses that rho_theta is the rotation of R^2 through θ radians. -/
theorem rho_theta_is_rotation (θ : ℝ) : ∀ X : ℝ × ℝ, ∃ r φ : ℝ,
  X = (r * cos φ, r * sin φ) ∧ rho_theta θ X = (r * cos (φ + θ), r * sin (φ + θ)) := by sorry

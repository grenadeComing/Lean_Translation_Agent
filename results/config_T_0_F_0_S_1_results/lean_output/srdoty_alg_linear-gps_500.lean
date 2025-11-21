import Mathlib

/-- The rotation map rho_theta : R^2 → R^2 given by multiplication by the 2×2 rotation
matrix R_theta = [[cos θ, -sin θ], [sin θ, cos θ]]. We represent R^2 as the product ℝ × ℝ
and define rho_theta explicitly on coordinates. -/
def rho_theta (θ : ℝ) : ℝ × ℝ → ℝ × ℝ := fun p =>
  (p.fst * Real.cos θ - p.snd * Real.sin θ, p.fst * Real.sin θ + p.snd * Real.cos θ)

/-- Statement: rho_theta is a rotation of ℝ^2 through θ radians about the origin. Concretely,
for every vector X ∈ ℝ^2, writing r = sqrt(x^2+y^2), either r = 0 (the zero vector) or there
exists an angle φ with X = (r cos φ, r sin φ) and rho_theta X = (r cos(φ+θ), r sin(φ+θ)). -/
theorem rho_theta_is_rotation (θ : ℝ) :
  ∀ X : ℝ × ℝ, let r := Real.sqrt (X.fst ^ 2 + X.snd ^ 2) in
    (r = 0 → rho_theta θ X = (0, 0)) ∧
    (r ≠ 0 → ∃ φ : ℝ, X = (r * Real.cos φ, r * Real.sin φ) ∧ rho_theta θ X = (r * Real.cos (φ + θ), r * Real.sin (φ + θ))) := by sorry

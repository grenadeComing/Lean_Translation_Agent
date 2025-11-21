import Mathlib

/-- The linear map rho_theta : R^2 -> R^2 defined by the usual rotation matrix.
    We represent R^2 as the product type ℝ × ℝ and define
    rho_theta θ (x,y) = (x cos θ - y sin θ, x sin θ + y cos θ). -/

noncomputable def rho_theta (θ : ℝ) : ℝ × ℝ → ℝ × ℝ :=
  fun ⟨x, y⟩ => (x * Real.cos θ - y * Real.sin θ,
                 x * Real.sin θ + y * Real.cos θ)

/-- rho_theta is a rotation of R^2 through angle θ about the origin.
    Equivalently: for every vector p in R^2 there exist r ≥ 0 and φ such that
    p = (r cos φ, r sin φ) and rho_theta θ p = (r cos (φ + θ), r sin (φ + θ)). -/

theorem rho_theta_is_rotation (θ : ℝ) :
  ∀ p : ℝ × ℝ, ∃ (r φ : ℝ), 0 ≤ r ∧ p = (r * Real.cos φ, r * Real.sin φ)
    ∧ rho_theta θ p = (r * Real.cos (φ + θ), r * Real.sin (φ + θ)) :=
  by sorry

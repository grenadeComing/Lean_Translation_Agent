import Mathlib

/-- The rotation map rho_theta on R^2. -/
noncomputable def rho_theta (θ : ℝ) (X : ℝ × ℝ) : ℝ × ℝ :=
  let (x, y) := X
  (x * Real.cos θ - y * Real.sin θ, x * Real.sin θ + y * Real.cos θ)

/-- rho_theta is a rotation of R^2 through angle θ: every vector can be written in polar
coordinates X = (r cos φ, r sin φ) with r ≥ 0, and rho_theta rotates the angle by θ. -/
theorem rotation_of_R2 (θ : ℝ) (X : ℝ × ℝ) :
  ∃ (r : ℝ) (φ : ℝ), 0 ≤ r ∧ X = (r * Real.cos φ, r * Real.sin φ) ∧
    rho_theta θ X = (r * Real.cos (φ + θ), r * Real.sin (φ + θ)) := by
  sorry

import Mathlib

/-- The linear map rho_theta: R^2 -> R^2 given by multiplication by the rotation matrix.
    rho_theta θ (x, y) = (x*cos θ - y*sin θ, x*sin θ + y*cos θ) -/
noncomputable def rho_theta (θ : ℝ) : ℝ × ℝ → ℝ × ℝ :=
  fun v => (v.fst * Real.cos θ - v.snd * Real.sin θ, v.fst * Real.sin θ + v.snd * Real.cos θ)

/-- rho_theta is a rotation: every vector can be written in polar coordinates v = (r cos φ, r sin φ),
    and rho_theta rotates the angle by θ. -/
theorem rho_theta_is_rotation (θ : ℝ) (v : ℝ × ℝ) :
  ∃ r φ : ℝ, 0 ≤ r ∧ v = (r * Real.cos φ, r * Real.sin φ) ∧ rho_theta θ v = (r * Real.cos (φ + θ), r * Real.sin (φ + θ)) := by sorry

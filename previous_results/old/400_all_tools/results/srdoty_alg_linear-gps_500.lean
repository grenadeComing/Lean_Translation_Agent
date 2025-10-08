import Mathlib

/-- The rotation map rho_theta: R^2 -> R^2 given by the matrix
    [cos θ, -sin θ; sin θ, cos θ]. We represent R^2 as ℝ × ℝ and define
    rho_theta θ (x, y) = (x*cos θ - y*sin θ, x*sin θ + y*cos θ). -/
noncomputable def rho_theta (θ : ℝ) : ℝ × ℝ → ℝ × ℝ :=
  fun x => (x.1 * Real.cos θ - x.2 * Real.sin θ, x.1 * Real.sin θ + x.2 * Real.cos θ)

/-- rho_theta acts on polar-coordinates vectors by adding angles: for any r, φ ∈ ℝ,
    rho_theta (r*cos φ, r*sin φ) = (r*cos(φ+θ), r*sin(φ+θ)). -/
theorem rho_theta_on_polar (θ r φ : ℝ) :
  rho_theta θ (r * Real.cos φ, r * Real.sin φ) = (r * Real.cos (φ + θ), r * Real.sin (φ + θ)) := by
  sorry

/-- rho_theta preserves the Euclidean norm: for any vector x ∈ ℝ × ℝ,
    x.1^2 + x.2^2 = (rho_theta x).1^2 + (rho_theta x).2^2. -/
theorem rho_theta_preserves_norm (θ : ℝ) (x : ℝ × ℝ) :
  x.1 ^ 2 + x.2 ^ 2 = (rho_theta θ x).1 ^ 2 + (rho_theta θ x).2 ^ 2 := by
  sorry

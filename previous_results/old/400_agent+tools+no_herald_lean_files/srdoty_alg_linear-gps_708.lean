import Mathlib

open Complex Set

/-- Identify a vector in R^2 with a complex number. -/
def toComplex (p : ℝ × ℝ) : ℂ := p.1 + p.2 * Complex.I

/-- The linear map rho_theta on R^2 given by the usual rotation matrix. -/
noncomputable def rho (θ : ℝ) : ℝ × ℝ -> ℝ × ℝ := fun ⟨x, y⟩ => (x * Real.cos θ - y * Real.sin θ, x * Real.sin θ + y * Real.cos θ)

/-- If θ is taken in the principal branch and the sum of arguments stays in the principal branch,
    then rotating the vector X by θ adds θ to its complex argument. -/
theorem angle_between_rho_eq {θ : ℝ} {X : ℝ × ℝ}
  (hX : toComplex X ≠ 0)
  (hθ : θ ∈ Set.Ioc (-Real.pi) Real.pi)
  (hsum : (toComplex X).arg + θ ∈ Set.Ioc (-Real.pi) Real.pi) :
  (toComplex (rho θ X)).arg = (toComplex X).arg + θ := by sorry

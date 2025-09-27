import Mathlib

open Matrix

/-- Rotation matrix by angle θ in R^2. -/
def rho (θ : ℝ) : Matrix (Fin 2) (Fin 2) ℝ :=
  ![![Real.cos θ, -Real.sin θ], ![Real.sin θ, Real.cos θ]]

/-- Composition of rotations corresponds to addition of angles. -/
theorem rho_mul (θ1 θ2 : ℝ) : (rho θ1) * (rho θ2) = rho (θ1 + θ2) := by
  sorry

/-- The inverse of a rotation by θ is the rotation by -θ. -/
theorem rho_inv (θ : ℝ) : (rho θ)⁻¹ = rho (-θ) := by
  sorry

/-- In particular, rotations commute. -/
theorem rho_comm (θ1 θ2 : ℝ) : (rho θ1) * (rho θ2) = (rho θ2) * (rho θ1) := by
  sorry

import Mathlib

section
variable {G : Type} [Group G]
variable (rho : ℝ → G)

theorem rotation_mul (θ₁ θ₂ : ℝ) : rho θ₁ * rho θ₂ = rho (θ₁ + θ₂) := by
  sorry

theorem rotation_inv (θ : ℝ) : (rho θ)⁻¹ = rho (- θ) := by
  sorry

theorem rotations_commute (θ₁ θ₂ : ℝ) : rho θ₁ * rho θ₂ = rho θ₂ * rho θ₁ := by
  sorry

end
import Mathlib

open Real

/-- Rotation of the plane by angle θ. -/
noncomputable def rho (θ : ℝ) : ℝ × ℝ → ℝ × ℝ := fun
| (x, y) => (x * cos θ - y * sin θ, x * sin θ + y * cos θ)

/-- Composition of rotations equals rotation by the sum of the angles. -/
theorem rho_mul (θ1 θ2 : ℝ) : (rho θ1 ∘ rho θ2) = rho (θ1 + θ2) := by
  sorry

/-- rho θ is inverted by rho (-θ): both left and right inverses. -/
theorem rho_inverse (θ : ℝ) : (rho θ ∘ rho (-θ) = id) ∧ (rho (-θ) ∘ rho θ = id) := by
  sorry

/-- In particular, rotations commute. -/
theorem rotations_commute (θ1 θ2 : ℝ) : (rho θ1 ∘ rho θ2) = (rho θ2 ∘ rho θ1) := by
  sorry

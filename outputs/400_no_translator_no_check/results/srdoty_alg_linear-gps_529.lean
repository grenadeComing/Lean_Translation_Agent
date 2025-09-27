import Mathlib

open Real

/-- Rotation of the plane by angle θ, acting on ℝ × ℝ. -/
noncomputable def rho (θ : ℝ) : ℝ × ℝ → ℝ × ℝ := fun p =>
  (Real.cos θ * p.1 - Real.sin θ * p.2,
   Real.sin θ * p.1 + Real.cos θ * p.2)

/-- For all θ, θ1, θ2 ∈ ℝ we have rho θ1 ∘ rho θ2 = rho (θ1 + θ2),
    rho θ has inverse rho (-θ), and in particular rotations commute. -/
theorem rho_properties (θ θ1 θ2 : ℝ) :
  (rho θ1) ∘ (rho θ2) = rho (θ1 + θ2) ∧
  (rho θ) ∘ (rho (-θ)) = id ∧
  (rho (-θ)) ∘ (rho θ) = id ∧
  (rho θ1) ∘ (rho θ2) = (rho θ2) ∘ (rho θ1) := by
  sorry

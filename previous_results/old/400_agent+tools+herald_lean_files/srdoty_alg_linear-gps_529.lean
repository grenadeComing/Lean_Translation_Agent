import Mathlib

/-- Rotation of R^2 by angle `θ` as a function. -/
noncomputable def rho (θ : ℝ) : ℝ × ℝ → ℝ × ℝ := fun p =>
  let (x, y) := p
  (Real.cos θ * x - Real.sin θ * y, Real.sin θ * x + Real.cos θ * y)

/-- Composition of two rotations equals rotation by the sum of angles. -/
theorem rho_add (θ1 θ2 : ℝ) : (rho θ1) ∘ (rho θ2) = rho (θ1 + θ2) := by sorry

/-- Rotation by `-θ` is a two-sided inverse of rotation by `θ`. -/
theorem rho_inverse_comp (θ : ℝ) : (rho θ) ∘ (rho (-θ)) = id ∧ (rho (-θ)) ∘ (rho θ) = id := by sorry

/-- In particular, rotations commute. -/
theorem rho_comm (θ1 θ2 : ℝ) : (rho θ1) ∘ (rho θ2) = (rho θ2) ∘ (rho θ1) := by sorry

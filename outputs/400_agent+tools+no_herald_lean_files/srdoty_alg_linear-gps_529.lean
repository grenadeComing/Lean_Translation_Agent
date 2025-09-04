import Mathlib

/-- Rotation of the plane by angle θ. -/
noncomputable def rho (θ : ℝ) : ℝ × ℝ → ℝ × ℝ := fun p =>
  match p with
  | (x, y) => (Real.cos θ * x - Real.sin θ * y, Real.sin θ * x + Real.cos θ * y)

/-- Composition of rotations adds angles. -/
theorem rho_comp (θ1 θ2 : ℝ) : (rho θ1) ∘ (rho θ2) = rho (θ1 + θ2) := by sorry

/-- The inverse rotation is rotation by the negated angle. -/
theorem rho_inverse (θ : ℝ) : (rho θ) ∘ (rho (-θ)) = _root_.id := by sorry

/-- In particular rotations commute. -/
theorem rho_comm (θ1 θ2 : ℝ) : (rho θ1) ∘ (rho θ2) = (rho θ2) ∘ (rho θ1) := by sorry

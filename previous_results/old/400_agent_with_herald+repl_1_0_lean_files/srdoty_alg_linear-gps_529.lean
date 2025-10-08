import Mathlib

/-- Rotation rho θ acting on Real × Real. -/
def rho (θ : Real) (p : Real × Real) : Real × Real := (p.1 * Real.cos θ - p.2 * Real.sin θ,
  p.1 * Real.sin θ + p.2 * Real.cos θ)

/-- Composition of rotations (pointwise). -/
theorem rho_comp (θ1 θ2 : Real) : ∀ p : Real × Real, rho θ1 (rho θ2 p) = rho (θ1 + θ2) p := by sorry

/-- Inverse of a rotation (pointwise). -/
theorem rho_inverse (θ : Real) : ∀ p : Real × Real, rho θ (rho (-θ) p) = p := by sorry

/-- Rotations commute (pointwise). -/
theorem rotations_commute (θ1 θ2 : Real) : ∀ p : Real × Real, rho θ1 (rho θ2 p) = rho θ2 (rho θ1 p) := by sorry

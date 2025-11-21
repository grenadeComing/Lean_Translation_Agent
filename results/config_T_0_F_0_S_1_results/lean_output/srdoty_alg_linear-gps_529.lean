import Mathlib

/-- The rotation by angle θ on R^2, given as a function on pairs (x,y). -/
def rho (θ : ℝ) : (ℝ × ℝ) → (ℝ × ℝ) :=
  fun p => (p.1 * Real.cos θ - p.2 * Real.sin θ, p.1 * Real.sin θ + p.2 * Real.cos θ)

/-- For all angles we have composition corresponding to addition of angles, the inverse is the
    rotation by the negative angle, and rotations commute. The proof is omitted. -/
theorem rotations_comp_add_inv_comm :
  ∀ θ θ1 θ2 : ℝ,
    rho θ1 ∘ rho θ2 = rho (θ1 + θ2) ∧
    (rho θ) ∘ (rho (-θ)) = id ∧
    (rho (-θ)) ∘ (rho θ) = id ∧
    rho θ1 ∘ rho θ2 = rho θ2 ∘ rho θ1 :=
by sorry
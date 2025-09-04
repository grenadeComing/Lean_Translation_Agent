import Mathlib

noncomputable section

/-- Rotation in R^2 by angle θ. -/
def rho (θ : ℝ) (x : ℝ × ℝ) : ℝ × ℝ :=
  (x.1 * Real.cos θ - x.2 * Real.sin θ,
   x.1 * Real.sin θ + x.2 * Real.cos θ)

/-- Standard inner product on R^2. -/
def inner2 (x y : ℝ × ℝ) : ℝ := x.1 * y.1 + x.2 * y.2

/-- Euclidean norm on R^2 defined from inner2. -/
noncomputable def norm2 (x : ℝ × ℝ) : ℝ := Real.sqrt (inner2 x x)

/-- For any θ and any nonzero X in R^2, the inner product of X and ρ θ X equals
    ‖X‖ * ‖ρ θ X‖ * cos θ. This expresses that the angle between X and ρ θ X is θ. -/
theorem inner_rho_eq_cos (θ : ℝ) (x : ℝ × ℝ) (hx : x ≠ (0, 0)) :
  inner2 x (rho θ x) = norm2 x * norm2 (rho θ x) * Real.cos θ := by sorry

end noncomputable section

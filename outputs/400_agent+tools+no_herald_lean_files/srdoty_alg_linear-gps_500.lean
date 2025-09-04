import Mathlib

open Real

noncomputable def rho (θ : ℝ) : ℝ × ℝ → ℝ × ℝ := fun p =>
  let x := p.1; let y := p.2;
  (cos θ * x - sin θ * y, sin θ * x + cos θ * y)

/-- Explicit component formula for rho. -/
theorem rho_apply_formula (θ x y : ℝ) :
  rho θ (x, y) = (cos θ * x - sin θ * y, sin θ * x + cos θ * y) := by sorry

/-- rho preserves the squared Euclidean norm, hence is an isometry fixing the origin. -/
theorem rho_preserves_squared_norm (θ x y : ℝ) :
  (rho θ (x,y)).1 ^ 2 + (rho θ (x,y)).2 ^ 2 = x^2 + y^2 := by sorry

/-- The dot product of X with rho θ X equals cos θ times the squared length of X,
    which is consistent with rotating X through angle θ. -/
theorem rho_dot_product (θ x y : ℝ) :
  x * (rho θ (x,y)).1 + y * (rho θ (x,y)).2 = cos θ * (x^2 + y^2) := by sorry

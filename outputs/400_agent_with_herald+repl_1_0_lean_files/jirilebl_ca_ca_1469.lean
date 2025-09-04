import Mathlib

/-- Convergence at infinity in the Riemann-sphere sense for a complex-valued function. -/
def tendsto_at_infty_riemann (f : Complex → Complex) (L : Complex) : Prop :=
  ∀ (U : Set Complex), IsOpen U → L ∈ U → ∃ R : ℝ, ∀ z : Complex, Complex.abs z > R → f z ∈ U

/-- Epsilon formulation of convergence at infinity. -/
def tendsto_at_infty_eps (f : Complex → Complex) (L : Complex) : Prop :=
  ∀ ε : ℝ, 0 < ε → ∃ R : ℝ, ∀ z : Complex, Complex.abs z > R → Complex.abs (f z - L) < ε

/-- The two formulations are equivalent. -/
theorem limit_at_infty_riemann_iff_eps {f : Complex → Complex} {L : Complex} :
  tendsto_at_infty_riemann f L ↔ tendsto_at_infty_eps f L := by sorry

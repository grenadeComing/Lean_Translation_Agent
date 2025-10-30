import Mathlib

universe u
variable {n : ℕ}
axiom mstar : Set (ℝ^n) → ℝ≥0∞
axiom V : Set (ℝ^n) → ℝ≥0∞
axiom is_closed_rectangle : Set (ℝ^n) → Prop

/-- If R is a closed rectangle, then the outer measure m*(R) equals the volume V(R). -/
theorem mstar_eq_V_of_closed_rectangle (R : Set (ℝ^n)) (hRC : IsClosed R) (hRect : is_closed_rectangle R) :
  mstar R = V R := by
  sorry

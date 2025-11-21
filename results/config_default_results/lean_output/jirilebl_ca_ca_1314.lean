import Mathlib

/-- If a function f : ℂ → ℂ satisfies f(z + w) = f z * f w for all z,w and f 0 = 1,
then f z ≠ 0 for all z. -/
theorem multiplicative_on_add_group_nonzero {f : Complex → Complex}
  (hmul : ∀ z w, f (z + w) = f z * f w) (h0 : f 0 = 1) : ∀ z, f z ≠ 0 := by sorry

/-- In particular, Complex.exp z ≠ 0 for all z. -/
theorem exp_ne_zero : ∀ z : Complex, Complex.exp z ≠ 0 := by sorry

import Mathlib

/-- If f : ℂ → ℂ satisfies f(z + w) = f z * f w and f 0 = 1 then f z ≠ 0 for all z. -/
theorem multiplicative_add_function_ne_zero {f : Complex → Complex}
  (h_mul : ∀ z w : Complex, f (z + w) = f z * f w)
  (h0 : f 0 = 1) :
  ∀ z : Complex, f z ≠ 0 := by
  sorry

/-- Complex.exp is nonzero everywhere, since exp(z+w) = exp z * exp w and exp 0 = 1. -/
theorem exp_ne_zero (z : Complex) : Complex.exp z ≠ 0 := by
  sorry

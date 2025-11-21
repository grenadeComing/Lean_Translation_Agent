import Mathlib

/-- If f : ℂ → ℂ satisfies f(z + w) = f z * f w for all z,w and f 0 = 1,
then f z ≠ 0 for all z. -/
theorem multiplicative_function_nonzero {f : Complex → Complex}
  (h_mul : ∀ z w : Complex, f (z + w) = f z * f w)
  (h_one : f 0 = 1) :
  ∀ z : Complex, f z ≠ 0 := by sorry

/-- The exponential is never zero: exp z ≠ 0 for all complex z. -/
theorem exp_ne_zero (z : Complex) : Complex.exp z ≠ 0 := by sorry
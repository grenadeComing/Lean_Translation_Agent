import Mathlib

/-- If f : Complex → Complex satisfies f (z + w) = f z * f w and f 0 = 1, then f z ≠ 0 for all z. -/
theorem multiplicative_function_nowhere_zero {f : Complex → Complex}
  (hMul : ∀ z w, f (z + w) = f z * f w)
  (h0 : f 0 = 1) : ∀ z, f z ≠ 0 := by sorry

/-- In particular, the complex exponential is nowhere zero. -/
theorem exp_nonzero (z : Complex) : Complex.exp z ≠ 0 := by sorry

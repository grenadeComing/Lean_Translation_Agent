import Mathlib

/-- If f : Complex → Complex satisfies f(z+w)=f(z)f(w) and f(0)=1, then f(z) ≠ 0 for all z. -/
theorem multiplicative_function_nonzero {f : Complex → Complex}
  (h_add : ∀ z w, f (z + w) = f z * f w) (h0 : f 0 = 1) :
  ∀ z, f z ≠ 0 := by sorry

/-- In particular, the complex exponential never vanishes. -/
theorem exp_ne_zero (z : Complex) : Complex.exp z ≠ 0 := by sorry

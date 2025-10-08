import Mathlib

open Complex

/-- If f : C → C satisfies f(z + w) = f z * f w and f 0 = 1, then f z ≠ 0 for all z. -/
theorem multiplicative_nonzero_of_one {f : Complex → Complex}
  (hf : ∀ z w : Complex, f (z + w) = f z * f w)
  (h0 : f 0 = 1) : ∀ z : Complex, f z ≠ 0 := by
  -- proof omitted
  sorry

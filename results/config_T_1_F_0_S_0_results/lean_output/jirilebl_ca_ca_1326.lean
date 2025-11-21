import Mathlib

/-- Using e^{z+w} = e^z e^w and e^0 = 1 ≠ 0 we conclude exp z ≠ 0 for all z ∈ ℂ. -/
theorem exp_ne_zero (z : ℂ) : Complex.exp z ≠ 0 := by sorry

/-- If f : ℂ → ℂ satisfies f(z + w) = f z * f w and f 0 = 1, then f z ≠ 0 for all z. -/
theorem mul_add_function_ne_zero (f : ℂ → ℂ) (hf : ∀ z w, f (z + w) = f z * f w) (h0 : f 0 = 1) : ∀ z, f z ≠ 0 := by sorry

import Mathlib

/-!
We state two related lemmas (without proof):
1) If f : ℂ → ℂ satisfies f(z+w) = f z * f w and f 0 = 1, then f z ≠ 0 for all z.
2) As a special case, the complex exponential never vanishes: exp z ≠ 0 for all z.
-/

theorem multiplicative_function_nonzero {f : Complex → Complex}
  (hf : ∀ z w : Complex, f (z + w) = f z * f w)
  (h0 : f 0 = 1) : ∀ z : Complex, f z ≠ 0 := by sorry

theorem exp_ne_zero : ∀ z : Complex, Complex.exp z ≠ 0 := by sorry
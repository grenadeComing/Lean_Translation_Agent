import Mathlib

/-!
Show that a multiplicative function with f(0) = 1 never vanishes.
If f : ℂ → ℂ satisfies f(z + w) = f z * f w and f 0 = 1, then f z ≠ 0 for all z.
-/

theorem multiplicative_function_nonzero {f : ℂ → ℂ}
  (hf : ∀ z w : ℂ, f (z + w) = f z * f w) (h0 : f 0 = 1) : ∀ z : ℂ, f z ≠ 0 := by sorry

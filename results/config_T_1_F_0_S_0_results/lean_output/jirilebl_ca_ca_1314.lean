import Mathlib

/-!
If f : ℂ → ℂ satisfies f(z + w) = f z * f w for all z, w and f 0 = 1,
then f z ≠ 0 for all z. In particular, exp z ≠ 0 for all complex z.
-/

theorem multiplicative_nonzero (f : ℂ → ℂ) (hf : ∀ z w : ℂ, f (z + w) = f z * f w)
  (h0 : f 0 = 1) : ∀ z : ℂ, f z ≠ 0 := by sorry

theorem exp_ne_zero (z : ℂ) : Complex.exp z ≠ 0 := by sorry
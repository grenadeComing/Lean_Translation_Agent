import Mathlib

-- Translation of the mathematical statement:
-- If f: Complex → Complex satisfies f(z + w) = f(z) * f(w) for all z,w and f(0) = 1,
-- then f(z) ≠ 0 for all z.

theorem nonzero_of_multiplicative_add (f : ℂ → ℂ)
  (hadd : ∀ z w, f (z + w) = f z * f w)
  (h0 : f 0 = 1) : ∀ z, f z ≠ 0 := by
  sorry

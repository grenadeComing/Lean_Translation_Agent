import Mathlib

/--
Translation: If a function f : Complex → Complex satisfies f(z + w) = f z * f w and f 0 = 1,
then f z ≠ 0 for all z : Complex.
-/

theorem multiplicative_additive_function_nonzero (f : Complex → Complex)
  (h_mul : ∀ z w : Complex, f (z + w) = f z * f w)
  (h0 : f 0 = 1) : ∀ z : Complex, f z ≠ 0 := by sorry

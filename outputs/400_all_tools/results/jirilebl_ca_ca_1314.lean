import Mathlib

/-!
Show that if a function f : Complex → Complex satisfies f(z+w) = f(z) * f(w)
for all z,w and f(0) = 1, then f(z) ≠ 0 for all z.
-/

theorem additive_multiplicative_function_ne_zero {f : Complex → Complex}
  (h_add : ∀ z w : Complex, f (z + w) = f z * f w)
  (h0 : f 0 = 1) : ∀ z : Complex, f z ≠ 0 := by sorry

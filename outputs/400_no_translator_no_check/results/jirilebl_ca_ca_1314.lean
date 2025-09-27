import Mathlib

/-!
Show that any function f : ℂ → ℂ with f(z+w) = f(z)f(w) and f(0) = 1 never vanishes.
-/

theorem jirilebl_ca_ca_1314 (f : Complex → Complex) (h_mul : ∀ z w, f (z + w) = f z * f w)
  (h0 : f 0 = 1) : ∀ z, f z ≠ 0 := by sorry

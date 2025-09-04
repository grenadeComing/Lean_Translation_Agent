import Mathlib

/-!
Simple statement: if f : ℂ → ℂ satisfies f(z+w)=f(z)f(w) and f(0)=1 then f(z) ≠ 0 for all z.
We leave the proof as `sorry` per instructions.
-/

theorem multiplicative_function_ne_zero {f : Complex → Complex}
  (h_mul : ∀ z w, f (z + w) = f z * f w)
  (h0 : f 0 = 1) :
  ∀ z, f z ≠ 0 := by sorry

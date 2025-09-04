import Mathlib

/-!
If f : Complex → Complex satisfies f(z + w) = f z * f w for all z, w and f 0 = 1,
then f z ≠ 0 for all z. We state the lemma and leave the proof as `by sorry`.
-/

theorem multiplicative_function_nonzero {f : Complex → Complex}
  (h_mul : ∀ z w : Complex, f (z + w) = f z * f w)
  (h0 : f 0 = 1) :
  ∀ z : Complex, f z ≠ 0 := by sorry

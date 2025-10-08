import Mathlib

/-!
Simple lemma: if f : ℂ → ℂ satisfies f(z + w) = f z * f w and f 0 = 1,
then f z ≠ 0 for all z. (E.g. this applies to Complex.exp.)
-/

theorem jirilebl_ca_ca_1326 (f : Complex → Complex)
  (h_mul : ∀ z w : Complex, f (z + w) = f z * f w)
  (h0 : f 0 = 1) : ∀ z : Complex, f z ≠ 0 := by sorry

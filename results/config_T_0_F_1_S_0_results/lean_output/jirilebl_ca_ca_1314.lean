import Mathlib

open Complex

/-!
State that the complex exponential is never zero and the general multiplicative nonvanishing lemma.
These are left with `sorry` proofs as requested.
-/

theorem exp_ne_zero_jirilebl (z : ℂ) : exp z ≠ 0 := by sorry

theorem multiplicative_nonvanishing_jirilebl (f : ℂ → ℂ)
  (h_mul : ∀ z w : ℂ, f (z + w) = f z * f w)
  (h0 : f 0 = 1) : ∀ z : ℂ, f z ≠ 0 := by sorry

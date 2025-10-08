import Mathlib

/-!
Prove that if z ∈ ℂ, then |sin z| ≤ cosh (Im z).
This file only states the lemma; the proof is omitted (sorry).
-/

theorem Complex.abs_sin_le_cosh_im (z : ℂ) :
  Complex.abs (Complex.sin z) ≤ Real.cosh z.im := by sorry

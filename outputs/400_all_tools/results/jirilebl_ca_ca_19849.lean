import Mathlib

/-!
Let z be a complex number. Prove that |arctan z| ≤ (π / 4) * (|z| / (1 - |z|)) whenever |z| < 1.
-/

open Complex

lemma abs_arctan_le_pi_div_four_mul_ratio (z : ℂ) :
  Complex.abs z < 1 → Complex.abs (Complex.arctan z) ≤ (π / 4) * (Complex.abs z / (1 - Complex.abs z)) := by sorry

import Mathlib

/-!
Let z ∈ ℂ. Prove that |sin z| ≤ (1/2) e^{|z|} and |cos z| ≤ (1/2) e^{|z|}.
The statements are given below; proofs are omitted (ended with `:= by sorry`).
-/

theorem abs_sin_le_half_exp (z : ℂ) : Complex.abs (Complex.sin z) ≤ (1 / 2) * Real.exp (Complex.abs z) := by
  sorry

theorem abs_cos_le_half_exp (z : ℂ) : Complex.abs (Complex.cos z) ≤ (1 / 2) * Real.exp (Complex.abs z) := by
  sorry

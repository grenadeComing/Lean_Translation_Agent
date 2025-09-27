import Mathlib

/--
Let z ∈ ℂ. Prove that |sin z| ≤ (1/2) e^{|z|} and |cos z| ≤ (1/2) e^{|z|}.
These lemmas are stated here; full proofs are omitted ("sorry").
-/

theorem abs_sin_le_half_exp_abs (z : ℂ) : Complex.abs (Complex.sin z) ≤ (1 / 2 : ℝ) * Real.exp (Complex.abs z) := by sorry

theorem abs_cos_le_half_exp_abs (z : ℂ) : Complex.abs (Complex.cos z) ≤ (1 / 2 : ℝ) * Real.exp (Complex.abs z) := by sorry

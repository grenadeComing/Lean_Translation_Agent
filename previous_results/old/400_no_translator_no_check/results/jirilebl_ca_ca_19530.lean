import Mathlib

/--
Let z ∈ ℂ. Prove that |sin z| ≤ 1/2 e^{|z|} and |cos z| ≤ 1/2 e^{|z|}.

The statements are given here as lemmas; proofs are omitted (``sorry'').
-/

theorem abs_sin_le_half_exp_abs (z : ℂ) : (Complex.sin z).abs ≤ (1/2 : ℝ) * Real.exp z.abs := by
  sorry

theorem abs_cos_le_half_exp_abs (z : ℂ) : (Complex.cos z).abs ≤ (1/2 : ℝ) * Real.exp z.abs := by
  sorry

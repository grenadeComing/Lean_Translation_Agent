import Mathlib

/-!
Let z ∈ ℂ. Prove that |sinh z| ≤ (1/2) e^{|z|} and |cosh z| ≤ (1/2) e^{|z|}.
We state the inequalities and leave the proofs as `by sorry` per instructions.
-/

theorem abs_sinh_le_half_exp_abs (z : ℂ) :
  Complex.abs (Complex.sinh z) ≤ (1 / 2) * Real.exp (Complex.abs z) := by sorry

theorem abs_cosh_le_half_exp_abs (z : ℂ) :
  Complex.abs (Complex.cosh z) ≤ (1 / 2) * Real.exp (Complex.abs z) := by sorry

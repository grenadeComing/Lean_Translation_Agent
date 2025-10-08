import Mathlib

/-!
Translate: Let z ∈ ℂ. Prove that |sinh z| ≤ 1/2 * e^{|z|} and |cosh z| ≤ 1/2 * e^{|z|}.

Note: The second inequality as stated is false (counterexample z = 0: |cosh 0| = 1 > 1/2).
We nevertheless translate the two statements below; the proofs are omitted (:= by sorry).
We also provide a corrected (true) bound for cosh.
-/

open Complex

theorem abs_sinh_le_half_exp_abs (z : ℂ) :
  |sinh z| ≤ (1 / 2 : ℝ) * Real.exp |z| := by sorry

-- The following statement is FALSE (counterexample z = 0), kept here only as a direct
-- translation of the original (incorrect) claim.
theorem abs_cosh_le_half_exp_abs (z : ℂ) :
  |cosh z| ≤ (1 / 2 : ℝ) * Real.exp |z| := by sorry

-- A correct/standard bound is the weaker but true inequality:
theorem abs_cosh_le_exp_abs (z : ℂ) :
  |cosh z| ≤ Real.exp |z| := by sorry

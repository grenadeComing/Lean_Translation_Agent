import Mathlib

/-!
  File: jirilebl_ca_ca_20296.lean
  Statement translations:
  Let z ∈ ℂ. Prove that |sinh z| ≤ (1/2) e^{|z|} and |cosh z| ≤ (1/2) e^{|z|}.
  (Here we only provide the translated statements and leave proofs as `by sorry`.)
-/

theorem complex_abs_sinh_le_half_exp_abs (z : Complex) :
  Complex.abs (Complex.sinh z) ≤ (1 / 2 : ℝ) * Real.exp (Complex.abs z) := by sorry

theorem complex_abs_cosh_le_half_exp_abs (z : Complex) :
  Complex.abs (Complex.cosh z) ≤ (1 / 2 : ℝ) * Real.exp (Complex.abs z) := by sorry

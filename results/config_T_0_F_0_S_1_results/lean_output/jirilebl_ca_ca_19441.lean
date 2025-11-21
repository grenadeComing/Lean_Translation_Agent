import Mathlib

/-!
Let z ∈ ℂ. We state the bounds
  |sinh z| ≤ (1/2) * exp (|z|)  and  |cosh z| ≤ (1/2) * exp (|z|).
These are stated here without proof.
-/

theorem abs_sinh_le_half_exp_abs (z : ℂ) :
  abs (Complex.sinh z) ≤ (1 / 2) * Real.exp (abs z) := by sorry

theorem abs_cosh_le_half_exp_abs (z : ℂ) :
  abs (Complex.cosh z) ≤ (1 / 2) * Real.exp (abs z) := by sorry
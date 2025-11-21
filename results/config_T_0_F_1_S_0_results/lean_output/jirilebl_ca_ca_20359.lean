import Mathlib

/-!
Statement: For any complex number z, ‖sin z‖ ≤ (1/2) e^{‖z‖} and ‖cos z‖ ≤ (1/2) e^{‖z‖}.
These are written as two theorems (statements only, proofs omitted using `by sorry`).
-/

open Complex

theorem complex_norm_sin_le_half_exp_norm (z : ℂ) :
    norm (sin z) ≤ (1 / 2 : ℝ) * Real.exp (norm z) := by sorry

theorem complex_norm_cos_le_half_exp_norm (z : ℂ) :
    norm (cos z) ≤ (1 / 2 : ℝ) * Real.exp (norm z) := by sorry

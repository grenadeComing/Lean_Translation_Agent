import Mathlib

/-!
Let z ∈ ℂ. Statement: ‖sinh z‖ ≤ (1/2) * e^{‖z‖} and ‖cosh z‖ ≤ (1/2) * e^{‖z‖}.
Use the norm notation to avoid deprecation warnings. Proofs omitted.
-/

theorem norm_sinh_le_half_exp_norm (z : ℂ) :
  ‖Complex.sinh z‖ ≤ (1 / 2 : ℝ) * Real.exp (‖z‖) := by
  sorry

theorem norm_cosh_le_half_exp_norm (z : ℂ) :
  ‖Complex.cosh z‖ ≤ (1 / 2 : ℝ) * Real.exp (‖z‖) := by
  sorry

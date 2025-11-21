import Mathlib

-- Let z ∈ ℂ. Prove that ‖sinh z‖ ≤ 1/2 * e^{‖z‖} and ‖cosh z‖ ≤ 1/2 * e^{‖z‖}.

theorem abs_sinh_cosh_le_half_exp_abs (z : Complex) :
  ‖Complex.sinh z‖ ≤ (1 / 2 : ℝ) * Real.exp (‖z‖) ∧
  ‖Complex.cosh z‖ ≤ (1 / 2 : ℝ) * Real.exp (‖z‖) := by
  sorry

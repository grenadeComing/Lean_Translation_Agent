import Mathlib

/--
For z ∈ ℂ, ‖sinh z‖ ≤ 1/2 * e^{‖z‖} and ‖cosh z‖ ≤ 1/2 * e^{‖z‖}.
-/
theorem complex_norm_sinh_cosh_le_exp (z : Complex) :
  ‖Complex.sinh z‖ ≤ (1 / 2 : ℝ) * Real.exp (‖z‖) ∧
  ‖Complex.cosh z‖ ≤ (1 / 2 : ℝ) * Real.exp (‖z‖) := by
  sorry

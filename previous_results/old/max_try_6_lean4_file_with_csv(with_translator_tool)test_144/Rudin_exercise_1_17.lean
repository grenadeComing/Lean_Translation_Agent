import Mathlib

/-- Parallelogram identity in R^n: for vectors x y : Fin n → ℝ,
    ‖x + y‖^2 + ‖x - y‖^2 = 2 * ‖x‖^2 + 2 * ‖y‖^2. -/
theorem parallelogram_Rn (n : ℕ) (x y : Fin n → ℝ) :
  ‖x + y‖ ^ 2 + ‖x - y‖ ^ 2 = 2 * ‖x‖ ^ 2 + 2 * ‖y‖ ^ 2 := by
  sorry

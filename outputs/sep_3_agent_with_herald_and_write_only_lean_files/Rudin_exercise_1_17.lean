import Mathlib

/-!
Rudin, Principles of Mathematical Analysis, Exercise 1.17:
For x, y ∈ ℝ^k show

  ‖x + y‖^2 + ‖x - y‖^2 = 2‖x‖^2 + 2‖y‖^2.
-/-

theorem Rudin_exercise_1_17 (k : ℕ) (x y : Fin k → ℝ) :
  ‖x + y‖ ^ 2 + ‖x - y‖ ^ 2 = 2 * ‖x‖ ^ 2 + 2 * ‖y‖ ^ 2 := by sorry

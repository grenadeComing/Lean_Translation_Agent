import Mathlib

variable {k : ℕ}

theorem Rudin_exercise_1_17 (x y : Fin k → ℝ) :
  (∑ i : Fin k, (x i + y i) ^ 2) + (∑ i : Fin k, (x i - y i) ^ 2) =
  2 * (∑ i : Fin k, (x i) ^ 2) + 2 * (∑ i : Fin k, (y i) ^ 2) := by sorry

import Mathlib

open BigOperators

theorem Rudin_exercise_1_18a {k : ℕ} (hk : 2 ≤ k) (x : Fin k → ℝ) :
  ∃ y : Fin k → ℝ, y ≠ 0 ∧ ∑ i, x i * y i = 0 := by sorry

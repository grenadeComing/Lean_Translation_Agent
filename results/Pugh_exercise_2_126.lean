import Mathlib

theorem Pugh_exercise_2_126 {E : Set ℝ} (h : ¬ Set.Countable E) :
  ∃ p : ℝ, ∀ ε : ℝ, ε > 0 → ¬ Set.Countable (E ∩ Metric.ball p ε) := by sorry

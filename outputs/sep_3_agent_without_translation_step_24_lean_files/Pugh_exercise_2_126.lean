import Mathlib

open Set Metric

/-- Pugh Exercise 2.126: If E is an uncountable subset of R, then there exists a point p in R
    at which E condenses (every neighborhood of p contains uncountably many points of E). -/
theorem Pugh_exercise_2_126 {E : Set ℝ} (h : ¬ Set.Countable E) :
  ∃ p : ℝ, ∀ r : ℝ, 0 < r → ¬ Set.Countable (E ∩ Metric.ball p r) := by sorry

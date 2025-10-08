import Mathlib

open BigOperators

theorem Putnam_exercise_2017_b3 (c : ℕ → ℕ) (hc : ∀ n, c n = 0 ∨ c n = 1)
  (h : tsum (fun n => (c n : ℝ) * (2 / 3 : ℝ) ^ n) = (3 : ℝ) / 2) :
  ¬ ∃ q : ℚ, tsum (fun n => (c n : ℝ) * (1 / 2 : ℝ) ^ n) = (q : ℝ) := by sorry

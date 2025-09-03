import Mathlib

theorem Munkres_exercise_21_6a (x : ℝ) (hx : 0 ≤ x ∧ x ≤ 1) : ∃ L : ℝ, Filter.Tendsto (fun n : ℕ => x ^ n) Filter.atTop (nhds L) := by sorry

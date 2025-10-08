import Mathlib

open Filter

theorem Munkres_exercise_21_6a (x : ℝ) (hx : x ∈ Set.Icc (0 : ℝ) 1) :
  Tendsto (fun n : ℕ => x ^ n) atTop (nhds (if x = 1 then 1 else 0)) := by sorry

import Mathlib

-- From Pugh, Exercise 3.4: show sqrt(n+1) - sqrt(n) -> 0 as n -> infinity

theorem Pugh_exercise_3_4 : Filter.Tendsto (fun n : ℕ => Real.sqrt (n + 1) - Real.sqrt n) (Filter.atTop : Filter ℕ) (nhds (0 : ℝ)) := by
  -- proof omitted
  sorry

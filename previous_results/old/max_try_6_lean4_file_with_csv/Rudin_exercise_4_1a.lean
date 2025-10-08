import Mathlib

open Filter

/-- There exists a function f : ℝ → ℝ such that for every x, the limit as h → 0 of
    f(x + h) - f(x - h) is 0, but f is not continuous. -/
theorem Rudin_exercise_4_1a : ∃ f : ℝ → ℝ, (∀ x : ℝ, Tendsto (fun h => f (x + h) - f (x - h)) (nhds 0) (nhds 0)) ∧ ¬Continuous (fun x => f x) := by
  sorry

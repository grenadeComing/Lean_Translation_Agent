import Mathlib

open Filter

theorem Rudin_exercise_4_1a :
  ∃ f : ℝ → ℝ,
    (∀ x : ℝ, Tendsto (fun h => f (x + h) - f (x - h)) (nhds 0) (nhds 0)) ∧
    ∃ x0 : ℝ, ¬ ContinuousAt f x0 := by sorry

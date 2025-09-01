import Mathlib

theorem Rudin_exercise_4_1a :
  ∃ f : ℝ → ℝ,
    (∀ x : ℝ, Filter.Tendsto (fun h : ℝ => f (x + h) - f (x - h)) (nhds (0 : ℝ)) (nhds (0 : ℝ)))
    ∧ ¬Continuous (f : ℝ → ℝ) := by sorry

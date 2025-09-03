import Mathlib

example : ∃ f : ℝ → ℝ,
  (∀ x : ℝ, Filter.Tendsto (fun h : ℝ => f (x + h) - f (x - h)) (Filter.atTop) (Filter.atTop)) ∧
  ¬Continuous (fun x => f x) := by sorry

import Mathlib

/-- Rudin exercise: exhibit a function f : ℝ → ℝ such that for every x,
    lim_{h→0} (f(x+h) - f(x-h)) = 0, but f is not continuous. -/
theorem Rudin_exercise_4_1a :
  ∃ f : ℝ → ℝ,
    (∀ x : ℝ, Filter.Tendsto (fun h : ℝ => f (x + h) - f (x - h)) (nhds (0 : ℝ)) (nhds (0 : ℝ)))
    ∧ ¬Continuous (fun x : ℝ => f x) := by
  -- Example: f(x) = if x = 0 then 1 else 0.
  -- Proof omitted.
  sorry
